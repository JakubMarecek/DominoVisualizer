LUAC�\ -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_coast/expeditions/c2/coast_c2_ctp_010_main_enemy.domino
-- User graph: Coast_C2_CTP_010_Main_Enemy_Main
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_BasicSetups.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_EnemyHelicopterCleaner.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_PackageGuard.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_PackageGuardNearest.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Quest_Common.PlayerFullyDetected.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/IndexList_v2.lua");
        cboxRes:RegisterBox("Domino/System/MessageListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/RadioModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetFloat_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetInteger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C2/Coast_C2_CTP_010_Main_Enemy.AISetupAfterPackageIsPicked.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C2/Coast_C2_CTP_010_Main_Enemy.ArmWrestlingController.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C2/Coast_C2_CTP_010_Main_Enemy.Flare_STP.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C2/Coast_C2_CTP_010_Main_Enemy.InitialEnemySpawnController.debug.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/Library/Sp/Lib_Expeditions_Gameplay.globals.lua");
        cboxRes:RegisterGlobals("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C2/Coast_C2_CTP_010_Main_Enemy.globals.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.Coast_C2_CTP_010_Main_Enemy = nil;
    Globals.Coast_C2_CTP_010_Main_Enemy = {
        i_CurrentSize = 0,
        i_Difficulty = 0,
        i_PackagePositionIndex = 0,
        i_ExtractionPOIIndex = 0,
        e_PackageSpawner = nil,
        i_PlayerSpawnPOIIndex = 0,
        b_NextWaveUntilCombat = true,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C2/Coast_C2_CTP_010_Main_Enemy.Coast_C2_CTP_010_Main_Enemy_Main.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_BasicSetups.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "OnlyQuicklaunchPlayerLoadout",
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
                name = "Debug_ExtractionPOIID",
                type = "int",
            },
            [1] = {
                name = "Debug_PackagePositionID",
                type = "int",
            },
            [2] = {
                name = "Debug_PackageSpawner",
                type = "entity",
            },
            [3] = {
                name = "Debug_PlayerSpawnPOIIndex",
                type = "int",
            },
            [4] = {
                name = "DebugMode",
                type = "bool",
            },
        },
        dataInCount = 5,
        dataOut = {
            [0] = {
                name = "Difficulty",
                type = "int",
            },
            [1] = {
                name = "ExtractionPOIIndex",
                type = "int",
            },
            [2] = {
                name = "PackagePositionIndex",
                type = "int",
            },
            [3] = {
                name = "PackageSpawner",
                type = "entity",
            },
            [4] = {
                name = "PlayerSpawnPOIIndex",
                type = "int",
            },
        },
        dataOutCount = 5,
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_PackageGuard.debug.lua")] = {
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
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "EnemyGroup_All",
                type = "group",
            },
            [1] = {
                name = "EnemyGroup_PackageGuard",
                type = "group",
            },
            [2] = {
                name = "EnemyGroup_Prio_01",
                type = "group",
            },
            [3] = {
                name = "EnemyGroup_Prio_02",
                type = "group",
            },
            [4] = {
                name = "EnemyGroup_Prio_03",
                type = "group",
            },
            [5] = {
                name = "PackageGuardCS",
                type = "entity",
            },
            [6] = {
                name = "PackageGuardNUM",
                type = "int",
            },
        },
        dataInCount = 7,
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Quest_Common.PlayerFullyDetected.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/ProximityRadiusListener_v3.lua")] = {
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
                name = "AllFar",
                delayed = true,
            },
            [1] = {
                name = "AllNear",
                delayed = true,
            },
            [2] = {
                name = "Disabled",
                delayed = false,
            },
            [3] = {
                name = "Enabled",
                delayed = false,
            },
            [4] = {
                name = "SomeoneFar",
                delayed = true,
            },
            [5] = {
                name = "SomeoneNear",
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
                name = "Entities",
                type = "group",
            },
            [2] = {
                name = "farZone",
                type = "float",
            },
            [3] = {
                name = "id2",
                type = "entity",
            },
            [4] = {
                name = "nearZone",
                type = "float",
            },
            [5] = {
                name = "use2d",
                type = "bool",
            },
        },
        dataInCount = 6,
        dataOut = {
            [0] = {
                name = "currentEntity",
                type = "entity",
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
    metadataTable[GetPathID("Domino/System/SetFloat_v2.lua")] = {
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
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "Target",
                type = "float",
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
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C2/Coast_C2_CTP_010_Main_Enemy.AISetupAfterPackageIsPicked.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "DisableTriggerListener",
            },
            [1] = {
                name = "In",
            },
        },
        controlInCount = 2,
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
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C2/Coast_C2_CTP_010_Main_Enemy.ArmWrestlingController.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C2/Coast_C2_CTP_010_Main_Enemy.Flare_STP.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cleanup",
            },
            [1] = {
                name = "In",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "flarestp_used_once",
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
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C2/Coast_C2_CTP_010_Main_Enemy.InitialEnemySpawnController.debug.lua")] = {
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
end;

function export:Init(cbox)
    local l0;
    self._name = "Coast_C2_CTP_010_Main_Enemy_Main";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main";
    self.Out = DummyFunction;
    self.i_PackageGuard = 0;
    self.i_AllowedRemainingNPC_Fortress = 5;
    self.f_MinWaveDuration_Fortress = 25;
    self.i_AllowedRemainingNPC_Extraction = 5;
    self.f_MinWaveDuration_Extraction = 25;
    self.box_Gate_v3_69 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|343665");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_69_Out,
    });
    self.box_PlayerFullyDetected_181 = cbox:CreateBox("Domino/Library/Sp/Lib_Quest_Common.PlayerFullyDetected.debug.lua");
    l0 = self.box_PlayerFullyDetected_181;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerFullyDetected_181");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|7141252");
    l0:SetConnections({
        -- Detected,
        [0] = self.f_box_PlayerFullyDetected_181_Detected,
    });
    self.box_MultipleAND_v2_249 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_249;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_249");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|29691872");
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
        [0] = self.f_box_MultipleAND_v2_249_Out,
    });
    self.box_MultipleOR_139 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_139;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_139");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|35920155");
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
        [0] = self.f_box_MultipleOR_139_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_211 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_211;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_211");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|45694668");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_211_NextWave,
    });
    self.box_Brick_Exp_Enemy_PackageGuard_140 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_PackageGuard.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_PackageGuard_140;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_PackageGuard_140");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|52997306");
    l0:SetConnections({
    });
    self.box_SpawnAI_83 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|56299414");
    l0:SetConnections({
    });
    self.box_MessageListener_v3_149 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_149;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_149");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|57901099");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_149_Received,
    });
    self.box_Brick_Exp_Common_WaveSpawner_200 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_200;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_200");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|59842936");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_200_NextWave,
    });
    self.box_MultipleOR_107 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_107");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|61981144");
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
        [0] = self.f_box_MultipleOR_107_Out,
    });
    self.box_Delay_v5_196 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_196;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_196");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|69715542");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_196_TimeElapsed,
    });
    self.box_Random_247 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_247;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_247");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|75087636");
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
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_247_Output_0,
                [1] = self.f_box_Random_247_Output_1,
                [2] = self.f_box_Random_247_Output_2,
            },
            count = 3,
        },
    });
    self.box_Brick_Exp_Common_WaveSpawner_217 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_217;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_217");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|121030603");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_217_NextWave,
    });
    self.box_MultipleOR_151 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_151;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_151");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|121945180");
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
        [0] = self.f_box_MultipleOR_151_Out,
    });
    self.box_Brick_Exp_Enemy_PackageGuardNearest_142 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_PackageGuardNearest.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_PackageGuardNearest_142;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_PackageGuardNearest_142");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|122963126");
    l0:SetConnections({
    });
    self.box_Delay_v5_40 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|136121826");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_40_TimeElapsed,
    });
    self.box_Brick_Exp_Common_WaveSpawner_250 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_250;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_250");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|153285977");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_250_NextWave,
    });
    self.box_MultipleAND_v2_241 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_241;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_241");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|173316016");
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
        [0] = self.f_box_MultipleAND_v2_241_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_17 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|177835935");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_17_NextWave,
    });
    self.box_Delay_v5_79 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|182681963");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_79_TimeElapsed,
    });
    self.box_ProximityRadiusListener_v3_220 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_220;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_220");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|192451894");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_220_SomeoneNear,
    });
    self.box_OnceOnly_v3_154 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_154;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_154");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|197177302");
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
                [0] = self.f_box_OnceOnly_v3_154_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_97 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_97");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|218098445");
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
        [0] = self.f_box_MultipleOR_97_Out,
    });
    self.box_MultipleOR_152 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_152;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_152");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|257371446");
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
        [0] = self.f_box_MultipleOR_152_Out,
    });
    self.box_MessageListener_v3_163 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_163;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_163");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|263636497");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_163_Received,
    });
    self.box_Random_16 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|271790981");
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
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_16_Output_0,
                [1] = self.f_box_Random_16_Output_1,
                [2] = self.f_box_Random_16_Output_2,
            },
            count = 3,
        },
    });
    self.box_Delay_v5_176 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_176;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_176");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|288993086");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_176_TimeElapsed,
    });
    self.box_SpawnAI_49 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|302582889");
    l0:SetConnections({
    });
    self.box_Gate_v3_92 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|304077032");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_92_Out,
    });
    self.box_OnceOnly_v3_192 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_192;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_192");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|313551569");
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
                [0] = self.f_box_OnceOnly_v3_192_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_99 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_99");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|315277268");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_99_TimeElapsed,
    });
    self.box_IndexList_v2_174 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_174;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_174");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|329054441");
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
                [0] = self.f_box_IndexList_v2_174_Output_0,
                [1] = self.f_box_IndexList_v2_174_Output_1,
                [2] = self.f_box_IndexList_v2_174_Output_2,
            },
            count = 3,
        },
    });
    self.box_MultipleOR_61 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|345545718");
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
        [0] = self.f_box_MultipleOR_61_Out,
    });
    self.box_IndexList_v2_127 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_127;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_127");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|362966710");
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
                [0] = self.f_box_IndexList_v2_127_Output_0,
                [1] = self.f_box_IndexList_v2_127_Output_1,
                [2] = self.f_box_IndexList_v2_127_Output_2,
            },
            count = 3,
        },
    });
    self.box_Random_254 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_254;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_254");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|367884173");
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
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_254_Output_0,
                [1] = self.f_box_Random_254_Output_1,
                [2] = self.f_box_Random_254_Output_2,
            },
            count = 3,
        },
    });
    self.box_MessageListener_v3_54 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|370393827");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_54_Received,
    });
    self.box_Gate_v3_231 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_231;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_231");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|378031724");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_231_Out,
    });
    self.box_MessageListener_v3_50 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|415057116");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_50_Received,
    });
    self.box_Brick_Exp_Common_WaveSpawner_202 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_202;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_202");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|427631737");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_202_NextWave,
    });
    self.box_Brick_Exp_Common_WaveSpawner_94 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_94");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|436017219");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_94_NextWave,
    });
    self.box_OnceOnly_v3_184 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_184;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_184");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|445632157");
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
                [0] = self.f_box_OnceOnly_v3_184_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_195 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_195;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_195");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|450540211");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_195_TimeElapsed,
    });
    self.box_ActivityInitialized_74 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|452312025");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_74_Out,
    });
    self.box_Brick_Exp_Enemy_PackageGuard_123 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_PackageGuard.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_PackageGuard_123;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_PackageGuard_123");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|492508531");
    l0:SetConnections({
    });
    self.box_Brick_Exp_Common_WaveSpawner_215 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_215;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_215");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|494877165");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_215_NextWave,
    });
    self.box_ProximityRadiusListener_v3_228 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_228;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_228");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|540759503");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_228_SomeoneNear,
    });
    self.box_MultipleOR_265 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_265;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_265");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|540969206");
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
        [0] = self.f_box_MultipleOR_265_Out,
    });
    self.box_MessageListener_v3_43 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|543922486");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_43_Received,
    });
    self.box_Brick_Exp_Common_WaveSpawner_201 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_201;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_201");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|546951232");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_201_NextWave,
    });
    self.box_MessageListener_v3_93 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_93");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|549015000");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_93_Received,
    });
    self.box_Gate_v3_109 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_109");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|564443585");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_109_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_169 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_169;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_169");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|592553284");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_169_NextWave,
    });
    self.box_MultipleAND_v2_236 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_236;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_236");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|609985399");
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
        [0] = self.f_box_MultipleAND_v2_236_Out,
    });
    self.box_PlayerFullyDetected_75 = cbox:CreateBox("Domino/Library/Sp/Lib_Quest_Common.PlayerFullyDetected.debug.lua");
    l0 = self.box_PlayerFullyDetected_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerFullyDetected_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|617551414");
    l0:SetConnections({
        -- Detected,
        [0] = self.f_box_PlayerFullyDetected_75_Detected,
    });
    self.box_PlayerFullyDetected_188 = cbox:CreateBox("Domino/Library/Sp/Lib_Quest_Common.PlayerFullyDetected.debug.lua");
    l0 = self.box_PlayerFullyDetected_188;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerFullyDetected_188");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|618563175");
    l0:SetConnections({
        -- Detected,
        [0] = self.f_box_PlayerFullyDetected_188_Detected,
    });
    self.box_Delay_v5_63 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|630111655");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_63_TimeElapsed,
    });
    self.box_Brick_Exp_Common_WaveSpawner_263 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_263;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_263");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|632512151");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_263_NextWave,
    });
    self.box_MultipleOR_190 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_190;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_190");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|652353261");
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
        [0] = self.f_box_MultipleOR_190_Out,
    });
    self.box_MultipleOR_257 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_257;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_257");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|660301710");
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
        [0] = self.f_box_MultipleOR_257_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_214 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_214;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_214");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|661997068");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_214_NextWave,
    });
    self.box_Brick_Exp_Common_WaveSpawner_95 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_95");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|667368253");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_95_NextWave,
    });
    self.box_SpawnAI_269 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_269;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_269");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|669842938");
    l0:SetConnections({
    });
    self.box_Brick_Exp_Common_WaveSpawner_216 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_216;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_216");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|681892664");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_216_NextWave,
    });
    self.box_SpawnAI_125 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_125;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_125");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|690745357");
    l0:SetConnections({
    });
    self.box_Random_260 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_260;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_260");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|694430842");
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
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_260_Output_0,
                [1] = self.f_box_Random_260_Output_1,
                [2] = self.f_box_Random_260_Output_2,
            },
            count = 3,
        },
    });
    self.box_ProximityTrigger_v3_57 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|714149565");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v3_57_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_57_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_57_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v3_57_Leave,
        -- OnAllInside,
        [4] = self.f_box_ProximityTrigger_v3_57_OnAllInside,
        -- OnEmpty,
        [5] = self.f_box_ProximityTrigger_v3_57_OnEmpty,
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_57_OnOccupied,
        -- Use,
        [7] = self.f_box_ProximityTrigger_v3_57_Use,
    });
    self.box_OnceOnly_v3_168 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_168;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_168");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|731136425");
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
                [0] = self.f_box_OnceOnly_v3_168_Out_0,
            },
            count = 2,
        },
    });
    self.box_GroupSizeListener_v6_80 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|752813785");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_80_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_80_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_80_MemberAdded,
        -- MemberDied,
        [3] = self.f_box_GroupSizeListener_v6_80_MemberDied,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_80_MemberRemoved,
        -- MemberSpawned,
        [5] = self.f_box_GroupSizeListener_v6_80_MemberSpawned,
    });
    self.box_MessageListener_v3_21 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|764290164");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_21_Received,
    });
    self.box_Brick_Exp_Common_WaveSpawner_65 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|767809020");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_65_NextWave,
    });
    self.box_Gate_v3_199 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_199;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_199");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|778544211");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_199_Out,
    });
    self.box_Gate_v3_91 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|781859351");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_91_Out,
    });
    self.box_IndexList_v2_141 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_141;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_141");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|800821649");
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
                [0] = self.f_box_IndexList_v2_141_Output_0,
                [1] = self.f_box_IndexList_v2_141_Output_1,
                [2] = self.f_box_IndexList_v2_141_Output_2,
            },
            count = 3,
        },
    });
    self.box_Gate_v3_2 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|803505095");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_2_Out,
    });
    self.box_MultipleOR_110 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_110");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|809691159");
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
    self.box_MultipleAND_v2_205 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_205;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_205");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|822222879");
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
        [0] = self.f_box_MultipleAND_v2_205_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_210 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_210;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_210");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|841038734");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_210_NextWave,
    });
    self.box_MultipleOR_128 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_128;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_128");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|850690034");
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
        [0] = self.f_box_MultipleOR_128_Out,
    });
    self.box_MultipleOR_31 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|866094678");
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
        [0] = self.f_box_MultipleOR_31_Out,
    });
    self.box_SpawnAI_56 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|869345527");
    l0:SetConnections({
    });
    self.box_MultipleOR_183 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_183;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_183");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|908569643");
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
        [0] = self.f_box_MultipleOR_183_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_203 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_203;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_203");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|952261629");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_203_NextWave,
    });
    self.box_OnceOnly_v3_143 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_143;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_143");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|989675281");
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
                [0] = self.f_box_OnceOnly_v3_143_Out_0,
            },
            count = 2,
        },
    });
    self.box_Gate_v3_105 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_105");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|997613375");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_105_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_96 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_96");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1010768028");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_96_NextWave,
    });
    self.box_Gate_v3_198 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_198;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_198");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1030930175");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_198_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_213 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_213;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_213");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1053607169");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_213_NextWave,
    });
    self.box_Flare_STP_89 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C2/Coast_C2_CTP_010_Main_Enemy.Flare_STP.debug.lua");
    l0 = self.box_Flare_STP_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Flare_STP_89");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1061259228");
    l0:SetConnections({
    });
    self.box_Brick_Exp_Common_WaveSpawner_243 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_243;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_243");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1062613119");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_243_NextWave,
    });
    self.box_Delay_v5_157 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_157;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_157");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1062889569");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_157_TimeElapsed,
    });
    self.box_Delay_v5_235 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_235;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_235");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1063998134");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_235_TimeElapsed,
    });
    self.box_MessageListener_v3_37 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1093834721");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_37_Received,
    });
    self.box_SpawnAI_71 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1107774262");
    l0:SetConnections({
    });
    self.box_Gate_v3_64 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1131946712");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_64_Out,
    });
    self.box_OnceOnly_v3_134 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_134;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_134");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1138642087");
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
                [0] = self.f_box_OnceOnly_v3_134_Out_0,
            },
            count = 2,
        },
    });
    self.box_MessageListener_v3_126 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_126;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_126");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1138845968");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_126_Received,
    });
    self.box_MessageListener_v3_160 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_160;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_160");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1145946595");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_160_Received,
    });
    self.box_PlayerFullyDetected_193 = cbox:CreateBox("Domino/Library/Sp/Lib_Quest_Common.PlayerFullyDetected.debug.lua");
    l0 = self.box_PlayerFullyDetected_193;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerFullyDetected_193");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1167719758");
    l0:SetConnections({
        -- Detected,
        [0] = self.f_box_PlayerFullyDetected_193_Detected,
    });
    self.box_Brick_Exp_Common_BasicSetups_25 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_BasicSetups.debug.lua");
    l0 = self.box_Brick_Exp_Common_BasicSetups_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_BasicSetups_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1196039168");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Brick_Exp_Common_BasicSetups_25_Out,
    });
    self.box_Delay_v5_156 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_156;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_156");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1204911226");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_156_TimeElapsed,
    });
    self.box_Gate_v3_82 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1207938208");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_82_Out,
    });
    self.box_Delay_v5_175 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_175;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_175");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1212067315");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_175_TimeElapsed,
    });
    self.box_AISetupAfterPackageIsPicked_26 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C2/Coast_C2_CTP_010_Main_Enemy.AISetupAfterPackageIsPicked.debug.lua");
    l0 = self.box_AISetupAfterPackageIsPicked_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AISetupAfterPackageIsPicked_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1218484348");
    l0:SetConnections({
    });
    self.box_Gate_v3_66 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1237420567");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_66_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_251 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_251;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_251");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1250257638");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_251_NextWave,
    });
    self.box_Delay_v5_266 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_266;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_266");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1254965423");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_266_TimeElapsed,
    });
    self.box_MultipleOR_98 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_98");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1259837743");
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
        [0] = self.f_box_MultipleOR_98_Out,
    });
    self.box_MultipleOR_144 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_144;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_144");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1270523643");
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
        [0] = self.f_box_MultipleOR_144_Out,
    });
    self.box_IndexList_v2_19 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1281003853");
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
                [0] = self.f_box_IndexList_v2_19_Output_0,
                [1] = self.f_box_IndexList_v2_19_Output_1,
                [2] = self.f_box_IndexList_v2_19_Output_2,
            },
            count = 3,
        },
    });
    self.box_InitialEnemySpawnController_52 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C2/Coast_C2_CTP_010_Main_Enemy.InitialEnemySpawnController.debug.lua");
    l0 = self.box_InitialEnemySpawnController_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InitialEnemySpawnController_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1285760741");
    l0:SetConnections({
    });
    self.box_Gate_v3_229 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_229;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_229");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1322299966");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_229_Out,
    });
    self.box_MultipleOR_85 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1336953724");
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
        [0] = self.f_box_MultipleOR_85_Out,
    });
    self.box_MultipleAND_v2_121 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_121;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_121");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1345850576");
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
        [0] = self.f_box_MultipleAND_v2_121_Out,
    });
    self.box_Delay_v5_233 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_233;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_233");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1352808181");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_233_TimeElapsed,
    });
    self.box_Delay_v5_118 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_118");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1374125252");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_118_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_118_TimeElapsed,
    });
    self.box_Delay_v5_234 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_234;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_234");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1375213823");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_234_TimeElapsed,
    });
    self.box_Delay_v5_145 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_145;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_145");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1382297441");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_145_TimeElapsed,
    });
    self.box_SpawnAI_46 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1400113789");
    l0:SetConnections({
    });
    self.box_Gate_v3_182 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_182;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_182");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1442741985");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_182_Out,
    });
    self.box_ActivityAcknowledgeGate_73 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1443851242");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_73_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_73_Reloaded,
    });
    self.box_Brick_Exp_Common_WaveSpawner_208 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_208;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_208");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1484597558");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_208_NextWave,
    });
    self.box_Gate_v3_102 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_102");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1496332267");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_102_Out,
    });
    self.box_Gate_v3_197 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_197;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_197");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1508497314");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_197_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_264 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_264;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_264");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1509482833");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_264_NextWave,
    });
    self.box_IndexList_v2_29 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1525603232");
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
                [0] = self.f_box_IndexList_v2_29_Output_0,
                [1] = self.f_box_IndexList_v2_29_Output_1,
                [2] = self.f_box_IndexList_v2_29_Output_2,
            },
            count = 3,
        },
    });
    self.box_MultipleAND_v2_261 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_261;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_261");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1536616451");
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
        [0] = self.f_box_MultipleAND_v2_261_Out,
    });
    self.box_MultipleAND_v2_239 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_239;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_239");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1601030750");
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
        [0] = self.f_box_MultipleAND_v2_239_Out,
    });
    self.box_MessageListener_v3_90 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1603250816");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_90_Received,
    });
    self.box_Gate_v3_62 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1608268098");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_62_Out,
    });
    self.box_MultipleOR_53 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1608318582");
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
        [0] = self.f_box_MultipleOR_53_Out,
    });
    self.box_Delay_v5_194 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_194;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_194");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1636009445");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_194_TimeElapsed,
    });
    self.box_Brick_Exp_Common_EnemyHelicopterCleaner_271 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_EnemyHelicopterCleaner.debug.lua");
    l0 = self.box_Brick_Exp_Common_EnemyHelicopterCleaner_271;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_EnemyHelicopterCleaner_271");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1637918657");
    l0:SetConnections({
    });
    self.box_Gate_v3_70 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1641107998");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_70_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_207 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_207;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_207");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1641581339");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_207_NextWave,
    });
    self.box_Gate_v3_4 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1643920666");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_4_Out,
    });
    self.box_Delay_v5_87 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1653526739");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_87_TimeElapsed,
    });
    self.box_Gate_v3_104 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_104");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1669590268");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_104_Out,
    });
    self.box_MessageListener_v3_101 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_101");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1676508652");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_101_Received,
    });
    self.box_Brick_Exp_Common_WaveSpawner_67 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1706604916");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_67_NextWave,
    });
    self.box_OnceOnly_v3_44 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1730209347");
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
                [0] = self.f_box_OnceOnly_v3_44_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_164 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_164;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_164");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1733976153");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_164_TimeElapsed,
    });
    self.box_Brick_Exp_Common_WaveSpawner_212 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_212;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_212");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1779712362");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_212_NextWave,
    });
    self.box_OnceOnly_v3_76 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1797990021");
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
                [0] = self.f_box_OnceOnly_v3_76_Out_0,
            },
            count = 2,
        },
    });
    self.box_MessageListener_v3_58 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1806123291");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_58_Received,
    });
    self.box_MessageListener_v3_77 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1809891939");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_77_Received,
    });
    self.box_Brick_Exp_Common_WaveSpawner_206 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_206;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_206");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1816652816");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_206_NextWave,
    });
    self.box_Gate_v3_5 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1831360533");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_5_Out,
    });
    self.box_MultipleOR_177 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_177;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_177");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1836157770");
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
        [0] = self.f_box_MultipleOR_177_Out,
    });
    self.box_OnceOnly_v3_150 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_150;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_150");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1855636486");
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
                [0] = self.f_box_OnceOnly_v3_150_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_248 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_248;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_248");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1856205131");
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
        [0] = self.f_box_MultipleOR_248_Out,
    });
    self.box_MultipleAND_v2_255 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_255;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_255");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1907014823");
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
        [0] = self.f_box_MultipleAND_v2_255_Out,
    });
    self.box_Delay_v5_38 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1912946817");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_38_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_38_TimeElapsed,
    });
    self.box_MultipleOR_191 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_191;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_191");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1915180484");
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
        [0] = self.f_box_MultipleOR_191_Out,
    });
    self.box_Delay_v5_103 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_103");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1934418510");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_103_TimeElapsed,
    });
    self.box_DisplayCustomUIMsg_v5_39 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1935249796");
    l0:SetConnections({
        -- OnDisplay,
        [0] = self.f_box_DisplayCustomUIMsg_v5_39_OnDisplay,
    });
    self.box_SpawnAI_124 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_124;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_124");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1945810311");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_124_Out,
    });
    self.box_MultipleOR_189 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_189;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_189");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1974342908");
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
        [0] = self.f_box_MultipleOR_189_Out,
    });
    self.box_Delay_v5_119 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_119");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1992232702");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_119_TimeElapsed,
    });
    self.box_Brick_Exp_Common_BasicSetups_32 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_BasicSetups.debug.lua");
    l0 = self.box_Brick_Exp_Common_BasicSetups_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_BasicSetups_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|2002213858");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Brick_Exp_Common_BasicSetups_32_Out,
    });
    self.box_ArmWrestlingController_1 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C2/Coast_C2_CTP_010_Main_Enemy.ArmWrestlingController.debug.lua");
    l0 = self.box_ArmWrestlingController_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ArmWrestlingController_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|2024443767");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_221 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_221;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_221");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|2055758191");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_221_SomeoneNear,
    });
    self.box_MessageListener_v3_51 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|2062798605");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_51_Received,
    });
    self.box_SpawnAI_59 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|2085382602");
    l0:SetConnections({
    });
    self.box_Gate_v3_3 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|2086584546");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_3_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_204 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_204;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_204");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|2090410245");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_204_NextWave,
    });
    self.box_OnceOnly_v3_178 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_178;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_178");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|2094407817");
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
                [0] = self.f_box_OnceOnly_v3_178_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_153 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_153;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_153");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|2117148763");
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
                [0] = self.f_box_OnceOnly_v3_153_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_72 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|2121252113");
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
        [0] = self.f_box_MultipleOR_72_Out,
    });
    self.box_MessageListener_v3_155 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_155;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_155");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|2143982957");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_155_Received,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_73;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|591601638", "591601638", "Coast_C2_CTP_010_Main_Enemy_Main", "In", "box_ActivityAcknowledgeGate_73.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_Simple_Node_22_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_121();
    l0 = self.box_MultipleAND_v2_121;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|592855975", "592855975", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_22.Out", "box_MultipleAND_v2_121.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
    params = self:OnEnter_box_OutputOrder_v2_272();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|581594773", "581594773", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_22.Out", "box_OutputOrder_v2_272.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_24_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_48();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|2027261588", "2027261588", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_24.Out", "box_OutputOrder_v2_48.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_28_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_78();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1526383674", "1526383674", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_28.Out", "box_OutputOrder_v2_78.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_27_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_60();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|2055800014", "2055800014", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_27.Out", "box_OutputOrder_v2_60.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_112_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_104();
    l0 = self.box_Gate_v3_104;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1499639528", "1499639528", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_112.Out", "box_Gate_v3_104.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_66();
    l0 = self.box_Gate_v3_66;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|148140045", "148140045", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_112.Out", "box_Gate_v3_66.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_105();
    l0 = self.box_Gate_v3_105;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|2061791016", "2061791016", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_112.Out", "box_Gate_v3_105.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_64();
    l0 = self.box_Gate_v3_64;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1007556805", "1007556805", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_112.Out", "box_Gate_v3_64.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_91();
    l0 = self.box_Gate_v3_91;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|2128210870", "2128210870", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_112.Out", "box_Gate_v3_91.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_82();
    l0 = self.box_Gate_v3_82;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1072028266", "1072028266", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_112.Out", "box_Gate_v3_82.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_92();
    l0 = self.box_Gate_v3_92;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1193919031", "1193919031", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_112.Out", "box_Gate_v3_92.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_102();
    l0 = self.box_Gate_v3_102;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1169372323", "1169372323", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_112.Out", "box_Gate_v3_102.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    l0 = self.box_AISetupAfterPackageIsPicked_26;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1940742636", "1940742636", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_112.Out", "box_AISetupAfterPackageIsPicked_26.DisableTriggerListener", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableTriggerListener
    l0:Exec(0, {
    });
    params = self:OnEnter_box_Gate_v3_109();
    l0 = self.box_Gate_v3_109;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|776127286", "776127286", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_112.Out", "box_Gate_v3_109.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_70();
    l0 = self.box_Gate_v3_70;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1003907894", "1003907894", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_112.Out", "box_Gate_v3_70.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_62();
    l0 = self.box_Gate_v3_62;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|143165618", "143165618", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_112.Out", "box_Gate_v3_62.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_69();
    l0 = self.box_Gate_v3_69;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|953618299", "953618299", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_112.Out", "box_Gate_v3_69.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_148_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_198();
    l0 = self.box_Gate_v3_198;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|603823823", "603823823", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_148.Out", "box_Gate_v3_198.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_169();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_169;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1054722208", "1054722208", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_148.Out", "box_Brick_Exp_Common_WaveSpawner_169.UpdateAllowedRemainingNPCForNextCheck", clone:GetLuaBox(), l0:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l0:Exec(3, params);
    params = self:OnEnter_box_Gate_v3_199();
    l0 = self.box_Gate_v3_199;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1199548336", "1199548336", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_148.Out", "box_Gate_v3_199.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_96();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_96;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|2091423092", "2091423092", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_148.Out", "box_Brick_Exp_Common_WaveSpawner_96.UpdateAllowedRemainingNPCForNextCheck", clone:GetLuaBox(), l0:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l0:Exec(3, params);
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_215();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_215;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1908857212", "1908857212", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_148.Out", "box_Brick_Exp_Common_WaveSpawner_215.UpdateAllowedRemainingNPCForNextCheck", clone:GetLuaBox(), l0:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l0:Exec(3, params);
    params = self:OnEnter_box_Delay_v5_235();
    l0 = self.box_Delay_v5_235;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|736302199", "736302199", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_148.Out", "box_Delay_v5_235.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_95();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_95;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1824717820", "1824717820", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_148.Out", "box_Brick_Exp_Common_WaveSpawner_95.UpdateAllowedRemainingNPCForNextCheck", clone:GetLuaBox(), l0:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l0:Exec(3, params);
    params = self:OnEnter_box_Gate_v3_197();
    l0 = self.box_Gate_v3_197;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|684919083", "684919083", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_148.Out", "box_Gate_v3_197.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_65();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_65;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1990936673", "1990936673", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_148.Out", "box_Brick_Exp_Common_WaveSpawner_65.UpdateAllowedRemainingNPCForNextCheck", clone:GetLuaBox(), l0:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l0:Exec(3, params);
    params = self:OnEnter_box_Delay_v5_233();
    l0 = self.box_Delay_v5_233;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|2142156176", "2142156176", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_148.Out", "box_Delay_v5_233.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    params = self:OnEnter_box_OutputOrder_v2_116();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|460179069", "460179069", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_148.Out", "box_OutputOrder_v2_116.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_243();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_243;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1147103723", "1147103723", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_148.Out", "box_Brick_Exp_Common_WaveSpawner_243.UpdateAllowedRemainingNPCForNextCheck", clone:GetLuaBox(), l0:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l0:Exec(3, params);
    params = self:OnEnter_box_Delay_v5_234();
    l0 = self.box_Delay_v5_234;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|2016823389", "2016823389", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_148.Out", "box_Delay_v5_234.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_94();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_94;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|799381867", "799381867", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_148.Out", "box_Brick_Exp_Common_WaveSpawner_94.UpdateAllowedRemainingNPCForNextCheck", clone:GetLuaBox(), l0:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l0:Exec(3, params);
