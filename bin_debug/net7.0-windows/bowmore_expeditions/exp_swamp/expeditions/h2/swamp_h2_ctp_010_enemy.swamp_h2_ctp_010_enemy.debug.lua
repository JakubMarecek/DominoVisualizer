LUAC��
 -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_swamp/expeditions/h2/swamp_h2_ctp_010_enemy.domino
-- User graph: Swamp_H2_CTP_010_Enemy
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_PlayerFullyDetected.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_PackageGuard.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_PackageGuardNearest.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAIRequestGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/RemoveFromGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
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
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetInteger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/TriggerState_v2.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/H2/Swamp_H2_CTP_010_Enemy.Swamp_H2_FlareSTP.debug.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/Library/Sp/Lib_Expeditions_Gameplay.globals.lua");
        cboxRes:RegisterGlobals("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/H2/Swamp_H2_CTP_010_Main.globals.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/H2/Swamp_H2_CTP_010_Enemy.Swamp_H2_CTP_010_Enemy.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_PlayerFullyDetected.debug.lua")] = {
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
                name = "Detected_BothPlayers",
                delayed = false,
            },
            [2] = {
                name = "Detected_ClientOnly",
                delayed = false,
            },
            [3] = {
                name = "Detected_HostOnly",
                delayed = false,
            },
            [4] = {
                name = "Disabled",
                delayed = false,
            },
            [5] = {
                name = "Enabled",
                delayed = false,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "EnemyGroup",
                type = "group",
            },
            [1] = {
                name = "OnceOnly",
                type = "bool",
            },
            [2] = {
                name = "PlayerGroup",
                type = "group",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "DetectedPlayer_Client",
                type = "entity",
            },
            [1] = {
                name = "DetectedPlayer_Host",
                type = "entity",
            },
            [2] = {
                name = "DetectedPlayer_Latest",
                type = "entity",
            },
        },
        dataOutCount = 3,
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
    metadataTable[GetPathID("Domino/System/AI/SpawnAIRequestGroup_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cancel",
            },
            [1] = {
                name = "SpawnByCount",
            },
            [2] = {
                name = "SpawnByPercentage",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "AtLeastOneRequestSucceeded",
                delayed = false,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
            [2] = {
                name = "RequestsFailed",
                delayed = false,
            },
            [3] = {
                name = "RequestSpawned",
                delayed = true,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "RequestGroupName",
                type = "string",
            },
            [1] = {
                name = "SpawnerCount",
                type = "int",
            },
            [2] = {
                name = "SpawnerPercentage",
                type = "int",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")] = {
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
                name = "Entities",
                type = "group",
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
    metadataTable[GetPathID("Domino/System/GetPlayerGroup_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "EnemyPlayers",
            },
            [1] = {
                name = "FriendlyPlayers",
            },
            [2] = {
                name = "In",
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
        },
        dataInCount = 0,
        dataOut = {
            [0] = {
                name = "PlayerGroup",
                type = "group",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/H2/Swamp_H2_CTP_010_Enemy.Swamp_H2_FlareSTP.debug.lua")] = {
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
end;

function export:Init(cbox)
    local l0;
    self._name = "Swamp_H2_CTP_010_Enemy";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy";
    self.i_CurrentSize = 0;
    self.iDifficulty = 0;
    self.iPackagePositionID = 0;
    self.a = 0;
    self.e_Wave_3_B = nil;
    self.bInCamp = false;
    self.e_Wave_5_A = nil;
    self.bInPlanetail = false;
    self.e_Wave_4_B = nil;
    self.e_Wave_5_B = nil;
    self.e_InfiWave_1_B = nil;
    self.e_Wave_2_B = nil;
    self.e_Wave_6_B = nil;
    self.e_Wave_2_A = nil;
    self.e_InfiWave_4_A = nil;
    self.e_Wave_1_A = nil;
    self.e_InfiWave_3_A = nil;
    self.bInPlanebody = false;
    self.e_InfiWave_4_B = nil;
    self.e_InfiWave_3_B = nil;
    self.e_Wave_6_A = nil;
    self.e_Wave_1_B = nil;
    self.e_InfiWave_1_A = nil;
    self.e_Wave_3_A = nil;
    self.e_InfiWave_2_A = nil;
    self.e_Wave_4_A = nil;
    self.e_PlayerBeDected = nil;
    self.e_InfiWave_2_B = nil;
    self.PackageID = 0;
    self.ePackageSpawner = nil;
    self.Difficulty = 0;
    self.iPlayerSpawnPOIIndex = 0;
    self.eLocalPlayer = nil;
    self.e_PackageGuard_1_A = nil;
    self.bInWatchtower = false;
    self.iExtractionPOIIndex = 0;
    self.iPlanetailEnemyNumber = 0;
    self.bInPlanebody_Before = false;
    self.bInPlanetail_Before = false;
    self.bInCamp_Before = false;
    self.iWaveBefore_Index = 1;
    self.iWaveAfter_Index = 1;
    self.box_Brick_Exp_Enemy_PackageGuard_295 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_PackageGuard.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_PackageGuard_295;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_PackageGuard_295");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|18442081");
    l0:SetConnections({
    });
    self.box_Random_84 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|62092960");
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
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_84_Output_0,
                [1] = self.f_box_Random_84_Output_1,
                [2] = self.f_box_Random_84_Output_2,
                [3] = self.f_box_Random_84_Output_3,
            },
            count = 4,
        },
    });
    self.box_Brick_Exp_Enemy_PackageGuard_289 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_PackageGuard.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_PackageGuard_289;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_PackageGuard_289");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|66716189");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_421 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_421;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_421");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|69916815");
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
                [0] = self.f_box_OnceOnly_v3_421_Out_0,
            },
            count = 2,
        },
    });
    self.box_Brick_Exp_Common_BasicSetups_178 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_BasicSetups.debug.lua");
    l0 = self.box_Brick_Exp_Common_BasicSetups_178;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_BasicSetups_178");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|80190931");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Brick_Exp_Common_BasicSetups_178_Out,
    });
    self.box_IndexList_v2_408 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_408;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_408");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|123359526");
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
                [0] = self.f_box_IndexList_v2_408_Output_0,
                [1] = self.f_box_IndexList_v2_408_Output_1,
                [2] = self.f_box_IndexList_v2_408_Output_2,
                [3] = self.f_box_IndexList_v2_408_Output_3,
                [4] = self.f_box_IndexList_v2_408_Output_4,
                [5] = self.f_box_IndexList_v2_408_Output_5,
            },
            count = 6,
        },
    });
    self.box_OnceOnly_v3_316 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_316;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_316");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|128205807");
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
                [0] = self.f_box_OnceOnly_v3_316_Out_0,
            },
            count = 2,
        },
    });
    self.box_Brick_Exp_Common_WaveSpawner_130 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_130;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_130");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|139500927");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_130_NextWave,
    });
    self.box_Brick_Exp_Common_WaveSpawner_206 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_206;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_206");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|140773005");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_206_NextWave,
    });
    self.box_Brick_Exp_Common_WaveSpawner_413 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_413;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_413");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|163737792");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_413_NextWave,
    });
    self.box_Brick_Exp_Common_WaveSpawner_185 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_185;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_185");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|165070433");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_185_NextWave,
    });
    self.box_Brick_Exp_Common_WaveSpawner_200 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_200;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_200");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|179304097");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_200_NextWave,
    });
    self.box_Delay_v5_321 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_321;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_321");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|209342349");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_321_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_321_TimeElapsed,
    });
    self.box_Brick_Exp_Common_WaveSpawner_55 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|263237371");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_55_NextWave,
    });
    self.box_Brick_Exp_Enemy_PackageGuard_285 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_PackageGuard.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_PackageGuard_285;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_PackageGuard_285");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|276480326");
    l0:SetConnections({
    });
    self.box_MultipleOR_261 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_261;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_261");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|302734453");
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
        [0] = self.f_box_MultipleOR_261_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_187 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_187;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_187");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|324976334");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_187_NextWave,
    });
    self.box_IndexList_v2_462 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_462;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_462");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|335027630");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 8,
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
                [0] = self.f_box_IndexList_v2_462_Output_0,
                [1] = self.f_box_IndexList_v2_462_Output_1,
                [2] = self.f_box_IndexList_v2_462_Output_2,
                [3] = self.f_box_IndexList_v2_462_Output_3,
                [4] = self.f_box_IndexList_v2_462_Output_4,
                [5] = self.f_box_IndexList_v2_462_Output_5,
                [6] = self.f_box_IndexList_v2_462_Output_6,
                [7] = self.f_box_IndexList_v2_462_Output_7,
            },
            count = 8,
        },
    });
    self.box_ActivityAcknowledgeGate_3 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|340874720");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_3_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_3_Reloaded,
    });
    self.box_Brick_Exp_Enemy_PackageGuard_291 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_PackageGuard.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_PackageGuard_291;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_PackageGuard_291");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|345486528");
    l0:SetConnections({
    });
    self.box_Random_210 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_210;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_210");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|351512435");
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
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_210_Output_0,
                [1] = self.f_box_Random_210_Output_1,
                [2] = self.f_box_Random_210_Output_2,
                [3] = self.f_box_Random_210_Output_3,
            },
            count = 4,
        },
    });
    self.box_Brick_Exp_Common_WaveSpawner_412 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_412;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_412");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|356617893");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_412_NextWave,
    });
    self.box_SpawnAIRequestGroup_v2_253 = cbox:CreateBox("Domino/System/AI/SpawnAIRequestGroup_v2.lua");
    l0 = self.box_SpawnAIRequestGroup_v2_253;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAIRequestGroup_v2_253");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|367977222");
    l0:SetConnections({
    });
    self.box_MultipleOR_156 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_156;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_156");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|380611459");
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
        [0] = self.f_box_MultipleOR_156_Out,
    });
    self.box_ProximityTrigger_v3_174 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_174;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_174");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|409403868");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_174_Enter,
    });
    self.box_Delay_v5_309 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_309;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_309");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|430585466");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_309_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_309_TimeElapsed,
    });
    self.box_Delay_v5_76 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|448626066");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_76_TimeElapsed,
    });
    self.box_MultipleOR_72 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|460339540");
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
        [0] = self.f_box_MultipleOR_72_Out,
    });
    self.box_MessageListener_v3_402 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_402;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_402");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|471235983");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_MessageListener_v3_402_Enabled,
        -- Received,
        [2] = self.f_box_MessageListener_v3_402_Received,
    });
    self.box_MultipleOR_41 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|471277439");
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
        [0] = self.f_box_MultipleOR_41_Out,
    });
    self.box_MultipleOR_11 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|481314889");
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
        [0] = self.f_box_MultipleOR_11_Out,
    });
    self.box_Gate_v3_320 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_320;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_320");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|514619685");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_320_Out,
    });
    self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|520534261");
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
        [0] = self.f_box_MultipleOR_1_Out,
    });
    self.box_MultipleOR_179 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_179;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_179");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|533003878");
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
        [0] = self.f_box_MultipleOR_179_Out,
    });
    self.box_Delay_v5_110 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_110");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|547972011");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_110_TimeElapsed,
    });
    self.box_ProximityTrigger_v3_439 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_439;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_439");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|548246665");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_439_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_439_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v3_439_Leave,
    });
    self.box_Gate_v3_123 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_123;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_123");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|563790168");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_123_Out,
    });
    self.box_IndexList_v2_404 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_404;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_404");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|564347153");
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
                [1] = self.f_box_IndexList_v2_404_Output_1,
                [2] = self.f_box_IndexList_v2_404_Output_2,
            },
            count = 3,
        },
    });
    self.box_Brick_Exp_Common_WaveSpawner_194 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_194;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_194");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|586415676");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_194_NextWave,
    });
    self.box_IndexList_v2_66 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|592959837");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 8,
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
                [0] = self.f_box_IndexList_v2_66_Output_0,
                [1] = self.f_box_IndexList_v2_66_Output_1,
                [2] = self.f_box_IndexList_v2_66_Output_2,
                [3] = self.f_box_IndexList_v2_66_Output_3,
                [4] = self.f_box_IndexList_v2_66_Output_4,
                [5] = self.f_box_IndexList_v2_66_Output_5,
                [6] = self.f_box_IndexList_v2_66_Output_6,
                [7] = self.f_box_IndexList_v2_66_Output_7,
            },
            count = 8,
        },
    });
    self.box_DisplayCustomUIMsg_v5_311 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_311;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_311");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|621143525");
    l0:SetConnections({
    });
    self.box_IndexList_v2_401 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_401;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_401");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|627286209");
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
                [2] = self.f_box_IndexList_v2_401_Output_2,
            },
            count = 3,
        },
    });
    self.box_MultipleOR_167 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_167;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_167");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|639420053");
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
        [0] = self.f_box_MultipleOR_167_Out,
    });
    self.box_MultipleOR_46 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|641766115");
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
        [0] = self.f_box_MultipleOR_46_Out,
    });
    self.box_MessageListener_v3_188 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_188;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_188");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|662815752");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_188_Received,
    });
    self.box_Brick_Exp_Common_WaveSpawner_96 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_96");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|677906146");
    l0:SetConnections({
    });
    self.box_SpawnAIRequestGroup_v2_159 = cbox:CreateBox("Domino/System/AI/SpawnAIRequestGroup_v2.lua");
    l0 = self.box_SpawnAIRequestGroup_v2_159;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAIRequestGroup_v2_159");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|684379116");
    l0:SetConnections({
        -- RequestSpawned,
        [3] = self.f_box_SpawnAIRequestGroup_v2_159_RequestSpawned,
    });
    self.box_Brick_Exp_Common_WaveSpawner_426 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_426;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_426");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|692833211");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_426_NextWave,
    });
    self.box_Delay_v5_43 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|699635232");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_43_TimeElapsed,
    });
    self.box_ProximityTrigger_v3_338 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_338;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_338");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|719221639");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_338_Enabled,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v3_338_Leave,
    });
    self.box_MultipleAND_v2_396 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_396;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_396");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|727742778");
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
        [0] = self.f_box_MultipleAND_v2_396_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_111 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_111");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|733974167");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_111_NextWave,
    });
    self.box_Brick_Exp_Common_WaveSpawner_31 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|741729214");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_31_NextWave,
    });
    self.box_MultipleOR_109 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_109");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|749272361");
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
        [0] = self.f_box_MultipleOR_109_Out,
    });
    self.box_OnceOnly_v3_90 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|772051919");
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
                [0] = self.f_box_OnceOnly_v3_90_Out_0,
            },
            count = 2,
        },
    });
    self.box_Brick_Exp_Common_WaveSpawner_458 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_458;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_458");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|774128219");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_458_NextWave,
    });
    self.box_SpawnAIRequestGroup_v2_149 = cbox:CreateBox("Domino/System/AI/SpawnAIRequestGroup_v2.lua");
    l0 = self.box_SpawnAIRequestGroup_v2_149;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAIRequestGroup_v2_149");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|791893134");
    l0:SetConnections({
    });
    self.box_Delay_v5_323 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_323;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_323");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|846496856");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_323_TimeElapsed,
    });
    self.box_ProximityTrigger_v3_171 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_171;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_171");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|849345378");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v3_171_Disabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_171_Enter,
    });
    self.box_SpawnAIRequestGroup_v2_105 = cbox:CreateBox("Domino/System/AI/SpawnAIRequestGroup_v2.lua");
    l0 = self.box_SpawnAIRequestGroup_v2_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAIRequestGroup_v2_105");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|883877668");
    l0:SetConnections({
    });
    self.box_MessageListener_v3_180 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_180;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_180");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|904597656");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_180_Received,
    });
    self.box_ProximityTrigger_v3_430 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_430;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_430");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|910261344");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v3_430_Disabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_430_Enter,
    });
    self.box_MultipleOR_419 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_419;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_419");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|916772125");
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
        [0] = self.f_box_MultipleOR_419_Out,
    });
    self.box_OnceOnly_v3_169 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_169;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_169");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|921063306");
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
            },
            count = 2,
        },
    });
    self.box_MultipleOR_420 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_420;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_420");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|934308002");
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
        [0] = self.f_box_MultipleOR_420_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_73 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|948422480");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_73_NextWave,
    });
    self.box_Delay_v5_89 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_89");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|949293416");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_89_TimeElapsed,
    });
    self.box_Brick_Exp_Common_WaveSpawner_117 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_117");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|957787055");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_117_NextWave,
    });
    self.box_SpawnAIRequestGroup_v2_386 = cbox:CreateBox("Domino/System/AI/SpawnAIRequestGroup_v2.lua");
    l0 = self.box_SpawnAIRequestGroup_v2_386;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAIRequestGroup_v2_386");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|961002241");
    l0:SetConnections({
    });
    self.box_Brick_Exp_Common_WaveSpawner_461 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_461;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_461");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|989512243");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_461_NextWave,
    });
    self.box_Brick_Exp_Common_WaveSpawner_416 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_416;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_416");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|996119352");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_416_NextWave,
    });
    self.box_OnceOnly_v3_397 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_397;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_397");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1104348062");
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
                [0] = self.f_box_OnceOnly_v3_397_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_87 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1109441737");
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
        [0] = self.f_box_MultipleOR_87_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_215 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_215;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_215");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1118382707");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_215_NextWave,
    });
    self.box_MultipleOR_415 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_415;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_415");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1121318042");
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
        [0] = self.f_box_MultipleOR_415_Out,
    });
    self.box_OnceOnly_v3_80 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1147530849");
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
            },
            count = 2,
        },
    });
    self.box_Brick_Exp_Common_WaveSpawner_104 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_104");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1150738233");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_104_NextWave,
    });
    self.box_OnceOnly_v3_405 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_405;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_405");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1161952790");
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
                [0] = self.f_box_OnceOnly_v3_405_Out_0,
            },
            count = 2,
        },
    });
    self.box_Brick_Exp_Enemy_PackageGuard_168 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_PackageGuard.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_PackageGuard_168;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_PackageGuard_168");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1172196811");
    l0:SetConnections({
    });
    self.box_MultipleOR_58 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1176120780");
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
        [0] = self.f_box_MultipleOR_58_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_82 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1187192586");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_82_NextWave,
    });
    self.box_Brick_Exp_Common_WaveSpawner_427 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_427;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_427");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1194518081");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_427_NextWave,
    });
    self.box_ProximityTrigger_v3_365 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_365;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_365");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1202244222");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_365_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_365_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v3_365_Leave,
    });
    self.box_Brick_Exp_Common_EnemyHelicopterCleaner_407 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_EnemyHelicopterCleaner.debug.lua");
    l0 = self.box_Brick_Exp_Common_EnemyHelicopterCleaner_407;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_EnemyHelicopterCleaner_407");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1206066490");
    l0:SetConnections({
        -- EnemyHelicopterLoaded,
        [0] = self.f_box_Brick_Exp_Common_EnemyHelicopterCleaner_407_EnemyHelicopterLoaded,
    });
    self.box_Brick_Exp_Common_WaveSpawner_423 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_423;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_423");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1212096252");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_423_NextWave,
    });
    self.box_Brick_Exp_Common_WaveSpawner_88 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1237460280");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_88_NextWave,
    });
    self.box_Delay_v5_170 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_170;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_170");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1256691010");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_170_TimeElapsed,
    });
    self.box_MessageListener_v3_45 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1294201388");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_45_Received,
    });
    self.box_OnceOnly_v3_399 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_399;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_399");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1338107465");
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
                [0] = self.f_box_OnceOnly_v3_399_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_162 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_162;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_162");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1343875444");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_162_TimeElapsed,
    });
    self.box_ProximityTrigger_v3_390 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_390;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_390");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1344114236");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v3_390_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_390_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_390_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v3_390_Leave,
        -- OnAllInside,
        [4] = self.f_box_ProximityTrigger_v3_390_OnAllInside,
        -- OnEmpty,
        [5] = self.f_box_ProximityTrigger_v3_390_OnEmpty,
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_390_OnOccupied,
        -- Use,
        [7] = self.f_box_ProximityTrigger_v3_390_Use,
    });
    self.box_Brick_Exp_Common_WaveSpawner_13 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1347375359");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_13_NextWave,
    });
    self.box_MessageListener_v3_387 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_387;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_387");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1349162077");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_387_Received,
    });
    self.box_Brick_Exp_Common_WaveSpawner_457 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_457;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_457");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1390423918");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_457_NextWave,
    });
    self.box_IndexList_v2_280 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_280;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_280");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1399999127");
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
                [0] = self.f_box_IndexList_v2_280_Output_0,
                [1] = self.f_box_IndexList_v2_280_Output_1,
                [2] = self.f_box_IndexList_v2_280_Output_2,
            },
            count = 3,
        },
    });
    self.box_OnceOnly_v3_403 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_403;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_403");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1410628246");
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
                [0] = self.f_box_OnceOnly_v3_403_Out_0,
            },
            count = 2,
        },
    });
    self.box_Brick_Exp_Common_WaveSpawner_409 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_409;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_409");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1422126312");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_409_NextWave,
    });
    self.box_Brick_Exp_Common_WaveSpawner_463 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_463;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_463");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1422556060");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_463_NextWave,
    });
    self.box_SpawnAIRequestGroup_v2_425 = cbox:CreateBox("Domino/System/AI/SpawnAIRequestGroup_v2.lua");
    l0 = self.box_SpawnAIRequestGroup_v2_425;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAIRequestGroup_v2_425");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1423110406");
    l0:SetConnections({
    });
    self.box_IndexList_v2_175 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_175;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_175");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1436708716");
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
                [0] = self.f_box_IndexList_v2_175_Output_0,
                [1] = self.f_box_IndexList_v2_175_Output_1,
                [2] = self.f_box_IndexList_v2_175_Output_2,
            },
            count = 3,
        },
    });
    self.box_MessageListener_v3_193 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_193;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_193");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1464165484");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_193_Received,
    });
    self.box_Brick_Exp_Enemy_PackageGuardNearest_299 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_PackageGuardNearest.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_PackageGuardNearest_299;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_PackageGuardNearest_299");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1486305511");
    l0:SetConnections({
    });
    self.box_MessageListener_v3_36 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1495021110");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_36_Received,
    });
    self.box_SpawnAIRequestGroup_v2_155 = cbox:CreateBox("Domino/System/AI/SpawnAIRequestGroup_v2.lua");
    l0 = self.box_SpawnAIRequestGroup_v2_155;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAIRequestGroup_v2_155");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1502912523");
    l0:SetConnections({
        -- AtLeastOneRequestSucceeded,
        [0] = self.f_box_SpawnAIRequestGroup_v2_155_AtLeastOneRequestSucceeded,
        -- Out,
        [1] = self.f_box_SpawnAIRequestGroup_v2_155_Out,
    });
    self.box_Brick_Exp_Common_PlayerFullyDetected_431 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_PlayerFullyDetected.debug.lua");
    l0 = self.box_Brick_Exp_Common_PlayerFullyDetected_431;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_PlayerFullyDetected_431");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1511477795");
    l0:SetConnections({
        -- Detected,
        [0] = self.f_box_Brick_Exp_Common_PlayerFullyDetected_431_Detected,
        -- Detected_BothPlayers,
        [1] = self.f_box_Brick_Exp_Common_PlayerFullyDetected_431_Detected_BothPlayers,
        -- Detected_ClientOnly,
        [2] = self.f_box_Brick_Exp_Common_PlayerFullyDetected_431_Detected_ClientOnly,
        -- Detected_HostOnly,
        [3] = self.f_box_Brick_Exp_Common_PlayerFullyDetected_431_Detected_HostOnly,
        -- Disabled,
        [4] = self.f_box_Brick_Exp_Common_PlayerFullyDetected_431_Disabled,
        -- Enabled,
        [5] = self.f_box_Brick_Exp_Common_PlayerFullyDetected_431_Enabled,
    });
    self.box_MultipleOR_15 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1514881342");
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
        [0] = self.f_box_MultipleOR_15_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_53 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1515639817");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_53_NextWave,
    });
    self.box_Brick_Exp_Common_WaveSpawner_136 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_136;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_136");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1524709037");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_136_NextWave,
    });
    self.box_IndexList_v2_400 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_400;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_400");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1536563216");
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
                [2] = self.f_box_IndexList_v2_400_Output_2,
            },
            count = 3,
        },
    });
    self.box_Random_459 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_459;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_459");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1542094015");
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
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_459_Output_0,
                [1] = self.f_box_Random_459_Output_1,
                [2] = self.f_box_Random_459_Output_2,
                [3] = self.f_box_Random_459_Output_3,
            },
            count = 4,
        },
    });
    self.box_IndexList_v2_367 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_367;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_367");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1542756530");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 8,
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
                [0] = self.f_box_IndexList_v2_367_Output_0,
                [1] = self.f_box_IndexList_v2_367_Output_1,
                [2] = self.f_box_IndexList_v2_367_Output_2,
                [3] = self.f_box_IndexList_v2_367_Output_3,
                [4] = self.f_box_IndexList_v2_367_Output_4,
                [5] = self.f_box_IndexList_v2_367_Output_5,
                [6] = self.f_box_IndexList_v2_367_Output_6,
                [7] = self.f_box_IndexList_v2_367_Output_7,
            },
            count = 8,
        },
    });
    self.box_Delay_v5_154 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_154;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_154");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1594354815");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_154_TimeElapsed,
    });
    self.box_Delay_v5_160 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_160;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_160");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1643720982");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_160_TimeElapsed,
    });
    self.box_Brick_Exp_Common_WaveSpawner_27 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1655670493");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_27_NextWave,
    });
    self.box_Brick_Exp_Common_WaveSpawner_196 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_196;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_196");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1657858095");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_196_NextWave,
    });
    self.box_SpawnAIRequestGroup_v2_278 = cbox:CreateBox("Domino/System/AI/SpawnAIRequestGroup_v2.lua");
    l0 = self.box_SpawnAIRequestGroup_v2_278;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAIRequestGroup_v2_278");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1680591914");
    l0:SetConnections({
    });
    self.box_Swamp_H2_FlareSTP_301 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/H2/Swamp_H2_CTP_010_Enemy.Swamp_H2_FlareSTP.debug.lua");
    l0 = self.box_Swamp_H2_FlareSTP_301;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Swamp_H2_FlareSTP_301");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1684506871");
    l0:SetConnections({
    });
    self.box_SpawnAIRequestGroup_v2_332 = cbox:CreateBox("Domino/System/AI/SpawnAIRequestGroup_v2.lua");
    l0 = self.box_SpawnAIRequestGroup_v2_332;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAIRequestGroup_v2_332");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1704479977");
    l0:SetConnections({
    });
    self.box_Brick_Exp_Common_WaveSpawner_10 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1735985024");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_10_NextWave,
    });
    self.box_OnceOnly_v3_305 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_305;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_305");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1760410172");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_305_Out_0,
            },
            count = 1,
        },
    });
    self.box_SpawnAIRequestGroup_v2_277 = cbox:CreateBox("Domino/System/AI/SpawnAIRequestGroup_v2.lua");
    l0 = self.box_SpawnAIRequestGroup_v2_277;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAIRequestGroup_v2_277");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1772973297");
    l0:SetConnections({
    });
    self.box_Brick_Exp_Common_WaveSpawner_52 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1793788085");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_52_NextWave,
    });
    self.box_IndexList_v2_361 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_361;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_361");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1808151520");
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
                [0] = self.f_box_IndexList_v2_361_Output_0,
                [1] = self.f_box_IndexList_v2_361_Output_1,
                [2] = self.f_box_IndexList_v2_361_Output_2,
            },
            count = 3,
        },
    });
    self.box_OnceOnly_v3_35 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1816086734");
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
                [0] = self.f_box_OnceOnly_v3_35_Out_0,
            },
            count = 2,
        },
    });
    self.box_MessageListener_v3_222 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_222;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_222");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1819095527");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_222_Received,
    });
    self.box_Brick_Exp_Common_WaveSpawner_86 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1876370167");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_86_NextWave,
    });
    self.box_Delay_v5_116 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_116");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1912216748");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_116_TimeElapsed,
    });
    self.box_ProximityTrigger_v3_93 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_93");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1921893501");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v3_93_Disabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_93_Enter,
    });
    self.box_Brick_Exp_Common_WaveSpawner_465 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_465;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_465");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1948635753");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_465_NextWave,
    });
    self.box_ProximityTrigger_v3_362 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_362;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_362");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1979301377");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_362_Enter,
    });
    self.box_Brick_Exp_Enemy_PackageGuard_287 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_PackageGuard.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_PackageGuard_287;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_PackageGuard_287");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1979312727");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v3_363 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_363;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_363");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1985436391");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_363_Enter,
    });
    self.box_ProximityTrigger_v3_429 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_429;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_429");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1997849986");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_429_Enter,
    });
    self.box_MultipleOR_107 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_107");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2023533735");
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
        [0] = self.f_box_MultipleOR_107_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_65 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2026797852");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_65_NextWave,
    });
    self.box_Brick_Exp_Common_BasicSetups_307 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_BasicSetups.debug.lua");
    l0 = self.box_Brick_Exp_Common_BasicSetups_307;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_BasicSetups_307");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2046196593");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Brick_Exp_Common_BasicSetups_307_Out,
    });
    self.box_ProximityTrigger_v3_364 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_364;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_364");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2054195977");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_364_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_364_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v3_364_Leave,
    });
    self.box_IndexList_v2_119 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_119");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2081775216");
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
                [0] = self.f_box_IndexList_v2_119_Output_0,
                [1] = self.f_box_IndexList_v2_119_Output_1,
                [2] = self.f_box_IndexList_v2_119_Output_2,
                [3] = self.f_box_IndexList_v2_119_Output_3,
                [4] = self.f_box_IndexList_v2_119_Output_4,
                [5] = self.f_box_IndexList_v2_119_Output_5,
            },
            count = 6,
        },
    });
    self.box_ActivityInitialized_2 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2097935798");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_2_Out,
    });
    self.box_SpawnAIRequestGroup_v2_424 = cbox:CreateBox("Domino/System/AI/SpawnAIRequestGroup_v2.lua");
    l0 = self.box_SpawnAIRequestGroup_v2_424;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAIRequestGroup_v2_424");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2132456962");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_112 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_112");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2132831413");
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
        [0] = self.f_box_MultipleAND_v2_112_Out,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1380211952", "1380211952", "Swamp_H2_CTP_010_Enemy", "In", "box_ActivityAcknowledgeGate_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_Simple_Node_378_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_261;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1260048932", "1260048932", "Swamp_H2_CTP_010_Enemy", "box_Simple_Node_378.Out", "box_MultipleOR_261.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_368_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_261;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1796484870", "1796484870", "Swamp_H2_CTP_010_Enemy", "box_Simple_Node_368.Out", "box_MultipleOR_261.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Simple_Node_470_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_402();
    l0 = self.box_MessageListener_v3_402;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1164054120", "1164054120", "Swamp_H2_CTP_010_Enemy", "box_Simple_Node_470.Out", "box_MessageListener_v3_402.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_469_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_408();
    l0 = self.box_IndexList_v2_408;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|485516792", "485516792", "Swamp_H2_CTP_010_Enemy", "box_Simple_Node_469.Out", "box_IndexList_v2_408.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_44_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_320();
    l0 = self.box_Gate_v3_320;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1805795906", "1805795906", "Swamp_H2_CTP_010_Enemy", "box_Simple_Node_44.Out", "box_Gate_v3_320.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityTrigger_v3_430();
    l0 = self.box_ProximityTrigger_v3_430;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|452146978", "452146978", "Swamp_H2_CTP_010_Enemy", "box_Simple_Node_44.Out", "box_ProximityTrigger_v3_430.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_IndexList_v2_66();
    l0 = self.box_IndexList_v2_66;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|685345228", "685345228", "Swamp_H2_CTP_010_Enemy", "box_Simple_Node_44.Out", "box_IndexList_v2_66.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityTrigger_v3_171();
    l0 = self.box_ProximityTrigger_v3_171;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|57013607", "57013607", "Swamp_H2_CTP_010_Enemy", "box_Simple_Node_44.Out", "box_ProximityTrigger_v3_171.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityTrigger_v3_93();
    l0 = self.box_ProximityTrigger_v3_93;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1304089814", "1304089814", "Swamp_H2_CTP_010_Enemy", "box_Simple_Node_44.Out", "box_ProximityTrigger_v3_93.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_123();
    l0 = self.box_Gate_v3_123;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1706804466", "1706804466", "Swamp_H2_CTP_010_Enemy", "box_Simple_Node_44.Out", "box_Gate_v3_123.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_435_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_104();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_104;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|428624727", "428624727", "Swamp_H2_CTP_010_Enemy", "box_Simple_Node_435.Out", "box_Brick_Exp_Common_WaveSpawner_104.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
    params = self:OnEnter_box_IndexList_v2_462();
    l0 = self.box_IndexList_v2_462;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|418288415", "418288415", "Swamp_H2_CTP_010_Enemy", "box_Simple_Node_435.Out", "box_IndexList_v2_462.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    params = self:OnEnter_box_IndexList_v2_367();
    l0 = self.box_IndexList_v2_367;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1276950345", "1276950345", "Swamp_H2_CTP_010_Enemy", "box_Simple_Node_435.Out", "box_IndexList_v2_367.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_409();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_409;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|405452700", "405452700", "Swamp_H2_CTP_010_Enemy", "box_Simple_Node_435.Out", "box_Brick_Exp_Common_WaveSpawner_409.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_457();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_457;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|709295089", "709295089", "Swamp_H2_CTP_010_Enemy", "box_Simple_Node_435.Out", "box_Brick_Exp_Common_WaveSpawner_457.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityTrigger_v3_363();
    l0 = self.box_ProximityTrigger_v3_363;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|821599918", "821599918", "Swamp_H2_CTP_010_Enemy", "box_Simple_Node_435.Out", "box_ProximityTrigger_v3_363.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_465();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_465;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|99444664", "99444664", "Swamp_H2_CTP_010_Enemy", "box_Simple_Node_435.Out", "box_Brick_Exp_Common_WaveSpawner_465.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_416();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_416;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|35372337", "35372337", "Swamp_H2_CTP_010_Enemy", "box_Simple_Node_435.Out", "box_Brick_Exp_Common_WaveSpawner_416.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_130();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_130;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|411953688", "411953688", "Swamp_H2_CTP_010_Enemy", "box_Simple_Node_435.Out", "box_Brick_Exp_Common_WaveSpawner_130.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_111();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_111;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1702038661", "1702038661", "Swamp_H2_CTP_010_Enemy", "box_Simple_Node_435.Out", "box_Brick_Exp_Common_WaveSpawner_111.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityTrigger_v3_429();
    l0 = self.box_ProximityTrigger_v3_429;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|711728418", "711728418", "Swamp_H2_CTP_010_Enemy", "box_Simple_Node_435.Out", "box_ProximityTrigger_v3_429.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityTrigger_v3_174();
    l0 = self.box_ProximityTrigger_v3_174;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1538680622", "1538680622", "Swamp_H2_CTP_010_Enemy", "box_Simple_Node_435.Out", "box_ProximityTrigger_v3_174.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_86();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_86;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|333180135", "333180135", "Swamp_H2_CTP_010_Enemy", "box_Simple_Node_435.Out", "box_Brick_Exp_Common_WaveSpawner_86.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityTrigger_v3_362();
    l0 = self.box_ProximityTrigger_v3_362;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|79446419", "79446419", "Swamp_H2_CTP_010_Enemy", "box_Simple_Node_435.Out", "box_ProximityTrigger_v3_362.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_433_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_241();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1089967689", "1089967689", "Swamp_H2_CTP_010_Enemy", "box_Simple_Node_433.Out", "box_OutputOrder_v2_241.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_383_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_361();
    l0 = self.box_IndexList_v2_361;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1314617776", "1314617776", "Swamp_H2_CTP_010_Enemy", "box_Simple_Node_383.Out", "box_IndexList_v2_361.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_375_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_45();
    l0 = self.box_MessageListener_v3_45;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|764984985", "764984985", "Swamp_H2_CTP_010_Enemy", "box_Simple_Node_375.Out", "box_MessageListener_v3_45.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_376_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_432();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|365836812", "365836812", "Swamp_H2_CTP_010_Enemy", "box_Simple_Node_376.Out", "box_GetPlayerGroup_v2_432.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_371_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_92();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|534752486", "534752486", "Swamp_H2_CTP_010_Enemy", "box_Simple_Node_371.Out", "box_Compare_Integers_92.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_373_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_90;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|763033636", "763033636", "Swamp_H2_CTP_010_Enemy", "box_Simple_Node_373.Out", "box_OnceOnly_v3_90.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_471_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuard_285();
    l0 = self.box_Brick_Exp_Enemy_PackageGuard_285;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1951512590", "1951512590", "Swamp_H2_CTP_010_Enemy", "box_Simple_Node_471.Out", "box_Brick_Exp_Enemy_PackageGuard_285.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuard_287();
    l0 = self.box_Brick_Exp_Enemy_PackageGuard_287;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|415144510", "415144510", "Swamp_H2_CTP_010_Enemy", "box_Simple_Node_471.Out", "box_Brick_Exp_Enemy_PackageGuard_287.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuard_295();
    l0 = self.box_Brick_Exp_Enemy_PackageGuard_295;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|243212025", "243212025", "Swamp_H2_CTP_010_Enemy", "box_Simple_Node_471.Out", "box_Brick_Exp_Enemy_PackageGuard_295.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuard_291();
    l0 = self.box_Brick_Exp_Enemy_PackageGuard_291;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1367515001", "1367515001", "Swamp_H2_CTP_010_Enemy", "box_Simple_Node_471.Out", "box_Brick_Exp_Enemy_PackageGuard_291.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuard_289();
    l0 = self.box_Brick_Exp_Enemy_PackageGuard_289;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|428535386", "428535386", "Swamp_H2_CTP_010_Enemy", "box_Simple_Node_471.Out", "box_Brick_Exp_Enemy_PackageGuard_289.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuard_168();
    l0 = self.box_Brick_Exp_Enemy_PackageGuard_168;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1504329047", "1504329047", "Swamp_H2_CTP_010_Enemy", "box_Simple_Node_471.Out", "box_Brick_Exp_Enemy_PackageGuard_168.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_379_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_261;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|539570208", "539570208", "Swamp_H2_CTP_010_Enemy", "box_Simple_Node_379.Out", "box_MultipleOR_261.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_382_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_261;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|971288713", "971288713", "Swamp_H2_CTP_010_Enemy", "box_Simple_Node_382.Out", "box_MultipleOR_261.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_SetEntity_v2_197_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_197_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_216();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1097253164", "1097253164", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_197.Out", "box_SetEntity_v2_216.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_227_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_227_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_259();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|460689593", "460689593", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_227.Out", "box_SetEntity_v2_259.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_269_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_203();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1936124534", "1936124534", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_269.Out", "box_SetBoolean_v2_203.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_269_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_256();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1170882581", "1170882581", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_269.Out", "box_SetBoolean_v2_256.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_269_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_234();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1899960032", "1899960032", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_269.Out", "box_SetBoolean_v2_234.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_269_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_229();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1448900378", "1448900378", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_269.Out", "box_SetBoolean_v2_229.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_304_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_304_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_303();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|628431023", "628431023", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_304.Out", "box_SetEntity_v2_303.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_4_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_4_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_179;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2077294181", "2077294181", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_4.Out", "box_MultipleOR_179.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetInteger_v2_181_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_181_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_189();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1184599415", "1184599415", "Swamp_H2_CTP_010_Enemy", "box_SetInteger_v2_181.Out", "box_SetInteger_v2_189.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_25_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_25_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_75();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1317519344", "1317519344", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_25.Out", "box_SetEntity_v2_75.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Random_84_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_13();
    l0 = self.box_Random_84;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_13;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1769328190", "1769328190", "Swamp_H2_CTP_010_Enemy", "box_Random_84.Output", "box_Brick_Exp_Common_WaveSpawner_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_Random_84_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_200();
    l0 = self.box_Random_84;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_200;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|755012679", "755012679", "Swamp_H2_CTP_010_Enemy", "box_Random_84.Output", "box_Brick_Exp_Common_WaveSpawner_200.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_Random_84_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_10();
    l0 = self.box_Random_84;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_10;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1145816328", "1145816328", "Swamp_H2_CTP_010_Enemy", "box_Random_84.Output", "box_Brick_Exp_Common_WaveSpawner_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_Random_84_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_53();
    l0 = self.box_Random_84;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_53;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|860209949", "860209949", "Swamp_H2_CTP_010_Enemy", "box_Random_84.Output", "box_Brick_Exp_Common_WaveSpawner_53.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_421_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_96();
    l0 = self.box_OnceOnly_v3_421;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_96;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|533699376", "533699376", "Swamp_H2_CTP_010_Enemy", "box_OnceOnly_v3_421.Out", "box_Brick_Exp_Common_WaveSpawner_96.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_SetBoolean_v2_236_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_236_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_202();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1305903863", "1305903863", "Swamp_H2_CTP_010_Enemy", "box_SetBoolean_v2_236.Out", "box_SetEntity_v2_202.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_410_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_410_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_412();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_412;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|553325966", "553325966", "Swamp_H2_CTP_010_Enemy", "box_SetInteger_v2_410.Out", "box_Brick_Exp_Common_WaveSpawner_412.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_Brick_Exp_Common_BasicSetups_178_Out()
    local l0, l1;
    self:OnExit_box_Brick_Exp_Common_BasicSetups_178_Out();
    l0 = self.box_Brick_Exp_Common_BasicSetups_178;
    l1 = self.box_MultipleOR_179;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|929437478", "929437478", "Swamp_H2_CTP_010_Enemy", "box_Brick_Exp_Common_BasicSetups_178.Out", "box_MultipleOR_179.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_SetEntity_v2_335_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_335_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_358();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2143977609", "2143977609", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_335.Out", "box_SetEntity_v2_358.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_133_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_430();
    l0 = self.box_ProximityTrigger_v3_430;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1971090218", "1971090218", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_133.Out", "box_ProximityTrigger_v3_430.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_133_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_171();
    l0 = self.box_ProximityTrigger_v3_171;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1536612211", "1536612211", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_133.Out", "box_ProximityTrigger_v3_171.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_133_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_93();
    l0 = self.box_ProximityTrigger_v3_93;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1721828465", "1721828465", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_133.Out", "box_ProximityTrigger_v3_93.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetInteger_v2_334_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_334_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_65();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_65;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|208469725", "208469725", "Swamp_H2_CTP_010_Enemy", "box_SetInteger_v2_334.Out", "box_Brick_Exp_Common_WaveSpawner_65.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_SetEntity_v2_339_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_339_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_379();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1905875697", "1905875697", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_339.Out", "box_Simple_Node_379.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_205_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_205_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_224();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|528207631", "528207631", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_205.Out", "box_SetEntity_v2_224.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_328_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_236();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1798255497", "1798255497", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_328.Out", "box_SetBoolean_v2_236.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_328_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_247();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1926315529", "1926315529", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_328.Out", "box_SetBoolean_v2_247.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_328_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_237();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|451387454", "451387454", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_328.Out", "box_SetBoolean_v2_237.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_328_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_354();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|730968547", "730968547", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_328.Out", "box_SetBoolean_v2_354.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_408_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuard_168();
    l0 = self.box_IndexList_v2_408;
    l1 = self.box_Brick_Exp_Enemy_PackageGuard_168;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|238928875", "238928875", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_408.Output", "box_Brick_Exp_Enemy_PackageGuard_168.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_408_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuard_285();
    l0 = self.box_IndexList_v2_408;
    l1 = self.box_Brick_Exp_Enemy_PackageGuard_285;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|820768721", "820768721", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_408.Output", "box_Brick_Exp_Enemy_PackageGuard_285.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_408_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuard_287();
    l0 = self.box_IndexList_v2_408;
    l1 = self.box_Brick_Exp_Enemy_PackageGuard_287;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1554333136", "1554333136", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_408.Output", "box_Brick_Exp_Enemy_PackageGuard_287.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_408_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuard_289();
    l0 = self.box_IndexList_v2_408;
    l1 = self.box_Brick_Exp_Enemy_PackageGuard_289;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|962347844", "962347844", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_408.Output", "box_Brick_Exp_Enemy_PackageGuard_289.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_408_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuard_291();
    l0 = self.box_IndexList_v2_408;
    l1 = self.box_Brick_Exp_Enemy_PackageGuard_291;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1586893063", "1586893063", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_408.Output", "box_Brick_Exp_Enemy_PackageGuard_291.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_408_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuard_295();
    l0 = self.box_IndexList_v2_408;
    l1 = self.box_Brick_Exp_Enemy_PackageGuard_295;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1424948208", "1424948208", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_408.Output", "box_Brick_Exp_Enemy_PackageGuard_295.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_316_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_396();
    l0 = self.box_OnceOnly_v3_316;
    l1 = self.box_MultipleAND_v2_396;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1114351646", "1114351646", "Swamp_H2_CTP_010_Enemy", "box_OnceOnly_v3_316.Out", "box_MultipleAND_v2_396.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_SetEntity_v2_297_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_297_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_313();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1130517809", "1130517809", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_297.Out", "box_SetEntity_v2_313.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_302_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_302_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_290();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2019947866", "2019947866", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_302.Out", "box_SetEntity_v2_290.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_121_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_121_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_206();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_206;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|311591957", "311591957", "Swamp_H2_CTP_010_Enemy", "box_SetInteger_v2_121.Out", "box_Brick_Exp_Common_WaveSpawner_206.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_130_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_130;
    l1 = self.box_MultipleOR_107;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1457537334", "1457537334", "Swamp_H2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_130.NextWave", "box_MultipleOR_107.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_206_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_218();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_206;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1731043699", "1731043699", "Swamp_H2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_206.NextWave", "box_SetInteger_v2_218.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_247_Out()
    self:OnExit_box_SetBoolean_v2_247_Out();