end;

function export:f_box_Simple_Node_108_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_2();
    l0 = self.box_Gate_v3_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|946006755", "946006755", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_108.Out", "box_Gate_v3_2.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_5();
    l0 = self.box_Gate_v3_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|129086018", "129086018", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_108.Out", "box_Gate_v3_5.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Print_v2_242();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|135120371", "135120371", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_108.Out", "box_Print_v2_242.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_Gate_v3_4();
    l0 = self.box_Gate_v3_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1960316213", "1960316213", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_108.Out", "box_Gate_v3_4.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_3();
    l0 = self.box_Gate_v3_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1948873730", "1948873730", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_108.Out", "box_Gate_v3_3.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_180_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_200();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_200;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|109974966", "109974966", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_180.Out", "box_Brick_Exp_Common_WaveSpawner_200.UpdateAllowedRemainingNPCForNextCheck", clone:GetLuaBox(), l0:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l0:Exec(3, params);
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_250();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_250;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1322722607", "1322722607", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_180.Out", "box_Brick_Exp_Common_WaveSpawner_250.UpdateAllowedRemainingNPCForNextCheck", clone:GetLuaBox(), l0:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l0:Exec(3, params);
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_211();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_211;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|265425747", "265425747", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_180.Out", "box_Brick_Exp_Common_WaveSpawner_211.UpdateAllowedRemainingNPCForNextCheck", clone:GetLuaBox(), l0:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l0:Exec(3, params);
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_212();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_212;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|327013269", "327013269", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_180.Out", "box_Brick_Exp_Common_WaveSpawner_212.UpdateAllowedRemainingNPCForNextCheck", clone:GetLuaBox(), l0:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l0:Exec(3, params);
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_67();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_67;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|473157808", "473157808", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_180.Out", "box_Brick_Exp_Common_WaveSpawner_67.UpdateAllowedRemainingNPCForNextCheck", clone:GetLuaBox(), l0:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l0:Exec(3, params);
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_213();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_213;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|2030755395", "2030755395", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_180.Out", "box_Brick_Exp_Common_WaveSpawner_213.UpdateAllowedRemainingNPCForNextCheck", clone:GetLuaBox(), l0:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l0:Exec(3, params);
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_206();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_206;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1179819878", "1179819878", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_180.Out", "box_Brick_Exp_Common_WaveSpawner_206.UpdateAllowedRemainingNPCForNextCheck", clone:GetLuaBox(), l0:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l0:Exec(3, params);
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_201();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_201;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1353013336", "1353013336", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_180.Out", "box_Brick_Exp_Common_WaveSpawner_201.UpdateAllowedRemainingNPCForNextCheck", clone:GetLuaBox(), l0:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l0:Exec(3, params);
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_207();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_207;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1899773770", "1899773770", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_180.Out", "box_Brick_Exp_Common_WaveSpawner_207.UpdateAllowedRemainingNPCForNextCheck", clone:GetLuaBox(), l0:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l0:Exec(3, params);
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_208();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_208;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1585416926", "1585416926", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_180.Out", "box_Brick_Exp_Common_WaveSpawner_208.UpdateAllowedRemainingNPCForNextCheck", clone:GetLuaBox(), l0:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l0:Exec(3, params);
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_210();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_210;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|809550368", "809550368", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_180.Out", "box_Brick_Exp_Common_WaveSpawner_210.UpdateAllowedRemainingNPCForNextCheck", clone:GetLuaBox(), l0:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l0:Exec(3, params);
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_204();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_204;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|118052979", "118052979", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_180.Out", "box_Brick_Exp_Common_WaveSpawner_204.UpdateAllowedRemainingNPCForNextCheck", clone:GetLuaBox(), l0:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l0:Exec(3, params);
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_17();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_17;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|477484744", "477484744", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_180.Out", "box_Brick_Exp_Common_WaveSpawner_17.UpdateAllowedRemainingNPCForNextCheck", clone:GetLuaBox(), l0:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l0:Exec(3, params);
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_202();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_202;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|659515769", "659515769", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_180.Out", "box_Brick_Exp_Common_WaveSpawner_202.UpdateAllowedRemainingNPCForNextCheck", clone:GetLuaBox(), l0:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l0:Exec(3, params);
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_217();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_217;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|749156564", "749156564", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_180.Out", "box_Brick_Exp_Common_WaveSpawner_217.UpdateAllowedRemainingNPCForNextCheck", clone:GetLuaBox(), l0:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l0:Exec(3, params);
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_214();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_214;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1932333697", "1932333697", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_180.Out", "box_Brick_Exp_Common_WaveSpawner_214.UpdateAllowedRemainingNPCForNextCheck", clone:GetLuaBox(), l0:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l0:Exec(3, params);
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_263();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_263;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|247189009", "247189009", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_180.Out", "box_Brick_Exp_Common_WaveSpawner_263.UpdateAllowedRemainingNPCForNextCheck", clone:GetLuaBox(), l0:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l0:Exec(3, params);
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_264();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_264;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|850840445", "850840445", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_180.Out", "box_Brick_Exp_Common_WaveSpawner_264.UpdateAllowedRemainingNPCForNextCheck", clone:GetLuaBox(), l0:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l0:Exec(3, params);
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_203();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_203;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|711505882", "711505882", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_180.Out", "box_Brick_Exp_Common_WaveSpawner_203.UpdateAllowedRemainingNPCForNextCheck", clone:GetLuaBox(), l0:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l0:Exec(3, params);
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_216();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_216;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1605547290", "1605547290", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_180.Out", "box_Brick_Exp_Common_WaveSpawner_216.UpdateAllowedRemainingNPCForNextCheck", clone:GetLuaBox(), l0:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l0:Exec(3, params);
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_251();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_251;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1491988792", "1491988792", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Simple_Node_180.Out", "box_Brick_Exp_Common_WaveSpawner_251.UpdateAllowedRemainingNPCForNextCheck", clone:GetLuaBox(), l0:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l0:Exec(3, params);
end;