end;

function export:f_box_Compare_Boolean_317_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_258();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1634822563", "1634822563", "Swamp_H2_CTP_010_Enemy", "box_Compare_Boolean_317.A_is_False", "box_OutputOrder_v2_258.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_208_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_308();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|520341373", "520341373", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_208.Out", "box_TriggerState_v2_308.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_208_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_284();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1742971175", "1742971175", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_208.Out", "box_TriggerState_v2_284.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_208_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_351();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1338879174", "1338879174", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_208.Out", "box_TriggerState_v2_351.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_208_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_249();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1246904296", "1246904296", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_208.Out", "box_TriggerState_v2_249.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_358_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_358_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_298();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2146934997", "2146934997", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_358.Out", "box_SetEntity_v2_298.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_359_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_359_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_215();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_215;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|441534968", "441534968", "Swamp_H2_CTP_010_Enemy", "box_SetInteger_v2_359.Out", "box_Brick_Exp_Common_WaveSpawner_215.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_413_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_410();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_413;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|47986786", "47986786", "Swamp_H2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_413.NextWave", "box_SetInteger_v2_410.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_185_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_38();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_185;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1804464176", "1804464176", "Swamp_H2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_185.NextWave", "box_SetInteger_v2_38.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_200_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_200;
    l1 = self.box_MultipleOR_58;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|904562842", "904562842", "Swamp_H2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_200.NextWave", "box_MultipleOR_58.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetEntity_v2_314_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_314_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_240();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2111750642", "2111750642", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_314.Out", "box_SetEntity_v2_240.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_321_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_323();
    l0 = self.box_Delay_v5_321;
    l1 = self.box_Delay_v5_323;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|664521346", "664521346", "Swamp_H2_CTP_010_Enemy", "box_Delay_v5_321.Started", "box_Delay_v5_323.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_321_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_321;
    l1 = self.box_OnceOnly_v3_305;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1292200740", "1292200740", "Swamp_H2_CTP_010_Enemy", "box_Delay_v5_321.TimeElapsed", "box_OnceOnly_v3_305.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MissionBlockLayer_230_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_18();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|103320861", "103320861", "Swamp_H2_CTP_010_Enemy", "box_MissionBlockLayer_230.Activated", "box_MissionBlockLayer_18.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_241_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_180();
    l0 = self.box_MessageListener_v3_180;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1747054893", "1747054893", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_241.Out", "box_MessageListener_v3_180.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_241_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_188();
    l0 = self.box_MessageListener_v3_188;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|292126746", "292126746", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_241.Out", "box_MessageListener_v3_188.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_241_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_222();
    l0 = self.box_MessageListener_v3_222;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|735535861", "735535861", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_241.Out", "box_MessageListener_v3_222.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_241_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_387();
    l0 = self.box_MessageListener_v3_387;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|274816384", "274816384", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_241.Out", "box_MessageListener_v3_387.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_447_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_231();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|60249392", "60249392", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_447.Out", "box_Compare_Boolean_231.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_447_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_448();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|334029264", "334029264", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_447.Out", "box_Print_v2_448.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_55_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_219();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_55;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1059924800", "1059924800", "Swamp_H2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_55.NextWave", "box_SetInteger_v2_219.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_260_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_260_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_213();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1912996832", "1912996832", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_260.Out", "box_SetEntity_v2_213.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_231_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_336();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1914753170", "1914753170", "Swamp_H2_CTP_010_Enemy", "box_Compare_Boolean_231.A_is_False", "box_OutputOrder_v2_336.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_228_Out()
    self:OnExit_box_SetBoolean_v2_228_Out();