function export:f_box_Gate_v3_69_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_206();
    l0 = self.box_Gate_v3_69;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_206;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|613459449", "613459449", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Gate_v3_69.Out", "box_Brick_Exp_Common_WaveSpawner_206.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_PlayerFullyDetected_181_Detected()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_273();
    l0 = self.box_PlayerFullyDetected_181;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|871675377", "871675377", "Coast_C2_CTP_010_Main_Enemy_Main", "box_PlayerFullyDetected_181.Detected", "box_OutputOrder_v2_273.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_249_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_247();
    l0 = self.box_MultipleAND_v2_249;
    l1 = self.box_Random_247;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|463745216", "463745216", "Coast_C2_CTP_010_Main_Enemy_Main", "box_MultipleAND_v2_249.Out", "box_Random_247.Reset", l0:GetLuaBox(), l1:GetLuaBox());
    -- Reset
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_139_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_230();
    l0 = self.box_MultipleOR_139;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1377490666", "1377490666", "Coast_C2_CTP_010_Main_Enemy_Main", "box_MultipleOR_139.Out", "box_OutputOrder_v2_230.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_247();
    l0 = self.box_Random_247;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1815244699", "1815244699", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_15.Out", "box_Random_247.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_7();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|621930263", "621930263", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_15.Out", "box_Print_v2_7.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_211_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_211;
    l1 = self.box_MultipleOR_98;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|447436669", "447436669", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Brick_Exp_Common_WaveSpawner_211.NextWave", "box_MultipleOR_98.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MessageListener_v3_149_Received()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_47();
    l0 = self.box_MessageListener_v3_149;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|934857050", "934857050", "Coast_C2_CTP_010_Main_Enemy_Main", "box_MessageListener_v3_149.Received", "box_OutputOrder_v2_47.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_200_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_70();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_200;
    l1 = self.box_Gate_v3_70;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|237202414", "237202414", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Brick_Exp_Common_WaveSpawner_200.NextWave", "box_Gate_v3_70.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_107_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_109();
    l0 = self.box_MultipleOR_107;
    l1 = self.box_Gate_v3_109;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|859344476", "859344476", "Coast_C2_CTP_010_Main_Enemy_Main", "box_MultipleOR_107.Out", "box_Gate_v3_109.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_225_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_196();
    l0 = self.box_Delay_v5_196;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|132209900", "132209900", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_225.Out", "box_Delay_v5_196.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_225_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_220();
    l0 = self.box_ProximityRadiusListener_v3_220;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|292772151", "292772151", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_225.Out", "box_ProximityRadiusListener_v3_220.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_259_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_264();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_264;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|60783730", "60783730", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_259.Out", "box_Brick_Exp_Common_WaveSpawner_264.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_259_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_261();
    l0 = self.box_MultipleAND_v2_261;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1067520183", "1067520183", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_259.Out", "box_MultipleAND_v2_261.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 2);
end;

function export:f_box_Delay_v5_196_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_196;
    l1 = self.box_MultipleOR_190;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1247788911", "1247788911", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Delay_v5_196.TimeElapsed", "box_MultipleOR_190.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Random_247_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_246();
    l0 = self.box_Random_247;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|198404236", "198404236", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Random_247.Output", "box_OutputOrder_v2_246.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_247_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_244();
    l0 = self.box_Random_247;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1950071576", "1950071576", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Random_247.Output", "box_OutputOrder_v2_244.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_247_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_245();
    l0 = self.box_Random_247;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|633977183", "633977183", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Random_247.Output", "box_OutputOrder_v2_245.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetFloat_v2_45_Out()
    local params, l0;
    self:OnExit_box_SetFloat_v2_45_Out();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_173();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1288047106", "1288047106", "Coast_C2_CTP_010_Main_Enemy_Main", "box_SetFloat_v2_45.Out", "box_Print_v2_173.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_84_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_87();
    l0 = self.box_Delay_v5_87;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|91175505", "91175505", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_84.Out", "box_Delay_v5_87.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_84_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_108();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1715286433", "1715286433", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_84.Out", "box_Simple_Node_108.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_84_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_187();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|259419183", "259419183", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_84.Out", "box_Print_v2_187.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_84_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerFullyDetected_181();
    l0 = self.box_PlayerFullyDetected_181;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1278707355", "1278707355", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_84.Out", "box_PlayerFullyDetected_181.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_258_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_263();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_263;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1840478576", "1840478576", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_258.Out", "box_Brick_Exp_Common_WaveSpawner_263.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_258_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_261();
    l0 = self.box_MultipleAND_v2_261;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|655475777", "655475777", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_258.Out", "box_MultipleAND_v2_261.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_217_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_105();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_217;
    l1 = self.box_Gate_v3_105;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1137621568", "1137621568", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Brick_Exp_Common_WaveSpawner_217.NextWave", "box_Gate_v3_105.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_151_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_151;
    l1 = self.box_OnceOnly_v3_150;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|2029184099", "2029184099", "Coast_C2_CTP_010_Main_Enemy_Main", "box_MultipleOR_151.Out", "box_OnceOnly_v3_150.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_40_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_11();
    l0 = self.box_Delay_v5_40;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1964733610", "1964733610", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Delay_v5_40.TimeElapsed", "box_OutputOrder_v2_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_250_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_250;
    l1 = self.box_MultipleOR_257;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|168673751", "168673751", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Brick_Exp_Common_WaveSpawner_250.NextWave", "box_MultipleOR_257.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_277_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_191;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1766837491", "1766837491", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_277.Out", "box_MultipleOR_191.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_277_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RadioModifier_v3_278();
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|616301131", "616301131", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_277.Out", "box_RadioModifier_v3_278.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_241_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_241;
    l1 = self.box_OnceOnly_v3_184;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|586139120", "586139120", "Coast_C2_CTP_010_Main_Enemy_Main", "box_MultipleAND_v2_241.Out", "box_OnceOnly_v3_184.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_80();
    l0 = self.box_GroupSizeListener_v6_80;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|41823043", "41823043", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_18.Out", "box_GroupSizeListener_v6_80.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerFullyDetected_75();
    l0 = self.box_PlayerFullyDetected_75;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1997517066", "1997517066", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_18.Out", "box_PlayerFullyDetected_75.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_17_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_17;
    l1 = self.box_MultipleOR_98;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|508297995", "508297995", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Brick_Exp_Common_WaveSpawner_17.NextWave", "box_MultipleOR_98.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_79_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_79;
    l1 = self.box_OnceOnly_v3_76;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|2047368855", "2047368855", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Delay_v5_79.TimeElapsed", "box_OnceOnly_v3_76.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_220_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_115();
    l0 = self.box_ProximityRadiusListener_v3_220;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|350080430", "350080430", "Coast_C2_CTP_010_Main_Enemy_Main", "box_ProximityRadiusListener_v3_220.SomeoneNear", "box_SetContextualStrategy_115.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_100_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_93();
    l0 = self.box_MessageListener_v3_93;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|277300908", "277300908", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_100.Out", "box_MessageListener_v3_93.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_100_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_58();
    l0 = self.box_MessageListener_v3_58;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1104170499", "1104170499", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_100.Out", "box_MessageListener_v3_58.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_133_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_124();
    l0 = self.box_SpawnAI_124;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1735679358", "1735679358", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_133.Out", "box_SpawnAI_124.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_133_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_132();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1391045870", "1391045870", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_133.Out", "box_Print_v2_132.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_268_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_57();
    l0 = self.box_ProximityTrigger_v3_57;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|7900930", "7900930", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_268.Out", "box_ProximityTrigger_v3_57.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_268_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_267();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|477583781", "477583781", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_268.Out", "box_Print_v2_267.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_154_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_71();
    l0 = self.box_OnceOnly_v3_154;
    l1 = self.box_SpawnAI_71;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|320745235", "320745235", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OnceOnly_v3_154.Out", "box_SpawnAI_71.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_97_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_3();
    l0 = self.box_MultipleOR_97;
    l1 = self.box_Gate_v3_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1160851251", "1160851251", "Coast_C2_CTP_010_Main_Enemy_Main", "box_MultipleOR_97.Out", "box_Gate_v3_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SetInteger_v2_55_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_55_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetFloat_v2_45();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|313147822", "313147822", "Coast_C2_CTP_010_Main_Enemy_Main", "box_SetInteger_v2_55.Out", "box_SetFloat_v2_45.FromFloat", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromFloat
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_152_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_152;
    l1 = self.box_OnceOnly_v3_154;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1027690601", "1027690601", "Coast_C2_CTP_010_Main_Enemy_Main", "box_MultipleOR_152.Out", "box_OnceOnly_v3_154.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MessageListener_v3_163_Received()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_157();
    l0 = self.box_MessageListener_v3_163;
    l1 = self.box_Delay_v5_157;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1178700057", "1178700057", "Coast_C2_CTP_010_Main_Enemy_Main", "box_MessageListener_v3_163.Received", "box_Delay_v5_157.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SetInteger_v2_137_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_137_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_30();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1920629652", "1920629652", "Coast_C2_CTP_010_Main_Enemy_Main", "box_SetInteger_v2_137.Out", "box_SetInteger_v2_30.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Random_16_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_209();
    l0 = self.box_Random_16;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1959119444", "1959119444", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Random_16.Output", "box_OutputOrder_v2_209.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_16_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_111();
    l0 = self.box_Random_16;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|2030804163", "2030804163", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Random_16.Output", "box_OutputOrder_v2_111.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_16_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_170();
    l0 = self.box_Random_16;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|38120", "38120", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Random_16.Output", "box_OutputOrder_v2_170.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_176_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_176;
    l1 = self.box_MultipleOR_177;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1096228618", "1096228618", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Delay_v5_176.TimeElapsed", "box_MultipleOR_177.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Gate_v3_92_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_254();
    l0 = self.box_Gate_v3_92;
    l1 = self.box_Random_254;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|111709211", "111709211", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Gate_v3_92.Out", "box_Random_254.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_192_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_106();
    l0 = self.box_OnceOnly_v3_192;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1901454998", "1901454998", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OnceOnly_v3_192.Out", "box_OutputOrder_v2_106.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_99_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_99;
    l1 = self.box_MultipleOR_53;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|150286536", "150286536", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Delay_v5_99.TimeElapsed", "box_MultipleOR_53.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IndexList_v2_174_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_164();
    l0 = self.box_IndexList_v2_174;
    l1 = self.box_Delay_v5_164;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|5966440", "5966440", "Coast_C2_CTP_010_Main_Enemy_Main", "box_IndexList_v2_174.Output", "box_Delay_v5_164.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_IndexList_v2_174_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_175();
    l0 = self.box_IndexList_v2_174;
    l1 = self.box_Delay_v5_175;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|725868547", "725868547", "Coast_C2_CTP_010_Main_Enemy_Main", "box_IndexList_v2_174.Output", "box_Delay_v5_175.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_IndexList_v2_174_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_176();
    l0 = self.box_IndexList_v2_174;
    l1 = self.box_Delay_v5_176;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1983504771", "1983504771", "Coast_C2_CTP_010_Main_Enemy_Main", "box_IndexList_v2_174.Output", "box_Delay_v5_176.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_61_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_92();
    l0 = self.box_MultipleOR_61;
    l1 = self.box_Gate_v3_92;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|2064367710", "2064367710", "Coast_C2_CTP_010_Main_Enemy_Main", "box_MultipleOR_61.Out", "box_Gate_v3_92.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_127_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_131();
    l0 = self.box_IndexList_v2_127;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|964696666", "964696666", "Coast_C2_CTP_010_Main_Enemy_Main", "box_IndexList_v2_127.Output", "box_Print_v2_131.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_127_Output_1()
    local l0, l1;
    l0 = self.box_IndexList_v2_127;
    l1 = self.box_MultipleOR_128;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1269846071", "1269846071", "Coast_C2_CTP_010_Main_Enemy_Main", "box_IndexList_v2_127.Output", "box_MultipleOR_128.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IndexList_v2_127_Output_2()
    local l0, l1;
    l0 = self.box_IndexList_v2_127;
    l1 = self.box_MultipleOR_128;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|729718498", "729718498", "Coast_C2_CTP_010_Main_Enemy_Main", "box_IndexList_v2_127.Output", "box_MultipleOR_128.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Random_254_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_256();
    l0 = self.box_Random_254;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1872960940", "1872960940", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Random_254.Output", "box_OutputOrder_v2_256.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_254_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_252();
    l0 = self.box_Random_254;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|983106553", "983106553", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Random_254.Output", "box_OutputOrder_v2_252.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_254_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_253();
    l0 = self.box_Random_254;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|242743740", "242743740", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Random_254.Output", "box_OutputOrder_v2_253.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_54_Received()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_59();
    l0 = self.box_MessageListener_v3_54;
    l1 = self.box_SpawnAI_59;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1707585516", "1707585516", "Coast_C2_CTP_010_Main_Enemy_Main", "box_MessageListener_v3_54.Received", "box_SpawnAI_59.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_231_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuard_140();
    l0 = self.box_Gate_v3_231;
    l1 = self.box_Brick_Exp_Enemy_PackageGuard_140;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|613711005", "613711005", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Gate_v3_231.Out", "box_Brick_Exp_Enemy_PackageGuard_140.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_SetInteger_v2_34_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_34_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_42();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|2059907546", "2059907546", "Coast_C2_CTP_010_Main_Enemy_Main", "box_SetInteger_v2_34.Out", "box_SetEntity_v2_42.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_50_Received()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_237();
    l0 = self.box_MessageListener_v3_50;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|975169898", "975169898", "Coast_C2_CTP_010_Main_Enemy_Main", "box_MessageListener_v3_50.Received", "box_OutputOrder_v2_237.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_202_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_91();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_202;
    l1 = self.box_Gate_v3_91;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1830080270", "1830080270", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Brick_Exp_Common_WaveSpawner_202.NextWave", "box_Gate_v3_91.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_94_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_4();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_94;
    l1 = self.box_Gate_v3_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|736404035", "736404035", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Brick_Exp_Common_WaveSpawner_94.NextWave", "box_Gate_v3_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_184_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_84();
    l0 = self.box_OnceOnly_v3_184;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|675327078", "675327078", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OnceOnly_v3_184.Out", "box_OutputOrder_v2_84.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_195_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_195;
    l1 = self.box_MultipleOR_189;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|701599569", "701599569", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Delay_v5_195.TimeElapsed", "box_MultipleOR_189.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ActivityInitialized_74_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_BasicSetups_25();
    l0 = self.box_ActivityInitialized_74;
    l1 = self.box_Brick_Exp_Common_BasicSetups_25;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1208391179", "1208391179", "Coast_C2_CTP_010_Main_Enemy_Main", "box_ActivityInitialized_74.Out", "box_Brick_Exp_Common_BasicSetups_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GetActivityFact_147_FactNotSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_145();
    l0 = self.box_Delay_v5_145;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1181011934", "1181011934", "Coast_C2_CTP_010_Main_Enemy_Main", "box_GetActivityFact_147.FactNotSet", "box_Delay_v5_145.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_GetActivityFact_147_FactSet()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_144;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|2108835717", "2108835717", "Coast_C2_CTP_010_Main_Enemy_Main", "box_GetActivityFact_147.FactSet", "box_MultipleOR_144.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetInteger_v2_30_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_30_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_33();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1736291554", "1736291554", "Coast_C2_CTP_010_Main_Enemy_Main", "box_SetInteger_v2_30.Out", "box_SetInteger_v2_33.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_215_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_215;
    l1 = self.box_MultipleOR_248;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|251303877", "251303877", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Brick_Exp_Common_WaveSpawner_215.NextWave", "box_MultipleOR_248.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_95();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_95;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1756765561", "1756765561", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_13.Out", "box_Brick_Exp_Common_WaveSpawner_95.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_6();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|115928894", "115928894", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_13.Out", "box_Print_v2_6.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_253_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_251();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_251;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|180116234", "180116234", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_253.Out", "box_Brick_Exp_Common_WaveSpawner_251.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_253_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_255();
    l0 = self.box_MultipleAND_v2_255;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|240505218", "240505218", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_253.Out", "box_MultipleAND_v2_255.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 2);
end;

function export:f_box_OutputOrder_v2_158_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_155();
    l0 = self.box_MessageListener_v3_155;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1052608010", "1052608010", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_158.Out", "box_MessageListener_v3_155.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_158_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_160();
    l0 = self.box_MessageListener_v3_160;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1905950895", "1905950895", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_158.Out", "box_MessageListener_v3_160.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_60_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_54();
    l0 = self.box_MessageListener_v3_54;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|185676343", "185676343", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_60.Out", "box_MessageListener_v3_54.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_60_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_162();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|303289460", "303289460", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_60.Out", "box_OutputOrder_v2_162.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_60_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_77();
    l0 = self.box_MessageListener_v3_77;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1509711103", "1509711103", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_60.Out", "box_MessageListener_v3_77.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_60_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_199();
    l0 = self.box_Gate_v3_199;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|448503767", "448503767", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_60.Out", "box_Gate_v3_199.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_ProximityRadiusListener_v3_228_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_114();
    l0 = self.box_ProximityRadiusListener_v3_228;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1138986670", "1138986670", "Coast_C2_CTP_010_Main_Enemy_Main", "box_ProximityRadiusListener_v3_228.SomeoneNear", "box_SetContextualStrategy_114.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_265_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_265;
    l1 = self.box_MultipleOR_107;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|230144945", "230144945", "Coast_C2_CTP_010_Main_Enemy_Main", "box_MultipleOR_265.Out", "box_MultipleOR_107.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MessageListener_v3_43_Received()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_46();
    l0 = self.box_MessageListener_v3_43;
    l1 = self.box_SpawnAI_46;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1788967427", "1788967427", "Coast_C2_CTP_010_Main_Enemy_Main", "box_MessageListener_v3_43.Received", "box_SpawnAI_46.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_201_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_82();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_201;
    l1 = self.box_Gate_v3_82;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|129780166", "129780166", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Brick_Exp_Common_WaveSpawner_201.NextWave", "box_Gate_v3_82.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MessageListener_v3_93_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_93;
    l1 = self.box_MultipleOR_53;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|2027474619", "2027474619", "Coast_C2_CTP_010_Main_Enemy_Main", "box_MessageListener_v3_93.Received", "box_MultipleOR_53.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Gate_v3_109_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_260();
    l0 = self.box_Gate_v3_109;
    l1 = self.box_Random_260;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|400090261", "400090261", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Gate_v3_109.Out", "box_Random_260.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_230_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuard_123();
    l0 = self.box_Brick_Exp_Enemy_PackageGuard_123;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|653180994", "653180994", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_230.Out", "box_Brick_Exp_Enemy_PackageGuard_123.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_230_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_229();
    l0 = self.box_Gate_v3_229;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1801551534", "1801551534", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_230.Out", "box_Gate_v3_229.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_169_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_169;
    l1 = self.box_MultipleOR_248;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|609598588", "609598588", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Brick_Exp_Common_WaveSpawner_169.NextWave", "box_MultipleOR_248.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleAND_v2_236_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_236;
    l1 = self.box_OnceOnly_v3_168;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|510108848", "510108848", "Coast_C2_CTP_010_Main_Enemy_Main", "box_MultipleAND_v2_236.Out", "box_OnceOnly_v3_168.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayerFullyDetected_75_Detected()
    local l0, l1;
    l0 = self.box_PlayerFullyDetected_75;
    l1 = self.box_OnceOnly_v3_153;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|79139076", "79139076", "Coast_C2_CTP_010_Main_Enemy_Main", "box_PlayerFullyDetected_75.Detected", "box_OnceOnly_v3_153.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayerFullyDetected_188_Detected()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_275();
    l0 = self.box_PlayerFullyDetected_188;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1279439762", "1279439762", "Coast_C2_CTP_010_Main_Enemy_Main", "box_PlayerFullyDetected_188.Detected", "box_OutputOrder_v2_275.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_63_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_200();
    l0 = self.box_Delay_v5_63;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_200;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1439914999", "1439914999", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Delay_v5_63.TimeElapsed", "box_Brick_Exp_Common_WaveSpawner_200.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_263_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_263;
    l1 = self.box_MultipleOR_265;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|199091405", "199091405", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Brick_Exp_Common_WaveSpawner_263.NextWave", "box_MultipleOR_265.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_190_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_241();
    l0 = self.box_MultipleOR_190;
    l1 = self.box_MultipleAND_v2_241;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1326068272", "1326068272", "Coast_C2_CTP_010_Main_Enemy_Main", "box_MultipleOR_190.Out", "box_MultipleAND_v2_241.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_MultipleOR_257_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_257;
    l1 = self.box_MultipleOR_61;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|719214643", "719214643", "Coast_C2_CTP_010_Main_Enemy_Main", "box_MultipleOR_257.Out", "box_MultipleOR_61.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_48_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_43();
    l0 = self.box_MessageListener_v3_43;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1256901773", "1256901773", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_48.Out", "box_MessageListener_v3_43.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_48_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_100();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|398775685", "398775685", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_48.Out", "box_OutputOrder_v2_100.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_48_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_50();
    l0 = self.box_MessageListener_v3_50;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|688950024", "688950024", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_48.Out", "box_MessageListener_v3_50.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_48_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_197();
    l0 = self.box_Gate_v3_197;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|31296123", "31296123", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_48.Out", "box_Gate_v3_197.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_214_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_102();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_214;
    l1 = self.box_Gate_v3_102;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1844548787", "1844548787", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Brick_Exp_Common_WaveSpawner_214.NextWave", "box_Gate_v3_102.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_95_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_5();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_95;
    l1 = self.box_Gate_v3_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1878656326", "1878656326", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Brick_Exp_Common_WaveSpawner_95.NextWave", "box_Gate_v3_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_216_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_104();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_216;
    l1 = self.box_Gate_v3_104;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1165480961", "1165480961", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Brick_Exp_Common_WaveSpawner_216.NextWave", "box_Gate_v3_104.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Random_260_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_262();
    l0 = self.box_Random_260;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1092644990", "1092644990", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Random_260.Output", "box_OutputOrder_v2_262.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_260_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_258();
    l0 = self.box_Random_260;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|832254495", "832254495", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Random_260.Output", "box_OutputOrder_v2_258.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_260_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_259();
    l0 = self.box_Random_260;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1251825296", "1251825296", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Random_260.Output", "box_OutputOrder_v2_259.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_209_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_211();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_211;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|582441454", "582441454", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_209.Out", "box_Brick_Exp_Common_WaveSpawner_211.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_209_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_205();
    l0 = self.box_MultipleAND_v2_205;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1032272121", "1032272121", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_209.Out", "box_MultipleAND_v2_205.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_ProximityTrigger_v3_57_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_120();
    l0 = self.box_ProximityTrigger_v3_57;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|895385166", "895385166", "Coast_C2_CTP_010_Main_Enemy_Main", "box_ProximityTrigger_v3_57.Enter", "box_SetContextualStrategy_120.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_168_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_68();
    l0 = self.box_OnceOnly_v3_168;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1894780053", "1894780053", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OnceOnly_v3_168.Out", "box_OutputOrder_v2_68.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v6_80_MemberAdded()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v6_80;
    l1 = self.box_MultipleOR_85;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|682264264", "682264264", "Coast_C2_CTP_010_Main_Enemy_Main", "box_GroupSizeListener_v6_80.MemberAdded", "box_MultipleOR_85.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v6_80_MemberRemoved()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v6_80;
    l1 = self.box_MultipleOR_85;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1089043232", "1089043232", "Coast_C2_CTP_010_Main_Enemy_Main", "box_GroupSizeListener_v6_80.MemberRemoved", "box_MultipleOR_85.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetInteger_v2_33_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_33_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_41();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1886481432", "1886481432", "Coast_C2_CTP_010_Main_Enemy_Main", "box_SetInteger_v2_33.Out", "box_SetEntity_v2_41.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_21_Received()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_136();
    l0 = self.box_MessageListener_v3_21;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1092547601", "1092547601", "Coast_C2_CTP_010_Main_Enemy_Main", "box_MessageListener_v3_21.Received", "box_OutputOrder_v2_136.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_65_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_2();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_65;
    l1 = self.box_Gate_v3_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1086903957", "1086903957", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Brick_Exp_Common_WaveSpawner_65.NextWave", "box_Gate_v3_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_199_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_225();
    l0 = self.box_Gate_v3_199;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|891773699", "891773699", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Gate_v3_199.Out", "box_OutputOrder_v2_225.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_91_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_203();
    l0 = self.box_Gate_v3_91;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_203;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|940232847", "940232847", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Gate_v3_91.Out", "box_Brick_Exp_Common_WaveSpawner_203.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_68_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_63();
    l0 = self.box_Delay_v5_63;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|259004315", "259004315", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_68.Out", "box_Delay_v5_63.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_68_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_108();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|691810354", "691810354", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_68.Out", "box_Simple_Node_108.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_68_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_185();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|2110676423", "2110676423", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_68.Out", "box_Print_v2_185.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_68_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerFullyDetected_188();
    l0 = self.box_PlayerFullyDetected_188;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|397276381", "397276381", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_68.Out", "box_PlayerFullyDetected_188.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_SetInteger_v2_138_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_138_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_35();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|501800787", "501800787", "Coast_C2_CTP_010_Main_Enemy_Main", "box_SetInteger_v2_138.Out", "box_SetInteger_v2_35.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_141_Output_0()
    local l0, l1;
    l0 = self.box_IndexList_v2_141;
    l1 = self.box_MultipleOR_139;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|618461858", "618461858", "Coast_C2_CTP_010_Main_Enemy_Main", "box_IndexList_v2_141.Output", "box_MultipleOR_139.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IndexList_v2_141_Output_1()
    local l0, l1;
    l0 = self.box_IndexList_v2_141;
    l1 = self.box_MultipleOR_139;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1695515193", "1695515193", "Coast_C2_CTP_010_Main_Enemy_Main", "box_IndexList_v2_141.Output", "box_MultipleOR_139.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IndexList_v2_141_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_232();
    l0 = self.box_IndexList_v2_141;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1187927853", "1187927853", "Coast_C2_CTP_010_Main_Enemy_Main", "box_IndexList_v2_141.Output", "box_OutputOrder_v2_232.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_12();
    l0 = self.box_Gate_v3_2;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1308683474", "1308683474", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Gate_v3_2.Out", "box_OutputOrder_v2_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_110_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_66();
    l0 = self.box_MultipleOR_110;
    l1 = self.box_Gate_v3_66;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|713868316", "713868316", "Coast_C2_CTP_010_Main_Enemy_Main", "box_MultipleOR_110.Out", "box_Gate_v3_66.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_252_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_250();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_250;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1233895681", "1233895681", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_252.Out", "box_Brick_Exp_Common_WaveSpawner_250.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_252_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_255();
    l0 = self.box_MultipleAND_v2_255;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|615128886", "615128886", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_252.Out", "box_MultipleAND_v2_255.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_MultipleAND_v2_205_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_16();
    l0 = self.box_MultipleAND_v2_205;
    l1 = self.box_Random_16;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|892394963", "892394963", "Coast_C2_CTP_010_Main_Enemy_Main", "box_MultipleAND_v2_205.Out", "box_Random_16.Reset", l0:GetLuaBox(), l1:GetLuaBox());
    -- Reset
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_238_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_239();
    l0 = self.box_MultipleAND_v2_239;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1054843337", "1054843337", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_238.Out", "box_MultipleAND_v2_239.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_238_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerFullyDetected_193();
    l0 = self.box_PlayerFullyDetected_193;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|150359284", "150359284", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_238.Out", "box_PlayerFullyDetected_193.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_219_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_88();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1671941042", "1671941042", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_219.Out", "box_SetBoolean_v2_88.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_219_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_218();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|235669457", "235669457", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_219.Out", "box_Print_v2_218.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_256_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_204();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_204;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1329875446", "1329875446", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_256.Out", "box_Brick_Exp_Common_WaveSpawner_204.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_256_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_255();
    l0 = self.box_MultipleAND_v2_255;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1052667079", "1052667079", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_256.Out", "box_MultipleAND_v2_255.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_210_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_69();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_210;
    l1 = self.box_Gate_v3_69;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1390742084", "1390742084", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Brick_Exp_Common_WaveSpawner_210.NextWave", "box_Gate_v3_69.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_130_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_126();
    l0 = self.box_MessageListener_v3_126;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|243223378", "243223378", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_130.Out", "box_MessageListener_v3_126.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_130_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_129();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|249945159", "249945159", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_130.Out", "box_Print_v2_129.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_128_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_130();
    l0 = self.box_MultipleOR_128;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|964539654", "964539654", "Coast_C2_CTP_010_Main_Enemy_Main", "box_MultipleOR_128.Out", "box_OutputOrder_v2_130.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_31_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_172();
    l0 = self.box_MultipleOR_31;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1433546270", "1433546270", "Coast_C2_CTP_010_Main_Enemy_Main", "box_MultipleOR_31.Out", "box_OutputOrder_v2_172.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_117_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_Flare_STP_89;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|2139975353", "2139975353", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_117.Out", "box_Flare_STP_89.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_117_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_118();
    l0 = self.box_Delay_v5_118;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|517121598", "517121598", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_117.Out", "box_Delay_v5_118.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_117_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityFact_36();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1774757822", "1774757822", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_117.Out", "box_SetActivityFact_36.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_117_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RadioModifier_v3_270();
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|980853966", "980853966", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_117.Out", "box_RadioModifier_v3_270.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_244_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_215();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_215;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|590610408", "590610408", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_244.Out", "box_Brick_Exp_Common_WaveSpawner_215.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_244_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_249();
    l0 = self.box_MultipleAND_v2_249;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|348777271", "348777271", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_244.Out", "box_MultipleAND_v2_249.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_SetContextualStrategy_114_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_227();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|518545126", "518545126", "Coast_C2_CTP_010_Main_Enemy_Main", "box_SetContextualStrategy_114.Out", "box_Print_v2_227.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_183_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_22();
    l0 = self.box_MultipleOR_183;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|931025820", "931025820", "Coast_C2_CTP_010_Main_Enemy_Main", "box_MultipleOR_183.Out", "box_Simple_Node_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_203_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_203;
    l1 = self.box_MultipleOR_61;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|580575791", "580575791", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Brick_Exp_Common_WaveSpawner_203.NextWave", "box_MultipleOR_61.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_143_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_133();
    l0 = self.box_OnceOnly_v3_143;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1380971925", "1380971925", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OnceOnly_v3_143.Out", "box_OutputOrder_v2_133.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_105_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_213();
    l0 = self.box_Gate_v3_105;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_213;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|779326857", "779326857", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Gate_v3_105.Out", "box_Brick_Exp_Common_WaveSpawner_213.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_111_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_17();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_17;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1655209081", "1655209081", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_111.Out", "box_Brick_Exp_Common_WaveSpawner_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_111_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_205();
    l0 = self.box_MultipleAND_v2_205;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|920014925", "920014925", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_111.Out", "box_MultipleAND_v2_205.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_96_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_96;
    l1 = self.box_MultipleOR_97;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1435863109", "1435863109", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Brick_Exp_Common_WaveSpawner_96.NextWave", "box_MultipleOR_97.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Gate_v3_198_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_224();
    l0 = self.box_Gate_v3_198;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|992237587", "992237587", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Gate_v3_198.Out", "box_OutputOrder_v2_224.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_213_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_213;
    l1 = self.box_MultipleOR_107;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|692841182", "692841182", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Brick_Exp_Common_WaveSpawner_213.NextWave", "box_MultipleOR_107.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_243_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_243;
    l1 = self.box_MultipleOR_248;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|2033569993", "2033569993", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Brick_Exp_Common_WaveSpawner_243.NextWave", "box_MultipleOR_248.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Delay_v5_157_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_157;
    l1 = self.box_MultipleOR_151;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|414039131", "414039131", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Delay_v5_157.TimeElapsed", "box_MultipleOR_151.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_235_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_231();
    l0 = self.box_Delay_v5_235;
    l1 = self.box_Gate_v3_231;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1993938423", "1993938423", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Delay_v5_235.TimeElapsed", "box_Gate_v3_231.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MessageListener_v3_37_Received()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_83();
    l0 = self.box_MessageListener_v3_37;
    l1 = self.box_SpawnAI_83;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1409192929", "1409192929", "Coast_C2_CTP_010_Main_Enemy_Main", "box_MessageListener_v3_37.Received", "box_SpawnAI_83.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_240_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_241();
    l0 = self.box_MultipleAND_v2_241;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1211100327", "1211100327", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_240.Out", "box_MultipleAND_v2_241.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_240_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerFullyDetected_181();
    l0 = self.box_PlayerFullyDetected_181;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|2114961503", "2114961503", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_240.Out", "box_PlayerFullyDetected_181.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Gate_v3_64_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_208();
    l0 = self.box_Gate_v3_64;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_208;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|996665071", "996665071", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Gate_v3_64.Out", "box_Brick_Exp_Common_WaveSpawner_208.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_134_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_GetActivityFact_147();
    l0 = self.box_OnceOnly_v3_134;
    l1 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|656798030", "656798030", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OnceOnly_v3_134.Out", "box_GetActivityFact_147.GetFact", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetFact
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_126_Received()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_121();
    l0 = self.box_MessageListener_v3_126;
    l1 = self.box_MultipleAND_v2_121;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|382076378", "382076378", "Coast_C2_CTP_010_Main_Enemy_Main", "box_MessageListener_v3_126.Received", "box_MultipleAND_v2_121.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_MessageListener_v3_160_Received()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_156();
    l0 = self.box_MessageListener_v3_160;
    l1 = self.box_Delay_v5_156;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1647191587", "1647191587", "Coast_C2_CTP_010_Main_Enemy_Main", "box_MessageListener_v3_160.Received", "box_Delay_v5_156.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlayerFullyDetected_193_Detected()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_277();
    l0 = self.box_PlayerFullyDetected_193;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|935318017", "935318017", "Coast_C2_CTP_010_Main_Enemy_Main", "box_PlayerFullyDetected_193.Detected", "box_OutputOrder_v2_277.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_BasicSetups_25_Out()
    local params, l0, l1;
    self:OnExit_box_Brick_Exp_Common_BasicSetups_25_Out();
    params = self:OnEnter_box_IndexList_v2_29();
    l0 = self.box_Brick_Exp_Common_BasicSetups_25;
    l1 = self.box_IndexList_v2_29;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|2113665720", "2113665720", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Brick_Exp_Common_BasicSetups_25.Out", "box_IndexList_v2_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_23_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_InitialEnemySpawnController_52;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1413313353", "1413313353", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_23.Out", "box_InitialEnemySpawnController_52.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_23_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1001286260", "1001286260", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_23.Out", "box_OutputOrder_v2_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_23_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_19();
    l0 = self.box_IndexList_v2_19;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1249042128", "1249042128", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_23.Out", "box_IndexList_v2_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_23_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_51();
    l0 = self.box_MessageListener_v3_51;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|61062086", "61062086", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_23.Out", "box_MessageListener_v3_51.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_23_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_21();
    l0 = self.box_MessageListener_v3_21;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|319093790", "319093790", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_23.Out", "box_MessageListener_v3_21.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_23_Out_5()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ArmWrestlingController_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1591273977", "1591273977", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_23.Out", "box_ArmWrestlingController_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_23_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_127();
    l0 = self.box_IndexList_v2_127;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1441323792", "1441323792", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_23.Out", "box_IndexList_v2_127.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_23_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_149();
    l0 = self.box_MessageListener_v3_149;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|399665967", "399665967", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_23.Out", "box_MessageListener_v3_149.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_23_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_141();
    l0 = self.box_IndexList_v2_141;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|2086887864", "2086887864", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_23.Out", "box_IndexList_v2_141.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_156_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_156;
    l1 = self.box_MultipleOR_152;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|870995254", "870995254", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Delay_v5_156.TimeElapsed", "box_MultipleOR_152.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_82_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_202();
    l0 = self.box_Gate_v3_82;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_202;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|385004179", "385004179", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Gate_v3_82.Out", "box_Brick_Exp_Common_WaveSpawner_202.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_175_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_175;
    l1 = self.box_MultipleOR_177;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|492781351", "492781351", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Delay_v5_175.TimeElapsed", "box_MultipleOR_177.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_14_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_96();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_96;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1381924603", "1381924603", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_14.Out", "box_Brick_Exp_Common_WaveSpawner_96.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_14_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_10();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1876505010", "1876505010", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_14.Out", "box_Print_v2_10.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_66_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_16();
    l0 = self.box_Gate_v3_66;
    l1 = self.box_Random_16;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1645082319", "1645082319", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Gate_v3_66.Out", "box_Random_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_251_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_251;
    l1 = self.box_MultipleOR_257;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|267056673", "267056673", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Brick_Exp_Common_WaveSpawner_251.NextWave", "box_MultipleOR_257.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Delay_v5_266_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_268();
    l0 = self.box_Delay_v5_266;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|809458748", "809458748", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Delay_v5_266.TimeElapsed", "box_OutputOrder_v2_268.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_162_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_101();
    l0 = self.box_MessageListener_v3_101;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1679742997", "1679742997", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_162.Out", "box_MessageListener_v3_101.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_162_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_163();
    l0 = self.box_MessageListener_v3_163;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|635180674", "635180674", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_162.Out", "box_MessageListener_v3_163.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_98_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_98;
    l1 = self.box_MultipleOR_110;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1461578014", "1461578014", "Coast_C2_CTP_010_Main_Enemy_Main", "box_MultipleOR_98.Out", "box_MultipleOR_110.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_136_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_22();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1682878280", "1682878280", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_136.Out", "box_Simple_Node_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_136_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityFact_135();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1701326414", "1701326414", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_136.Out", "box_SetActivityFact_135.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_136_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_148();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1615218774", "1615218774", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_136.Out", "box_Simple_Node_148.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_136_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_55();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|432467317", "432467317", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_136.Out", "box_SetInteger_v2_55.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_144_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_144;
    l1 = self.box_OnceOnly_v3_143;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1964059986", "1964059986", "Coast_C2_CTP_010_Main_Enemy_Main", "box_MultipleOR_144.Out", "box_OnceOnly_v3_143.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IndexList_v2_19_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_24();
    l0 = self.box_IndexList_v2_19;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1347528369", "1347528369", "Coast_C2_CTP_010_Main_Enemy_Main", "box_IndexList_v2_19.Output", "box_Simple_Node_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_19_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_28();
    l0 = self.box_IndexList_v2_19;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|2066520948", "2066520948", "Coast_C2_CTP_010_Main_Enemy_Main", "box_IndexList_v2_19.Output", "box_Simple_Node_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_19_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_27();
    l0 = self.box_IndexList_v2_19;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|525633205", "525633205", "Coast_C2_CTP_010_Main_Enemy_Main", "box_IndexList_v2_19.Output", "box_Simple_Node_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_229_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuard_123();
    l0 = self.box_Gate_v3_229;
    l1 = self.box_Brick_Exp_Enemy_PackageGuard_123;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1849333015", "1849333015", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Gate_v3_229.Out", "box_Brick_Exp_Enemy_PackageGuard_123.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_85_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_81();
    l0 = self.box_MultipleOR_85;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|367171708", "367171708", "Coast_C2_CTP_010_Main_Enemy_Main", "box_MultipleOR_85.Out", "box_SetInteger_v2_81.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_121_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_121;
    l1 = self.box_OnceOnly_v3_134;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1457466809", "1457466809", "Coast_C2_CTP_010_Main_Enemy_Main", "box_MultipleAND_v2_121.Out", "box_OnceOnly_v3_134.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_233_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuardNearest_142();
    l0 = self.box_Delay_v5_233;
    l1 = self.box_Brick_Exp_Enemy_PackageGuardNearest_142;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|713665108", "713665108", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Delay_v5_233.TimeElapsed", "box_Brick_Exp_Enemy_PackageGuardNearest_142.PackageStolenDetected", l0:GetLuaBox(), l1:GetLuaBox());
    -- PackageStolenDetected
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_232_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuard_140();
    l0 = self.box_Brick_Exp_Enemy_PackageGuard_140;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|2038305287", "2038305287", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_232.Out", "box_Brick_Exp_Enemy_PackageGuard_140.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_232_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_231();
    l0 = self.box_Gate_v3_231;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1778393498", "1778393498", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_232.Out", "box_Gate_v3_231.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_246_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_169();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_169;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1988670813", "1988670813", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_246.Out", "box_Brick_Exp_Common_WaveSpawner_169.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_246_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_249();
    l0 = self.box_MultipleAND_v2_249;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1545384056", "1545384056", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_246.Out", "box_MultipleAND_v2_249.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_Delay_v5_118_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_119();
    l0 = self.box_Delay_v5_118;
    l1 = self.box_Delay_v5_119;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|720446059", "720446059", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Delay_v5_118.Started", "box_Delay_v5_119.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_118_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_182();
    l0 = self.box_Delay_v5_118;
    l1 = self.box_Gate_v3_182;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1116063710", "1116063710", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Delay_v5_118.TimeElapsed", "box_Gate_v3_182.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_234_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_229();
    l0 = self.box_Delay_v5_234;
    l1 = self.box_Gate_v3_229;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1120053146", "1120053146", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Delay_v5_234.TimeElapsed", "box_Gate_v3_229.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_145_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_145;
    l1 = self.box_MultipleOR_144;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1423457144", "1423457144", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Delay_v5_145.TimeElapsed", "box_MultipleOR_144.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetContextualStrategy_113_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_222();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1291437435", "1291437435", "Coast_C2_CTP_010_Main_Enemy_Main", "box_SetContextualStrategy_113.Out", "box_Print_v2_222.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_182_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_38();
    l0 = self.box_Gate_v3_182;
    l1 = self.box_Delay_v5_38;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|87523167", "87523167", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Gate_v3_182.Out", "box_Delay_v5_38.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ActivityAcknowledgeGate_73_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_73;
    l1 = self.box_MultipleOR_72;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1218799424", "1218799424", "Coast_C2_CTP_010_Main_Enemy_Main", "box_ActivityAcknowledgeGate_73.Acknowledged", "box_MultipleOR_72.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_73_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_73;
    l1 = self.box_MultipleOR_72;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1830249682", "1830249682", "Coast_C2_CTP_010_Main_Enemy_Main", "box_ActivityAcknowledgeGate_73.Reloaded", "box_MultipleOR_72.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetContextualStrategy_120_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_122();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|960112144", "960112144", "Coast_C2_CTP_010_Main_Enemy_Main", "box_SetContextualStrategy_120.Out", "box_Print_v2_122.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_42_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_42_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_31;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1514341081", "1514341081", "Coast_C2_CTP_010_Main_Enemy_Main", "box_SetEntity_v2_42.Out", "box_MultipleOR_31.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetInteger_v2_35_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_35_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_34();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|177077998", "177077998", "Coast_C2_CTP_010_Main_Enemy_Main", "box_SetInteger_v2_35.Out", "box_SetInteger_v2_34.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_208_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_208;
    l1 = self.box_MultipleOR_110;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|734804889", "734804889", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Brick_Exp_Common_WaveSpawner_208.NextWave", "box_MultipleOR_110.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Gate_v3_102_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_216();
    l0 = self.box_Gate_v3_102;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_216;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1493345009", "1493345009", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Gate_v3_102.Out", "box_Brick_Exp_Common_WaveSpawner_216.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_SetFloat_v2_166_Out()
    local params, l0;
    self:OnExit_box_SetFloat_v2_166_Out();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_179();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1440563257", "1440563257", "Coast_C2_CTP_010_Main_Enemy_Main", "box_SetFloat_v2_166.Out", "box_OutputOrder_v2_179.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_197_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_223();
    l0 = self.box_Gate_v3_197;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1410051121", "1410051121", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Gate_v3_197.Out", "box_OutputOrder_v2_223.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_264_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_264;
    l1 = self.box_MultipleOR_265;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|147724169", "147724169", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Brick_Exp_Common_WaveSpawner_264.NextWave", "box_MultipleOR_265.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_116_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_182();
    l0 = self.box_Gate_v3_182;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|567747419", "567747419", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_116.Out", "box_Gate_v3_182.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_116_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_183;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|862242898", "862242898", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_116.Out", "box_MultipleOR_183.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IndexList_v2_29_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_137();
    l0 = self.box_IndexList_v2_29;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|138531649", "138531649", "Coast_C2_CTP_010_Main_Enemy_Main", "box_IndexList_v2_29.Output", "box_SetInteger_v2_137.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_29_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_138();
    l0 = self.box_IndexList_v2_29;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|740607890", "740607890", "Coast_C2_CTP_010_Main_Enemy_Main", "box_IndexList_v2_29.Output", "box_SetInteger_v2_138.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_29_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_BasicSetups_32();
    l0 = self.box_IndexList_v2_29;
    l1 = self.box_Brick_Exp_Common_BasicSetups_32;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|372479550", "372479550", "Coast_C2_CTP_010_Main_Enemy_Main", "box_IndexList_v2_29.Output", "box_Brick_Exp_Common_BasicSetups_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleAND_v2_261_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_260();
    l0 = self.box_MultipleAND_v2_261;
    l1 = self.box_Random_260;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1605113495", "1605113495", "Coast_C2_CTP_010_Main_Enemy_Main", "box_MultipleAND_v2_261.Out", "box_Random_260.Reset", l0:GetLuaBox(), l1:GetLuaBox());
    -- Reset
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_275_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_189;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1008504260", "1008504260", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_275.Out", "box_MultipleOR_189.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_275_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RadioModifier_v3_276();
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|102268319", "102268319", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_275.Out", "box_RadioModifier_v3_276.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_170_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_67();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_67;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|69876922", "69876922", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_170.Out", "box_Brick_Exp_Common_WaveSpawner_67.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_170_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_205();
    l0 = self.box_MultipleAND_v2_205;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1125985305", "1125985305", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_170.Out", "box_MultipleAND_v2_205.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 2);