end;

function export:f_box_SetEntity_v2_138_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_138_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_6();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|189113082", "189113082", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_138.Out", "box_SetEntity_v2_6.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_61_Out()
    self:OnExit_box_SetBoolean_v2_61_Out();
end;

function export:f_box_MultipleOR_261_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_261;
    l1 = self.box_OnceOnly_v3_316;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|536883931", "536883931", "Swamp_H2_CTP_010_Enemy", "box_MultipleOR_261.Out", "box_OnceOnly_v3_316.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetBoolean_v2_234_Out()
    self:OnExit_box_SetBoolean_v2_234_Out();
end;

function export:f_box_SetBoolean_v2_326_Out()
    self:OnExit_box_SetBoolean_v2_326_Out();
end;

function export:f_box_SetEntity_v2_243_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_243_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_217();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1699307807", "1699307807", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_243.Out", "box_SetEntity_v2_217.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_22_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_22_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_165();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1493973436", "1493973436", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_22.Out", "box_SetEntity_v2_165.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_187_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_334();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_187;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1372242690", "1372242690", "Swamp_H2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_187.NextWave", "box_SetInteger_v2_334.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_146_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_146_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_50();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1916862923", "1916862923", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_146.Out", "box_SetEntity_v2_50.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_462_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_463();
    l0 = self.box_IndexList_v2_462;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_463;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|77718383", "77718383", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_462.Output", "box_Brick_Exp_Common_WaveSpawner_463.CleanupOnly", l0:GetLuaBox(), l1:GetLuaBox());
    -- CleanupOnly
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_462_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_413();
    l0 = self.box_IndexList_v2_462;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_413;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1261961426", "1261961426", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_462.Output", "box_Brick_Exp_Common_WaveSpawner_413.CleanupOnly", l0:GetLuaBox(), l1:GetLuaBox());
    -- CleanupOnly
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_462_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_412();
    l0 = self.box_IndexList_v2_462;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_412;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2111150896", "2111150896", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_462.Output", "box_Brick_Exp_Common_WaveSpawner_412.CleanupOnly", l0:GetLuaBox(), l1:GetLuaBox());
    -- CleanupOnly
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_462_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_426();
    l0 = self.box_IndexList_v2_462;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_426;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2048118959", "2048118959", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_462.Output", "box_Brick_Exp_Common_WaveSpawner_426.CleanupOnly", l0:GetLuaBox(), l1:GetLuaBox());
    -- CleanupOnly
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_462_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_427();
    l0 = self.box_IndexList_v2_462;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_427;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|187411890", "187411890", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_462.Output", "box_Brick_Exp_Common_WaveSpawner_427.CleanupOnly", l0:GetLuaBox(), l1:GetLuaBox());
    -- CleanupOnly
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_462_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_423();
    l0 = self.box_IndexList_v2_462;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_423;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|980943739", "980943739", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_462.Output", "box_Brick_Exp_Common_WaveSpawner_423.CleanupOnly", l0:GetLuaBox(), l1:GetLuaBox());
    -- CleanupOnly
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_462_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_461();
    l0 = self.box_IndexList_v2_462;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_461;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|905906680", "905906680", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_462.Output", "box_Brick_Exp_Common_WaveSpawner_461.CleanupOnly", l0:GetLuaBox(), l1:GetLuaBox());
    -- CleanupOnly
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_462_Output_7()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_458();
    l0 = self.box_IndexList_v2_462;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_458;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|165929023", "165929023", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_462.Output", "box_Brick_Exp_Common_WaveSpawner_458.CleanupOnly", l0:GetLuaBox(), l1:GetLuaBox());
    -- CleanupOnly
    l1:Exec(1, params);
end;

function export:f_box_ActivityAcknowledgeGate_3_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|989418235", "989418235", "Swamp_H2_CTP_010_Enemy", "box_ActivityAcknowledgeGate_3.Acknowledged", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_3_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|290228835", "290228835", "Swamp_H2_CTP_010_Enemy", "box_ActivityAcknowledgeGate_3.Reloaded", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Random_210_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_86();
    l0 = self.box_Random_210;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_86;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|936187423", "936187423", "Swamp_H2_CTP_010_Enemy", "box_Random_210.Output", "box_Brick_Exp_Common_WaveSpawner_86.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_Random_210_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_104();
    l0 = self.box_Random_210;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_104;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|71138475", "71138475", "Swamp_H2_CTP_010_Enemy", "box_Random_210.Output", "box_Brick_Exp_Common_WaveSpawner_104.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_Random_210_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_130();
    l0 = self.box_Random_210;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_130;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|951722281", "951722281", "Swamp_H2_CTP_010_Enemy", "box_Random_210.Output", "box_Brick_Exp_Common_WaveSpawner_130.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_Random_210_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_111();
    l0 = self.box_Random_210;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_111;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1516901973", "1516901973", "Swamp_H2_CTP_010_Enemy", "box_Random_210.Output", "box_Brick_Exp_Common_WaveSpawner_111.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_SetEntity_v2_257_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_257_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_335();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|462177209", "462177209", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_257.Out", "box_SetEntity_v2_335.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_412_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_411();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_412;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|134673181", "134673181", "Swamp_H2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_412.NextWave", "box_SetInteger_v2_411.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_182_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_420;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1623440946", "1623440946", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_182.Out", "box_MultipleOR_420.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_182_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_184();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1386217782", "1386217782", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_182.Out", "box_SetContextualStrategy_184.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_182_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_403;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1307725661", "1307725661", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_182.Out", "box_OnceOnly_v3_403.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetBoolean_v2_125_Out()
    self:OnExit_box_SetBoolean_v2_125_Out();
end;

function export:f_box_MultipleOR_156_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_156;
    l1 = self.box_OnceOnly_v3_169;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|256063622", "256063622", "Swamp_H2_CTP_010_Enemy", "box_MultipleOR_156.Out", "box_OnceOnly_v3_169.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_336_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_275();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1220982925", "1220982925", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_336.Out", "box_SetBoolean_v2_275.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_336_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_326();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1992746163", "1992746163", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_336.Out", "box_SetBoolean_v2_326.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_336_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_228();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1375740667", "1375740667", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_336.Out", "box_SetBoolean_v2_228.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_336_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_251();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1938118913", "1938118913", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_336.Out", "box_SetBoolean_v2_251.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_217_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_217_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_330();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1037535476", "1037535476", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_217.Out", "box_SetEntity_v2_330.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TriggerState_v2_284_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_429();
    l0 = self.box_ProximityTrigger_v3_429;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|307616639", "307616639", "Swamp_H2_CTP_010_Enemy", "box_TriggerState_v2_284.Enabled", "box_ProximityTrigger_v3_429.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetEntity_v2_98_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_98_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_87;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1565967640", "1565967640", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_98.Out", "box_MultipleOR_87.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v3_174_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_444();
    l0 = self.box_ProximityTrigger_v3_174;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1202591132", "1202591132", "Swamp_H2_CTP_010_Enemy", "box_ProximityTrigger_v3_174.Enter", "box_OutputOrder_v2_444.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_357_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_357_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_345();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2059712694", "2059712694", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_357.Out", "box_SetEntity_v2_345.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_120_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_120_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_69();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1136439", "1136439", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_120.Out", "box_SetEntity_v2_69.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_309_Started()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_311();
    l0 = self.box_Delay_v5_309;
    l1 = self.box_DisplayCustomUIMsg_v5_311;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|959001295", "959001295", "Swamp_H2_CTP_010_Enemy", "box_Delay_v5_309.Started", "box_DisplayCustomUIMsg_v5_311.Display", l0:GetLuaBox(), l1:GetLuaBox());
    -- Display
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_309_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_311();
    l0 = self.box_Delay_v5_309;
    l1 = self.box_DisplayCustomUIMsg_v5_311;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1853682344", "1853682344", "Swamp_H2_CTP_010_Enemy", "box_Delay_v5_309.TimeElapsed", "box_DisplayCustomUIMsg_v5_311.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_258_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_288();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|537379246", "537379246", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_258.Out", "box_SetBoolean_v2_288.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_258_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_255();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|996928789", "996928789", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_258.Out", "box_SetBoolean_v2_255.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_258_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_312();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1246576178", "1246576178", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_258.Out", "box_SetBoolean_v2_312.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_258_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_223();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|323351611", "323351611", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_258.Out", "box_SetBoolean_v2_223.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_356_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_208();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|891315682", "891315682", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_356.Out", "box_OutputOrder_v2_208.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_356_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_44();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|822740546", "822740546", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_356.Out", "box_Simple_Node_44.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_356_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_193();
    l0 = self.box_MessageListener_v3_193;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1172698539", "1172698539", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_356.Out", "box_MessageListener_v3_193.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_76_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_IndexList_v2_404();
    l0 = self.box_Delay_v5_76;
    l1 = self.box_IndexList_v2_404;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|578939081", "578939081", "Swamp_H2_CTP_010_Enemy", "box_Delay_v5_76.TimeElapsed", "box_IndexList_v2_404.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SetEntity_v2_100_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_100_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_132();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1476919554", "1476919554", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_100.Out", "box_SetEntity_v2_132.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_220_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_156;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|496042438", "496042438", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_220.Out", "box_MultipleOR_156.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_220_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_122();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1023403408", "1023403408", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_220.Out", "box_SetContextualStrategy_122.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_220_Out_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_399;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|646697711", "646697711", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_220.Out", "box_OnceOnly_v3_399.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetEntity_v2_346_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_346_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_197();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1207464252", "1207464252", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_346.Out", "box_SetEntity_v2_197.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_72_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_32();
    l0 = self.box_MultipleOR_72;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1427754596", "1427754596", "Swamp_H2_CTP_010_Enemy", "box_MultipleOR_72.Out", "box_MissionBlockLayer_32.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_202_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_202_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_347();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2079922248", "2079922248", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_202.Out", "box_SetEntity_v2_347.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_402_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MessageListener_v3_36();
    l0 = self.box_MessageListener_v3_402;
    l1 = self.box_MessageListener_v3_36;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1680554214", "1680554214", "Swamp_H2_CTP_010_Enemy", "box_MessageListener_v3_402.Enabled", "box_MessageListener_v3_36.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MessageListener_v3_402_Received()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuardNearest_299();
    l0 = self.box_MessageListener_v3_402;
    l1 = self.box_Brick_Exp_Enemy_PackageGuardNearest_299;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|261557236", "261557236", "Swamp_H2_CTP_010_Enemy", "box_MessageListener_v3_402.Received", "box_Brick_Exp_Enemy_PackageGuardNearest_299.PackagePicked", l0:GetLuaBox(), l1:GetLuaBox());
    -- PackagePicked
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_41_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_41;
    l1 = self.box_OnceOnly_v3_80;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1482701472", "1482701472", "Swamp_H2_CTP_010_Enemy", "box_MultipleOR_41.Out", "box_OnceOnly_v3_80.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetEntity_v2_172_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_172_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_137();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1658992039", "1658992039", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_172.Out", "box_SetEntity_v2_137.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_450_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_81();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|286743260", "286743260", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_450.Out", "box_Compare_Boolean_81.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_450_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_451();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|466240506", "466240506", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_450.Out", "box_Print_v2_451.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_11_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_67();
    l0 = self.box_MultipleOR_11;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1042323289", "1042323289", "Swamp_H2_CTP_010_Enemy", "box_MultipleOR_11.Out", "box_MissionBlockLayer_67.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_54_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_54_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_39();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|522912939", "522912939", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_54.Out", "box_SetEntity_v2_39.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_150_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_150_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_94();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1461386775", "1461386775", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_150.Out", "box_SetEntity_v2_94.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_144_Out()
    self:OnExit_box_SetBoolean_v2_144_Out();
end;

function export:f_box_SetEntity_v2_352_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_352_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_268();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1615329858", "1615329858", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_352.Out", "box_SetEntity_v2_268.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_290_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_290_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_333();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|858651706", "858651706", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_290.Out", "box_SetEntity_v2_333.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_320_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_309();
    l0 = self.box_Gate_v3_320;
    l1 = self.box_Delay_v5_309;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1275458939", "1275458939", "Swamp_H2_CTP_010_Enemy", "box_Gate_v3_320.Out", "box_Delay_v5_309.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_1_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_1;
    l1 = self.box_ActivityInitialized_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|311438754", "311438754", "Swamp_H2_CTP_010_Enemy", "box_MultipleOR_1.Out", "box_ActivityInitialized_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_SetEntity_v2_37_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_37_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_12();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|475130603", "475130603", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_37.Out", "box_SetEntity_v2_12.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_179_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_192();
    l0 = self.box_MultipleOR_179;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|907793955", "907793955", "Swamp_H2_CTP_010_Enemy", "box_MultipleOR_179.Out", "box_OutputOrder_v2_192.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_254_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_254_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_342();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1361626303", "1361626303", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_254.Out", "box_SetEntity_v2_342.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_110_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_IndexList_v2_400();
    l0 = self.box_Delay_v5_110;
    l1 = self.box_IndexList_v2_400;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|439099001", "439099001", "Swamp_H2_CTP_010_Enemy", "box_Delay_v5_110.TimeElapsed", "box_IndexList_v2_400.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v3_439_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_170();
    l0 = self.box_ProximityTrigger_v3_439;
    l1 = self.box_Delay_v5_170;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|340081535", "340081535", "Swamp_H2_CTP_010_Enemy", "box_ProximityTrigger_v3_439.Enabled", "box_Delay_v5_170.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v3_439_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_182();
    l0 = self.box_ProximityTrigger_v3_439;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1469347378", "1469347378", "Swamp_H2_CTP_010_Enemy", "box_ProximityTrigger_v3_439.Enter", "box_OutputOrder_v2_182.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_439_Leave()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_340();
    l0 = self.box_ProximityTrigger_v3_439;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1720466436", "1720466436", "Swamp_H2_CTP_010_Enemy", "box_ProximityTrigger_v3_439.Leave", "box_SetContextualStrategy_340.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_274_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_274_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_233();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|911728981", "911728981", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_274.Out", "box_SetEntity_v2_233.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_17_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|335006753", "335006753", "Swamp_H2_CTP_010_Enemy", "box_MissionBlockLayer_17.Activated", "box_MultipleOR_46.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Gate_v3_123_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_133();
    l0 = self.box_Gate_v3_123;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|707701180", "707701180", "Swamp_H2_CTP_010_Enemy", "box_Gate_v3_123.Out", "box_OutputOrder_v2_133.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_404_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_162();
    l0 = self.box_IndexList_v2_404;
    l1 = self.box_Delay_v5_162;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|892169596", "892169596", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_404.Output", "box_Delay_v5_162.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_IndexList_v2_404_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAIRequestGroup_v2_425();
    l0 = self.box_IndexList_v2_404;
    l1 = self.box_SpawnAIRequestGroup_v2_425;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2092624211", "2092624211", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_404.Output", "box_SpawnAIRequestGroup_v2_425.SpawnByCount", l0:GetLuaBox(), l1:GetLuaBox());
    -- SpawnByCount
    l1:Exec(1, params);
end;

function export:f_box_SetInteger_v2_40_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_40_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_88();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_88;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1966370004", "1966370004", "Swamp_H2_CTP_010_Enemy", "box_SetInteger_v2_40.Out", "box_Brick_Exp_Common_WaveSpawner_88.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_SetBoolean_v2_288_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_288_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_304();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|399184766", "399184766", "Swamp_H2_CTP_010_Enemy", "box_SetBoolean_v2_288.Out", "box_SetEntity_v2_304.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_29_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_29_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_99();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|948358202", "948358202", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_29.Out", "box_SetEntity_v2_99.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_194_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_108();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_194;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|396987233", "396987233", "Swamp_H2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_194.NextWave", "box_SetInteger_v2_108.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_114_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_114_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_25();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|23921002", "23921002", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_114.Out", "box_SetEntity_v2_25.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_66_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_185();
    l0 = self.box_IndexList_v2_66;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_185;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|456448203", "456448203", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_66.Output", "box_Brick_Exp_Common_WaveSpawner_185.CleanupOnly", l0:GetLuaBox(), l1:GetLuaBox());
    -- CleanupOnly
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_66_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_31();
    l0 = self.box_IndexList_v2_66;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_31;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|822066001", "822066001", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_66.Output", "box_Brick_Exp_Common_WaveSpawner_31.CleanupOnly", l0:GetLuaBox(), l1:GetLuaBox());
    -- CleanupOnly
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_66_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_187();
    l0 = self.box_IndexList_v2_66;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_187;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2033764180", "2033764180", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_66.Output", "box_Brick_Exp_Common_WaveSpawner_187.CleanupOnly", l0:GetLuaBox(), l1:GetLuaBox());
    -- CleanupOnly
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_66_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_65();
    l0 = self.box_IndexList_v2_66;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_65;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|844703092", "844703092", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_66.Output", "box_Brick_Exp_Common_WaveSpawner_65.CleanupOnly", l0:GetLuaBox(), l1:GetLuaBox());
    -- CleanupOnly
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_66_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_194();
    l0 = self.box_IndexList_v2_66;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_194;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1831439808", "1831439808", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_66.Output", "box_Brick_Exp_Common_WaveSpawner_194.CleanupOnly", l0:GetLuaBox(), l1:GetLuaBox());
    -- CleanupOnly
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_66_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_55();
    l0 = self.box_IndexList_v2_66;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_55;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|609376787", "609376787", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_66.Output", "box_Brick_Exp_Common_WaveSpawner_55.CleanupOnly", l0:GetLuaBox(), l1:GetLuaBox());
    -- CleanupOnly
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_66_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_27();
    l0 = self.box_IndexList_v2_66;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_27;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1581644986", "1581644986", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_66.Output", "box_Brick_Exp_Common_WaveSpawner_27.CleanupOnly", l0:GetLuaBox(), l1:GetLuaBox());
    -- CleanupOnly
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_66_Output_7()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_196();
    l0 = self.box_IndexList_v2_66;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_196;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1195945646", "1195945646", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_66.Output", "box_Brick_Exp_Common_WaveSpawner_196.CleanupOnly", l0:GetLuaBox(), l1:GetLuaBox());
    -- CleanupOnly
    l1:Exec(1, params);
end;

function export:f_box_SetEntity_v2_246_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_246_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_337();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|512935968", "512935968", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_246.Out", "box_SetEntity_v2_337.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_453_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_142();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|411037182", "411037182", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_453.Out", "box_Compare_Boolean_142.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_453_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_452();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|67201917", "67201917", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_453.Out", "box_Print_v2_452.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_262_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_262_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_198();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|586578674", "586578674", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_262.Out", "box_SetEntity_v2_198.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_201_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_201_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_324();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1145192383", "1145192383", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_201.Out", "box_SetEntity_v2_324.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_6_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_6_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_131();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|900930398", "900930398", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_6.Out", "box_SetEntity_v2_131.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_20_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_20_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_51();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|794636396", "794636396", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_20.Out", "box_SetEntity_v2_51.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_166_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_166_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_87;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1529769188", "1529769188", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_166.Out", "box_MultipleOR_87.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetEntity_v2_286_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_286_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_292();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1273553557", "1273553557", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_286.Out", "box_SetEntity_v2_292.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_401_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_116();
    l0 = self.box_IndexList_v2_401;
    l1 = self.box_Delay_v5_116;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1856992571", "1856992571", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_401.Output", "box_Delay_v5_116.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SetEntity_v2_165_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_165_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_37();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|560192828", "560192828", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_165.Out", "box_SetEntity_v2_37.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_167_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_117();
    l0 = self.box_MultipleOR_167;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_117;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1271964146", "1271964146", "Swamp_H2_CTP_010_Enemy", "box_MultipleOR_167.Out", "box_Brick_Exp_Common_WaveSpawner_117.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_SetEntity_v2_33_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_33_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_157();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|203152570", "203152570", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_33.Out", "box_SetEntity_v2_157.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_46_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_42();
    l0 = self.box_MultipleOR_46;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1097466442", "1097466442", "Swamp_H2_CTP_010_Enemy", "box_MultipleOR_46.Out", "box_MissionBlockLayer_42.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_39_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_39_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_14();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1067340403", "1067340403", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_39.Out", "box_SetEntity_v2_14.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetActivityFact_417_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_396();
    l0 = self.box_MultipleAND_v2_396;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2126257947", "2126257947", "Swamp_H2_CTP_010_Enemy", "box_SetActivityFact_417.Out", "box_MultipleAND_v2_396.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_MissionBlockLayer_49_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_47();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|281029471", "281029471", "Swamp_H2_CTP_010_Enemy", "box_MissionBlockLayer_49.Activated", "box_MissionBlockLayer_47.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_188_Received()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_245();
    l0 = self.box_MessageListener_v3_188;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1054428821", "1054428821", "Swamp_H2_CTP_010_Enemy", "box_MessageListener_v3_188.Received", "box_OutputOrder_v2_245.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_388_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAIRequestGroup_v2_278();
    l0 = self.box_SpawnAIRequestGroup_v2_278;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1329736733", "1329736733", "Swamp_H2_CTP_010_Enemy", "box_SetContextualStrategy_388.Out", "box_SpawnAIRequestGroup_v2_278.SpawnByCount", clone:GetLuaBox(), l0:GetLuaBox());
    -- SpawnByCount
    l0:Exec(1, params);