end;

function export:f_box_OutputOrder_v2_11_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_269();
    l0 = self.box_SpawnAI_269;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1397913619", "1397913619", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_11.Out", "box_SpawnAI_269.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_11_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_65();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_65;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1070049571", "1070049571", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_11.Out", "box_Brick_Exp_Common_WaveSpawner_65.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_11_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_57();
    l0 = self.box_ProximityTrigger_v3_57;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1621535541", "1621535541", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_11.Out", "box_ProximityTrigger_v3_57.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_11_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_266();
    l0 = self.box_Delay_v5_266;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|91192458", "91192458", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_11.Out", "box_Delay_v5_266.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_11_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_8();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|205658384", "205658384", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_11.Out", "box_Print_v2_8.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_239_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_239;
    l1 = self.box_OnceOnly_v3_192;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|518602849", "518602849", "Coast_C2_CTP_010_Main_Enemy_Main", "box_MultipleAND_v2_239.Out", "box_OnceOnly_v3_192.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MessageListener_v3_90_Received()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_238();
    l0 = self.box_MessageListener_v3_90;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|508653995", "508653995", "Coast_C2_CTP_010_Main_Enemy_Main", "box_MessageListener_v3_90.Received", "box_OutputOrder_v2_238.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_62_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_210();
    l0 = self.box_Gate_v3_62;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_210;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1117491204", "1117491204", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Gate_v3_62.Out", "box_Brick_Exp_Common_WaveSpawner_210.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_53_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_53;
    l1 = self.box_OnceOnly_v3_44;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1746794370", "1746794370", "Coast_C2_CTP_010_Main_Enemy_Main", "box_MultipleOR_53.Out", "box_OnceOnly_v3_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_194_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_194;
    l1 = self.box_MultipleOR_191;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1396629541", "1396629541", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Delay_v5_194.TimeElapsed", "box_MultipleOR_191.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_70_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_201();
    l0 = self.box_Gate_v3_70;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_201;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1532360234", "1532360234", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Gate_v3_70.Out", "box_Brick_Exp_Common_WaveSpawner_201.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_207_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_62();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_207;
    l1 = self.box_Gate_v3_62;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1281423228", "1281423228", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Brick_Exp_Common_WaveSpawner_207.NextWave", "box_Gate_v3_62.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = self.box_Gate_v3_4;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|953767322", "953767322", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Gate_v3_4.Out", "box_OutputOrder_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_223_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_195();
    l0 = self.box_Delay_v5_195;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1457850168", "1457850168", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_223.Out", "box_Delay_v5_195.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_223_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_221();
    l0 = self.box_ProximityRadiusListener_v3_221;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1522266223", "1522266223", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_223.Out", "box_ProximityRadiusListener_v3_221.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_87_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_214();
    l0 = self.box_Delay_v5_87;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_214;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1571635829", "1571635829", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Delay_v5_87.TimeElapsed", "box_Brick_Exp_Common_WaveSpawner_214.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_Gate_v3_104_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_217();
    l0 = self.box_Gate_v3_104;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_217;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1734723382", "1734723382", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Gate_v3_104.Out", "box_Brick_Exp_Common_WaveSpawner_217.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_MessageListener_v3_101_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_101;
    l1 = self.box_MultipleOR_151;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1863445574", "1863445574", "Coast_C2_CTP_010_Main_Enemy_Main", "box_MessageListener_v3_101.Received", "box_MultipleOR_151.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_78_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_37();
    l0 = self.box_MessageListener_v3_37;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|780983843", "780983843", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_78.Out", "box_MessageListener_v3_37.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_78_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_158();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|322861741", "322861741", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_78.Out", "box_OutputOrder_v2_158.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_78_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_90();
    l0 = self.box_MessageListener_v3_90;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|808546288", "808546288", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_78.Out", "box_MessageListener_v3_90.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_78_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_198();
    l0 = self.box_Gate_v3_198;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|2085371275", "2085371275", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_78.Out", "box_Gate_v3_198.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_67_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_67;
    l1 = self.box_MultipleOR_98;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1384299778", "1384299778", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Brick_Exp_Common_WaveSpawner_67.NextWave", "box_MultipleOR_98.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OnceOnly_v3_44_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_49();
    l0 = self.box_OnceOnly_v3_44;
    l1 = self.box_SpawnAI_49;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1889621708", "1889621708", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OnceOnly_v3_44.Out", "box_SpawnAI_49.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_164_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_164;
    l1 = self.box_MultipleOR_177;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|339714443", "339714443", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Delay_v5_164.TimeElapsed", "box_MultipleOR_177.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetEntity_v2_41_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_41_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_31;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1415790046", "1415790046", "Coast_C2_CTP_010_Main_Enemy_Main", "box_SetEntity_v2_41.Out", "box_MultipleOR_31.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_273_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_190;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|851456280", "851456280", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_273.Out", "box_MultipleOR_190.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_273_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RadioModifier_v3_274();
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|150362085", "150362085", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_273.Out", "box_RadioModifier_v3_274.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_212_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_212;
    l1 = self.box_MultipleOR_265;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|18742471", "18742471", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Brick_Exp_Common_WaveSpawner_212.NextWave", "box_MultipleOR_265.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_76_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_40();
    l0 = self.box_OnceOnly_v3_76;
    l1 = self.box_Delay_v5_40;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1439096750", "1439096750", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OnceOnly_v3_76.Out", "box_Delay_v5_40.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MessageListener_v3_58_Received()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_99();
    l0 = self.box_MessageListener_v3_58;
    l1 = self.box_Delay_v5_99;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1027347027", "1027347027", "Coast_C2_CTP_010_Main_Enemy_Main", "box_MessageListener_v3_58.Received", "box_Delay_v5_99.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SetActivityFact_135_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_219();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1581803399", "1581803399", "Coast_C2_CTP_010_Main_Enemy_Main", "box_SetActivityFact_135.Out", "box_OutputOrder_v2_219.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_77_Received()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_240();
    l0 = self.box_MessageListener_v3_77;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|752019537", "752019537", "Coast_C2_CTP_010_Main_Enemy_Main", "box_MessageListener_v3_77.Received", "box_OutputOrder_v2_240.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_206_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_64();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_206;
    l1 = self.box_Gate_v3_64;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|635967203", "635967203", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Brick_Exp_Common_WaveSpawner_206.NextWave", "box_Gate_v3_64.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_237_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_236();
    l0 = self.box_MultipleAND_v2_236;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|872923222", "872923222", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_237.Out", "box_MultipleAND_v2_236.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_237_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerFullyDetected_188();
    l0 = self.box_PlayerFullyDetected_188;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1035736679", "1035736679", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_237.Out", "box_PlayerFullyDetected_188.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Gate_v3_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_14();
    l0 = self.box_Gate_v3_5;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|649970326", "649970326", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Gate_v3_5.Out", "box_OutputOrder_v2_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_165_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_165_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetFloat_v2_166();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|753948166", "753948166", "Coast_C2_CTP_010_Main_Enemy_Main", "box_SetInteger_v2_165.Out", "box_SetFloat_v2_166.FromFloat", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromFloat
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_272_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_79();
    l0 = self.box_Delay_v5_79;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1296947923", "1296947923", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_272.Out", "box_Delay_v5_79.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_272_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_EnemyHelicopterCleaner_271();
    l0 = self.box_Brick_Exp_Common_EnemyHelicopterCleaner_271;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|669340122", "669340122", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_272.Out", "box_Brick_Exp_Common_EnemyHelicopterCleaner_271.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_177_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_177;
    l1 = self.box_OnceOnly_v3_178;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1848677894", "1848677894", "Coast_C2_CTP_010_Main_Enemy_Main", "box_MultipleOR_177.Out", "box_OnceOnly_v3_178.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_150_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_56();
    l0 = self.box_OnceOnly_v3_150;
    l1 = self.box_SpawnAI_56;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1123690995", "1123690995", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OnceOnly_v3_150.Out", "box_SpawnAI_56.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_248_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_248;
    l1 = self.box_MultipleOR_97;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|40979044", "40979044", "Coast_C2_CTP_010_Main_Enemy_Main", "box_MultipleOR_248.Out", "box_MultipleOR_97.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_12_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_94();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_94;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1434005277", "1434005277", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_12.Out", "box_Brick_Exp_Common_WaveSpawner_94.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_12_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_9();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1408084838", "1408084838", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_12.Out", "box_Print_v2_9.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_171_Out()
    self:OnExit_box_SetBoolean_v2_171_Out();