end;

function export:f_box_SetEntity_v2_226_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_226_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_257();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1574662352", "1574662352", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_226.Out", "box_SetEntity_v2_257.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_60_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_141();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1907317239", "1907317239", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_60.Out", "box_SetBoolean_v2_141.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_60_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_125();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1992017471", "1992017471", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_60.Out", "box_SetBoolean_v2_125.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_60_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_144();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|426311577", "426311577", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_60.Out", "box_SetBoolean_v2_144.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAIRequestGroup_v2_159_RequestSpawned()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_242();
    l0 = self.box_SpawnAIRequestGroup_v2_159;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1628306468", "1628306468", "Swamp_H2_CTP_010_Enemy", "box_SpawnAIRequestGroup_v2_159.RequestSpawned", "box_Print_v2_242.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_426_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_428();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_426;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1232601474", "1232601474", "Swamp_H2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_426.NextWave", "box_SetInteger_v2_428.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_43_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_112();
    l0 = self.box_Delay_v5_43;
    l1 = self.box_MultipleAND_v2_112;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2071201470", "2071201470", "Swamp_H2_CTP_010_Enemy", "box_Delay_v5_43.TimeElapsed", "box_MultipleAND_v2_112.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_ProximityTrigger_v3_338_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_439();
    l0 = self.box_ProximityTrigger_v3_338;
    l1 = self.box_ProximityTrigger_v3_439;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1608412802", "1608412802", "Swamp_H2_CTP_010_Enemy", "box_ProximityTrigger_v3_338.Enabled", "box_ProximityTrigger_v3_439.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_338_Leave()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_160();
    l0 = self.box_ProximityTrigger_v3_338;
    l1 = self.box_Delay_v5_160;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|460373265", "460373265", "Swamp_H2_CTP_010_Enemy", "box_ProximityTrigger_v3_338.Leave", "box_Delay_v5_160.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SetEntity_v2_324_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_324_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_368();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1013915182", "1013915182", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_324.Out", "box_Simple_Node_368.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_396_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IndexList_v2_280();
    l0 = self.box_MultipleAND_v2_396;
    l1 = self.box_IndexList_v2_280;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1885159030", "1885159030", "Swamp_H2_CTP_010_Enemy", "box_MultipleAND_v2_396.Out", "box_IndexList_v2_280.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_RadioModifier_v3_466_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RadioModifier_v3_467();
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2104621914", "2104621914", "Swamp_H2_CTP_010_Enemy", "box_RadioModifier_v3_466.Out", "box_RadioModifier_v3_467.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_251_Out()
    self:OnExit_box_SetBoolean_v2_251_Out();
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_111_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_111;
    l1 = self.box_MultipleOR_107;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|612036176", "612036176", "Swamp_H2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_111.NextWave", "box_MultipleOR_107.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_OutputOrder_v2_106_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityFact_417();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|430154741", "430154741", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_106.Out", "box_SetActivityFact_417.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_106_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_383();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1420537080", "1420537080", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_106.Out", "box_Simple_Node_383.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_350_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_350_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_204();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1012274469", "1012274469", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_350.Out", "box_SetEntity_v2_204.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_31_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_366();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_31;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|63655218", "63655218", "Swamp_H2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_31.NextWave", "box_SetInteger_v2_366.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_259_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_259_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_300();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1096388505", "1096388505", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_259.Out", "box_SetEntity_v2_300.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_275_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_275_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_232();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1856158104", "1856158104", "Swamp_H2_CTP_010_Enemy", "box_SetBoolean_v2_275.Out", "box_SetEntity_v2_232.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_109_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_210();
    l0 = self.box_MultipleOR_109;
    l1 = self.box_Random_210;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1210482783", "1210482783", "Swamp_H2_CTP_010_Enemy", "box_MultipleOR_109.Out", "box_Random_210.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SetEntity_v2_132_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_132_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_98();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|770175149", "770175149", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_132.Out", "box_SetEntity_v2_98.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_454_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_140();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1345951898", "1345951898", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_454.Out", "box_Compare_Boolean_140.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_454_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_449();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|704219727", "704219727", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_454.Out", "box_Print_v2_449.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_83_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_83_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_16();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2008365510", "2008365510", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_83.Out", "box_SetEntity_v2_16.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_90_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_112();
    l0 = self.box_OnceOnly_v3_90;
    l1 = self.box_MultipleAND_v2_112;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1210125915", "1210125915", "Swamp_H2_CTP_010_Enemy", "box_OnceOnly_v3_90.Out", "box_MultipleAND_v2_112.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_458_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_458;
    l1 = self.box_MultipleOR_419;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1702838388", "1702838388", "Swamp_H2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_458.NextWave", "box_MultipleOR_419.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetEntity_v2_279_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_279_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_346();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|865699262", "865699262", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_279.Out", "box_SetEntity_v2_346.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RadioModifier_v3_467_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RadioModifier_v3_468();
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1088195950", "1088195950", "Swamp_H2_CTP_010_Enemy", "box_RadioModifier_v3_467.Out", "box_RadioModifier_v3_468.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_57_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_57_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_135();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1740403506", "1740403506", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_57.Out", "box_SetEntity_v2_135.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_18_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_72;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1474648998", "1474648998", "Swamp_H2_CTP_010_Enemy", "box_MissionBlockLayer_18.Activated", "box_MultipleOR_72.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_SetEntity_v2_102_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_102_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_62();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1180448464", "1180448464", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_102.Out", "box_SetEntity_v2_62.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_204_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_204_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_355();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|517898490", "517898490", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_204.Out", "box_SetEntity_v2_355.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_195_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_195_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_207();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1555742622", "1555742622", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_195.Out", "box_SetEntity_v2_207.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_323_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_323;
    l1 = self.box_Swamp_H2_FlareSTP_301;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1009318202", "1009318202", "Swamp_H2_CTP_010_Enemy", "box_Delay_v5_323.TimeElapsed", "box_Swamp_H2_FlareSTP_301.Cleanup", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cleanup
    l1:Exec(0, {
    });
end;

function export:f_box_ProximityTrigger_v3_171_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_TriggerState_v2_441();
    l0 = self.box_ProximityTrigger_v3_171;
    l1 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1606462720", "1606462720", "Swamp_H2_CTP_010_Enemy", "box_ProximityTrigger_v3_171.Disabled", "box_TriggerState_v2_441.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_171_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_453();
    l0 = self.box_ProximityTrigger_v3_171;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|407151927", "407151927", "Swamp_H2_CTP_010_Enemy", "box_ProximityTrigger_v3_171.Enter", "box_OutputOrder_v2_453.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_56_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_56_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_78();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1571623998", "1571623998", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_56.Out", "box_SetEntity_v2_78.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_63_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_63_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_22();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1599006560", "1599006560", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_63.Out", "box_SetEntity_v2_22.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_213_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_213_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_378();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1995443181", "1995443181", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_213.Out", "box_Simple_Node_378.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_395_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_393();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|549465539", "549465539", "Swamp_H2_CTP_010_Enemy", "box_MissionBlockLayer_395.Activated", "box_MissionBlockLayer_393.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_9_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_9_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_138();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1375227886", "1375227886", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_9.Out", "box_SetEntity_v2_138.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TriggerState_v2_351_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_363();
    l0 = self.box_ProximityTrigger_v3_363;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|98216606", "98216606", "Swamp_H2_CTP_010_Enemy", "box_TriggerState_v2_351.Enabled", "box_ProximityTrigger_v3_363.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetInteger_v2_176_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_176_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_4();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1690615380", "1690615380", "Swamp_H2_CTP_010_Enemy", "box_SetInteger_v2_176.Out", "box_SetEntity_v2_4.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_180_Received()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_435();
    l0 = self.box_MessageListener_v3_180;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|923469508", "923469508", "Swamp_H2_CTP_010_Enemy", "box_MessageListener_v3_180.Received", "box_Simple_Node_435.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_430_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_TriggerState_v2_440();
    l0 = self.box_ProximityTrigger_v3_430;
    l1 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|197325561", "197325561", "Swamp_H2_CTP_010_Enemy", "box_ProximityTrigger_v3_430.Disabled", "box_TriggerState_v2_440.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_430_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_450();
    l0 = self.box_ProximityTrigger_v3_430;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1151552336", "1151552336", "Swamp_H2_CTP_010_Enemy", "box_ProximityTrigger_v3_430.Enter", "box_OutputOrder_v2_450.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_157_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_157_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_85();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2118031315", "2118031315", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_157.Out", "box_SetEntity_v2_85.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_71_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_71_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_102();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|78150178", "78150178", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_71.Out", "box_SetEntity_v2_102.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_419_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_459();
    l0 = self.box_MultipleOR_419;
    l1 = self.box_Random_459;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1580721754", "1580721754", "Swamp_H2_CTP_010_Enemy", "box_MultipleOR_419.Out", "box_Random_459.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SetEntity_v2_313_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_313_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_281();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|825228406", "825228406", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_313.Out", "box_SetEntity_v2_281.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_263_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_263_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_314();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2041066228", "2041066228", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_263.Out", "box_SetEntity_v2_314.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_420_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_420;
    l1 = self.box_OnceOnly_v3_421;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|189720167", "189720167", "Swamp_H2_CTP_010_Enemy", "box_MultipleOR_420.Out", "box_OnceOnly_v3_421.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetInteger_v2_218_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_218_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_136();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_136;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|759230264", "759230264", "Swamp_H2_CTP_010_Enemy", "box_SetInteger_v2_218.Out", "box_Brick_Exp_Common_WaveSpawner_136.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_73_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_68();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_73;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|877224243", "877224243", "Swamp_H2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_73.NextWave", "box_SetInteger_v2_68.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_89_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_89;
    l1 = self.box_MultipleOR_41;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1015600008", "1015600008", "Swamp_H2_CTP_010_Enemy", "box_Delay_v5_89.TimeElapsed", "box_MultipleOR_41.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_117_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_359();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_117;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1713016832", "1713016832", "Swamp_H2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_117.NextWave", "box_SetInteger_v2_359.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_444_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_317();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|770786746", "770786746", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_444.Out", "box_Compare_Boolean_317.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_444_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_443();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1656089165", "1656089165", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_444.Out", "box_Print_v2_443.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_189_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_189_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_176();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1996018015", "1996018015", "Swamp_H2_CTP_010_Enemy", "box_SetInteger_v2_189.Out", "box_SetInteger_v2_176.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_461_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_464();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_461;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1623756093", "1623756093", "Swamp_H2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_461.NextWave", "box_SetInteger_v2_464.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_416_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_416;
    l1 = self.box_MultipleOR_415;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1181116365", "1181116365", "Swamp_H2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_416.NextWave", "box_MultipleOR_415.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_SetInteger_v2_406_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_406_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_413();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_413;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|135123287", "135123287", "Swamp_H2_CTP_010_Enemy", "box_SetInteger_v2_406.Out", "box_Brick_Exp_Common_WaveSpawner_413.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_SetEntity_v2_19_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_19_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_166();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|908487595", "908487595", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_19.Out", "box_SetEntity_v2_166.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_414_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_414_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_423();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_423;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1047848836", "1047848836", "Swamp_H2_CTP_010_Enemy", "box_SetInteger_v2_414.Out", "box_Brick_Exp_Common_WaveSpawner_423.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_SetEntity_v2_199_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_199_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_265();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|757949059", "757949059", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_199.Out", "box_SetEntity_v2_265.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_183_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_183_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_190();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1008448637", "1008448637", "Swamp_H2_CTP_010_Enemy", "box_SetInteger_v2_183.Out", "box_SetEntity_v2_190.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_38_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_38_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_31();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_31;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|600766458", "600766458", "Swamp_H2_CTP_010_Enemy", "box_SetInteger_v2_38.Out", "box_Brick_Exp_Common_WaveSpawner_31.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_Compare_Integers_92_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_118();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2085794843", "2085794843", "Swamp_H2_CTP_010_Enemy", "box_Compare_Integers_92.A_eq_B", "box_MissionBlockLayer_118.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_92_A_gt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_119();
    l0 = self.box_IndexList_v2_119;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|352408094", "352408094", "Swamp_H2_CTP_010_Enemy", "box_Compare_Integers_92.A_gt_B", "box_IndexList_v2_119.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Compare_Integers_92_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_97();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|141713209", "141713209", "Swamp_H2_CTP_010_Enemy", "box_Compare_Integers_92.A_lt_B", "box_MissionBlockLayer_97.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_360_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_360_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_214();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|857433645", "857433645", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_360.Out", "box_SetEntity_v2_214.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_21_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_21_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_146();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|502936071", "502936071", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_21.Out", "box_SetEntity_v2_146.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_153_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_153_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_71();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|374974384", "374974384", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_153.Out", "box_SetEntity_v2_71.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_192_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_371();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2012112091", "2012112091", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_192.Out", "box_Simple_Node_371.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_192_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_376();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|374926817", "374926817", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_192.Out", "box_Simple_Node_376.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_192_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_375();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|10603344", "10603344", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_192.Out", "box_Simple_Node_375.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_192_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_433();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1284400032", "1284400032", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_192.Out", "box_Simple_Node_433.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_192_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_469();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|800549209", "800549209", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_192.Out", "box_Simple_Node_469.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_192_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_470();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|29285290", "29285290", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_192.Out", "box_Simple_Node_470.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_163_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_126();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|275443651", "275443651", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_163.Out", "box_SetBoolean_v2_126.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_163_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_48();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1191935789", "1191935789", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_163.Out", "box_SetBoolean_v2_48.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_163_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_23();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|526759134", "526759134", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_163.Out", "box_SetBoolean_v2_23.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_312_Out()
    self:OnExit_box_SetBoolean_v2_312_Out();
end;

function export:f_box_SetContextualStrategy_95_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_271();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|564656074", "564656074", "Swamp_H2_CTP_010_Enemy", "box_SetContextualStrategy_95.Out", "box_OutputOrder_v2_271.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_322_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_322_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_297();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1112294296", "1112294296", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_322.Out", "box_SetEntity_v2_297.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_397_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAIRequestGroup_v2_155();
    l0 = self.box_OnceOnly_v3_397;
    l1 = self.box_SpawnAIRequestGroup_v2_155;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2039791445", "2039791445", "Swamp_H2_CTP_010_Enemy", "box_OnceOnly_v3_397.Out", "box_SpawnAIRequestGroup_v2_155.SpawnByCount", l0:GetLuaBox(), l1:GetLuaBox());
    -- SpawnByCount
    l1:Exec(1, params);
end;

function export:f_box_SetEntity_v2_135_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_135_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_29();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|269849879", "269849879", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_135.Out", "box_SetEntity_v2_29.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_91_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_91_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_70();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|992915088", "992915088", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_91.Out", "box_SetEntity_v2_70.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_87_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_373();
    l0 = self.box_MultipleOR_87;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1528815615", "1528815615", "Swamp_H2_CTP_010_Enemy", "box_MultipleOR_87.Out", "box_Simple_Node_373.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetActivityFact_34_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_321();
    l0 = self.box_Delay_v5_321;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|348059755", "348059755", "Swamp_H2_CTP_010_Enemy", "box_SetActivityFact_34.Out", "box_Delay_v5_321.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SetEntity_v2_276_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_276_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_235();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|351124582", "351124582", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_276.Out", "box_SetEntity_v2_235.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_215_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_40();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_215;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1029675008", "1029675008", "Swamp_H2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_215.NextWave", "box_SetInteger_v2_40.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_415_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_415;
    l1 = self.box_MultipleOR_419;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|477140412", "477140412", "Swamp_H2_CTP_010_Enemy", "box_MultipleOR_415.Out", "box_MultipleOR_419.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetEntity_v2_85_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_85_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_63();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2040275545", "2040275545", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_85.Out", "box_SetEntity_v2_63.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_141_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_141_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_134();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|123894932", "123894932", "Swamp_H2_CTP_010_Enemy", "box_SetBoolean_v2_141.Out", "box_SetEntity_v2_134.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_293_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_293_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_341();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|30704110", "30704110", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_293.Out", "box_SetEntity_v2_341.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_77_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_77_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_148();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1889225742", "1889225742", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_77.Out", "box_SetEntity_v2_148.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_28_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_72;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|153580178", "153580178", "Swamp_H2_CTP_010_Enemy", "box_MissionBlockLayer_28.Activated", "box_MultipleOR_72.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_104_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_104;
    l1 = self.box_MultipleOR_107;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|634139588", "634139588", "Swamp_H2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_104.NextWave", "box_MultipleOR_107.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_405_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_76();
    l0 = self.box_OnceOnly_v3_405;
    l1 = self.box_Delay_v5_76;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1318868233", "1318868233", "Swamp_H2_CTP_010_Enemy", "box_OnceOnly_v3_405.Out", "box_Delay_v5_76.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SetEntity_v2_281_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_281_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_254();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|265667280", "265667280", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_281.Out", "box_SetEntity_v2_254.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_68_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_68_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_82();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_82;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1970928443", "1970928443", "Swamp_H2_CTP_010_Enemy", "box_SetInteger_v2_68.Out", "box_Brick_Exp_Common_WaveSpawner_82.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_58_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_58;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|118139413", "118139413", "Swamp_H2_CTP_010_Enemy", "box_MultipleOR_58.Out", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetEntity_v2_294_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_294_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_382();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1510328734", "1510328734", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_294.Out", "box_Simple_Node_382.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_82_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_82;
    l1 = self.box_MultipleOR_109;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1234947919", "1234947919", "Swamp_H2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_82.NextWave", "box_MultipleOR_109.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetEntity_v2_51_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_51_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_151();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2098526622", "2098526622", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_51.Out", "box_SetEntity_v2_151.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_14_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_14_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_19();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|383092572", "383092572", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_14.Out", "box_SetEntity_v2_19.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_427_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_414();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_427;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|365362570", "365362570", "Swamp_H2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_427.NextWave", "box_SetInteger_v2_414.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_16_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_16_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_172();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|501384221", "501384221", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_16.Out", "box_SetEntity_v2_172.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_126_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_126_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_26();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|533556879", "533556879", "Swamp_H2_CTP_010_Enemy", "box_SetBoolean_v2_126.Out", "box_SetEntity_v2_26.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_365_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_89();
    l0 = self.box_ProximityTrigger_v3_365;
    l1 = self.box_Delay_v5_89;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|994638778", "994638778", "Swamp_H2_CTP_010_Enemy", "box_ProximityTrigger_v3_365.Enabled", "box_Delay_v5_89.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v3_365_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_225();
    l0 = self.box_ProximityTrigger_v3_365;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|11877757", "11877757", "Swamp_H2_CTP_010_Enemy", "box_ProximityTrigger_v3_365.Enter", "box_OutputOrder_v2_225.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_365_Leave()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_353();
    l0 = self.box_ProximityTrigger_v3_365;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1534937975", "1534937975", "Swamp_H2_CTP_010_Enemy", "box_ProximityTrigger_v3_365.Leave", "box_SetContextualStrategy_353.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_EnemyHelicopterCleaner_407_EnemyHelicopterLoaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_390();
    l0 = self.box_Brick_Exp_Common_EnemyHelicopterCleaner_407;
    l1 = self.box_ProximityTrigger_v3_390;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1410533135", "1410533135", "Swamp_H2_CTP_010_Enemy", "box_Brick_Exp_Common_EnemyHelicopterCleaner_407.EnemyHelicopterLoaded", "box_ProximityTrigger_v3_390.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SetEntity_v2_78_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_78_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_152();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1517985048", "1517985048", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_78.Out", "box_SetEntity_v2_152.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_232_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_232_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_209();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1289554056", "1289554056", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_232.Out", "box_SetEntity_v2_209.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_423_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_460();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_423;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1513520156", "1513520156", "Swamp_H2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_423.NextWave", "box_SetInteger_v2_460.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_464_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_464_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_458();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_458;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|477634650", "477634650", "Swamp_H2_CTP_010_Enemy", "box_SetInteger_v2_464.Out", "box_Brick_Exp_Common_WaveSpawner_458.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_MissionBlockLayer_64_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_72;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1530535897", "1530535897", "Swamp_H2_CTP_010_Enemy", "box_MissionBlockLayer_64.Activated", "box_MultipleOR_72.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetEntity_v2_62_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_62_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_100();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|518115504", "518115504", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_62.Out", "box_SetEntity_v2_100.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_140_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_145();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1965750488", "1965750488", "Swamp_H2_CTP_010_Enemy", "box_Compare_Boolean_140.A_is_False", "box_OutputOrder_v2_145.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_88_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_139();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_88;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1538174641", "1538174641", "Swamp_H2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_88.NextWave", "box_SetInteger_v2_139.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_108_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_108_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_55();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_55;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2104210157", "2104210157", "Swamp_H2_CTP_010_Enemy", "box_SetInteger_v2_108.Out", "box_Brick_Exp_Common_WaveSpawner_55.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_SetEntity_v2_235_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_235_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_244();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1190388996", "1190388996", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_235.Out", "box_SetEntity_v2_244.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_445_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_250();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1055115906", "1055115906", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_445.Out", "box_Compare_Boolean_250.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_445_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_446();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|395872577", "395872577", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_445.Out", "box_Print_v2_446.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_134_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_134_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_127();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|260745685", "260745685", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_134.Out", "box_SetEntity_v2_127.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_170_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_170;
    l1 = self.box_MultipleOR_420;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1749851374", "1749851374", "Swamp_H2_CTP_010_Enemy", "box_Delay_v5_170.TimeElapsed", "box_MultipleOR_420.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_271_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAIRequestGroup_v2_277();
    l0 = self.box_SpawnAIRequestGroup_v2_277;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|972401676", "972401676", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_271.Out", "box_SpawnAIRequestGroup_v2_277.SpawnByCount", clone:GetLuaBox(), l0:GetLuaBox());
    -- SpawnByCount
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_271_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAIRequestGroup_v2_386();
    l0 = self.box_SpawnAIRequestGroup_v2_386;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1808278545", "1808278545", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_271.Out", "box_SpawnAIRequestGroup_v2_386.SpawnByCount", clone:GetLuaBox(), l0:GetLuaBox());
    -- SpawnByCount
    l0:Exec(1, params);
end;

function export:f_box_SetBoolean_v2_237_Out()
    self:OnExit_box_SetBoolean_v2_237_Out();