end;

function export:f_box_SetBoolean_v2_88_Out()
    self:OnExit_box_SetBoolean_v2_88_Out();
end;

function export:f_box_MultipleAND_v2_255_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_254();
    l0 = self.box_MultipleAND_v2_255;
    l1 = self.box_Random_254;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1448740177", "1448740177", "Coast_C2_CTP_010_Main_Enemy_Main", "box_MultipleAND_v2_255.Out", "box_Random_254.Reset", l0:GetLuaBox(), l1:GetLuaBox());
    -- Reset
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_38_Started()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_39();
    l0 = self.box_Delay_v5_38;
    l1 = self.box_DisplayCustomUIMsg_v5_39;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1311493453", "1311493453", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Delay_v5_38.Started", "box_DisplayCustomUIMsg_v5_39.Display", l0:GetLuaBox(), l1:GetLuaBox());
    -- Display
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_38_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_39();
    l0 = self.box_Delay_v5_38;
    l1 = self.box_DisplayCustomUIMsg_v5_39;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|65283142", "65283142", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Delay_v5_38.TimeElapsed", "box_DisplayCustomUIMsg_v5_39.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_191_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_239();
    l0 = self.box_MultipleOR_191;
    l1 = self.box_MultipleAND_v2_239;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1872218838", "1872218838", "Coast_C2_CTP_010_Main_Enemy_Main", "box_MultipleOR_191.Out", "box_MultipleAND_v2_239.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_SetContextualStrategy_115_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_226();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|657462669", "657462669", "Coast_C2_CTP_010_Main_Enemy_Main", "box_SetContextualStrategy_115.Out", "box_Print_v2_226.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_262_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_212();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_212;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1397814696", "1397814696", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_262.Out", "box_Brick_Exp_Common_WaveSpawner_212.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_262_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_261();
    l0 = self.box_MultipleAND_v2_261;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1082094918", "1082094918", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_262.Out", "box_MultipleAND_v2_261.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_245_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_243();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_243;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1108149367", "1108149367", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_245.Out", "box_Brick_Exp_Common_WaveSpawner_243.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_245_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_249();
    l0 = self.box_MultipleAND_v2_249;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1009311681", "1009311681", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_245.Out", "box_MultipleAND_v2_249.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 2);
end;

function export:f_box_Delay_v5_103_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_207();
    l0 = self.box_Delay_v5_103;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_207;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1227796877", "1227796877", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Delay_v5_103.TimeElapsed", "box_Brick_Exp_Common_WaveSpawner_207.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_DisplayCustomUIMsg_v5_39_OnDisplay()
    local l0, l1;
    l0 = self.box_DisplayCustomUIMsg_v5_39;
    l1 = self.box_MultipleOR_183;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|2098253608", "2098253608", "Coast_C2_CTP_010_Main_Enemy_Main", "box_DisplayCustomUIMsg_v5_39.OnDisplay", "box_MultipleOR_183.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_124_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_125();
    l0 = self.box_SpawnAI_124;
    l1 = self.box_SpawnAI_125;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|2129808156", "2129808156", "Coast_C2_CTP_010_Main_Enemy_Main", "box_SpawnAI_124.Out", "box_SpawnAI_125.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_189_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_236();
    l0 = self.box_MultipleOR_189;
    l1 = self.box_MultipleAND_v2_236;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|674040872", "674040872", "Coast_C2_CTP_010_Main_Enemy_Main", "box_MultipleOR_189.Out", "box_MultipleAND_v2_236.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_Delay_v5_119_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_119;
    l1 = self.box_Flare_STP_89;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1619955685", "1619955685", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Delay_v5_119.TimeElapsed", "box_Flare_STP_89.Cleanup", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cleanup
    l1:Exec(0, {
    });
end;

function export:f_box_Brick_Exp_Common_BasicSetups_32_Out()
    local l0, l1;
    self:OnExit_box_Brick_Exp_Common_BasicSetups_32_Out();
    l0 = self.box_Brick_Exp_Common_BasicSetups_32;
    l1 = self.box_MultipleOR_31;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|150128133", "150128133", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Brick_Exp_Common_BasicSetups_32.Out", "box_MultipleOR_31.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_47_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuardNearest_142();
    l0 = self.box_Brick_Exp_Enemy_PackageGuardNearest_142;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|297183992", "297183992", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_47.Out", "box_Brick_Exp_Enemy_PackageGuardNearest_142.PackagePicked", clone:GetLuaBox(), l0:GetLuaBox());
    -- PackagePicked
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_47_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_AISetupAfterPackageIsPicked_26;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1294837889", "1294837889", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_47.Out", "box_AISetupAfterPackageIsPicked_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_47_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_174();
    l0 = self.box_IndexList_v2_174;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|797430941", "797430941", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_47.Out", "box_IndexList_v2_174.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_179_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_167();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1070777292", "1070777292", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_179.Out", "box_Print_v2_167.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_179_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_180();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|528026700", "528026700", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_179.Out", "box_Simple_Node_180.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_224_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_194();
    l0 = self.box_Delay_v5_194;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1091100232", "1091100232", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_224.Out", "box_Delay_v5_194.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_224_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_228();
    l0 = self.box_ProximityRadiusListener_v3_228;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|210017263", "210017263", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_224.Out", "box_ProximityRadiusListener_v3_228.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_172_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_23();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|323332223", "323332223", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_172.Out", "box_OutputOrder_v2_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_172_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_171();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|215909975", "215909975", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_172.Out", "box_SetBoolean_v2_171.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_221_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_113();
    l0 = self.box_ProximityRadiusListener_v3_221;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|939610780", "939610780", "Coast_C2_CTP_010_Main_Enemy_Main", "box_ProximityRadiusListener_v3_221.SomeoneNear", "box_SetContextualStrategy_113.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_51_Received()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_112();
    l0 = self.box_MessageListener_v3_51;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1036249100", "1036249100", "Coast_C2_CTP_010_Main_Enemy_Main", "box_MessageListener_v3_51.Received", "box_Simple_Node_112.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = self.box_Gate_v3_3;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1828658091", "1828658091", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Gate_v3_3.Out", "box_OutputOrder_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_204_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_204;
    l1 = self.box_MultipleOR_257;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1020999578", "1020999578", "Coast_C2_CTP_010_Main_Enemy_Main", "box_Brick_Exp_Common_WaveSpawner_204.NextWave", "box_MultipleOR_257.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_178_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_165();
    l0 = self.box_OnceOnly_v3_178;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|495061905", "495061905", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OnceOnly_v3_178.Out", "box_SetInteger_v2_165.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_81_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_81_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_86();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1671847453", "1671847453", "Coast_C2_CTP_010_Main_Enemy_Main", "box_SetInteger_v2_81.Out", "box_Print_v2_86.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_153_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_117();
    l0 = self.box_OnceOnly_v3_153;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1925189233", "1925189233", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OnceOnly_v3_153.Out", "box_OutputOrder_v2_117.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_72_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_72;
    l1 = self.box_ActivityInitialized_74;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1435980903", "1435980903", "Coast_C2_CTP_010_Main_Enemy_Main", "box_MultipleOR_72.Out", "box_ActivityInitialized_74.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_106_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_103();
    l0 = self.box_Delay_v5_103;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|2147199050", "2147199050", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_106.Out", "box_Delay_v5_103.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_106_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_108();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1919650333", "1919650333", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_106.Out", "box_Simple_Node_108.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_106_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_186();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|291966352", "291966352", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_106.Out", "box_Print_v2_186.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_106_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerFullyDetected_193();
    l0 = self.box_PlayerFullyDetected_193;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|735089283", "735089283", "Coast_C2_CTP_010_Main_Enemy_Main", "box_OutputOrder_v2_106.Out", "box_PlayerFullyDetected_193.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_MessageListener_v3_155_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_155;
    l1 = self.box_MultipleOR_152;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|108890781", "108890781", "Coast_C2_CTP_010_Main_Enemy_Main", "box_MessageListener_v3_155.Received", "box_MultipleOR_152.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:OnEnter_box_Simple_Node_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|@callFortressWave");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_22_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|@Ext_A_Waves");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_24_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|@Ext_B_Waves");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_28_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|@Ext_C_Waves");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_27_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_112()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_112");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|@GetOnHelicopter");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_112_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_148()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_148");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|@packageStolenDetected");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_148_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_108");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|@stopFortressWave");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_108_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_180()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_180");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|@updateExtractionWaveDifficulty");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_180_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_69()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayerFullyDetected_181()
    local params;
    params = {
        -- group,
        [0] = "#860A3B69",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_249()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|44642059");
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

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_211()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = self.i_AllowedRemainingNPC_Extraction,
        -- EnemyGroup,
        [1] = "#860A3B69",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 30,
        -- MinWaveDuration,
        [4] = self.f_MinWaveDuration_Extraction,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- Spawner_1,
        [10] = "2108912925902118462",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_PackageGuard_140()
    local params;
    params = {
        -- EnemyGroup_All,
        [0] = "#860A3B69",
        -- EnemyGroup_PackageGuard,
        [1] = "#B0595EC0",
        -- EnemyGroup_Prio_01,
        [2] = "#542A68B3",
        -- EnemyGroup_Prio_02,
        [3] = "#CD233909",
        -- EnemyGroup_Prio_03,
        [4] = "#BA24099F",
        -- PackageGuardCS,
        [5] = "2109368545214212266",
        -- PackageGuardNUM,
        [6] = 2,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_83()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108437980986217164",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_149()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "package_is_picked",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_200()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = self.i_AllowedRemainingNPC_Extraction,
        -- EnemyGroup,
        [1] = "#860A3B69",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 30,
        -- MinWaveDuration,
        [4] = self.f_MinWaveDuration_Extraction,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- Spawner_1,
        [10] = "2109060594941304326",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_225()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_225");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|64425754");
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
                [0] = self.f_box_OutputOrder_v2_225_Out_0,
                [1] = self.f_box_OutputOrder_v2_225_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_259()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_259");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|67136970");
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
                [0] = self.f_box_OutputOrder_v2_259_Out_0,
                [1] = self.f_box_OutputOrder_v2_259_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_196()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_Random_247()
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