end;

function export:f_box_SetInteger_v2_191_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_191_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_186();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|975906663", "975906663", "Swamp_H2_CTP_010_Enemy", "box_SetInteger_v2_191.Out", "box_SetInteger_v2_186.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_238_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_28();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|133296760", "133296760", "Swamp_H2_CTP_010_Enemy", "box_MissionBlockLayer_238.Activated", "box_MissionBlockLayer_28.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_45_Received()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_356();
    l0 = self.box_MessageListener_v3_45;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1266952019", "1266952019", "Swamp_H2_CTP_010_Enemy", "box_MessageListener_v3_45.Received", "box_OutputOrder_v2_356.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_152_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_152_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_91();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|400999553", "400999553", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_152.Out", "box_SetEntity_v2_91.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_173_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_173_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_33();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1521607490", "1521607490", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_173.Out", "box_SetEntity_v2_33.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_392_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|174555527", "174555527", "Swamp_H2_CTP_010_Enemy", "box_MissionBlockLayer_392.Activated", "box_MultipleOR_11.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_273_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_328();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1756082961", "1756082961", "Swamp_H2_CTP_010_Enemy", "box_Compare_Boolean_273.A_is_False", "box_OutputOrder_v2_328.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_50_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_50_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_56();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|540840537", "540840537", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_50.Out", "box_SetEntity_v2_56.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_266_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_266_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_260();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|161874414", "161874414", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_266.Out", "box_SetEntity_v2_260.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_399_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_110();
    l0 = self.box_OnceOnly_v3_399;
    l1 = self.box_Delay_v5_110;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|677906104", "677906104", "Swamp_H2_CTP_010_Enemy", "box_OnceOnly_v3_399.Out", "box_Delay_v5_110.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SetInteger_v2_411_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_411_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_426();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_426;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|62922889", "62922889", "Swamp_H2_CTP_010_Enemy", "box_SetInteger_v2_411.Out", "box_Brick_Exp_Common_WaveSpawner_426.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_162_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAIRequestGroup_v2_105();
    l0 = self.box_Delay_v5_162;
    l1 = self.box_SpawnAIRequestGroup_v2_105;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|599426629", "599426629", "Swamp_H2_CTP_010_Enemy", "box_Delay_v5_162.TimeElapsed", "box_SpawnAIRequestGroup_v2_105.SpawnByCount", l0:GetLuaBox(), l1:GetLuaBox());
    -- SpawnByCount
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_390_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_161();
    l0 = self.box_ProximityTrigger_v3_390;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1393066602", "1393066602", "Swamp_H2_CTP_010_Enemy", "box_ProximityTrigger_v3_390.Enter", "box_SetContextualStrategy_161.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_13_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_13;
    l1 = self.box_MultipleOR_58;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|29109487", "29109487", "Swamp_H2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_13.NextWave", "box_MultipleOR_58.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MessageListener_v3_387_Received()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_388();
    l0 = self.box_MessageListener_v3_387;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1905518769", "1905518769", "Swamp_H2_CTP_010_Enemy", "box_MessageListener_v3_387.Received", "box_SetContextualStrategy_388.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_5_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1859364684", "1859364684", "Swamp_H2_CTP_010_Enemy", "box_MissionBlockLayer_5.Activated", "box_MultipleOR_46.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetEntity_v2_211_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_211_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_302();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1279827797", "1279827797", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_211.Out", "box_SetEntity_v2_302.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_240_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_240_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_319();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1612086307", "1612086307", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_240.Out", "box_SetEntity_v2_319.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_69_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_69_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_24();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1252660583", "1252660583", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_69.Out", "box_SetEntity_v2_24.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_342_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_342_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_226();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1734584617", "1734584617", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_342.Out", "box_SetEntity_v2_226.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_457_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_457;
    l1 = self.box_MultipleOR_415;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1986223513", "1986223513", "Swamp_H2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_457.NextWave", "box_MultipleOR_415.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_SetEntity_v2_306_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_306_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_205();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1231750898", "1231750898", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_306.Out", "box_SetEntity_v2_205.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_148_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_148_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_9();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1026441358", "1026441358", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_148.Out", "box_SetEntity_v2_9.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_137_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_137_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_103();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1291125553", "1291125553", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_137.Out", "box_SetEntity_v2_103.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_280_Output_0()
    local l0, l1;
    l0 = self.box_IndexList_v2_280;
    l1 = self.box_MultipleOR_167;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|684032582", "684032582", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_280.Output", "box_MultipleOR_167.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IndexList_v2_280_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_463();
    l0 = self.box_IndexList_v2_280;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_463;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1543320005", "1543320005", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_280.Output", "box_Brick_Exp_Common_WaveSpawner_463.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_IndexList_v2_280_Output_2()
    local l0, l1;
    l0 = self.box_IndexList_v2_280;
    l1 = self.box_MultipleOR_167;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1038926870", "1038926870", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_280.Output", "box_MultipleOR_167.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetEntity_v2_327_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_327_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_262();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1778096672", "1778096672", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_327.Out", "box_SetEntity_v2_262.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_310_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_310_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_201();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1984669388", "1984669388", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_310.Out", "box_SetEntity_v2_201.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_403_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_IndexList_v2_401();
    l0 = self.box_OnceOnly_v3_403;
    l1 = self.box_IndexList_v2_401;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|642671588", "642671588", "Swamp_H2_CTP_010_Enemy", "box_OnceOnly_v3_403.Out", "box_IndexList_v2_401.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SetInteger_v2_74_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_74_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_196();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_196;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|323476446", "323476446", "Swamp_H2_CTP_010_Enemy", "box_SetInteger_v2_74.Out", "box_Brick_Exp_Common_WaveSpawner_196.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_SetEntity_v2_355_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_355_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_294();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1972678690", "1972678690", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_355.Out", "box_SetEntity_v2_294.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_409_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_409;
    l1 = self.box_MultipleOR_415;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1385111738", "1385111738", "Swamp_H2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_409.NextWave", "box_MultipleOR_415.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_463_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_406();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_463;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1186689040", "1186689040", "Swamp_H2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_463.NextWave", "box_SetInteger_v2_406.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_175_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_181();
    l0 = self.box_IndexList_v2_175;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1775583730", "1775583730", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_175.Output", "box_SetInteger_v2_181.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_175_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_191();
    l0 = self.box_IndexList_v2_175;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|913976693", "913976693", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_175.Output", "box_SetInteger_v2_191.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_175_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_BasicSetups_178();
    l0 = self.box_IndexList_v2_175;
    l1 = self.box_Brick_Exp_Common_BasicSetups_178;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1493705472", "1493705472", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_175.Output", "box_Brick_Exp_Common_BasicSetups_178.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SetEntity_v2_318_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_318_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_357();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|72656105", "72656105", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_318.Out", "box_SetEntity_v2_357.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TriggerState_v2_308_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_174();
    l0 = self.box_ProximityTrigger_v3_174;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|261743986", "261743986", "Swamp_H2_CTP_010_Enemy", "box_TriggerState_v2_308.Enabled", "box_ProximityTrigger_v3_174.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetEntity_v2_300_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_300_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_318();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1847641502", "1847641502", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_300.Out", "box_SetEntity_v2_318.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_349_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_349_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_360();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1094261409", "1094261409", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_349.Out", "box_SetEntity_v2_360.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_193_Received()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_106();
    l0 = self.box_MessageListener_v3_193;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1041284210", "1041284210", "Swamp_H2_CTP_010_Enemy", "box_MessageListener_v3_193.Received", "box_OutputOrder_v2_106.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_97_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_49();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|703864697", "703864697", "Swamp_H2_CTP_010_Enemy", "box_MissionBlockLayer_97.Activated", "box_MissionBlockLayer_49.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_337_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_337_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_212();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|857866489", "857866489", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_337.Out", "box_SetEntity_v2_212.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_203_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_203_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_211();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|895787152", "895787152", "Swamp_H2_CTP_010_Enemy", "box_SetBoolean_v2_203.Out", "box_SetEntity_v2_211.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_36_Received()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_296();
    l0 = self.box_MessageListener_v3_36;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|840667143", "840667143", "Swamp_H2_CTP_010_Enemy", "box_MessageListener_v3_36.Received", "box_OutputOrder_v2_296.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_250_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_269();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1746582445", "1746582445", "Swamp_H2_CTP_010_Enemy", "box_Compare_Boolean_250.A_is_False", "box_OutputOrder_v2_269.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAIRequestGroup_v2_155_AtLeastOneRequestSucceeded()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveFromGroup_v2_391();
    l0 = self.box_SpawnAIRequestGroup_v2_155;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|526165786", "526165786", "Swamp_H2_CTP_010_Enemy", "box_SpawnAIRequestGroup_v2_155.AtLeastOneRequestSucceeded", "box_RemoveFromGroup_v2_391.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAIRequestGroup_v2_155_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_EnemyHelicopterCleaner_407();
    l0 = self.box_SpawnAIRequestGroup_v2_155;
    l1 = self.box_Brick_Exp_Common_EnemyHelicopterCleaner_407;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|84944652", "84944652", "Swamp_H2_CTP_010_Enemy", "box_SpawnAIRequestGroup_v2_155.Out", "box_Brick_Exp_Common_EnemyHelicopterCleaner_407.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Brick_Exp_Common_PlayerFullyDetected_431_Detected()
    local params, l0, l1;
    self:OnExit_box_Brick_Exp_Common_PlayerFullyDetected_431_Detected();
    params = self:OnEnter_box_OutputOrder_v2_129();
    l0 = self.box_Brick_Exp_Common_PlayerFullyDetected_431;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1486529653", "1486529653", "Swamp_H2_CTP_010_Enemy", "box_Brick_Exp_Common_PlayerFullyDetected_431.Detected", "box_OutputOrder_v2_129.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_PlayerFullyDetected_431_Detected_BothPlayers()
    self:OnExit_box_Brick_Exp_Common_PlayerFullyDetected_431_Detected_BothPlayers();
end;

function export:f_box_Brick_Exp_Common_PlayerFullyDetected_431_Detected_ClientOnly()
    self:OnExit_box_Brick_Exp_Common_PlayerFullyDetected_431_Detected_ClientOnly();
end;

function export:f_box_Brick_Exp_Common_PlayerFullyDetected_431_Detected_HostOnly()
    self:OnExit_box_Brick_Exp_Common_PlayerFullyDetected_431_Detected_HostOnly();
end;

function export:f_box_Brick_Exp_Common_PlayerFullyDetected_431_Disabled()
    self:OnExit_box_Brick_Exp_Common_PlayerFullyDetected_431_Disabled();
end;

function export:f_box_Brick_Exp_Common_PlayerFullyDetected_431_Enabled()
    self:OnExit_box_Brick_Exp_Common_PlayerFullyDetected_431_Enabled();
end;

function export:f_box_MultipleOR_15_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_84();
    l0 = self.box_MultipleOR_15;
    l1 = self.box_Random_84;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|19715166", "19715166", "Swamp_H2_CTP_010_Enemy", "box_MultipleOR_15.Out", "box_Random_84.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_53_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_53;
    l1 = self.box_MultipleOR_58;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1170226013", "1170226013", "Swamp_H2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_53.NextWave", "box_MultipleOR_58.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_SetEntity_v2_348_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_348_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_344();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1594312910", "1594312910", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_348.Out", "box_SetEntity_v2_344.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_136_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_113();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_136;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|832156950", "832156950", "Swamp_H2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_136.NextWave", "box_SetInteger_v2_113.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_244_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_244_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_315();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1138463881", "1138463881", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_244.Out", "box_SetEntity_v2_315.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_319_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_319_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_276();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1807962300", "1807962300", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_319.Out", "box_SetEntity_v2_276.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_221_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_17();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|909085766", "909085766", "Swamp_H2_CTP_010_Enemy", "box_MissionBlockLayer_221.Activated", "box_MissionBlockLayer_17.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_345_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_345_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_286();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|7001323", "7001323", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_345.Out", "box_SetEntity_v2_286.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_400_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAIRequestGroup_v2_149();
    l0 = self.box_IndexList_v2_400;
    l1 = self.box_SpawnAIRequestGroup_v2_149;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1420406526", "1420406526", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_400.Output", "box_SpawnAIRequestGroup_v2_149.SpawnByCount", l0:GetLuaBox(), l1:GetLuaBox());
    -- SpawnByCount
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_225_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_41;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|811257025", "811257025", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_225.Out", "box_MultipleOR_41.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_225_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_239();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1110511960", "1110511960", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_225.Out", "box_SetContextualStrategy_239.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_225_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_397;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|733191142", "733191142", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_225.Out", "box_OnceOnly_v3_397.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_225_Out_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_405;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|891063342", "891063342", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_225.Out", "box_OnceOnly_v3_405.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Random_459_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_465();
    l0 = self.box_Random_459;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_465;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1097114321", "1097114321", "Swamp_H2_CTP_010_Enemy", "box_Random_459.Output", "box_Brick_Exp_Common_WaveSpawner_465.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_Random_459_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_409();
    l0 = self.box_Random_459;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_409;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1423835837", "1423835837", "Swamp_H2_CTP_010_Enemy", "box_Random_459.Output", "box_Brick_Exp_Common_WaveSpawner_409.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_Random_459_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_457();
    l0 = self.box_Random_459;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_457;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1246857682", "1246857682", "Swamp_H2_CTP_010_Enemy", "box_Random_459.Output", "box_Brick_Exp_Common_WaveSpawner_457.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_Random_459_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_416();
    l0 = self.box_Random_459;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_416;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1193655506", "1193655506", "Swamp_H2_CTP_010_Enemy", "box_Random_459.Output", "box_Brick_Exp_Common_WaveSpawner_416.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_IndexList_v2_367_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_117();
    l0 = self.box_IndexList_v2_367;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_117;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1888352563", "1888352563", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_367.Output", "box_Brick_Exp_Common_WaveSpawner_117.CleanupOnly", l0:GetLuaBox(), l1:GetLuaBox());
    -- CleanupOnly
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_367_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_215();
    l0 = self.box_IndexList_v2_367;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_215;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|102228437", "102228437", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_367.Output", "box_Brick_Exp_Common_WaveSpawner_215.CleanupOnly", l0:GetLuaBox(), l1:GetLuaBox());
    -- CleanupOnly
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_367_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_88();
    l0 = self.box_IndexList_v2_367;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_88;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|509928982", "509928982", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_367.Output", "box_Brick_Exp_Common_WaveSpawner_88.CleanupOnly", l0:GetLuaBox(), l1:GetLuaBox());
    -- CleanupOnly
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_367_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_52();
    l0 = self.box_IndexList_v2_367;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_52;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|147282721", "147282721", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_367.Output", "box_Brick_Exp_Common_WaveSpawner_52.CleanupOnly", l0:GetLuaBox(), l1:GetLuaBox());
    -- CleanupOnly
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_367_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_206();
    l0 = self.box_IndexList_v2_367;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_206;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1903924488", "1903924488", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_367.Output", "box_Brick_Exp_Common_WaveSpawner_206.CleanupOnly", l0:GetLuaBox(), l1:GetLuaBox());
    -- CleanupOnly
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_367_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_136();
    l0 = self.box_IndexList_v2_367;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_136;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1677182745", "1677182745", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_367.Output", "box_Brick_Exp_Common_WaveSpawner_136.CleanupOnly", l0:GetLuaBox(), l1:GetLuaBox());
    -- CleanupOnly
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_367_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_73();
    l0 = self.box_IndexList_v2_367;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_73;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|445625634", "445625634", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_367.Output", "box_Brick_Exp_Common_WaveSpawner_73.CleanupOnly", l0:GetLuaBox(), l1:GetLuaBox());
    -- CleanupOnly
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_367_Output_7()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_82();
    l0 = self.box_IndexList_v2_367;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_82;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|368634049", "368634049", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_367.Output", "box_Brick_Exp_Common_WaveSpawner_82.CleanupOnly", l0:GetLuaBox(), l1:GetLuaBox());
    -- CleanupOnly
    l1:Exec(1, params);
end;

function export:f_box_SetEntity_v2_198_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_198_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_350();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2009588627", "2009588627", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_198.Out", "box_SetEntity_v2_350.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_143_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_5();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2035791899", "2035791899", "Swamp_H2_CTP_010_Enemy", "box_MissionBlockLayer_143.Activated", "box_MissionBlockLayer_5.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_154_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_154;
    l1 = self.box_MultipleOR_156;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1779621104", "1779621104", "Swamp_H2_CTP_010_Enemy", "box_Delay_v5_154.TimeElapsed", "box_MultipleOR_156.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetInteger_v2_460_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_460_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_461();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_461;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1706735318", "1706735318", "Swamp_H2_CTP_010_Enemy", "box_SetInteger_v2_460.Out", "box_Brick_Exp_Common_WaveSpawner_461.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_SetEntity_v2_216_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_216_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_310();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1615913700", "1615913700", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_216.Out", "box_SetEntity_v2_310.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_224_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_224_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_274();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|641522773", "641522773", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_224.Out", "box_SetEntity_v2_274.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_341_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_341_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_306();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|534191007", "534191007", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_341.Out", "box_SetEntity_v2_306.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_190_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_190_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_179;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2018836012", "2018836012", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_190.Out", "box_MultipleOR_179.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetEntity_v2_103_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_103_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_54();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1037600505", "1037600505", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_103.Out", "box_SetEntity_v2_54.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_160_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAIRequestGroup_v2_332();
    l0 = self.box_Delay_v5_160;
    l1 = self.box_SpawnAIRequestGroup_v2_332;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|206190588", "206190588", "Swamp_H2_CTP_010_Enemy", "box_Delay_v5_160.TimeElapsed", "box_SpawnAIRequestGroup_v2_332.SpawnByCount", l0:GetLuaBox(), l1:GetLuaBox());
    -- SpawnByCount
    l1:Exec(1, params);
end;

function export:f_box_SetEntity_v2_94_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_94_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_87;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|681562830", "681562830", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_94.Out", "box_MultipleOR_87.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_SetEntity_v2_30_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_30_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_79();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|489567022", "489567022", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_30.Out", "box_SetEntity_v2_79.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_212_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_212_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_349();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1232993430", "1232993430", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_212.Out", "box_SetEntity_v2_349.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_366_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_366_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_187();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_187;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1696003063", "1696003063", "Swamp_H2_CTP_010_Enemy", "box_SetInteger_v2_366.Out", "box_Brick_Exp_Common_WaveSpawner_187.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_27_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_74();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_27;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1527174164", "1527174164", "Swamp_H2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_27.NextWave", "box_SetInteger_v2_74.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_196_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_196;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2125888082", "2125888082", "Swamp_H2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_196.NextWave", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetInteger_v2_113_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_113_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_73();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_73;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|286590485", "286590485", "Swamp_H2_CTP_010_Enemy", "box_SetInteger_v2_113.Out", "box_Brick_Exp_Common_WaveSpawner_73.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_SetEntity_v2_267_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_267_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_266();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|772755384", "772755384", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_267.Out", "box_SetEntity_v2_266.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_394_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_392();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1825467066", "1825467066", "Swamp_H2_CTP_010_Enemy", "box_MissionBlockLayer_394.Activated", "box_MissionBlockLayer_392.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_268_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_268_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_195();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1046752823", "1046752823", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_268.Out", "box_SetEntity_v2_195.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_81_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_163();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1838552757", "1838552757", "Swamp_H2_CTP_010_Enemy", "box_Compare_Boolean_81.A_is_False", "box_OutputOrder_v2_163.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_70_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_70_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_83();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|401789530", "401789530", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_70.Out", "box_SetEntity_v2_83.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_330_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_330_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_327();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1560744713", "1560744713", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_330.Out", "box_SetEntity_v2_327.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_59_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_59_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_20();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|859304421", "859304421", "Swamp_H2_CTP_010_Enemy", "box_SetBoolean_v2_59.Out", "box_SetEntity_v2_20.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_428_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_428_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_427();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_427;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1921991797", "1921991797", "Swamp_H2_CTP_010_Enemy", "box_SetInteger_v2_428.Out", "box_Brick_Exp_Common_WaveSpawner_427.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_SetEntity_v2_26_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_26_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_114();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2075756124", "2075756124", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_26.Out", "box_SetEntity_v2_114.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_99_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_99_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_173();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1437386230", "1437386230", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_99.Out", "box_SetEntity_v2_173.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_139_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_139_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_52();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_52;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1060560435", "1060560435", "Swamp_H2_CTP_010_Enemy", "box_SetInteger_v2_139.Out", "box_Brick_Exp_Common_WaveSpawner_52.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_129_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_35;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|626362865", "626362865", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_129.Out", "box_OnceOnly_v3_35.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_129_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_43();
    l0 = self.box_Delay_v5_43;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1287902159", "1287902159", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_129.Out", "box_Delay_v5_43.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_129_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_123();
    l0 = self.box_Gate_v3_123;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1779530118", "1779530118", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_129.Out", "box_Gate_v3_123.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_129_Out_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_Swamp_H2_FlareSTP_301;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|707432107", "707432107", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_129.Out", "box_Swamp_H2_FlareSTP_301.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_129_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_PlayerFullyDetected_431();
    l0 = self.box_Brick_Exp_Common_PlayerFullyDetected_431;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1022915967", "1022915967", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_129.Out", "box_Brick_Exp_Common_PlayerFullyDetected_431.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_129_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RadioModifier_v3_466();
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1783225922", "1783225922", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_129.Out", "box_RadioModifier_v3_466.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_151_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_151_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_30();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|451608398", "451608398", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_151.Out", "box_SetEntity_v2_30.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_233_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_233_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_199();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1143927688", "1143927688", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_233.Out", "box_SetEntity_v2_199.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_354_Out()
    self:OnExit_box_SetBoolean_v2_354_Out();
end;

function export:f_box_SetBoolean_v2_256_Out()
    self:OnExit_box_SetBoolean_v2_256_Out();
end;

function export:f_box_SetBoolean_v2_23_Out()
    self:OnExit_box_SetBoolean_v2_23_Out();
end;