function export:OnEnter_box_SetFloat_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|75834348");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_45_Out,
    });
    params = {
        -- Float,
        [0] = 2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_84()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|94721713");
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
                [0] = self.f_box_OutputOrder_v2_84_Out_0,
                [1] = self.f_box_OutputOrder_v2_84_Out_1,
                [2] = self.f_box_OutputOrder_v2_84_Out_2,
                [3] = self.f_box_OutputOrder_v2_84_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_258()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_258");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|109218633");
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
                [0] = self.f_box_OutputOrder_v2_258_Out_0,
                [1] = self.f_box_OutputOrder_v2_258_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_217()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = self.i_AllowedRemainingNPC_Extraction,
        -- EnemyGroup,
        [1] = "#860A3B69",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 30,
        -- MinWaveDuration,
        [4] = self.f_MinWaveDuration_Extraction,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- Spawner_1,
        [10] = "2109073840846938945",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_PackageGuardNearest_142()
    local params;
    params = {
        -- ActualPackageSpawner,
        [0] = Globals.Coast_C2_CTP_010_Main_Enemy.e_PackageSpawner,
        -- EnemyGroup_PackageGuard,
        [1] = "#B0595EC0",
        -- EnemyGroupAll,
        [2] = "#860A3B69",
        -- PackageGuardPositionCS_A,
        [3] = "2109369197208283342",
        -- PackageGuardPositionCS_B,
        [4] = "2109369197208283342",
        -- PackageGuardPositionCS_C,
        [5] = "2109368545214212266",
        -- PackageSpawner_A,
        [9] = "2108205032343084036",
        -- PackageSpawner_B,
        [10] = "2108205035717401612",
        -- PackageSpawner_C,
        [11] = "2108205016306162668",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_40()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_250()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = self.i_AllowedRemainingNPC_Extraction,
        -- EnemyGroup,
        [1] = "#860A3B69",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 30,
        -- MinWaveDuration,
        [4] = self.f_MinWaveDuration_Extraction,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- Spawner_1,
        [10] = "2109063425438001259",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_277()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_277");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|157997489");
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
                [0] = self.f_box_OutputOrder_v2_277_Out_0,
                [1] = self.f_box_OutputOrder_v2_277_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_241()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|176819826");
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
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_17()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = self.i_AllowedRemainingNPC_Extraction,
        -- EnemyGroup,
        [1] = "#860A3B69",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 30,
        -- MinWaveDuration,
        [4] = self.f_MinWaveDuration_Extraction,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- Spawner_1,
        [10] = "2108912982864961319",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_79()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_220()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = PersistentGlobals.Lib_Expeditions_Gameplay.ePackageOwner,
        -- id2,
        [3] = "2108233191872535833",
        -- nearZone,
        [4] = 40,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_100");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|192931739");
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
                [0] = self.f_box_OutputOrder_v2_100_Out_0,
                [1] = self.f_box_OutputOrder_v2_100_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_133()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_133");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|194623502");
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
                [0] = self.f_box_OutputOrder_v2_133_Out_0,
                [1] = self.f_box_OutputOrder_v2_133_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_268()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_268");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|195172684");
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
                [0] = self.f_box_OutputOrder_v2_268_Out_0,
                [1] = self.f_box_OutputOrder_v2_268_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_226()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_226");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|211683198");
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
        [8] = "All enemy go to extraction point C!!!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|240053023");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_55_Out,
    });
    params = {
        -- Integer,
        [1] = 8,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|240062923");
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
        [8] = "Wave 4 spawning",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_163()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "spawn_helicopter",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_137()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_137");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|265620507");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_137_Out,
    });
    params = {
        -- Integer,
        [1] = 1,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_278()
    local params, l0;
    DrawTextToScreen("Comment: LC: Disable on detection BOW-74745", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RadioModifier_v3')-- Comment: LC: Disable on detection BOW-74745");
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_278");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|265962444");
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
        [5] = "2109685923370252849",
    };
    return params;
end;

function export:OnEnter_box_Random_16()
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

function export:OnEnter_box_Delay_v5_176()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 115,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_49()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109020279001843041",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_92()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_99()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_174()
    local params;
    params = {
        -- Index,
        [0] = Globals.Coast_C2_CTP_010_Main_Enemy.i_Difficulty,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_127()
    local params;
    params = {
        -- Index,
        [0] = Globals.Coast_C2_CTP_010_Main_Enemy.i_Difficulty,
    };
    return params;
end;

function export:OnEnter_box_Random_254()
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

function export:OnEnter_box_MessageListener_v3_54()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "package_is_picked",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_231()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|383793889");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_34_Out,
    });
    params = {
        -- Integer,
        [1] = 2,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_267()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_267");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|403549124");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "orange",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "roof trigger has been disabled",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_50()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "reach_extraction_a",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_202()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = self.i_AllowedRemainingNPC_Extraction,
        -- EnemyGroup,
        [1] = "#860A3B69",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 30,
        -- MinWaveDuration,
        [4] = self.f_MinWaveDuration_Extraction,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- opt_Spawner_2,
        [6] = "2109062890213351282",
        -- Spawner_1,
        [10] = "2109062843801280128",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_94()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = self.i_AllowedRemainingNPC_Fortress,
        -- EnemyGroup,
        [1] = "#860A3B69",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 60,
        -- MinWaveDuration,
        [4] = self.f_MinWaveDuration_Fortress,
        -- NextWaveWaitUntilCombat,
        [5] = Globals.Coast_C2_CTP_010_Main_Enemy.b_NextWaveUntilCombat,
        -- opt_Spawner_2,
        [6] = "2108622880662119098",
        -- Spawner_1,
        [10] = "2108216393852787590",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_195()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_147()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_147");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|459577422");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_147_FactNotSet,
        -- FactSet,
        [1] = self.f_box_GetActivityFact_147_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015340572528165",
        -- Fact,
        [1] = "player_fullydetected",
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_276()
    local params, l0;
    DrawTextToScreen("Comment: LC: Disable on detection BOW-74745", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RadioModifier_v3')-- Comment: LC: Disable on detection BOW-74745");
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_276");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|463345007");
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
        [5] = "2109685923370252849",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|471807035");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_30_Out,
    });
    params = {
        -- Integer,
        [1] = 2,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_PackageGuard_123()
    local params;
    params = {
        -- EnemyGroup_All,
        [0] = "#860A3B69",
        -- EnemyGroup_PackageGuard,
        [1] = "#B0595EC0",
        -- EnemyGroup_Prio_01,
        [2] = "#542A68B3",
        -- EnemyGroup_Prio_02,
        [3] = "#CD233909",
        -- EnemyGroup_Prio_03,
        [4] = "#BA24099F",
        -- PackageGuardCS,
        [5] = "2109369197208283342",
        -- PackageGuardNUM,
        [6] = 2,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_215()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = self.i_AllowedRemainingNPC_Fortress,
        -- EnemyGroup,
        [1] = "#860A3B69",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 60,
        -- MinWaveDuration,
        [4] = self.f_MinWaveDuration_Fortress,
        -- NextWaveWaitUntilCombat,
        [5] = Globals.Coast_C2_CTP_010_Main_Enemy.b_NextWaveUntilCombat,
        -- Spawner_1,
        [10] = "2108620338024682576",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|512762175");
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
                [0] = self.f_box_OutputOrder_v2_13_Out_0,
                [1] = self.f_box_OutputOrder_v2_13_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_253()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_253");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|514959029");
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
                [0] = self.f_box_OutputOrder_v2_253_Out_0,
                [1] = self.f_box_OutputOrder_v2_253_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_158()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_158");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|526183315");
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
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|532407282");
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
                [0] = self.f_box_OutputOrder_v2_60_Out_0,
                [1] = self.f_box_OutputOrder_v2_60_Out_1,
                [2] = self.f_box_OutputOrder_v2_60_Out_2,
                [3] = self.f_box_OutputOrder_v2_60_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_228()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = PersistentGlobals.Lib_Expeditions_Gameplay.ePackageOwner,
        -- id2,
        [3] = "2108230384811515197",
        -- nearZone,
        [4] = 40,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_43()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "package_is_picked",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_201()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = self.i_AllowedRemainingNPC_Extraction,
        -- EnemyGroup,
        [1] = "#860A3B69",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 30,
        -- MinWaveDuration,
        [4] = self.f_MinWaveDuration_Extraction,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- opt_Spawner_2,
        [6] = "2109794732776360849",
        -- opt_Spawner_3,
        [7] = "2109062741890178626",
        -- Spawner_1,
        [10] = "2109794725813816163",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_93()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "reach_extraction_a",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_109()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_230()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_230");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|585396848");
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
                [0] = self.f_box_OutputOrder_v2_230_Out_0,
                [1] = self.f_box_OutputOrder_v2_230_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_169()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = self.i_AllowedRemainingNPC_Fortress,
        -- EnemyGroup,
        [1] = "#860A3B69",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 60,
        -- MinWaveDuration,
        [4] = self.f_MinWaveDuration_Fortress,
        -- NextWaveWaitUntilCombat,
        [5] = Globals.Coast_C2_CTP_010_Main_Enemy.b_NextWaveUntilCombat,
        -- Spawner_1,
        [10] = "2108979708625433039",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_236()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayerFullyDetected_75()
    local params;
    params = {
        -- group,
        [0] = "#860A3B69",
    };
    return params;
end;

function export:OnEnter_box_PlayerFullyDetected_188()
    local params;
    params = {
        -- group,
        [0] = "#860A3B69",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_63()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_263()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = self.i_AllowedRemainingNPC_Extraction,
        -- EnemyGroup,
        [1] = "#860A3B69",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 30,
        -- MinWaveDuration,
        [4] = self.f_MinWaveDuration_Extraction,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- Spawner_1,
        [10] = "2109073950022575537",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|661748352");
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
                [0] = self.f_box_OutputOrder_v2_48_Out_0,
                [1] = self.f_box_OutputOrder_v2_48_Out_1,
                [2] = self.f_box_OutputOrder_v2_48_Out_2,
                [3] = self.f_box_OutputOrder_v2_48_Out_3,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_214()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = self.i_AllowedRemainingNPC_Extraction,
        -- EnemyGroup,
        [1] = "#860A3B69",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 30,
        -- MinWaveDuration,
        [4] = self.f_MinWaveDuration_Extraction,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- Spawner_1,
        [10] = "2109073663272689528",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_95()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = self.i_AllowedRemainingNPC_Fortress,
        -- EnemyGroup,
        [1] = "#860A3B69",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 60,
        -- MinWaveDuration,
        [4] = self.f_MinWaveDuration_Fortress,
        -- NextWaveWaitUntilCombat,
        [5] = Globals.Coast_C2_CTP_010_Main_Enemy.b_NextWaveUntilCombat,
        -- opt_Spawner_2,
        [6] = "2108622913797121133",
        -- Spawner_1,
        [10] = "2108620153276075885",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_269()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109546117824776782",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_216()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = self.i_AllowedRemainingNPC_Extraction,
        -- EnemyGroup,
        [1] = "#860A3B69",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 30,
        -- MinWaveDuration,
        [4] = self.f_MinWaveDuration_Extraction,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- Spawner_1,
        [10] = "2109073757011190178",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_125()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109214691692654100",
    };
    return params;
end;

function export:OnEnter_box_Random_260()
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

function export:OnEnter_box_OutputOrder_v2_209()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_209");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|701929062");
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
                [0] = self.f_box_OutputOrder_v2_209_Out_0,
                [1] = self.f_box_OutputOrder_v2_209_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_122()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_122");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|704720018");
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
        [8] = "Parachete drop into trigger! Change CS!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_57()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = "#6088FBBF",
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109547940505717239",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_80()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#860A3B69",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|763605637");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_33_Out,
    });
    params = {
        -- Integer,
        [1] = 3,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_21()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "PackageStolenDetected",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_65()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = self.i_AllowedRemainingNPC_Fortress,
        -- EnemyGroup,
        [1] = "#860A3B69",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 60,
        -- MinWaveDuration,
        [4] = self.f_MinWaveDuration_Fortress,
        -- NextWaveWaitUntilCombat,
        [5] = Globals.Coast_C2_CTP_010_Main_Enemy.b_NextWaveUntilCombat,
        -- Spawner_1,
        [10] = "2110155019025137254",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_199()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_91()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|789742342");
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
                [0] = self.f_box_OutputOrder_v2_68_Out_0,
                [1] = self.f_box_OutputOrder_v2_68_Out_1,
                [2] = self.f_box_OutputOrder_v2_68_Out_2,
                [3] = self.f_box_OutputOrder_v2_68_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_138()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_138");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|797417953");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_138_Out,
    });
    params = {
        -- Integer,
        [1] = 3,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_141()
    local params;
    params = {
        -- Index,
        [0] = Globals.Coast_C2_CTP_010_Main_Enemy.i_PackagePositionIndex,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_2()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_252()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_252");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|812687805");
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
                [0] = self.f_box_OutputOrder_v2_252_Out_0,
                [1] = self.f_box_OutputOrder_v2_252_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|813868486");
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
        [8] = "Wave 5 spawning",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_205()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_238()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_238");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|826583545");
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
                [0] = self.f_box_OutputOrder_v2_238_Out_0,
                [1] = self.f_box_OutputOrder_v2_238_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_219()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_219");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|833628968");
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
                [0] = self.f_box_OutputOrder_v2_219_Out_0,
                [1] = self.f_box_OutputOrder_v2_219_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_256()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_256");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|839332403");
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
                [0] = self.f_box_OutputOrder_v2_256_Out_0,
                [1] = self.f_box_OutputOrder_v2_256_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_210()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = self.i_AllowedRemainingNPC_Extraction,
        -- EnemyGroup,
        [1] = "#860A3B69",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 30,
        -- MinWaveDuration,
        [4] = self.f_MinWaveDuration_Extraction,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- opt_Spawner_2,
        [6] = "2109767617490193207",
        -- Spawner_1,
        [10] = "2108230246571449385",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_173()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_173");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|846543792");
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
        [8] = "Make fortress wave HARDER!!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_130()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_130");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|849651169");
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
                [0] = self.f_box_OutputOrder_v2_130_Out_0,
                [1] = self.f_box_OutputOrder_v2_130_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_117()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_117");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|866190618");
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
                [0] = self.f_box_OutputOrder_v2_117_Out_0,
                [1] = self.f_box_OutputOrder_v2_117_Out_1,
                [2] = self.f_box_OutputOrder_v2_117_Out_2,
                [3] = self.f_box_OutputOrder_v2_117_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_56()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109022285074546601",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_244()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_244");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|870381129");
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
                [0] = self.f_box_OutputOrder_v2_244_Out_0,
                [1] = self.f_box_OutputOrder_v2_244_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_114()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_114");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|884549775");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_114_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109878150847548468",
        -- Group,
        [1] = "#65160D41",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_218()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_218");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|922517800");
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
        [8] = "Package Stolen Detected!!!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_167()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_167");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|933472326");
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
        [8] = "Make extraction wave HARDER!!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_203()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = self.i_AllowedRemainingNPC_Extraction,
        -- EnemyGroup,
        [1] = "#860A3B69",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 30,
        -- MinWaveDuration,
        [4] = self.f_MinWaveDuration_Extraction,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- opt_Spawner_2,
        [6] = "2109062419929112244",
        -- Spawner_1,
        [10] = "2109062406666722852",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_105()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_111()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_111");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1004168761");
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
                [0] = self.f_box_OutputOrder_v2_111_Out_0,
                [1] = self.f_box_OutputOrder_v2_111_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_96()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = self.i_AllowedRemainingNPC_Fortress,
        -- EnemyGroup,
        [1] = "#860A3B69",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 60,
        -- MinWaveDuration,
        [4] = self.f_MinWaveDuration_Fortress,
        -- NextWaveWaitUntilCombat,
        [5] = Globals.Coast_C2_CTP_010_Main_Enemy.b_NextWaveUntilCombat,
        -- opt_Spawner_2,
        [6] = "2108979505948272704",
        -- Spawner_1,
        [10] = "2108620173094162655",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_198()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_213()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = self.i_AllowedRemainingNPC_Extraction,
        -- EnemyGroup,
        [1] = "#860A3B69",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 30,
        -- MinWaveDuration,
        [4] = self.f_MinWaveDuration_Extraction,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- Spawner_1,
        [10] = "2109073886631961772",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_243()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = self.i_AllowedRemainingNPC_Fortress,
        -- EnemyGroup,
        [1] = "#860A3B69",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 60,
        -- MinWaveDuration,
        [4] = self.f_MinWaveDuration_Fortress,
        -- NextWaveWaitUntilCombat,
        [5] = Globals.Coast_C2_CTP_010_Main_Enemy.b_NextWaveUntilCombat,
        -- Spawner_1,
        [10] = "2108979287552957184",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_157()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_235()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_37()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "package_is_picked",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_71()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108437998065423161",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_222()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_222");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1125102254");
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
        [8] = "All enemy go to extraction point A!!!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_240()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_240");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1127670365");
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
                [0] = self.f_box_OutputOrder_v2_240_Out_0,
                [1] = self.f_box_OutputOrder_v2_240_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1128626694");
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
        [8] = "Wave 1 spawning",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_64()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_126()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "package_is_picked",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_160()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "spawn_helicopter",
    };
    return params;