function export:f_box_SetEntity_v2_12_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_12_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_150();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|250699614", "250699614", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_12.Out", "box_SetEntity_v2_150.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_214_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_214_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_293();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1127398652", "1127398652", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_214.Out", "box_SetEntity_v2_293.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_10_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_10;
    l1 = self.box_MultipleOR_58;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1716011889", "1716011889", "Swamp_H2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_10.NextWave", "box_MultipleOR_58.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_GetPlayerGroup_v2_432_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_432_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_PlayerFullyDetected_431();
    l0 = self.box_Brick_Exp_Common_PlayerFullyDetected_431;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|734080377", "734080377", "Swamp_H2_CTP_010_Enemy", "box_GetPlayerGroup_v2_432.Out", "box_Brick_Exp_Common_PlayerFullyDetected_431.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_393_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1760711287", "1760711287", "Swamp_H2_CTP_010_Enemy", "box_MissionBlockLayer_393.Activated", "box_MultipleOR_11.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_305_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_320();
    l0 = self.box_OnceOnly_v3_305;
    l1 = self.box_Gate_v3_320;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2039900857", "2039900857", "Swamp_H2_CTP_010_Enemy", "box_OnceOnly_v3_305.Out", "box_Gate_v3_320.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SetEntity_v2_209_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_209_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_322();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|749664390", "749664390", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_209.Out", "box_SetEntity_v2_322.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_52_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_121();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_52;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1627686350", "1627686350", "Swamp_H2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_52.NextWave", "box_SetInteger_v2_121.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_24_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_24_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_77();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1603725300", "1603725300", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_24.Out", "box_SetEntity_v2_77.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_131_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_131_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_153();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1096905443", "1096905443", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_131.Out", "box_SetEntity_v2_153.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_361_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_338();
    l0 = self.box_IndexList_v2_361;
    l1 = self.box_ProximityTrigger_v3_338;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1638000873", "1638000873", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_361.Output", "box_ProximityTrigger_v3_338.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_361_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_364();
    l0 = self.box_IndexList_v2_361;
    l1 = self.box_ProximityTrigger_v3_364;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1250093410", "1250093410", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_361.Output", "box_ProximityTrigger_v3_364.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_361_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_365();
    l0 = self.box_IndexList_v2_361;
    l1 = self.box_ProximityTrigger_v3_365;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|292805634", "292805634", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_361.Output", "box_ProximityTrigger_v3_365.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_35_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_34();
    l0 = self.box_OnceOnly_v3_35;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|418201016", "418201016", "Swamp_H2_CTP_010_Enemy", "box_OnceOnly_v3_35.Out", "box_SetActivityFact_34.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_222_Received()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_95();
    l0 = self.box_MessageListener_v3_222;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1513880977", "1513880977", "Swamp_H2_CTP_010_Enemy", "box_MessageListener_v3_222.Received", "box_SetContextualStrategy_95.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_223_Out()
    self:OnExit_box_SetBoolean_v2_223_Out();
end;

function export:f_box_SetBoolean_v2_48_Out()
    self:OnExit_box_SetBoolean_v2_48_Out();
end;

function export:f_box_SetEntity_v2_333_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_333_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_246();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|969787548", "969787548", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_333.Out", "box_SetEntity_v2_246.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_164_Out()
    self:OnExit_box_SetBoolean_v2_164_Out();
end;

function export:f_box_SetEntity_v2_344_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_344_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_352();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1752780008", "1752780008", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_344.Out", "box_SetEntity_v2_352.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_245_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAIRequestGroup_v2_159();
    l0 = self.box_SpawnAIRequestGroup_v2_159;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|735478423", "735478423", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_245.Out", "box_SpawnAIRequestGroup_v2_159.SpawnByCount", clone:GetLuaBox(), l0:GetLuaBox());
    -- SpawnByCount
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_245_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAIRequestGroup_v2_253();
    l0 = self.box_SpawnAIRequestGroup_v2_253;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1836728320", "1836728320", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_245.Out", "box_SpawnAIRequestGroup_v2_253.SpawnByCount", clone:GetLuaBox(), l0:GetLuaBox());
    -- SpawnByCount
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_245_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_422();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1616909397", "1616909397", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_245.Out", "box_SetContextualStrategy_422.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_145_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_59();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1359781715", "1359781715", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_145.Out", "box_SetBoolean_v2_59.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_145_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_61();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|770348556", "770348556", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_145.Out", "box_SetBoolean_v2_61.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_145_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_164();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|795731658", "795731658", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_145.Out", "box_SetBoolean_v2_164.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_86_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_86;
    l1 = self.box_MultipleOR_107;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|642432100", "642432100", "Swamp_H2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_86.NextWave", "box_MultipleOR_107.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_296_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuardNearest_299();
    l0 = self.box_Brick_Exp_Enemy_PackageGuardNearest_299;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1573281395", "1573281395", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_296.Out", "box_Brick_Exp_Enemy_PackageGuardNearest_299.PackageStolenDetected", clone:GetLuaBox(), l0:GetLuaBox());
    -- PackageStolenDetected
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_296_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_471();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|942761660", "942761660", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_296.Out", "box_Simple_Node_471.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_456_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_273();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|923185726", "923185726", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_456.Out", "box_Compare_Boolean_273.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_456_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_455();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1161140984", "1161140984", "Swamp_H2_CTP_010_Enemy", "box_OutputOrder_v2_456.Out", "box_Print_v2_455.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_79_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_79_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_57();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|480876342", "480876342", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_79.Out", "box_SetEntity_v2_57.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_303_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_303_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_348();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1993017152", "1993017152", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_303.Out", "box_SetEntity_v2_348.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_116_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAIRequestGroup_v2_424();
    l0 = self.box_Delay_v5_116;
    l1 = self.box_SpawnAIRequestGroup_v2_424;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|114651208", "114651208", "Swamp_H2_CTP_010_Enemy", "box_Delay_v5_116.TimeElapsed", "box_SpawnAIRequestGroup_v2_424.SpawnByCount", l0:GetLuaBox(), l1:GetLuaBox());
    -- SpawnByCount
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_93_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_TriggerState_v2_442();
    l0 = self.box_ProximityTrigger_v3_93;
    l1 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1782747732", "1782747732", "Swamp_H2_CTP_010_Enemy", "box_ProximityTrigger_v3_93.Disabled", "box_TriggerState_v2_442.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_93_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_454();
    l0 = self.box_ProximityTrigger_v3_93;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2077026654", "2077026654", "Swamp_H2_CTP_010_Enemy", "box_ProximityTrigger_v3_93.Enter", "box_OutputOrder_v2_454.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_142_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_60();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|258581579", "258581579", "Swamp_H2_CTP_010_Enemy", "box_Compare_Boolean_142.A_is_False", "box_OutputOrder_v2_60.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_465_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_465;
    l1 = self.box_MultipleOR_415;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1655475481", "1655475481", "Swamp_H2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_465.NextWave", "box_MultipleOR_415.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetInteger_v2_219_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_219_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_27();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_27;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1472158017", "1472158017", "Swamp_H2_CTP_010_Enemy", "box_SetInteger_v2_219.Out", "box_Brick_Exp_Common_WaveSpawner_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_SetEntity_v2_127_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_127_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_21();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|611005344", "611005344", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_127.Out", "box_SetEntity_v2_21.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_362_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_456();
    l0 = self.box_ProximityTrigger_v3_362;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1733734714", "1733734714", "Swamp_H2_CTP_010_Enemy", "box_ProximityTrigger_v3_362.Enter", "box_OutputOrder_v2_456.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_298_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_298_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_279();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1466884575", "1466884575", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_298.Out", "box_SetEntity_v2_279.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_363_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_447();
    l0 = self.box_ProximityTrigger_v3_363;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2041937561", "2041937561", "Swamp_H2_CTP_010_Enemy", "box_ProximityTrigger_v3_363.Enter", "box_OutputOrder_v2_447.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_429_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_445();
    l0 = self.box_ProximityTrigger_v3_429;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1917115787", "1917115787", "Swamp_H2_CTP_010_Enemy", "box_ProximityTrigger_v3_429.Enter", "box_OutputOrder_v2_445.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_229_Out()
    self:OnExit_box_SetBoolean_v2_229_Out();
end;

function export:f_box_TriggerState_v2_249_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_362();
    l0 = self.box_ProximityTrigger_v3_362;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1997808335", "1997808335", "Swamp_H2_CTP_010_Enemy", "box_TriggerState_v2_249.Enabled", "box_ProximityTrigger_v3_362.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_107_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_107;
    l1 = self.box_MultipleOR_109;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1192824860", "1192824860", "Swamp_H2_CTP_010_Enemy", "box_MultipleOR_107.Out", "box_MultipleOR_109.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetEntity_v2_207_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_207_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_227();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|374088100", "374088100", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_207.Out", "box_SetEntity_v2_227.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_65_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_147();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_65;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|96695927", "96695927", "Swamp_H2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveSpawner_65.NextWave", "box_SetInteger_v2_147.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_BasicSetups_307_Out()
    local params, l0, l1;
    self:OnExit_box_Brick_Exp_Common_BasicSetups_307_Out();
    params = self:OnEnter_box_IndexList_v2_175();
    l0 = self.box_Brick_Exp_Common_BasicSetups_307;
    l1 = self.box_IndexList_v2_175;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1617544630", "1617544630", "Swamp_H2_CTP_010_Enemy", "box_Brick_Exp_Common_BasicSetups_307.Out", "box_IndexList_v2_175.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SetInteger_v2_186_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_186_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_183();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1670291152", "1670291152", "Swamp_H2_CTP_010_Enemy", "box_SetInteger_v2_186.Out", "box_SetInteger_v2_183.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_364_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_154();
    l0 = self.box_ProximityTrigger_v3_364;
    l1 = self.box_Delay_v5_154;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1341154", "1341154", "Swamp_H2_CTP_010_Enemy", "box_ProximityTrigger_v3_364.Enabled", "box_Delay_v5_154.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v3_364_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_220();
    l0 = self.box_ProximityTrigger_v3_364;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|331546279", "331546279", "Swamp_H2_CTP_010_Enemy", "box_ProximityTrigger_v3_364.Enter", "box_OutputOrder_v2_220.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_364_Leave()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_343();
    l0 = self.box_ProximityTrigger_v3_364;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|652376262", "652376262", "Swamp_H2_CTP_010_Enemy", "box_ProximityTrigger_v3_364.Leave", "box_SetContextualStrategy_343.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_255_Out()
    self:OnExit_box_SetBoolean_v2_255_Out();
end;

function export:f_box_SetEntity_v2_75_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_75_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_120();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|667797307", "667797307", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_75.Out", "box_SetEntity_v2_120.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_119_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_238();
    l0 = self.box_IndexList_v2_119;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1411869557", "1411869557", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_119.Output", "box_MissionBlockLayer_238.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_119_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_230();
    l0 = self.box_IndexList_v2_119;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|35200489", "35200489", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_119.Output", "box_MissionBlockLayer_230.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_119_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_221();
    l0 = self.box_IndexList_v2_119;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1768502526", "1768502526", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_119.Output", "box_MissionBlockLayer_221.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_119_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_143();
    l0 = self.box_IndexList_v2_119;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1750137223", "1750137223", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_119.Output", "box_MissionBlockLayer_143.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_119_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_394();
    l0 = self.box_IndexList_v2_119;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2115809518", "2115809518", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_119.Output", "box_MissionBlockLayer_394.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_119_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_395();
    l0 = self.box_IndexList_v2_119;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|294073413", "294073413", "Swamp_H2_CTP_010_Enemy", "box_IndexList_v2_119.Output", "box_MissionBlockLayer_395.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_315_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_315_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_243();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|91429806", "91429806", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_315.Out", "box_SetEntity_v2_243.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_347_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_347_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_263();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1211082433", "1211082433", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_347.Out", "box_SetEntity_v2_263.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_BasicSetups_307();
    l0 = self.box_ActivityInitialized_2;
    l1 = self.box_Brick_Exp_Common_BasicSetups_307;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1083420648", "1083420648", "Swamp_H2_CTP_010_Enemy", "box_ActivityInitialized_2.Out", "box_Brick_Exp_Common_BasicSetups_307.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_118_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_64();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1922030932", "1922030932", "Swamp_H2_CTP_010_Enemy", "box_MissionBlockLayer_118.Activated", "box_MissionBlockLayer_64.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_292_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_292_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_267();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1928725802", "1928725802", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_292.Out", "box_SetEntity_v2_267.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_265_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_265_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_339();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1185217418", "1185217418", "Swamp_H2_CTP_010_Enemy", "box_SetEntity_v2_265.Out", "box_SetEntity_v2_339.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_112_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_185();
    l0 = self.box_MultipleAND_v2_112;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_185;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1779866208", "1779866208", "Swamp_H2_CTP_010_Enemy", "box_MultipleAND_v2_112.Out", "box_Brick_Exp_Common_WaveSpawner_185.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_SetInteger_v2_147_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_147_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_194();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_194;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1998281538", "1998281538", "Swamp_H2_CTP_010_Enemy", "box_SetInteger_v2_147.Out", "box_Brick_Exp_Common_WaveSpawner_194.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:OnEnter_box_Simple_Node_378()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_378");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|@BodySpawn");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_378_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|@CampSpawn");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_368_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_470()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_470");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|@CheckPackage_After");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_470_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_469()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_469");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|@CheckPackage_Before");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_469_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|@CleanUp");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_44_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_435()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_435");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|@CleanUp_After");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_435_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_433()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_433");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|@HeliTakeOff");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_433_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_383()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_383");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|@Package_Guard");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_383_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_375()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_375");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|@PackageIsPicked");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_375_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_376()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_376");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|@PlayerIsDetected");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_376_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_371()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_371");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|@SpecialAI");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_371_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_373()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_373");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|@StartWave");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_373_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_471()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_471");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|@Stop_PKG");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_471_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_379()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_379");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|@TailSpawn");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_379_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_382()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_382");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|@WatchtowerSpawn");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_382_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_422()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_422");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1861846");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109477903770094259",
        -- Group,
        [1] = "#00390573",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_197()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_197");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|17390928");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_197_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966832382691155",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_PackageGuard_295()
    local params;
    params = {
        -- EnemyGroup_All,
        [0] = "#00390573",
        -- EnemyGroup_PackageGuard,
        [1] = "#3A16142B",
        -- EnemyGroup_Prio_01,
        [2] = "#C1E4E951",
        -- EnemyGroup_Prio_02,
        [3] = "#AA47AEA6",
        -- PackageGuardCS,
        [5] = "2109201678117912022",
        -- PackageGuardNUM,
        [6] = 2,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_227()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_227");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|26991198");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_227_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966039099284191",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_353()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_353");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|29290634");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108508129181307189",
        -- Group,
        [1] = "#00390573",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_269()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_269");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|30221465");
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
                [0] = self.f_box_OutputOrder_v2_269_Out_0,
                [1] = self.f_box_OutputOrder_v2_269_Out_1,
                [2] = self.f_box_OutputOrder_v2_269_Out_2,
                [3] = self.f_box_OutputOrder_v2_269_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_304()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_304");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|37303888");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_304_Out,
    });
    params = {
        -- Entity,
        [0] = "2109781093277256473",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|41832737");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_4_Out,
    });
    params = {
        -- Entity,
        [0] = "2108194382944406828",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_181()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_181");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|52595700");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_181_Out,
    });
    params = {
        -- Integer,
        [1] = 3,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|60150353");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_25_Out,
    });
    params = {
        -- Entity,
        [0] = "2108939765085655989",
    };
    return params;
end;

function export:OnEnter_box_Random_84()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 4,
        },
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_PackageGuard_289()
    local params;
    params = {
        -- EnemyGroup_All,
        [0] = "#00390573",
        -- EnemyGroup_PackageGuard,
        [1] = "#1553175F",
        -- EnemyGroup_Prio_01,
        [2] = "#E8B97021",
        -- EnemyGroup_Prio_02,
        [3] = "#4BEFDAC5",
        -- PackageGuardCS,
        [5] = "2109187025241382940",
        -- PackageGuardNUM,
        [6] = 2,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_236()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_236");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|70547073");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_236_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_410()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_410");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|71490540");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_410_Out,
    });
    params = {
        -- Integer,
        [1] = 3,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_BasicSetups_178()
    local params;
    params = {
        -- DebugMode,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_335()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_335");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|83909296");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_335_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966291946612793",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_133()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_133");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|88893040");
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
                [0] = self.f_box_OutputOrder_v2_133_Out_0,
                [1] = self.f_box_OutputOrder_v2_133_Out_1,
                [2] = self.f_box_OutputOrder_v2_133_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_334()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_334");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|95725038");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_334_Out,
    });
    params = {
        -- Integer,
        [1] = 4,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_339()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_339");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|105214715");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_339_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966733820739887",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_205()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_205");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|109875110");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_205_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966733921403218",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_328()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_328");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|116386926");
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
                [0] = self.f_box_OutputOrder_v2_328_Out_0,
                [1] = self.f_box_OutputOrder_v2_328_Out_1,
                [2] = self.f_box_OutputOrder_v2_328_Out_2,
                [3] = self.f_box_OutputOrder_v2_328_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_408()
    local params;
    params = {
        -- Index,
        [0] = self.iPackagePositionID,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_297()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_297");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|129030527");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_297_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966291644622796",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_302()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_302");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|137889461");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_302_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966102114509078",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_121()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_121");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|138833628");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_121_Out,
    });
    params = {
        -- Integer,
        [1] = 5,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_130()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 5,
        -- EnemyGroup,
        [1] = "#00390573",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 15,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- opt_Spawner_2,
        [6] = self.e_InfiWave_3_B,
        -- Spawner_1,
        [10] = self.e_InfiWave_3_A,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_206()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 5,
        -- EnemyGroup,
        [1] = "#00390573",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 15,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- Spawner_1,
        [10] = self.e_Wave_4_A,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_247()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_247");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|141226368");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_247_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_317()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_317");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|147111878");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_317_A_is_False,
    });
    params = {
        -- A,
        [0] = self.bInPlanebody,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_208()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_208");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|149110485");
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
                [0] = self.f_box_OutputOrder_v2_208_Out_0,
                [1] = self.f_box_OutputOrder_v2_208_Out_1,
                [2] = self.f_box_OutputOrder_v2_208_Out_2,
                [3] = self.f_box_OutputOrder_v2_208_Out_3,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|151957241");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160314102598852",
        -- missionLayerId,
        [1] = "45174722409678132",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_358()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_358");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|153792844");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_358_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966291474753423",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_359()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_359");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|154666829");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_359_Out,
    });
    params = {
        -- Integer,
        [1] = 2,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_413()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 4,
        -- EnemyGroup,
        [1] = "#00390573",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 15,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- opt_Spawner_2,
        [6] = self.e_Wave_2_B,
        -- Spawner_1,
        [10] = self.e_Wave_2_A,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_185()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 6,
        -- EnemyGroup,
        [1] = "#00390573",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 15,
        -- NextWaveWaitUntilCombat,
        [5] = true,
        -- opt_Spawner_2,
        [6] = self.e_Wave_1_B,
        -- Spawner_1,
        [10] = self.e_Wave_1_A,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_200()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 3,
        -- EnemyGroup,
        [1] = "#00390573",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 15,
        -- NextWaveWaitUntilCombat,
        [5] = true,
        -- opt_Spawner_2,
        [6] = self.e_InfiWave_2_B,
        -- Spawner_1,
        [10] = self.e_InfiWave_2_A,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_314()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_314");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|188973183");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_314_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966491773743929",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_321()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_230()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_230");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|216779378");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_230_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160314102598852",
        -- missionLayerId,
        [1] = "27160324709406247",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_340()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_340");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|227370307");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108508129181307189",
        -- Group,
        [1] = "#00390573",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_242()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_242");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|240848471");
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
        [8] = "Dock goodbye party spawned",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_241()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_241");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|250611566");
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
                [0] = self.f_box_OutputOrder_v2_241_Out_0,
                [1] = self.f_box_OutputOrder_v2_241_Out_1,
                [2] = self.f_box_OutputOrder_v2_241_Out_2,
                [3] = self.f_box_OutputOrder_v2_241_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_447()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_447");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|254612079");
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
                [0] = self.f_box_OutputOrder_v2_447_Out_0,
                [1] = self.f_box_OutputOrder_v2_447_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_55()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 6,
        -- EnemyGroup,
        [1] = "#00390573",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 15,
        -- NextWaveWaitUntilCombat,
        [5] = true,
        -- Spawner_1,
        [10] = self.e_Wave_4_B,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_260()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_260");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|263864905");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_260_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966644106672321",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_231()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_231");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|265197284");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_231_A_is_False,
    });
    params = {
        -- A,
        [0] = self.bInCamp,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_PackageGuard_285()
    local params;
    params = {
        -- EnemyGroup_All,
        [0] = "#00390573",
        -- EnemyGroup_PackageGuard,
        [1] = "#D2E5A4CF",
        -- EnemyGroup_Prio_01,
        [2] = "#4F26CFCE",
        -- EnemyGroup_Prio_02,
        [3] = "#EABC715D",
        -- PackageGuardCS,
        [5] = "2109189418035220230",
        -- PackageGuardNUM,
        [6] = 2,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_228()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_228");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|277850755");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_228_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_138()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_138");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|278114632");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_138_Out,
    });
    params = {
        -- Entity,
        [0] = "2108939766698366005",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_443()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_443");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|278587695");
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
        [8] = "In body after area",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|281204082");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_61_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_234()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_234");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|309186364");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_234_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_326()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_326");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|314873480");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_326_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_243()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_243");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|316677051");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_243_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966492168008643",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|319586832");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_22_Out,
    });
    params = {
        -- Entity,
        [0] = "2108939658942499878",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_187()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 6,
        -- EnemyGroup,
        [1] = "#00390573",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 15,
        -- NextWaveWaitUntilCombat,
        [5] = true,
        -- Spawner_1,
        [10] = self.e_Wave_3_A,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_146()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_146");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|331062661");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_146_Out,
    });
    params = {
        -- Entity,
        [0] = "2108940173229190762",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_462()
    local params;
    params = {
        -- Index,
        [0] = self.iWaveAfter_Index,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_PackageGuard_291()
    local params;
    params = {
        -- EnemyGroup_All,
        [0] = "#00390573",
        -- EnemyGroup_PackageGuard,
        [1] = "#C8D9ED4D",
        -- EnemyGroup_Prio_01,
        [2] = "#C1E4E951",
        -- EnemyGroup_Prio_02,
        [3] = "#AA47AEA6",
        -- PackageGuardCS,
        [5] = "2109201682423365082",
        -- PackageGuardNUM,
        [6] = 2,
    };
    return params;
end;

function export:OnEnter_box_Random_210()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 4,
        },
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_257()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_257");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|356453794");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_257_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966291902572585",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_412()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 4,
        -- EnemyGroup,
        [1] = "#00390573",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 15,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- Spawner_1,
        [10] = self.e_Wave_3_A,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_182()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_182");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|357943862");
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
                [0] = self.f_box_OutputOrder_v2_182_Out_0,
                [1] = self.f_box_OutputOrder_v2_182_Out_1,
                [2] = self.f_box_OutputOrder_v2_182_Out_2,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAIRequestGroup_v2_253()
    local params;
    params = {
        -- RequestGroupName,
        [0] = "goodbyeparty_dock_sniper",
        -- SpawnerCount,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_452()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_452");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|368841362");
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
        [8] = "In tail before area",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_125()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_125");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|377008343");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_125_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_336()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_336");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|385568583");
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
                [0] = self.f_box_OutputOrder_v2_336_Out_0,
                [1] = self.f_box_OutputOrder_v2_336_Out_1,
                [2] = self.f_box_OutputOrder_v2_336_Out_2,
                [3] = self.f_box_OutputOrder_v2_336_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_217()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_217");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|388321803");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_217_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966492212048851",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_284()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_284");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|390085725");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_TriggerState_v2_284_Enabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2108964149556941449",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_98");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|407692152");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_98_Out,
    });
    params = {
        -- Entity,
        [0] = "2108940051279800170",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_174()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = PersistentGlobals.Lib_Expeditions_Gameplay.ePackageOwner,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108964042574926469",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_357()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_357");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|412671115");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_357_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966643815168091",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_120()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_120");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|423926250");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_120_Out,
    });
    params = {
        -- Entity,
        [0] = "2108939765454754773",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_309()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_258()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_258");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|434899333");
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
                [0] = self.f_box_OutputOrder_v2_258_Out_0,
                [1] = self.f_box_OutputOrder_v2_258_Out_1,
                [2] = self.f_box_OutputOrder_v2_258_Out_2,
                [3] = self.f_box_OutputOrder_v2_258_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_356()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_356");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|435055579");
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
                [0] = self.f_box_OutputOrder_v2_356_Out_0,
                [2] = self.f_box_OutputOrder_v2_356_Out_2,
                [3] = self.f_box_OutputOrder_v2_356_Out_3,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_76()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 20,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_100");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|448965938");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_100_Out,
    });
    params = {
        -- Entity,
        [0] = "2108940050868758346",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_220()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_220");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|451429909");
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
                [0] = self.f_box_OutputOrder_v2_220_Out_0,
                [1] = self.f_box_OutputOrder_v2_220_Out_1,
                [3] = self.f_box_OutputOrder_v2_220_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_346()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_346");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|453296271");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_346_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966832338650947",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_202()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_202");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|466464179");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_202_Out,
    });
    params = {
        -- Entity,
        [0] = "2109781101894454097",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_402()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "package_is_picked",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_172()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_172");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|480352073");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_172_Out,
    });
    params = {
        -- Entity,
        [0] = "2108940491950160882",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_450()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_450");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|481105947");
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
                [0] = self.f_box_OutputOrder_v2_450_Out_0,
                [1] = self.f_box_OutputOrder_v2_450_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_239()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_239");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|483135806");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109463713451873984",
        -- Group,
        [1] = "#00390573",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|485230319");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_54_Out,
    });
    params = {
        -- Entity,
        [0] = "2108940490119347138",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_150()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_150");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|491163306");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_150_Out,
    });
    params = {
        -- Entity,
        [0] = "2108940488164801423",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_144()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_144");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|503450327");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_144_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_352()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_352");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|504211606");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_352_Out,
    });
    params = {
        -- Entity,
        [0] = "2108965885719877541",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_290()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_290");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|506504493");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_290_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966102158549286",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_320()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|529623068");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_37_Out,
    });
    params = {
        -- Entity,
        [0] = "2108939614621288925",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_254()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_254");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|540523816");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_254_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966291774646265",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_110()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 20,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_439()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = PersistentGlobals.Lib_Expeditions_Gameplay.ePackageOwner,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109079166220551463",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_274()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_274");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|551140010");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_274_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966734009483634",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|556764570");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_17_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "243333088036295784",
        -- missionLayerId,
        [1] = "72196320054078006",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_123()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_404()
    local params;
    params = {
        -- Index,
        [0] = self.iDifficulty,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|566574389");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_40_Out,
    });
    params = {
        -- Integer,
        [1] = 3,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_288()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_288");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|577307702");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_288_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|584584089");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_29_Out,
    });
    params = {
        -- Entity,
        [0] = "2108939091501396854",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_194()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 6,
        -- EnemyGroup,
        [1] = "#00390573",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 15,
        -- NextWaveWaitUntilCombat,
        [5] = true,
        -- Spawner_1,
        [10] = self.e_Wave_4_A,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_114()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_114");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|589382171");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_114_Out,
    });
    params = {
        -- Entity,
        [0] = "2108939764919980968",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_66()
    local params;
    params = {
        -- Index,
        [0] = self.iWaveBefore_Index,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_246()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_246");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|593588047");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_246_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966102238241088",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_453()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_453");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|605399869");
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
                [0] = self.f_box_OutputOrder_v2_453_Out_0,
                [1] = self.f_box_OutputOrder_v2_453_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_262()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_262");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|605403800");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_262_Out,
    });
    params = {
        -- Entity,
        [0] = "2108967054808730834",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_201()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_201");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|608021611");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_201_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966832529491846",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|615710203");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_6_Out,
    });
    params = {
        -- Entity,
        [0] = "2108939766899692613",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|617353131");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_20_Out,
    });
    params = {
        -- Entity,
        [0] = "2108220586686689888",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_166()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_166");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|620268756");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_166_Out,
    });
    params = {
        -- Entity,
        [0] = "2108940487560821631",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_286()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_286");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|620970659");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_286_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966643915831422",
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v5_311()
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

function export:OnEnter_box_IndexList_v2_401()
    local params;
    params = {
        -- Index,
        [0] = self.iDifficulty,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|633758877");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160314102598852",
        -- missionLayerId,
        [1] = "36167523154927760",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_165()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_165");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|634589656");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_165_Out,
    });
    params = {
        -- Entity,
        [0] = "2108939630058425089",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|641755622");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_33_Out,
    });
    params = {
        -- Entity,
        [0] = "2108939192340854547",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|650690911");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_39_Out,
    });
    params = {
        -- Entity,
        [0] = "2108940489374858159",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_417()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_417");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|652419434");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_417_Out,
    });
    params = {
        -- Fact,
        [0] = "packagestolen",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|656970493");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_49_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "243333088036295784",
        -- missionLayerId,
        [1] = "27160323780019865",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_188()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "heli_takeoff_dock",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_388()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_388");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|668856881");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_388_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109410238145789584",
        -- Group,
        [1] = "#00390573",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_226()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_226");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|674661222");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_226_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966291858532377",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_96()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 7,
        -- EnemyGroup,
        [1] = "#00390573",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 90,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- Spawner_1,
        [10] = "2109120015272791058",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|679169092");
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
                [0] = self.f_box_OutputOrder_v2_60_Out_0,
                [1] = self.f_box_OutputOrder_v2_60_Out_1,
                [2] = self.f_box_OutputOrder_v2_60_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAIRequestGroup_v2_159()
    local params;
    params = {
        -- RequestGroupName,
        [0] = "goodbyeparty_dock",
        -- SpawnerCount,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_426()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 4,
        -- EnemyGroup,
        [1] = "#00390573",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 15,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- Spawner_1,
        [10] = self.e_Wave_3_B,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_43()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_338()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = PersistentGlobals.Lib_Expeditions_Gameplay.ePackageOwner,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108964149556941449",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_324()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_324");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|727514139");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_324_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966832191850256",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_396()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_466()
    local params, l0;
    DrawTextToScreen("Comment: LC: Disable on detection BOW-74745", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RadioModifier_v3')-- Comment: LC: Disable on detection BOW-74745");
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_466");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|730199204");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RadioModifier_v3_466_Out,
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
        [5] = "2109975982763956714",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_251()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_251");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|730873697");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_251_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_111()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 5,
        -- EnemyGroup,
        [1] = "#00390573",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 15,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- opt_Spawner_2,
        [6] = self.e_InfiWave_4_B,
        -- Spawner_1,
        [10] = self.e_InfiWave_4_A,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_106()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_106");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|736914103");
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
                [0] = self.f_box_OutputOrder_v2_106_Out_0,
                [1] = self.f_box_OutputOrder_v2_106_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_350()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_350");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|739813228");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_350_Out,
    });
    params = {
        -- Entity,
        [0] = "2108967054894714098",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_31()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 6,
        -- EnemyGroup,
        [1] = "#00390573",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 15,
        -- NextWaveWaitUntilCombat,
        [5] = true,
        -- opt_Spawner_2,
        [6] = self.e_Wave_2_B,
        -- Spawner_1,
        [10] = self.e_Wave_2_A,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_259()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_259");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|742087217");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_259_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966048867818293",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_275()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_275");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|746072572");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_275_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_446()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_446");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|751472895");
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
        [8] = "In tail after area",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_132()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_132");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|758231178");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_132_Out,
    });
    params = {
        -- Entity,
        [0] = "2108940051072182106",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_454()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_454");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|769786657");
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
                [0] = self.f_box_OutputOrder_v2_454_Out_0,
                [1] = self.f_box_OutputOrder_v2_454_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|771621659");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_83_Out,
    });
    params = {
        -- Entity,
        [0] = "2108940174636379863",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_458()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 4,
        -- EnemyGroup,
        [1] = "#00390573",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 15,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- opt_Spawner_2,
        [6] = self.e_Wave_6_B,
        -- Spawner_1,
        [10] = self.e_Wave_6_A,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_279()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_279");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|784110985");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_279_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966832292513587",
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_467()
    local params, l0;
    DrawTextToScreen("Comment: LC: Disable on detection BOW-74745", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RadioModifier_v3')-- Comment: LC: Disable on detection BOW-74745");
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_467");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|786817730");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RadioModifier_v3_467_Out,
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
        [5] = "2109976091234949620",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|786840023");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_57_Out,
    });
    params = {
        -- Entity,
        [0] = "2108939055602348570",
    };
    return params;
end;

function export:OnEnter_box_SpawnAIRequestGroup_v2_149()
    local params;
    params = {
        -- RequestGroupName,
        [0] = "dog_watchtower_lv3",
        -- SpawnerCount,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_RemoveFromGroup_v2_391()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveFromGroup_v2_391");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|793574199");
    l0:SetConnections({
    });
    params = {
        -- Entities,
        [0] = "2109948995389378989",
        -- Group,
        [1] = "#00390573",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|812077687");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_18_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "243333088036295784",
        -- missionLayerId,
        [1] = "54181921544575649",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_102");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|812949457");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_102_Out,
    });
    params = {
        -- Entity,
        [0] = "2108940050443036455",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_204()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_204");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|815631540");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_204_Out,
    });
    params = {
        -- Entity,
        [0] = "2108967054945045765",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_195()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_195");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|831028697");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_195_Out,
    });
    params = {
        -- Entity,
        [0] = "2108965929722320984",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_323()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_171()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = self.e_PlayerBeDected,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108816466630421407",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|854423538");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_56_Out,
    });
    params = {
        -- Entity,
        [0] = "2108940173554249351",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|858847207");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_63_Out,
    });
    params = {
        -- Entity,
        [0] = "2108716703058761112",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_213()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_213");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|883820941");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_213_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966644152809681",
    };
    return params;
end;

function export:OnEnter_box_SpawnAIRequestGroup_v2_105()
    local params;
    params = {
        -- RequestGroupName,
        [0] = "dog_bridge_lv2",
        -- SpawnerCount,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_395()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_395");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|885243318");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_395_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160314102598852",
        -- missionLayerId,
        [1] = "54181922473661606",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|887689708");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_9_Out,
    });
    params = {
        -- Entity,
        [0] = "2108939766488650789",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_351()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_351");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|901367685");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_TriggerState_v2_351_Enabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2108964081898623623",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_176()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_176");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|901527739");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_176_Out,
    });
    params = {
        -- Integer,
        [1] = 1,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_180()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "heli_takeoff",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_430()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = self.e_PlayerBeDected,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108816543767866276",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_157()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_157");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|910504162");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_157_Out,
    });
    params = {
        -- Entity,
        [0] = "2108939158427809164",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|914559848");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_71_Out,
    });
    params = {
        -- Entity,
        [0] = "2108940050239612695",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_313()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_313");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|917754876");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_313_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966291688663001",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_263()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_263");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|928272894");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_263_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966491729703721",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_218()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_218");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|936461884");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_218_Out,
    });
    params = {
        -- Integer,
        [1] = 6,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_73()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 5,
        -- EnemyGroup,
        [1] = "#00390573",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 15,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- opt_Spawner_2,
        [6] = self.e_Wave_5_B,
        -- Spawner_1,
        [10] = self.e_Wave_5_A,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_89()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 180,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_117()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 5,
        -- EnemyGroup,
        [1] = "#00390573",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 15,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- opt_Spawner_2,
        [6] = self.e_Wave_1_B,
        -- Spawner_1,
        [10] = self.e_Wave_1_A,
    };
    return params;
end;

function export:OnEnter_box_SpawnAIRequestGroup_v2_386()
    local params;
    params = {
        -- RequestGroupName,
        [0] = "goodbyeparty_watchtower",
        -- SpawnerCount,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_444()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_444");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|965149433");
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
                [0] = self.f_box_OutputOrder_v2_444_Out_0,
                [1] = self.f_box_OutputOrder_v2_444_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_189()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_189");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|986653229");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_189_Out,
    });
    params = {
        -- Integer,
        [1] = 4,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_461()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 4,
        -- EnemyGroup,
        [1] = "#00390573",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 15,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- opt_Spawner_2,
        [6] = self.e_Wave_5_B,
        -- Spawner_1,
        [10] = self.e_Wave_5_A,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_416()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 4,
        -- EnemyGroup,
        [1] = "#00390573",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 15,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- opt_Spawner_2,
        [6] = self.e_InfiWave_4_B,
        -- Spawner_1,
        [10] = self.e_InfiWave_4_A,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_406()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_406");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1001056020");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_406_Out,
    });
    params = {
        -- Integer,
        [1] = 2,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1019240802");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_19_Out,
    });
    params = {
        -- Entity,
        [0] = "2108940488164801423",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_414()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_414");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1023019476");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_414_Out,
    });
    params = {
        -- Integer,
        [1] = 6,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_199()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_199");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1026544411");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_199_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966734110146965",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_183()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_183");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1026853071");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_183_Out,
    });
    params = {
        -- Integer,
        [1] = 3,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1032895009");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_38_Out,
    });
    params = {
        -- Integer,
        [1] = 2,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1048961389");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_92_A_eq_B,
        -- A_gt_B,
        [2] = self.f_box_Compare_Integers_92_A_gt_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_92_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.iDifficulty,
        -- B,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_360()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_360");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1058440370");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_360_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966102408110464",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1066254766");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_21_Out,
    });
    params = {
        -- Entity,
        [0] = "2108940173023669847",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_153()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_153");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1080715641");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_153_Out,
    });
    params = {
        -- Entity,
        [0] = "2108940050038286087",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_192()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_192");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1084425306");
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
                [1] = self.f_box_OutputOrder_v2_192_Out_1,
                [2] = self.f_box_OutputOrder_v2_192_Out_2,
                [3] = self.f_box_OutputOrder_v2_192_Out_3,
                [4] = self.f_box_OutputOrder_v2_192_Out_4,
                [5] = self.f_box_OutputOrder_v2_192_Out_5,
                [6] = self.f_box_OutputOrder_v2_192_Out_6,
            },
            count = 7,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_163()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_163");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1088672843");
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
                [0] = self.f_box_OutputOrder_v2_163_Out_0,
                [1] = self.f_box_OutputOrder_v2_163_Out_1,
                [2] = self.f_box_OutputOrder_v2_163_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_312()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_312");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1089178417");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_312_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_95");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1095713748");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_95_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108508129181307189",
        -- Group,
        [1] = "#00390573",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_322()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_322");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1098259458");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_322_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966291606874047",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_135()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_135");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1106076568");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_135_Out,
    });
    params = {
        -- Entity,
        [0] = "2108939079308555007",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1107313816");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_91_Out,
    });
    params = {
        -- Entity,
        [0] = "2108940174181297847",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1116473569");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_34_Out,
    });
    params = {
        -- Fact,
        [0] = "h2_ctp_010_b10_playerdetected",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_276()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_276");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1116859486");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_276_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966491991847811",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_215()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 5,
        -- EnemyGroup,
        [1] = "#00390573",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 15,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- opt_Spawner_2,
        [6] = self.e_Wave_2_B,
        -- Spawner_1,
        [10] = self.e_Wave_2_A,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1122141663");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_85_Out,
    });
    params = {
        -- Entity,
        [0] = "2108939554890204363",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_141()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_141");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1124579768");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_141_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1136849105");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160314102598852",
        -- missionLayerId,
        [1] = "27160323900167600",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_293()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_293");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1137069393");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_293_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966102496190880",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1138313941");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_77_Out,
    });
    params = {
        -- Entity,
        [0] = "2108939766083900421",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1140950764");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_28_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "243333088036295784",
        -- missionLayerId,
        [1] = "45174722289816954",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_104()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 5,
        -- EnemyGroup,
        [1] = "#00390573",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 15,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- opt_Spawner_2,
        [6] = self.e_InfiWave_2_B,
        -- Spawner_1,
        [10] = self.e_InfiWave_2_A,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_281()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_281");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1167377816");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_281_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966291732703209",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1169844352");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_68_Out,
    });
    params = {
        -- Integer,
        [1] = 8,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_PackageGuard_168()
    local params;
    params = {
        -- EnemyGroup_All,
        [0] = "#00390573",
        -- EnemyGroup_PackageGuard,
        [1] = "#D2E5A4CF",
        -- EnemyGroup_Prio_01,
        [2] = "#4F26CFCE",
        -- EnemyGroup_Prio_02,
        [3] = "#EABC715D",
        -- PackageGuardCS,
        [5] = "2109200592686561250",
        -- PackageGuardNUM,
        [6] = 2,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_294()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_294");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1178642648");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_294_Out,
    });
    params = {
        -- Entity,
        [0] = "2108967054672415903",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_82()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 5,
        -- EnemyGroup,
        [1] = "#00390573",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 15,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- opt_Spawner_2,
        [6] = self.e_Wave_6_B,
        -- Spawner_1,
        [10] = self.e_Wave_6_A,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1192476612");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_51_Out,
    });
    params = {
        -- Entity,
        [0] = "2108938869377346993",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1193691540");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_14_Out,
    });
    params = {
        -- Entity,
        [0] = "2108940488772975519",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_427()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 4,
        -- EnemyGroup,
        [1] = "#00390573",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 15,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- Spawner_1,
        [10] = self.e_Wave_4_A,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1198818119");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_16_Out,
    });
    params = {
        -- Entity,
        [0] = "2108940174864969447",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_126()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_126");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1201597204");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_126_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_365()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = PersistentGlobals.Lib_Expeditions_Gameplay.ePackageOwner,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109079202253817129",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_EnemyHelicopterCleaner_407()
    local params;
    params = {
        -- EnemyHelicopter,
        [0] = "2109948995387281835",
        -- EnemyHelicopterGroup,
        [1] = "#BC256B63",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1211863163");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_78_Out,
    });
    params = {
        -- Entity,
        [0] = "2108940173763964567",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_232()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_232");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1211937341");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_232_Out,
    });
    params = {
        -- Entity,
        [0] = "2110182861643483600",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_423()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 4,
        -- EnemyGroup,
        [1] = "#00390573",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 15,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- Spawner_1,
        [10] = self.e_Wave_4_B,
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_440()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_440");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1215290612");
    l0:SetConnections({
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2108816543767866276",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_464()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_464");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1224296018");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_464_Out,
    });
    params = {
        -- Integer,
        [1] = 8,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1227659549");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_64_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "243333088036295784",
        -- missionLayerId,
        [1] = "36167523034810871",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1232831604");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_62_Out,
    });
    params = {
        -- Entity,
        [0] = "2108940050654848823",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_140()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_140");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1237362158");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_140_A_is_False,
    });
    params = {
        -- A,
        [0] = self.bInCamp_Before,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_88()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 5,
        -- EnemyGroup,
        [1] = "#00390573",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 15,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- Spawner_1,
        [10] = self.e_Wave_3_A,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_108");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1240244905");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_108_Out,
    });
    params = {
        -- Integer,
        [1] = 6,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_235()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_235");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1242679031");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_235_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966492042179478",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_445()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_445");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1249478593");
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
                [0] = self.f_box_OutputOrder_v2_445_Out_0,
                [1] = self.f_box_OutputOrder_v2_445_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_134()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_134");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1255397966");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_134_Out,
    });
    params = {
        -- Entity,
        [0] = "2108940172740554301",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_170()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 180,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_271()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_271");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1257214869");
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
                [0] = self.f_box_OutputOrder_v2_271_Out_0,
                [1] = self.f_box_OutputOrder_v2_271_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1258450781");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160314102598852",
        -- missionLayerId,
        [1] = "36167523154927760",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_237()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_237");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1267762921");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_237_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_191()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_191");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1272834118");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_191_Out,
    });
    params = {
        -- Integer,
        [1] = 2,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_238()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_238");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1285452711");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_238_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160314102598852",
        -- missionLayerId,
        [1] = "27160324709406247",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_45()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "package_is_picked",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_152()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_152");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1295045734");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_152_Out,
    });
    params = {
        -- Entity,
        [0] = "2108940173973679783",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_173()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_173");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1295641321");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_173_Out,
    });
    params = {
        -- Entity,
        [0] = "2108939142298612998",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_451()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_451");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1300783651");
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
        [8] = "In body before area",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_392()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_392");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1317184515");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_392_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "243333088036295784",
        -- missionLayerId,
        [1] = "90210718563587429",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_273()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_273");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1325774967");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_273_A_is_False,
    });
    params = {
        -- A,
        [0] = self.bInWatchtower,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1327125049");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_50_Out,
    });
    params = {
        -- Entity,
        [0] = "2108940173352922743",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_266()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_266");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1336013284");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_266_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966644060534961",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_411()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_411");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1342871878");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_411_Out,
    });
    params = {
        -- Integer,
        [1] = 4,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_162()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_390()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = "#6088FBBF",
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109959345092459668",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_13()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 3,
        -- EnemyGroup,
        [1] = "#00390573",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 15,
        -- NextWaveWaitUntilCombat,
        [5] = true,
        -- opt_Spawner_2,
        [6] = self.e_InfiWave_1_B,
        -- Spawner_1,
        [10] = self.e_InfiWave_1_A,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_387()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "heli_takeoff_bridge",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1351111584");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_5_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "243333088036295784",
        -- missionLayerId,
        [1] = "63189120799326216",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_211()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_211");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1356919591");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_211_Out,
    });
    params = {
        -- Entity,
        [0] = "2109781053737552414",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_240()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_240");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1361969660");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_240_Out,
    });
    params = {
        -- Entity,
        [0] = "2108967503651690041",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1373684150");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_69_Out,
    });
    params = {
        -- Entity,
        [0] = "2108939765658178533",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_442()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_442");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1379156492");
    l0:SetConnections({
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2108816482415684512",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_342()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_342");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1389626499");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_342_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966291822880780",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_457()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 4,
        -- EnemyGroup,
        [1] = "#00390573",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 15,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- opt_Spawner_2,
        [6] = self.e_InfiWave_3_B,
        -- Spawner_1,
        [10] = self.e_InfiWave_3_A,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_306()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_306");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1394257088");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_306_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966733866877247",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_148()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_148");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1394459058");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_148_Out,
    });
    params = {
        -- Entity,
        [0] = "2108939766287324181",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_137()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_137");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1397939184");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_137_Out,
    });
    params = {
        -- Entity,
        [0] = "2108940491346181090",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_280()
    local params;
    params = {
        -- Index,
        [0] = self.iDifficulty,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_327()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_327");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1408317876");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_327_Out,
    });
    params = {
        -- Entity,
        [0] = "2108967054766787778",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_310()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_310");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1408639206");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_310_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966832483354486",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1413949666");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_74_Out,
    });
    params = {
        -- Integer,
        [1] = 8,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_355()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_355");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1418805959");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_355_Out,
    });
    params = {
        -- Entity,
        [0] = "2108967054986988821",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_409()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 4,
        -- EnemyGroup,
        [1] = "#00390573",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 15,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- opt_Spawner_2,
        [6] = self.e_InfiWave_2_B,
        -- Spawner_1,
        [10] = self.e_InfiWave_2_A,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_463()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 3,
        -- EnemyGroup,
        [1] = "#00390573",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 15,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- opt_Spawner_2,
        [6] = self.e_Wave_1_B,
        -- Spawner_1,
        [10] = self.e_Wave_1_A,
    };
    return params;