end;

function export:OnEnter_box_PlayerFullyDetected_193()
    local params;
    params = {
        -- group,
        [0] = "#860A3B69",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_BasicSetups_25()
    local params;
    params = {
        -- DebugMode,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1199545733");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 9,
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
                [0] = self.f_box_OutputOrder_v2_23_Out_0,
                [1] = self.f_box_OutputOrder_v2_23_Out_1,
                [2] = self.f_box_OutputOrder_v2_23_Out_2,
                [3] = self.f_box_OutputOrder_v2_23_Out_3,
                [4] = self.f_box_OutputOrder_v2_23_Out_4,
                [5] = self.f_box_OutputOrder_v2_23_Out_5,
                [6] = self.f_box_OutputOrder_v2_23_Out_6,
                [7] = self.f_box_OutputOrder_v2_23_Out_7,
                [8] = self.f_box_OutputOrder_v2_23_Out_8,
            },
            count = 9,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_156()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_82()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_175()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 115,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1217741001");
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

function export:OnEnter_box_Gate_v3_66()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_251()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = self.i_AllowedRemainingNPC_Extraction,
        -- EnemyGroup,
        [1] = "#860A3B69",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 30,
        -- MinWaveDuration,
        [4] = self.f_MinWaveDuration_Extraction,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- Spawner_1,
        [10] = "2109063465206294832",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_266()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 60,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_162()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_162");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1259340988");
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
                [0] = self.f_box_OutputOrder_v2_162_Out_0,
                [1] = self.f_box_OutputOrder_v2_162_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_136()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_136");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1263722243");
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
                [0] = self.f_box_OutputOrder_v2_136_Out_0,
                [1] = self.f_box_OutputOrder_v2_136_Out_1,
                [2] = self.f_box_OutputOrder_v2_136_Out_2,
                [3] = self.f_box_OutputOrder_v2_136_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_19()
    local params;
    params = {
        -- Index,
        [0] = Globals.Coast_C2_CTP_010_Main_Enemy.i_ExtractionPOIIndex,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_242()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_242");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1301296493");
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
        [8] = "STOP FORTRESS WAVE!!!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_187()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_187");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1305942363");
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
        [8] = "Start Extraction C Wave!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_185()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_185");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1316640652");
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
        [8] = "Start Extraction A Wave!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_229()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_121()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_233()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_232()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_232");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1358782697");
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
                [0] = self.f_box_OutputOrder_v2_232_Out_0,
                [1] = self.f_box_OutputOrder_v2_232_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1360074799");
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
        [8] = "Wave 3 spawning",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_246()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_246");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1367536615");
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
                [0] = self.f_box_OutputOrder_v2_246_Out_0,
                [1] = self.f_box_OutputOrder_v2_246_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_118()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_234()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_145()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_113()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_113");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1391198962");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_113_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109878186882911389",
        -- Group,
        [1] = "#65160D41",
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_274()
    local params, l0;
    DrawTextToScreen("Comment: LC: Disable on detection BOW-74745", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RadioModifier_v3')-- Comment: LC: Disable on detection BOW-74745");
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_274");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1392994850");
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
        [5] = "2109685923370252849",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_46()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109020267488478521",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_227()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_227");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1424884697");
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
        [8] = "All enemy go to extraction point B!!!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1430301221");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- int,
        [6] = Globals.Coast_C2_CTP_010_Main_Enemy.i_CurrentSize,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Current enemy number is ",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_182()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_120()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_120");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1447558876");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_120_Out,
    });
    l0 = self.box_ProximityTrigger_v3_57;
    params = {
        -- ContextualStrategy,
        [0] = "2108427419695191711",
        -- Group,
        [1] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_Print_v2_132()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_132");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1449856569");
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
        [8] = "DOGS ARE COMING",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1458715410");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_42_Out,
    });
    params = {
        -- Entity,
        [0] = "2108205035717401612",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1472264082");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_35_Out,
    });
    params = {
        -- Integer,
        [1] = 1,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_208()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = self.i_AllowedRemainingNPC_Extraction,
        -- EnemyGroup,
        [1] = "#860A3B69",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 30,
        -- MinWaveDuration,
        [4] = self.f_MinWaveDuration_Extraction,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- opt_Spawner_2,
        [6] = "2108230807008059946",
        -- Spawner_1,
        [10] = "2108230720657825995",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_102()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SetFloat_v2_166()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_166");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1496507575");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_166_Out,
    });
    params = {
        -- Float,
        [0] = 5,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_197()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_264()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = self.i_AllowedRemainingNPC_Extraction,
        -- EnemyGroup,
        [1] = "#860A3B69",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 30,
        -- MinWaveDuration,
        [4] = self.f_MinWaveDuration_Extraction,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- Spawner_1,
        [10] = "2109074015474689668",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1522529237");
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
        [8] = "Wave 2 spawning",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_116()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_116");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1525547101");
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
                [0] = self.f_box_OutputOrder_v2_116_Out_0,
                [1] = self.f_box_OutputOrder_v2_116_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_29()
    local params;
    params = {
        -- Index,
        [0] = Globals.Coast_C2_CTP_010_Main_Enemy.i_Difficulty,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_261()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_275()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_275");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1547147905");
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
                [0] = self.f_box_OutputOrder_v2_275_Out_0,
                [1] = self.f_box_OutputOrder_v2_275_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1564682461");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "player_fullydetected",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_170()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_170");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1566320249");
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
                [0] = self.f_box_OutputOrder_v2_170_Out_0,
                [1] = self.f_box_OutputOrder_v2_170_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1598920678");
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
                [0] = self.f_box_OutputOrder_v2_11_Out_0,
                [1] = self.f_box_OutputOrder_v2_11_Out_1,
                [2] = self.f_box_OutputOrder_v2_11_Out_2,
                [3] = self.f_box_OutputOrder_v2_11_Out_3,
                [4] = self.f_box_OutputOrder_v2_11_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_239()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_90()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "reach_extraction_b",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_62()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_194()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_131()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_131");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1636072155");
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
        [8] = "Normal difficulty is detected. WILL NOT spawn attack dog.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_EnemyHelicopterCleaner_271()
    local params;
    params = {
        -- EnemyHelicopter,
        [0] = "2109546131789712071",
        -- EnemyHelicopterGroup,
        [1] = "#6088FBBF",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_70()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_207()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = self.i_AllowedRemainingNPC_Extraction,
        -- EnemyGroup,
        [1] = "#860A3B69",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 30,
        -- MinWaveDuration,
        [4] = self.f_MinWaveDuration_Extraction,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- Spawner_1,
        [10] = "2108230675657138209",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_4()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_223()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_223");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1645121922");
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
                [0] = self.f_box_OutputOrder_v2_223_Out_0,
                [1] = self.f_box_OutputOrder_v2_223_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_87()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_104()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_101()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "reach_extraction_c",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1699603457");
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
                [0] = self.f_box_OutputOrder_v2_78_Out_0,
                [1] = self.f_box_OutputOrder_v2_78_Out_1,
                [2] = self.f_box_OutputOrder_v2_78_Out_2,
                [3] = self.f_box_OutputOrder_v2_78_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_67()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = self.i_AllowedRemainingNPC_Extraction,
        -- EnemyGroup,
        [1] = "#860A3B69",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 30,
        -- MinWaveDuration,
        [4] = self.f_MinWaveDuration_Extraction,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- Spawner_1,
        [10] = "2108913019902763212",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_129()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_129");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1716158862");
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
        [8] = "Hard and Expert difficulty is detected. Ready to spawn attack dog.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_164()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 120,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1739587550");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_41_Out,
    });
    params = {
        -- Entity,
        [0] = "2108205016306162668",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_273()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_273");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1741471816");
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
                [0] = self.f_box_OutputOrder_v2_273_Out_0,
                [1] = self.f_box_OutputOrder_v2_273_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_212()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = self.i_AllowedRemainingNPC_Extraction,
        -- EnemyGroup,
        [1] = "#860A3B69",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 30,
        -- MinWaveDuration,
        [4] = self.f_MinWaveDuration_Extraction,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- Spawner_1,
        [10] = "2109073936355435872",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_58()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "spawn_helicopter",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_135()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_135");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1808536745");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_135_Out,
    });
    params = {
        -- Fact,
        [0] = "Package_Stolen_Detected",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_77()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "reach_extraction_c",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_206()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = self.i_AllowedRemainingNPC_Extraction,
        -- EnemyGroup,
        [1] = "#860A3B69",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 30,
        -- MinWaveDuration,
        [4] = self.f_MinWaveDuration_Extraction,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- opt_Spawner_2,
        [6] = "2109767562429467200",
        -- Spawner_1,
        [10] = "2109767630492535711",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_237()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_237");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1830722904");
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
                [0] = self.f_box_OutputOrder_v2_237_Out_0,
                [1] = self.f_box_OutputOrder_v2_237_Out_1,
            },
            count = 2,
        },
    });
    params = {
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

function export:OnEnter_box_SetInteger_v2_165()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_165");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1834961576");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_165_Out,
    });
    params = {
        -- Integer,
        [1] = 7,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_272()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_272");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1835591568");
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
                [0] = self.f_box_OutputOrder_v2_272_Out_0,
                [1] = self.f_box_OutputOrder_v2_272_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1870729714");
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

function export:OnEnter_box_SetBoolean_v2_171()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_171");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1885156539");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_171_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1892056555");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_88_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_255()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_38()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_115()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_115");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1919606219");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_115_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109878195820973217",
        -- Group,
        [1] = "#65160D41",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_262()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_262");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1921028415");
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
                [0] = self.f_box_OutputOrder_v2_262_Out_0,
                [1] = self.f_box_OutputOrder_v2_262_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_245()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_245");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1923516842");
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
                [0] = self.f_box_OutputOrder_v2_245_Out_0,
                [1] = self.f_box_OutputOrder_v2_245_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_186()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_186");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1924757339");
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
        [8] = "Start Extraction B Wave!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_103()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v5_39()
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

function export:OnEnter_box_SpawnAI_124()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109214644066332046",
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_270()
    local params, l0;
    DrawTextToScreen("Comment: LC: Disable on detection BOW-74745", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RadioModifier_v3')-- Comment: LC: Disable on detection BOW-74745");
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_270");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|1991774739");
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
        [5] = "2109685923370252849",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_119()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_BasicSetups_32()
    local params;
    params = {
        -- DebugMode,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|2025511602");
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
                [0] = self.f_box_OutputOrder_v2_47_Out_0,
                [1] = self.f_box_OutputOrder_v2_47_Out_1,
                [2] = self.f_box_OutputOrder_v2_47_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_179()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_179");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|2028576974");
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
                [0] = self.f_box_OutputOrder_v2_179_Out_0,
                [1] = self.f_box_OutputOrder_v2_179_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_224()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_224");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|2048899914");
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
                [0] = self.f_box_OutputOrder_v2_224_Out_0,
                [1] = self.f_box_OutputOrder_v2_224_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_172()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_172");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|2051659833");
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
                [0] = self.f_box_OutputOrder_v2_172_Out_0,
                [1] = self.f_box_OutputOrder_v2_172_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_221()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = PersistentGlobals.Lib_Expeditions_Gameplay.ePackageOwner,
        -- id2,
        [3] = "2109063102594032244",
        -- nearZone,
        [4] = 40,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_51()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "get_on_helicopter",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_59()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109022173034200613",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_3()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_204()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = self.i_AllowedRemainingNPC_Extraction,
        -- EnemyGroup,
        [1] = "#860A3B69",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 30,
        -- MinWaveDuration,
        [4] = self.f_MinWaveDuration_Extraction,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- Spawner_1,
        [10] = "2109062932009591054",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|2110667182");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_81_Out,
    });
    l0 = self.box_GroupSizeListener_v6_80;
    params = {
        -- Integer,
        [1] = l0:GetDataOutValue(1),
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_106()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_106");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Coast_C2_CTP_010_Main_Enemy_Main|2134833265");
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
                [0] = self.f_box_OutputOrder_v2_106_Out_0,
                [1] = self.f_box_OutputOrder_v2_106_Out_1,
                [2] = self.f_box_OutputOrder_v2_106_Out_2,
                [3] = self.f_box_OutputOrder_v2_106_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_155()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "reach_extraction_b",
    };
    return params;
end;

function export:OnExit_box_SetFloat_v2_45_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    self.f_MinWaveDuration_Fortress = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_55_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.i_AllowedRemainingNPC_Fortress = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_137_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.Coast_C2_CTP_010_Main_Enemy.i_PlayerSpawnPOIIndex = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_34_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.Coast_C2_CTP_010_Main_Enemy.i_PackagePositionIndex = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_30_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.Coast_C2_CTP_010_Main_Enemy.i_ExtractionPOIIndex = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_33_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.Coast_C2_CTP_010_Main_Enemy.i_PackagePositionIndex = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_138_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.Coast_C2_CTP_010_Main_Enemy.i_PlayerSpawnPOIIndex = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_Exp_Common_BasicSetups_25_Out()
    local l0;
    l0 = self.box_Brick_Exp_Common_BasicSetups_25;
    Globals.Coast_C2_CTP_010_Main_Enemy.i_Difficulty = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_42_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    Globals.Coast_C2_CTP_010_Main_Enemy.e_PackageSpawner = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_35_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.Coast_C2_CTP_010_Main_Enemy.i_ExtractionPOIIndex = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetFloat_v2_166_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    self.f_MinWaveDuration_Extraction = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_41_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    Globals.Coast_C2_CTP_010_Main_Enemy.e_PackageSpawner = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_165_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.i_AllowedRemainingNPC_Extraction = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_171_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.Coast_C2_CTP_010_Main_Enemy.b_NextWaveUntilCombat = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_88_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.Coast_C2_CTP_010_Main_Enemy.b_NextWaveUntilCombat = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_Exp_Common_BasicSetups_32_Out()
    local l0;
    l0 = self.box_Brick_Exp_Common_BasicSetups_32;
    Globals.Coast_C2_CTP_010_Main_Enemy.i_PlayerSpawnPOIIndex = l0:GetDataOutValue(4);
    Globals.Coast_C2_CTP_010_Main_Enemy.i_ExtractionPOIIndex = l0:GetDataOutValue(1);
    Globals.Coast_C2_CTP_010_Main_Enemy.i_PackagePositionIndex = l0:GetDataOutValue(2);
    Globals.Coast_C2_CTP_010_Main_Enemy.e_PackageSpawner = l0:GetDataOutValue(3);
end;

function export:OnExit_box_SetInteger_v2_81_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.Coast_C2_CTP_010_Main_Enemy.i_CurrentSize = l0:GetDataOutValue(0);
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