end;

function export:OnEnter_box_SpawnAIRequestGroup_v2_425()
    local params;
    params = {
        -- RequestGroupName,
        [0] = "dog_bridge_lv3",
        -- SpawnerCount,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_175()
    local params;
    params = {
        -- Index,
        [0] = self.iDifficulty,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_343()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_343");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1437573476");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108508129181307189",
        -- Group,
        [1] = "#00390573",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_318()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_318");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1445784072");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_318_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966065542274011",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_308()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_308");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1450466186");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_TriggerState_v2_308_Enabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2108964042574926469",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_300()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_300");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1456238917");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_300_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966056058952594",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_349()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_349");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1459051875");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_349_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966102372458867",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_193()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "PackageStolenDetected",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_455()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_455");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1466396904");
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
        [8] = "In watchtower after area",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_97");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1471047382");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_97_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160314102598852",
        -- missionLayerId,
        [1] = "36167523964164453",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_337()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_337");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1476239138");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_337_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966102280184144",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_203()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_203");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1485205626");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_203_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_PackageGuardNearest_299()
    local params;
    params = {
        -- ActualPackageSpawner,
        [0] = Globals.Swamp_H2_CTP_010_Main.iPackageSpawner,
        -- EnemyGroup_PackageGuard,
        [1] = "#3A16142B",
        -- EnemyGroupAll,
        [2] = "#00390573",
        -- PackageGuardPositionCS_A,
        [3] = "2109200592686561250",
        -- PackageGuardPositionCS_B,
        [4] = "2109189418035220230",
        -- PackageGuardPositionCS_C,
        [5] = "2109201267839482472",
        -- PackageGuardPositionCS_D,
        [6] = "2109187025241382940",
        -- PackageGuardPositionCS_E,
        [7] = "2109201682423365082",
        -- PackageGuardPositionCS_F,
        [8] = "2109201678117912022",
        -- PackageSpawner_A,
        [9] = "2108194326872853749",
        -- PackageSpawner_B,
        [10] = "2108194336104516867",
        -- PackageSpawner_C,
        [11] = "2108194359861054750",
        -- PackageSpawner_D,
        [12] = "2108194382944406828",
        -- PackageSpawner_E,
        [13] = "2108194162500176967",
        -- PackageSpawner_F,
        [14] = "2108194267680738471",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_36()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "Package_Stolen_Detected",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_250()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_250");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1495182924");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_250_A_is_False,
    });
    params = {
        -- A,
        [0] = self.bInPlanetail,
    };
    return params;
end;

function export:OnEnter_box_SpawnAIRequestGroup_v2_155()
    local params;
    params = {
        -- RequestGroupName,
        [0] = "sp_heli",
        -- SpawnerCount,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_PlayerFullyDetected_431()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    params = {
        -- EnemyGroup,
        [0] = "#00390573",
        -- OnceOnly,
        [1] = true,
        -- PlayerGroup,
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_53()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 3,
        -- EnemyGroup,
        [1] = "#00390573",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 15,
        -- NextWaveWaitUntilCombat,
        [5] = true,
        -- opt_Spawner_2,
        [6] = self.e_InfiWave_4_B,
        -- Spawner_1,
        [10] = self.e_InfiWave_4_A,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_348()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_348");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1521100380");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_348_Out,
    });
    params = {
        -- Entity,
        [0] = "2108965611592749829",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_136()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 5,
        -- EnemyGroup,
        [1] = "#00390573",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 15,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- Spawner_1,
        [10] = self.e_Wave_4_B,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_244()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_244");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1530634489");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_244_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966492079928227",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_319()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_319");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1531477679");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_319_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966491947807603",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_221()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_221");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1535531873");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_221_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160314102598852",
        -- missionLayerId,
        [1] = "45174723218912012",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_345()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_345");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1536418568");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_345_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966643867596910",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_400()
    local params;
    params = {
        -- Index,
        [0] = self.iDifficulty,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_225()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_225");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1537172424");
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
                [0] = self.f_box_OutputOrder_v2_225_Out_0,
                [1] = self.f_box_OutputOrder_v2_225_Out_1,
                [2] = self.f_box_OutputOrder_v2_225_Out_2,
                [3] = self.f_box_OutputOrder_v2_225_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Random_459()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 4,
        },
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_367()
    local params;
    params = {
        -- Index,
        [0] = self.iWaveAfter_Index,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_122()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_122");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1564333076");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109463712747230908",
        -- Group,
        [1] = "#00390573",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_198()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_198");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1564370052");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_198_Out,
    });
    params = {
        -- Entity,
        [0] = "2108967054852771042",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_143()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_143");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1582185459");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_143_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160314102598852",
        -- missionLayerId,
        [1] = "36167523964164453",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_154()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 180,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_460()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_460");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1616719345");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_460_Out,
    });
    params = {
        -- Integer,
        [1] = 7,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_216()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_216");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1617994657");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_216_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966832428828515",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_224()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_224");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1630813209");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_224_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966733965443426",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_341()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_341");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1632634268");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_341_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966102028525814",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_184()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_184");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1634113502");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2110279955538516469",
        -- Group,
        [1] = "#00390573",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_190()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_190");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1634932008");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_190_Out,
    });
    params = {
        -- Entity,
        [0] = "2108194326872853749",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_103");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1643070934");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_103_Out,
    });
    params = {
        -- Entity,
        [0] = "2108940490742201298",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_160()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_94");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1648591161");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_94_Out,
    });
    params = {
        -- Entity,
        [0] = "2108939695544094146",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1648916257");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_30_Out,
    });
    params = {
        -- Entity,
        [0] = "2108938894469770784",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_212()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_212");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1652937316");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_212_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966102324224352",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_366()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_366");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1653358279");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_366_Out,
    });
    params = {
        -- Integer,
        [1] = 3,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_27()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 3,
        -- EnemyGroup,
        [1] = "#00390573",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 15,
        -- NextWaveWaitUntilCombat,
        [5] = true,
        -- opt_Spawner_2,
        [6] = self.e_Wave_5_B,
        -- Spawner_1,
        [10] = self.e_Wave_5_A,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_196()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 3,
        -- EnemyGroup,
        [1] = "#00390573",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 15,
        -- NextWaveWaitUntilCombat,
        [5] = true,
        -- opt_Spawner_2,
        [6] = self.e_Wave_6_B,
        -- Spawner_1,
        [10] = self.e_Wave_6_A,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_113()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_113");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1661534346");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_113_Out,
    });
    params = {
        -- Integer,
        [1] = 7,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_267()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_267");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1664788103");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_267_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966644006008990",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_394()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_394");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1671508835");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_394_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160314102598852",
        -- missionLayerId,
        [1] = "63189121728408522",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_268()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_268");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1673828475");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_268_Out,
    });
    params = {
        -- Entity,
        [0] = "2108965913375021055",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1677410120");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_81_A_is_False,
    });
    params = {
        -- A,
        [0] = self.bInPlanebody_Before,
    };
    return params;
end;

function export:OnEnter_box_SpawnAIRequestGroup_v2_278()
    local params;
    params = {
        -- RequestGroupName,
        [0] = "goodbyeparty_bridge_sniper",
        -- SpawnerCount,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1683008856");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_70_Out,
    });
    params = {
        -- Entity,
        [0] = "2108940174393110215",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_330()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_330");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1688947459");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_330_Out,
    });
    params = {
        -- Entity,
        [0] = "2108967054716456111",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1696242403");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_59_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_428()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_428");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1698927353");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_428_Out,
    });
    params = {
        -- Integer,
        [1] = 5,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1701195941");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_26_Out,
    });
    params = {
        -- Entity,
        [0] = "2108220311441780438",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_99");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1704193470");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_99_Out,
    });
    params = {
        -- Entity,
        [0] = "2108939117835334754",
    };
    return params;
end;

function export:OnEnter_box_SpawnAIRequestGroup_v2_332()
    local params;
    params = {
        -- RequestGroupName,
        [0] = "dock veh",
        -- SpawnerCount,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_139()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_139");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1707757305");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_139_Out,
    });
    params = {
        -- Integer,
        [1] = 4,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_129()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_129");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1708869044");
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
                [0] = self.f_box_OutputOrder_v2_129_Out_0,
                [1] = self.f_box_OutputOrder_v2_129_Out_1,
                [2] = self.f_box_OutputOrder_v2_129_Out_2,
                [3] = self.f_box_OutputOrder_v2_129_Out_3,
                [4] = self.f_box_OutputOrder_v2_129_Out_4,
                [5] = self.f_box_OutputOrder_v2_129_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_151()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_151");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1713837907");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_151_Out,
    });
    params = {
        -- Entity,
        [0] = "2108938916401786595",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_233()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_233");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1721455820");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_233_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966734009483634",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_354()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_354");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1722498540");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_354_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_256()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_256");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1724865638");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_256_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1731967588");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_23_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1734707127");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_12_Out,
    });
    params = {
        -- Entity,
        [0] = "2108939672022437102",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_214()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_214");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1735982083");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_214_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966102452150672",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_10()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 3,
        -- EnemyGroup,
        [1] = "#00390573",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 15,
        -- NextWaveWaitUntilCombat,
        [5] = true,
        -- opt_Spawner_2,
        [6] = self.e_InfiWave_3_B,
        -- Spawner_1,
        [10] = self.e_InfiWave_3_A,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_432()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_432");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1737986217");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_432_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_393()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_393");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1746872755");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_393_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "243333088036295784",
        -- missionLayerId,
        [1] = "81203519308837330",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_209()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_209");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1770347313");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_209_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966291562833839",
    };
    return params;
end;

function export:OnEnter_box_SpawnAIRequestGroup_v2_277()
    local params;
    params = {
        -- RequestGroupName,
        [0] = "goodbyeparty_watchtower_2",
        -- SpawnerCount,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_52()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 5,
        -- EnemyGroup,
        [1] = "#00390573",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 15,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- Spawner_1,
        [10] = self.e_Wave_3_B,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1795451968");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_24_Out,
    });
    params = {
        -- Entity,
        [0] = "2108939765880476661",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_448()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_448");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1796674633");
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
        [8] = "In camp after area",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_131()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_131");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1807145336");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_131_Out,
    });
    params = {
        -- Entity,
        [0] = "2108940049824376564",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_361()
    local params;
    params = {
        -- Index,
        [0] = self.iExtractionPOIIndex,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_222()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "heli_takeoff_watchtower",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_223()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_223");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1823757106");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_223_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1828144361");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_48_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_333()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_333");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1836689304");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_333_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966102194200883",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_164()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_164");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1839022036");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_164_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_344()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_344");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1842698891");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_344_Out,
    });
    params = {
        -- Entity,
        [0] = "2108965764844229807",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_245()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_245");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1851986364");
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
                [0] = self.f_box_OutputOrder_v2_245_Out_0,
                [1] = self.f_box_OutputOrder_v2_245_Out_1,
                [2] = self.f_box_OutputOrder_v2_245_Out_2,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_145()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_145");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1855322484");
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
                [0] = self.f_box_OutputOrder_v2_145_Out_0,
                [1] = self.f_box_OutputOrder_v2_145_Out_1,
                [2] = self.f_box_OutputOrder_v2_145_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_86()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 5,
        -- EnemyGroup,
        [1] = "#00390573",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 15,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- opt_Spawner_2,
        [6] = self.e_InfiWave_1_B,
        -- Spawner_1,
        [10] = self.e_InfiWave_1_A,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_296()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_296");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1880040757");
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
                [0] = self.f_box_OutputOrder_v2_296_Out_0,
                [1] = self.f_box_OutputOrder_v2_296_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_456()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_456");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1888076341");
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
                [0] = self.f_box_OutputOrder_v2_456_Out_0,
                [1] = self.f_box_OutputOrder_v2_456_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1893763322");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_79_Out,
    });
    params = {
        -- Entity,
        [0] = "2108427033869552446",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_303()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_303");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1900860351");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_303_Out,
    });
    params = {
        -- Entity,
        [0] = "2108965867504015113",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_116()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_93()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = self.e_PlayerBeDected,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108816482415684512",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_142()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_142");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1941932246");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_142_A_is_False,
    });
    params = {
        -- A,
        [0] = self.bInPlanetail_Before,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_465()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 4,
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 15,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- opt_Spawner_2,
        [6] = self.e_InfiWave_1_B,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_219()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_219");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1949665139");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_219_Out,
    });
    params = {
        -- Integer,
        [1] = 7,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_449()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_449");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1963804172");
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
        [8] = "In camp before area",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_127()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_127");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1964245956");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_127_Out,
    });
    params = {
        -- Entity,
        [0] = "2108940172860091978",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_362()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = PersistentGlobals.Lib_Expeditions_Gameplay.ePackageOwner,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108964130110050952",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_PackageGuard_287()
    local params;
    params = {
        -- EnemyGroup_All,
        [0] = "#00390573",
        -- EnemyGroup_PackageGuard,
        [1] = "#757A1B20",
        -- EnemyGroup_Prio_01,
        [2] = "#4BEFDAC5",
        -- EnemyGroup_Prio_02,
        [3] = "#E8B97021",
        -- PackageGuardCS,
        [5] = "2109201267839482472",
        -- PackageGuardNUM,
        [6] = 2,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_298()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_298");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|1981141357");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_298_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966832237987616",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_363()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = PersistentGlobals.Lib_Expeditions_Gameplay.ePackageOwner,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108964081898623623",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_429()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = PersistentGlobals.Lib_Expeditions_Gameplay.ePackageOwner,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108964149556941449",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_229()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_229");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2001193121");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_229_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_249()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_249");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2013833286");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_TriggerState_v2_249_Enabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2108964130110050952",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_161()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_161");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2017847450");
    l0:SetConnections({
    });
    l0 = self.box_ProximityTrigger_v3_390;
    params = {
        -- ContextualStrategy,
        [0] = "2108508129181307189",
        -- Group,
        [1] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_207()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_207");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2024122226");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_207_Out,
    });
    params = {
        -- Entity,
        [0] = "2108965995407219108",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_65()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = 6,
        -- EnemyGroup,
        [1] = "#00390573",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 15,
        -- NextWaveWaitUntilCombat,
        [5] = true,
        -- Spawner_1,
        [10] = self.e_Wave_3_B,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_BasicSetups_307()
    local params;
    params = {
        -- DebugMode,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_186()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_186");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2046750705");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_186_Out,
    });
    params = {
        -- Integer,
        [1] = 1,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_364()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = PersistentGlobals.Lib_Expeditions_Gameplay.ePackageOwner,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109079181441680680",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_255()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_255");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2061695789");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_255_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2080938755");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_75_Out,
    });
    params = {
        -- Entity,
        [0] = "2108939765291176904",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_119()
    local params;
    params = {
        -- Index,
        [0] = self.iPackagePositionID,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_315()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_315");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2087863584");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_315_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966492123968435",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_347()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_347");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2089664724");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_347_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966491855532886",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_441()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_441");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2114058879");
    l0:SetConnections({
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2108816466630421407",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_118()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_118");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2119390399");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_118_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160314102598852",
        -- missionLayerId,
        [1] = "27160324709406247",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_292()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_292");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2122589991");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_292_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966643959871630",
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_468()
    local params, l0;
    DrawTextToScreen("Comment: LC: Disable on detection BOW-74745", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RadioModifier_v3')-- Comment: LC: Disable on detection BOW-74745");
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_468");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2122958344");
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
        [5] = "2109975699489053118",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_265()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_265");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2125236086");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_265_Out,
    });
    params = {
        -- Entity,
        [0] = "2108966734156284325",
    };
    return params;
end;

function export:OnEnter_box_SpawnAIRequestGroup_v2_424()
    local params;
    params = {
        -- RequestGroupName,
        [0] = "dog_dock_lv3",
        -- SpawnerCount,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_112()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_147()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_147");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Enemy.domino|@Swamp_H2_CTP_010_Enemy|2147267471");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_147_Out,
    });
    params = {
        -- Integer,
        [1] = 5,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnExit_box_SetEntity_v2_197_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_2_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_227_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_5_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_304_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_1_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_4_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.ePackageSpawner = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_181_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iPlayerSpawnPOIIndex = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_25_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_2_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_236_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bInWatchtower = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_410_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iWaveBefore_Index = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_Exp_Common_BasicSetups_178_Out()
    local l0;
    l0 = self.box_Brick_Exp_Common_BasicSetups_178;
    self.iDifficulty = l0:GetDataOutValue(0);
    self.iPlayerSpawnPOIIndex = l0:GetDataOutValue(4);
    self.iExtractionPOIIndex = l0:GetDataOutValue(1);
    self.iPackagePositionID = l0:GetDataOutValue(2);
    self.ePackageSpawner = l0:GetDataOutValue(3);
end;

function export:OnExit_box_SetEntity_v2_335_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_6_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_334_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iWaveBefore_Index = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_339_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_4_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_205_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_1_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_297_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_2_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_302_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_1_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_121_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iWaveBefore_Index = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_247_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bInPlanebody = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_358_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_6_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_359_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iWaveBefore_Index = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_314_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_2_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_260_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_4_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_228_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bInPlanetail = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_138_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_6_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_61_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bInPlanetail_Before = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_234_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bInCamp = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_326_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bInPlanebody = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_243_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_6_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_22_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_2_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_146_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_2_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_257_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_5_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_125_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bInPlanebody_Before = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_217_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_6_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_98_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_4_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_357_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_1_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_120_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_3_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_100_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_3_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_346_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_2_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_202_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_1_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_172_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_1_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_54_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_2_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_150_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_4_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_144_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bInCamp_Before = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_352_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_3_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_290_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_2_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_37_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_3_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_254_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_4_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_274_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_2_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_40_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iWaveBefore_Index = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_288_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bInPlanebody = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_29_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_4_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_114_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_1_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_246_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_3_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_262_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_2_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_201_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_4_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_6_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_6_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_20_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_1_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_166_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_4_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_286_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_2_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_165_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_2_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_33_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_6_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_39_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_3_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_226_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_5_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_324_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_4_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_251_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bInWatchtower = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_350_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_3_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_259_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_5_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_275_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bInCamp = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_132_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_4_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_83_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_6_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_279_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_1_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_57_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_3_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_102_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_2_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_204_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_3_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_195_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_4_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_56_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_3_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_63_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_1_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_213_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_4_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_9_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_5_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_176_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iExtractionPOIIndex = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_157_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_6_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_71_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_2_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_313_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_3_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_263_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_2_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_218_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iWaveBefore_Index = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_189_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iPackagePositionID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_406_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iWaveBefore_Index = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_19_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_4_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_414_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iWaveBefore_Index = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_199_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_3_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_183_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iExtractionPOIIndex = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_38_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iWaveBefore_Index = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_360_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_5_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_21_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_2_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_153_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_1_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_312_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bInCamp = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_322_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_2_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_135_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_4_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_91_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_5_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_276_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_4_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_85_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_1_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_141_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bInPlanetail_Before = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_293_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_6_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_77_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_4_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_281_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_3_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_68_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iWaveBefore_Index = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_294_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_4_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_51_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_1_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_14_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_3_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_16_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_6_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_126_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bInPlanebody_Before = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_78_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_4_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_232_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_1_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_464_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iWaveBefore_Index = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_62_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_3_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_108_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iWaveBefore_Index = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_235_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_4_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_134_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_1_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_237_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bInPlanetail = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_191_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iPlayerSpawnPOIIndex = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_152_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_4_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_173_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_5_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_50_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_3_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_266_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_3_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_411_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iWaveBefore_Index = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_211_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_1_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_240_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_3_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_69_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_3_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_342_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_4_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_306_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_1_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_148_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_5_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_137_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_1_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_327_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_1_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_310_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_3_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_74_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iWaveBefore_Index = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_355_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_4_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_318_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_6_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_300_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_6_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_349_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_4_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_337_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_3_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_203_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bInPlanetail = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_Exp_Common_PlayerFullyDetected_431_Detected()
    local l0;
    l0 = self.box_Brick_Exp_Common_PlayerFullyDetected_431;
    self.e_PlayerBeDected = l0:GetDataOutValue(2);
end;

function export:OnExit_box_Brick_Exp_Common_PlayerFullyDetected_431_Detected_BothPlayers()
    local l0;
    l0 = self.box_Brick_Exp_Common_PlayerFullyDetected_431;
    self.e_PlayerBeDected = l0:GetDataOutValue(2);
end;

function export:OnExit_box_Brick_Exp_Common_PlayerFullyDetected_431_Detected_ClientOnly()
    local l0;
    l0 = self.box_Brick_Exp_Common_PlayerFullyDetected_431;
    self.e_PlayerBeDected = l0:GetDataOutValue(2);
end;

function export:OnExit_box_Brick_Exp_Common_PlayerFullyDetected_431_Detected_HostOnly()
    local l0;
    l0 = self.box_Brick_Exp_Common_PlayerFullyDetected_431;
    self.e_PlayerBeDected = l0:GetDataOutValue(2);
end;

function export:OnExit_box_Brick_Exp_Common_PlayerFullyDetected_431_Disabled()
    local l0;
    l0 = self.box_Brick_Exp_Common_PlayerFullyDetected_431;
    self.e_PlayerBeDected = l0:GetDataOutValue(2);
end;

function export:OnExit_box_Brick_Exp_Common_PlayerFullyDetected_431_Enabled()
    local l0;
    l0 = self.box_Brick_Exp_Common_PlayerFullyDetected_431;
    self.e_PlayerBeDected = l0:GetDataOutValue(2);
end;

function export:OnExit_box_SetEntity_v2_348_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_2_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_244_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_5_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_319_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_3_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_345_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_1_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_198_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_2_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_460_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iWaveBefore_Index = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_216_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_3_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_224_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_2_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_341_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_6_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_190_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.ePackageSpawner = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_103_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_2_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_94_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_4_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_30_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_2_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_212_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_4_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_366_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iWaveBefore_Index = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_113_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iWaveBefore_Index = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_267_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_3_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_268_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_3_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_70_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_5_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_330_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_1_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_59_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bInCamp_Before = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_428_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iWaveBefore_Index = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_26_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_1_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_99_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_5_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_139_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iWaveBefore_Index = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_151_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_2_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_233_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_3_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_354_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bInCamp = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_256_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bInPlanebody = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_23_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bInCamp_Before = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_12_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_3_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_214_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_5_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_432_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l1 = self.box_Brick_Exp_Common_PlayerFullyDetected_431;
    l1:GetLuaBox().PlayerGroup = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_209_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_1_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_24_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_4_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_131_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_1_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_223_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bInWatchtower = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_48_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bInPlanetail_Before = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_333_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_2_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_164_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bInPlanebody_Before = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_344_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_2_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_79_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_3_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_303_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_1_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_219_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iWaveBefore_Index = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_127_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_1_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_298_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_1_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_229_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bInWatchtower = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_207_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_4_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_Exp_Common_BasicSetups_307_Out()
    local l0;
    l0 = self.box_Brick_Exp_Common_BasicSetups_307;
    self.iDifficulty = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_186_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iPackagePositionID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_255_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bInPlanetail = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_75_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_2_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_315_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_5_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_347_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Wave_1_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_292_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_2_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_265_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_InfiWave_4_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_147_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iWaveBefore_Index = l0:GetDataOutValue(0);
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
