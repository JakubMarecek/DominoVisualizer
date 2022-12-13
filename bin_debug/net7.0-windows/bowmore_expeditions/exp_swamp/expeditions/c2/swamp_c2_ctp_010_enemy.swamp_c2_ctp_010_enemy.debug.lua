LUACc� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_swamp/expeditions/c2/swamp_c2_ctp_010_enemy.domino
-- User graph: Swamp_C2_CTP_010_Enemy
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_PlayerFullyDetected.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveRequestGroup.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_PackageGuard.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_PackageGuardNearest.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetExpeditionGameplayElements.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/IndexList_v2.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/MessageListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/RadioModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetInteger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetString_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/C2/Swamp_C2_CTP_010_Enemy.Swamp_C2_FlareSTP.debug.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/Library/Sp/Lib_Expeditions_Gameplay.globals.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.Swamp_C2_CTP_010_Enemy = nil;
    Globals.Swamp_C2_CTP_010_Enemy = {
        Wave_1_A = nil,
        Wave_1_B = nil,
        Wave_1_C = nil,
        Wave_2_A = nil,
        Wave_2_B = nil,
        Wave_2_C = nil,
        Wave_2_D = nil,
        Wave_2_E = nil,
        Wave_3_A = nil,
        Wave_3_B = nil,
        Wave_3_C = nil,
        Wave_4_A = nil,
        Wave_4_B = nil,
        Wave_4_C = nil,
        Wave_4_D = nil,
        Wave_5_A = nil,
        Wave_5_B = nil,
        Wave_5_C = nil,
        Wave_5_D = nil,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/C2/Swamp_C2_CTP_010_Enemy.Swamp_C2_CTP_010_Enemy.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "OnLeaveZone",
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveRequestGroup.debug.lua")] = {
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
                name = "RequestGroupName",
                type = "string",
            },
        },
        dataInCount = 7,
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
    metadataTable[GetPathID("Domino/System/GetExpeditionGameplayElements.lua")] = {
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
            [0] = {
                name = "ExpeditionDifficultyLevel",
                type = "int",
            },
            [1] = {
                name = "ExplosiveSpawnerList",
                type = "list",
            },
            [2] = {
                name = "ExtractionPOIIndex",
                type = "int",
            },
            [3] = {
                name = "FogIndex",
                type = "int",
            },
            [4] = {
                name = "LootSpawnerList",
                type = "list",
            },
            [5] = {
                name = "PackagePOIIndex",
                type = "int",
            },
            [6] = {
                name = "PackageSpawner",
                type = "entity",
            },
            [7] = {
                name = "PickupSpawnerList",
                type = "list",
            },
            [8] = {
                name = "PlayerSpawnPOIIndex",
                type = "int",
            },
            [9] = {
                name = "TimeOfDayIndex",
                type = "int",
            },
            [10] = {
                name = "TurretSpawnerList",
                type = "list",
            },
        },
        dataOutCount = 11,
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
    metadataTable[GetPathID("Domino/System/IntegerArithmetics_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Abs",
            },
            [1] = {
                name = "Add",
            },
            [2] = {
                name = "Div",
            },
            [3] = {
                name = "Exp",
            },
            [4] = {
                name = "Max",
            },
            [5] = {
                name = "Min",
            },
            [6] = {
                name = "Mod",
            },
            [7] = {
                name = "Mul",
            },
            [8] = {
                name = "Sub",
            },
        },
        controlInCount = 9,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
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
            [0] = {
                name = "Result",
                type = "int",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/SetString_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "FromBoolean",
            },
            [1] = {
                name = "FromEntity",
            },
            [2] = {
                name = "FromFloat",
            },
            [3] = {
                name = "FromGSF",
            },
            [4] = {
                name = "FromInteger",
            },
            [5] = {
                name = "FromString",
            },
        },
        controlInCount = 6,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Boolean",
                type = "bool",
            },
            [1] = {
                name = "Entity",
                type = "entity",
            },
            [2] = {
                name = "Float",
                type = "float",
            },
            [3] = {
                name = "GSF",
                type = "GSF",
            },
            [4] = {
                name = "Integer",
                type = "int",
            },
            [5] = {
                name = "String",
                type = "string",
            },
        },
        dataInCount = 6,
        dataOut = {
            [0] = {
                name = "Target",
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
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/C2/Swamp_C2_CTP_010_Enemy.Swamp_C2_FlareSTP.debug.lua")] = {
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
    self._name = "Swamp_C2_CTP_010_Enemy";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy";
    self.iPackagePositionID = 0;
    self.iPlayerSpawnPOIIndex = 0;
    self.iExtractionPOIID = 0;
    self.iDifficulty = 0;
    self.ePackageSpawner = nil;
    self.bInRollerCoaster = false;
    self.bInSkyScreamer = false;
    self.bInFortress = false;
    self.bInFrontGate = false;
    self.e_CS_GuardPackage = nil;
    self.iWaveBefore_Index = 1;
    self.iWaveAfter_Index = 1;
    self.after_wave_01 = "";
    self.after_wave_02 = "";
    self.after_wave_03 = "";
    self.after_wave_04 = "";
    self.after_wave_05 = "";
    self.box_Brick_Exp_Common_WaveRequestGroup_22 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveRequestGroup.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveRequestGroup_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveRequestGroup_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|15818161");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveRequestGroup_22_NextWave,
    });
    self.box_SpawnAI_178 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_178;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_178");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|16579229");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_178_Out,
    });
    self.box_MultipleOR_62 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|27860469");
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
        [0] = self.f_box_MultipleOR_62_Out,
    });
    self.box_SpawnAI_39 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|34166348");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_39_Out,
    });
    self.box_SpawnAI_23 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|64230892");
    l0:SetConnections({
    });
    self.box_Delay_v5_14 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|70490580");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_14_Started,
        -- Stopped,
        [4] = self.f_box_Delay_v5_14_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_14_TimeElapsed,
    });
    self.box_SpawnAI_32 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|80072399");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_32_Out,
    });
    self.box_ActivityAcknowledgeGate_56 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|87022438");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_56_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_56_Reloaded,
    });
    self.box_SpawnAI_19 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|97820578");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_19_Out,
    });
    self.box_EntityStatusListener_173 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_173;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_173");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|98747999");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_173_Loaded,
    });
    self.box_IndexList_v2_30 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|101167351");
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
                [0] = self.f_box_IndexList_v2_30_Output_0,
                [1] = self.f_box_IndexList_v2_30_Output_1,
                [2] = self.f_box_IndexList_v2_30_Output_2,
            },
            count = 3,
        },
    });
    self.box_SpawnAI_5 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|132513418");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_5_Out,
    });
    self.box_Gate_v3_118 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_118");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|139642232");
    l0:SetConnections({
        -- Opened,
        [1] = self.f_box_Gate_v3_118_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_118_Out,
    });
    self.box_PositionModifier_v2_16 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|141270834");
    l0:SetConnections({
    });
    self.box_Brick_Exp_Enemy_PackageGuard_43 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_PackageGuard.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_PackageGuard_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_PackageGuard_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|235589567");
    l0:SetConnections({
    });
    self.box_IndexList_v2_55 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|293177882");
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
                [0] = self.f_box_IndexList_v2_55_Output_0,
                [1] = self.f_box_IndexList_v2_55_Output_1,
                [2] = self.f_box_IndexList_v2_55_Output_2,
            },
            count = 3,
        },
    });
    self.box_Gate_v3_151 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_151;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_151");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|378108718");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_151_Out,
    });
    self.box_SpawnAI_9 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|379356815");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_9_Out,
    });
    self.box_Brick_Exp_Enemy_PackageGuard_37 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_PackageGuard.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_PackageGuard_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_PackageGuard_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|387917362");
    l0:SetConnections({
    });
    self.box_Delay_v5_251 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_251;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_251");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|405096306");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_251_TimeElapsed,
    });
    self.box_SpawnAI_20 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|413481998");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_20_Out,
    });
    self.box_Delay_v5_265 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_265;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_265");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|418311254");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_265_TimeElapsed,
    });
    self.box_SpawnAI_191 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_191;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_191");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|453186198");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_191_Out,
    });
    self.box_SpawnAI_8 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|558900485");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_8_Out,
    });
    self.box_Swamp_C2_FlareSTP_194 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/C2/Swamp_C2_CTP_010_Enemy.Swamp_C2_FlareSTP.debug.lua");
    l0 = self.box_Swamp_C2_FlareSTP_194;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Swamp_C2_FlareSTP_194");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|573432989");
    l0:SetConnections({
    });
    self.box_SpawnAI_44 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|610914772");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_44_Out,
    });
    self.box_Gate_v3_258 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_258;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_258");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|643661229");
    l0:SetConnections({
        -- Opened,
        [1] = self.f_box_Gate_v3_258_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_258_Out,
    });
    self.box_Delay_v5_149 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_149;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_149");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|648775614");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_149_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_149_TimeElapsed,
    });
    self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|655032677");
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
    self.box_MessageListener_v3_10 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|659940516");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_MessageListener_v3_10_Enabled,
        -- Received,
        [2] = self.f_box_MessageListener_v3_10_Received,
    });
    self.box_SpawnAI_31 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|679152870");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_31_Out,
    });
    self.box_SpawnAI_4 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|748342007");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_4_Out,
    });
    self.box_OnceOnly_v3_197 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_197;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_197");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|766049905");
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
                [0] = self.f_box_OnceOnly_v3_197_Out_0,
            },
            count = 1,
        },
    });
    self.box_Brick_Exp_Enemy_PackageGuardNearest_42 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_PackageGuardNearest.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_PackageGuardNearest_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_PackageGuardNearest_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|779214006");
    l0:SetConnections({
    });
    self.box_Brick_Exp_Enemy_PackageGuard_17 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_PackageGuard.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_PackageGuard_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_PackageGuard_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|795616632");
    l0:SetConnections({
    });
    self.box_MultipleOR_170 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_170;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_170");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|818914912");
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
        [0] = self.f_box_MultipleOR_170_Out,
    });
    self.box_ProximityTrigger_v3_48 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|847336322");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v3_48_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_48_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_48_Enter,
    });
    self.box_SpawnAI_1 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|868673914");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_1_Out,
    });
    self.box_ProximityTrigger_v3_72 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|876866894");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_72_Enter,
    });
    self.box_IndexList_v2_182 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_182;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_182");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|879403915");
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
    self.box_MultipleOR_220 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_220;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_220");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|911775805");
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
        [0] = self.f_box_MultipleOR_220_Out,
    });
    self.box_MultipleOR_21 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|914981182");
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
        [0] = self.f_box_MultipleOR_21_Out,
    });
    self.box_SpawnAI_29 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|938436149");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_29_Out,
    });
    self.box_ProximityTrigger_v3_81 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|947127807");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v3_81_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_81_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_81_Enter,
    });
    self.box_IndexList_v2_179 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_179;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_179");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|963162239");
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
                [0] = self.f_box_IndexList_v2_179_Output_0,
                [1] = self.f_box_IndexList_v2_179_Output_1,
                [2] = self.f_box_IndexList_v2_179_Output_2,
                [3] = self.f_box_IndexList_v2_179_Output_3,
                [4] = self.f_box_IndexList_v2_179_Output_4,
            },
            count = 6,
        },
    });
    self.box_MultipleOR_243 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_243;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_243");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|967434360");
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
        [0] = self.f_box_MultipleOR_243_Out,
    });
    self.box_EntityStatusListener_171 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_171;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_171");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|988713300");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_171_Loaded,
    });
    self.box_SpawnAI_36 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1006702936");
    l0:SetConnections({
    });
    self.box_Delay_v5_257 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_257;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_257");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1078260105");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_257_TimeElapsed,
    });
    self.box_Delay_v5_148 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_148;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_148");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1080461246");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_148_TimeElapsed,
    });
    self.box_MessageListener_v3_144 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_144;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_144");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1082654651");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_MessageListener_v3_144_Enabled,
        -- Received,
        [2] = self.f_box_MessageListener_v3_144_Received,
    });
    self.box_MultipleOR_145 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_145;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_145");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1163329452");
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
        [0] = self.f_box_MultipleOR_145_Out,
    });
    self.box_Brick_Exp_Common_WaveRequestGroup_99 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveRequestGroup.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveRequestGroup_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveRequestGroup_99");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1170196445");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveRequestGroup_99_NextWave,
    });
    self.box_Brick_Exp_Common_WaveRequestGroup_157 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveRequestGroup.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveRequestGroup_157;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveRequestGroup_157");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1204640713");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveRequestGroup_157_NextWave,
    });
    self.box_OnceOnly_v3_264 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_264;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_264");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1229638028");
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
                [0] = self.f_box_OnceOnly_v3_264_Out_0,
            },
            count = 1,
        },
    });
    self.box_SpawnAI_193 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_193;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_193");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1265524145");
    l0:SetConnections({
    });
    self.box_Brick_Exp_Common_WaveRequestGroup_190 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveRequestGroup.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveRequestGroup_190;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveRequestGroup_190");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1299055525");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveRequestGroup_190_NextWave,
    });
    self.box_SpawnAI_35 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1324009370");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_35_Out,
    });
    self.box_SpawnAI_176 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_176;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_176");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1392673429");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_176_Out,
    });
    self.box_SpawnAI_33 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1406806700");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_33_Out,
    });
    self.box_Brick_Exp_Common_WaveRequestGroup_40 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveRequestGroup.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveRequestGroup_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveRequestGroup_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1413878566");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveRequestGroup_40_NextWave,
    });
    self.box_SpawnAI_26 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1427293932");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_26_Out,
    });
    self.box_Delay_v5_128 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_128;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_128");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1428869944");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_128_TimeElapsed,
    });
    self.box_MultipleOR_65 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1464343446");
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
        [0] = self.f_box_MultipleOR_65_Out,
    });
    self.box_Delay_v5_250 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_250;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_250");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1480889967");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_250_TimeElapsed,
    });
    self.box_ProximityTrigger_v3_47 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1554964093");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v3_47_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_47_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_47_Enter,
    });
    self.box_SpawnAI_45 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1581569356");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_45_Out,
    });
    self.box_Gate_v3_113 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_113");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1590073042");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_113_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_113_Out,
    });
    self.box_Brick_Exp_Common_PlayerFullyDetected_167 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_PlayerFullyDetected.debug.lua");
    l0 = self.box_Brick_Exp_Common_PlayerFullyDetected_167;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_PlayerFullyDetected_167");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1591531376");
    l0:SetConnections({
        -- Detected,
        [0] = self.f_box_Brick_Exp_Common_PlayerFullyDetected_167_Detected,
        -- Detected_BothPlayers,
        [1] = self.f_box_Brick_Exp_Common_PlayerFullyDetected_167_Detected_BothPlayers,
        -- Detected_ClientOnly,
        [2] = self.f_box_Brick_Exp_Common_PlayerFullyDetected_167_Detected_ClientOnly,
        -- Detected_HostOnly,
        [3] = self.f_box_Brick_Exp_Common_PlayerFullyDetected_167_Detected_HostOnly,
        -- Disabled,
        [4] = self.f_box_Brick_Exp_Common_PlayerFullyDetected_167_Disabled,
        -- Enabled,
        [5] = self.f_box_Brick_Exp_Common_PlayerFullyDetected_167_Enabled,
    });
    self.box_Brick_Exp_Common_WaveRequestGroup_189 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveRequestGroup.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveRequestGroup_189;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveRequestGroup_189");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1610812523");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveRequestGroup_189_NextWave,
    });
    self.box_Gate_v3_256 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_256;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_256");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1612903394");
    l0:SetConnections({
        -- Opened,
        [1] = self.f_box_Gate_v3_256_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_256_Out,
    });
    self.box_Delay_v5_252 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_252;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_252");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1619083796");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_252_TimeElapsed,
    });
    self.box_SpawnAI_192 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_192;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_192");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1626880447");
    l0:SetConnections({
    });
    self.box_IndexList_v2_25 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1637581316");
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
        -- Output,
        [0] = {
            connections = {
                [0] = self.f_box_IndexList_v2_25_Output_0,
                [1] = self.f_box_IndexList_v2_25_Output_1,
                [2] = self.f_box_IndexList_v2_25_Output_2,
                [3] = self.f_box_IndexList_v2_25_Output_3,
                [4] = self.f_box_IndexList_v2_25_Output_4,
            },
            count = 5,
        },
    });
    self.box_MultipleOR_70 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1667976349");
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
        [0] = self.f_box_MultipleOR_70_Out,
    });
    self.box_SpawnAI_175 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_175;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_175");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1685286950");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_175_Out,
    });
    self.box_SpawnAI_24 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1718035702");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_24_Out,
    });
    self.box_OnceOnly_v3_244 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_244;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_244");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1720633608");
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
                [0] = self.f_box_OnceOnly_v3_244_Out_0,
            },
            count = 1,
        },
    });
    self.box_Brick_Exp_Common_WaveRequestGroup_185 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveRequestGroup.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveRequestGroup_185;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveRequestGroup_185");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1723405283");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveRequestGroup_185_NextWave,
    });
    self.box_ActivityInitialized_28 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1739305343");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_28_Out,
    });
    self.box_OnceOnly_v3_11 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1771351730");
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
                [0] = self.f_box_OnceOnly_v3_11_Out_0,
            },
            count = 1,
        },
    });
    self.box_DisplayCustomUIMsg_v5_146 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_146;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_146");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1784884445");
    l0:SetConnections({
    });
    self.box_Gate_v3_15 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1795368834");
    l0:SetConnections({
        -- Opened,
        [1] = self.f_box_Gate_v3_15_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_15_Out,
    });
    self.box_MultipleOR_261 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_261;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_261");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1827344660");
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
        [0] = self.f_box_MultipleOR_261_Out,
    });
    self.box_SpawnAI_41 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1860198415");
    l0:SetConnections({
    });
    self.box_SpawnAI_6 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1866215002");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_6_Out,
    });
    self.box_EntityStatusListener_177 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_177;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_177");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1866342840");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_177_Loaded,
    });
    self.box_MessageListener_v3_150 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_150;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_150");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1900820010");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_MessageListener_v3_150_Enabled,
        -- Received,
        [2] = self.f_box_MessageListener_v3_150_Received,
    });
    self.box_Delay_v5_183 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_183;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_183");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1920306708");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_183_TimeElapsed,
    });
    self.box_MultipleOR_263 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_263;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_263");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1921324247");
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
        [0] = self.f_box_MultipleOR_263_Out,
    });
    self.box_OnceOnly_v3_240 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_240;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_240");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1928168253");
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
                [0] = self.f_box_OnceOnly_v3_240_Out_0,
            },
            count = 1,
        },
    });
    self.box_IndexList_v2_27 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1928357601");
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
                [0] = self.f_box_IndexList_v2_27_Output_0,
                [1] = self.f_box_IndexList_v2_27_Output_1,
                [2] = self.f_box_IndexList_v2_27_Output_2,
            },
            count = 3,
        },
    });
    self.box_SpawnAI_7 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1938040670");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_7_Out,
    });
    self.box_MultipleOR_126 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_126;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_126");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|2014542631");
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
        [0] = self.f_box_MultipleOR_126_Out,
    });
    self.box_IndexList_v2_174 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_174;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_174");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|2022772928");
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
                [1] = self.f_box_IndexList_v2_174_Output_1,
                [2] = self.f_box_IndexList_v2_174_Output_2,
            },
            count = 3,
        },
    });
    self.box_Brick_Exp_Common_WaveRequestGroup_187 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveRequestGroup.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveRequestGroup_187;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveRequestGroup_187");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|2036891380");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveRequestGroup_187_NextWave,
    });
    self.box_Brick_Exp_Common_WaveRequestGroup_186 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveRequestGroup.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveRequestGroup_186;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveRequestGroup_186");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|2071477503");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveRequestGroup_186_NextWave,
    });
    self.box_OnceOnly_v3_247 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_247;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_247");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|2080567403");
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
                [0] = self.f_box_OnceOnly_v3_247_Out_0,
            },
            count = 1,
        },
    });
    self.box_Brick_Exp_Common_BasicSetups_58 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_BasicSetups.debug.lua");
    l0 = self.box_Brick_Exp_Common_BasicSetups_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_BasicSetups_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|2103004486");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Brick_Exp_Common_BasicSetups_58_Out,
    });
    self.box_Brick_Exp_Common_WaveRequestGroup_208 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveRequestGroup.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveRequestGroup_208;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveRequestGroup_208");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|2117218941");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveRequestGroup_208_NextWave,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_56;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|462917441", "462917441", "Swamp_C2_CTP_010_Enemy", "In", "box_ActivityAcknowledgeGate_56.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    
end;

function export:f_box_Simple_Node_134_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_48();
    l0 = self.box_ProximityTrigger_v3_48;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|306009248", "306009248", "Swamp_C2_CTP_010_Enemy", "box_Simple_Node_134.Out", "box_ProximityTrigger_v3_48.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_IndexList_v2_179();
    l0 = self.box_IndexList_v2_179;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|198110377", "198110377", "Swamp_C2_CTP_010_Enemy", "box_Simple_Node_134.Out", "box_IndexList_v2_179.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_135_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetString_v2_215();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1671600855", "1671600855", "Swamp_C2_CTP_010_Enemy", "box_Simple_Node_135.Out", "box_SetString_v2_215.FromString", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromString
    l0:Exec(5, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_139_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetString_v2_226();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|794831639", "794831639", "Swamp_C2_CTP_010_Enemy", "box_Simple_Node_139.Out", "box_SetString_v2_226.FromString", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromString
    l0:Exec(5, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_196_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuardNearest_42();
    l0 = self.box_Brick_Exp_Enemy_PackageGuardNearest_42;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|2083721154", "2083721154", "Swamp_C2_CTP_010_Enemy", "box_Simple_Node_196.Out", "box_Brick_Exp_Enemy_PackageGuardNearest_42.PackagePicked", clone:GetLuaBox(), l0:GetLuaBox());
    -- PackagePicked
    l0:Exec(0, params);
    params = self:OnEnter_box_Delay_v5_257();
    l0 = self.box_Delay_v5_257;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|493055538", "493055538", "Swamp_C2_CTP_010_Enemy", "box_Simple_Node_196.Out", "box_Delay_v5_257.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_195_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_260();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|122034886", "122034886", "Swamp_C2_CTP_010_Enemy", "box_Simple_Node_195.Out", "box_OutputOrder_v2_260.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_Delay_v5_14();
    l0 = self.box_Delay_v5_14;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1900994738", "1900994738", "Swamp_C2_CTP_010_Enemy", "box_Simple_Node_195.Out", "box_Delay_v5_14.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_OutputOrder_v2_158();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1979779704", "1979779704", "Swamp_C2_CTP_010_Enemy", "box_Simple_Node_195.Out", "box_OutputOrder_v2_158.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_Gate_v3_113();
    l0 = self.box_Gate_v3_113;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|624719067", "624719067", "Swamp_C2_CTP_010_Enemy", "box_Simple_Node_195.Out", "box_Gate_v3_113.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Delay_v5_128();
    l0 = self.box_Delay_v5_128;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1126262871", "1126262871", "Swamp_C2_CTP_010_Enemy", "box_Simple_Node_195.Out", "box_Delay_v5_128.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_138_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_61();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|129501316", "129501316", "Swamp_C2_CTP_010_Enemy", "box_Simple_Node_138.Out", "box_SetBoolean_v2_61.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_136_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetString_v2_236();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1478873892", "1478873892", "Swamp_C2_CTP_010_Enemy", "box_Simple_Node_136.Out", "box_SetString_v2_236.FromString", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromString
    l0:Exec(5, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_137_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetString_v2_231();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1185960170", "1185960170", "Swamp_C2_CTP_010_Enemy", "box_Simple_Node_137.Out", "box_SetString_v2_231.FromString", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromString
    l0:Exec(5, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_222_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveRequestGroup_157();
    l0 = self.box_Brick_Exp_Common_WaveRequestGroup_157;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|242964980", "242964980", "Swamp_C2_CTP_010_Enemy", "box_Simple_Node_222.Out", "box_Brick_Exp_Common_WaveRequestGroup_157.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_Brick_Exp_Common_WaveRequestGroup_22_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_155();
    l0 = self.box_Brick_Exp_Common_WaveRequestGroup_22;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1141353663", "1141353663", "Swamp_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveRequestGroup_22.NextWave", "box_SetInteger_v2_155.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_178_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_171();
    l0 = self.box_SpawnAI_178;
    l1 = self.box_EntityStatusListener_171;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1347529648", "1347529648", "Swamp_C2_CTP_010_Enemy", "box_SpawnAI_178.Out", "box_EntityStatusListener_171.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_62_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_62;
    l1 = self.box_ActivityInitialized_28;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|964425865", "964425865", "Swamp_C2_CTP_010_Enemy", "box_MultipleOR_62.Out", "box_ActivityInitialized_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_SpawnAI_39_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_45();
    l0 = self.box_SpawnAI_39;
    l1 = self.box_SpawnAI_45;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|2129164163", "2129164163", "Swamp_C2_CTP_010_Enemy", "box_SpawnAI_39.Out", "box_SpawnAI_45.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Compare_Integers_246_A_eq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_247;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|966428576", "966428576", "Swamp_C2_CTP_010_Enemy", "box_Compare_Integers_246.A_eq_B", "box_OnceOnly_v3_247.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetInteger_v2_154_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_154_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveRequestGroup_22();
    l0 = self.box_Brick_Exp_Common_WaveRequestGroup_22;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|2036083940", "2036083940", "Swamp_C2_CTP_010_Enemy", "box_SetInteger_v2_154.Out", "box_Brick_Exp_Common_WaveRequestGroup_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_SetString_v2_233_Out()
    local params, l0;
    self:OnExit_box_SetString_v2_233_Out();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_256();
    l0 = self.box_Gate_v3_256;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|476429278", "476429278", "Swamp_C2_CTP_010_Enemy", "box_SetString_v2_233.Out", "box_Gate_v3_256.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_SetInteger_v2_63_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_63_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_64();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|2039779252", "2039779252", "Swamp_C2_CTP_010_Enemy", "box_SetInteger_v2_63.Out", "box_SetEntity_v2_64.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_74_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_74_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_139();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|659131289", "659131289", "Swamp_C2_CTP_010_Enemy", "box_SetBoolean_v2_74.Out", "box_Simple_Node_139.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_50_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_70;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|622566477", "622566477", "Swamp_C2_CTP_010_Enemy", "box_OutputOrder_v2_50.Out", "box_MultipleOR_70.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_50_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_34();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|239499147", "239499147", "Swamp_C2_CTP_010_Enemy", "box_OutputOrder_v2_50.Out", "box_SetBoolean_v2_34.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_14_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_148();
    l0 = self.box_Delay_v5_14;
    l1 = self.box_Delay_v5_148;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1886849028", "1886849028", "Swamp_C2_CTP_010_Enemy", "box_Delay_v5_14.Started", "box_Delay_v5_148.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_14_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_12();
    l0 = self.box_Delay_v5_14;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1371845183", "1371845183", "Swamp_C2_CTP_010_Enemy", "box_Delay_v5_14.Stopped", "box_OutputOrder_v2_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_14_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_151();
    l0 = self.box_Delay_v5_14;
    l1 = self.box_Gate_v3_151;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1571987433", "1571987433", "Swamp_C2_CTP_010_Enemy", "box_Delay_v5_14.TimeElapsed", "box_Gate_v3_151.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_32_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_5();
    l0 = self.box_SpawnAI_32;
    l1 = self.box_SpawnAI_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|885593864", "885593864", "Swamp_C2_CTP_010_Enemy", "box_SpawnAI_32.Out", "box_SpawnAI_5.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ActivityAcknowledgeGate_56_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_56;
    l1 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|2028379926", "2028379926", "Swamp_C2_CTP_010_Enemy", "box_ActivityAcknowledgeGate_56.Acknowledged", "box_MultipleOR_62.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_56_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_56;
    l1 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1879313536", "1879313536", "Swamp_C2_CTP_010_Enemy", "box_ActivityAcknowledgeGate_56.Reloaded", "box_MultipleOR_62.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SpawnAI_19_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_8();
    l0 = self.box_SpawnAI_19;
    l1 = self.box_SpawnAI_8;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|642925943", "642925943", "Swamp_C2_CTP_010_Enemy", "box_SpawnAI_19.Out", "box_SpawnAI_8.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_173_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_176();
    l0 = self.box_EntityStatusListener_173;
    l1 = self.box_SpawnAI_176;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|2146152337", "2146152337", "Swamp_C2_CTP_010_Enemy", "box_EntityStatusListener_173.Loaded", "box_SpawnAI_176.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SetString_v2_237_Out()
    local params, l0;
    self:OnExit_box_SetString_v2_237_Out();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetString_v2_235();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|665387614", "665387614", "Swamp_C2_CTP_010_Enemy", "box_SetString_v2_237.Out", "box_SetString_v2_235.FromString", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromString
    l0:Exec(5, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_30_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_35();
    l0 = self.box_IndexList_v2_30;
    l1 = self.box_SpawnAI_35;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1211029754", "1211029754", "Swamp_C2_CTP_010_Enemy", "box_IndexList_v2_30.Output", "box_SpawnAI_35.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_30_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_19();
    l0 = self.box_IndexList_v2_30;
    l1 = self.box_SpawnAI_19;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|62928033", "62928033", "Swamp_C2_CTP_010_Enemy", "box_IndexList_v2_30.Output", "box_SpawnAI_19.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_30_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_33();
    l0 = self.box_IndexList_v2_30;
    l1 = self.box_SpawnAI_33;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1915083062", "1915083062", "Swamp_C2_CTP_010_Enemy", "box_IndexList_v2_30.Output", "box_SpawnAI_33.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_7();
    l0 = self.box_SpawnAI_5;
    l1 = self.box_SpawnAI_7;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|327365978", "327365978", "Swamp_C2_CTP_010_Enemy", "box_SpawnAI_5.Out", "box_SpawnAI_7.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_118_Opened()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_262();
    l0 = self.box_Gate_v3_118;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1244372927", "1244372927", "Swamp_C2_CTP_010_Enemy", "box_Gate_v3_118.Opened", "box_Compare_Boolean_262.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_118_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_118;
    l1 = self.box_MultipleOR_263;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|202658840", "202658840", "Swamp_C2_CTP_010_Enemy", "box_Gate_v3_118.Out", "box_MultipleOR_263.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_71_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_50();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|439627283", "439627283", "Swamp_C2_CTP_010_Enemy", "box_Compare_Boolean_71.A_is_False", "box_OutputOrder_v2_50.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_172_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_173();
    l0 = self.box_EntityStatusListener_173;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|118117522", "118117522", "Swamp_C2_CTP_010_Enemy", "box_OutputOrder_v2_172.Out", "box_EntityStatusListener_173.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_172_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_171();
    l0 = self.box_EntityStatusListener_171;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1299671689", "1299671689", "Swamp_C2_CTP_010_Enemy", "box_OutputOrder_v2_172.Out", "box_EntityStatusListener_171.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_172_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_177();
    l0 = self.box_EntityStatusListener_177;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1323179532", "1323179532", "Swamp_C2_CTP_010_Enemy", "box_OutputOrder_v2_172.Out", "box_EntityStatusListener_177.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetInteger_v2_124_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_124_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveRequestGroup_99();
    l0 = self.box_Brick_Exp_Common_WaveRequestGroup_99;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|308384745", "308384745", "Swamp_C2_CTP_010_Enemy", "box_SetInteger_v2_124.Out", "box_Brick_Exp_Common_WaveRequestGroup_99.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_IndexList_v2_55_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_57();
    l0 = self.box_IndexList_v2_55;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|107802734", "107802734", "Swamp_C2_CTP_010_Enemy", "box_IndexList_v2_55.Output", "box_SetInteger_v2_57.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_55_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_49();
    l0 = self.box_IndexList_v2_55;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1815025658", "1815025658", "Swamp_C2_CTP_010_Enemy", "box_IndexList_v2_55.Output", "box_SetInteger_v2_49.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_55_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_BasicSetups_58();
    l0 = self.box_IndexList_v2_55;
    l1 = self.box_Brick_Exp_Common_BasicSetups_58;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1841559535", "1841559535", "Swamp_C2_CTP_010_Enemy", "box_IndexList_v2_55.Output", "box_Brick_Exp_Common_BasicSetups_58.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Compare_Boolean_262_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_263;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1757560336", "1757560336", "Swamp_C2_CTP_010_Enemy", "box_Compare_Boolean_262.A_is_True", "box_MultipleOR_263.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetString_v2_232_Out()
    local params, l0;
    self:OnExit_box_SetString_v2_232_Out();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetString_v2_230();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1429451715", "1429451715", "Swamp_C2_CTP_010_Enemy", "box_SetString_v2_232.Out", "box_SetString_v2_230.FromString", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromString
    l0:Exec(5, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_151_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_151;
    l1 = self.box_OnceOnly_v3_197;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1677466469", "1677466469", "Swamp_C2_CTP_010_Enemy", "box_Gate_v3_151.Out", "box_OnceOnly_v3_197.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetString_v2_224_Out()
    local params, l0;
    self:OnExit_box_SetString_v2_224_Out();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetString_v2_227();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1723726776", "1723726776", "Swamp_C2_CTP_010_Enemy", "box_SetString_v2_224.Out", "box_SetString_v2_227.FromString", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromString
    l0:Exec(5, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_32();
    l0 = self.box_SpawnAI_9;
    l1 = self.box_SpawnAI_32;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|2122318901", "2122318901", "Swamp_C2_CTP_010_Enemy", "box_SpawnAI_9.Out", "box_SpawnAI_32.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_251_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_242();
    l0 = self.box_Delay_v5_251;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1084618896", "1084618896", "Swamp_C2_CTP_010_Enemy", "box_Delay_v5_251.TimeElapsed", "box_SetContextualStrategy_242.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_64_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_64_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_65;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1994155688", "1994155688", "Swamp_C2_CTP_010_Enemy", "box_SetEntity_v2_64.Out", "box_MultipleOR_65.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetBoolean_v2_80_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_80_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_137();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|917425224", "917425224", "Swamp_C2_CTP_010_Enemy", "box_SetBoolean_v2_80.Out", "box_Simple_Node_137.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_20_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_36();
    l0 = self.box_SpawnAI_20;
    l1 = self.box_SpawnAI_36;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|460320800", "460320800", "Swamp_C2_CTP_010_Enemy", "box_SpawnAI_20.Out", "box_SpawnAI_36.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_265_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_166();
    l0 = self.box_Delay_v5_265;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|350915369", "350915369", "Swamp_C2_CTP_010_Enemy", "box_Delay_v5_265.TimeElapsed", "box_SetContextualStrategy_166.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_191_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_193();
    l0 = self.box_SpawnAI_191;
    l1 = self.box_SpawnAI_193;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|752959613", "752959613", "Swamp_C2_CTP_010_Enemy", "box_SpawnAI_191.Out", "box_SpawnAI_193.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SetString_v2_234_Out()
    local params, l0;
    self:OnExit_box_SetString_v2_234_Out();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetString_v2_237();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|488327678", "488327678", "Swamp_C2_CTP_010_Enemy", "box_SetString_v2_234.Out", "box_SetString_v2_237.FromString", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromString
    l0:Exec(5, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_184_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_184_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveRequestGroup_208();
    l0 = self.box_Brick_Exp_Common_WaveRequestGroup_208;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1350631148", "1350631148", "Swamp_C2_CTP_010_Enemy", "box_SetInteger_v2_184.Out", "box_Brick_Exp_Common_WaveRequestGroup_208.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_SetString_v2_223_Out()
    local params, l0;
    self:OnExit_box_SetString_v2_223_Out();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_118();
    l0 = self.box_Gate_v3_118;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1181979196", "1181979196", "Swamp_C2_CTP_010_Enemy", "box_SetString_v2_223.Out", "box_Gate_v3_118.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_SpawnAI_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_31();
    l0 = self.box_SpawnAI_8;
    l1 = self.box_SpawnAI_31;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1736967105", "1736967105", "Swamp_C2_CTP_010_Enemy", "box_SpawnAI_8.Out", "box_SpawnAI_31.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_44_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_41();
    l0 = self.box_SpawnAI_44;
    l1 = self.box_SpawnAI_41;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1597507718", "1597507718", "Swamp_C2_CTP_010_Enemy", "box_SpawnAI_44.Out", "box_SpawnAI_41.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SetInteger_v2_51_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_51_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_63();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1382692924", "1382692924", "Swamp_C2_CTP_010_Enemy", "box_SetInteger_v2_51.Out", "box_SetInteger_v2_63.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_248_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_164();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|842582104", "842582104", "Swamp_C2_CTP_010_Enemy", "box_SetContextualStrategy_248.Out", "box_SetContextualStrategy_164.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_258_Opened()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_241();
    l0 = self.box_Gate_v3_258;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|464402694", "464402694", "Swamp_C2_CTP_010_Enemy", "box_Gate_v3_258.Opened", "box_Compare_Boolean_241.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_258_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_258;
    l1 = self.box_MultipleOR_261;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|2059228943", "2059228943", "Swamp_C2_CTP_010_Enemy", "box_Gate_v3_258.Out", "box_MultipleOR_261.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_149_Started()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_146();
    l0 = self.box_Delay_v5_149;
    l1 = self.box_DisplayCustomUIMsg_v5_146;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|731109270", "731109270", "Swamp_C2_CTP_010_Enemy", "box_Delay_v5_149.Started", "box_DisplayCustomUIMsg_v5_146.Display", l0:GetLuaBox(), l1:GetLuaBox());
    -- Display
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_149_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_149;
    l1 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|304752253", "304752253", "Swamp_C2_CTP_010_Enemy", "box_Delay_v5_149.TimeElapsed", "box_MultipleOR_21.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_154();
    l0 = self.box_MultipleOR_3;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|2040281667", "2040281667", "Swamp_C2_CTP_010_Enemy", "box_MultipleOR_3.Out", "box_SetInteger_v2_154.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_10_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MessageListener_v3_144();
    l0 = self.box_MessageListener_v3_10;
    l1 = self.box_MessageListener_v3_144;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|2050835549", "2050835549", "Swamp_C2_CTP_010_Enemy", "box_MessageListener_v3_10.Enabled", "box_MessageListener_v3_144.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MessageListener_v3_10_Received()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_196();
    l0 = self.box_MessageListener_v3_10;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1821380441", "1821380441", "Swamp_C2_CTP_010_Enemy", "box_MessageListener_v3_10.Received", "box_Simple_Node_196.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetExpeditionGameplayElements_54_Out()
    local params, l0;
    self:OnExit_box_GetExpeditionGameplayElements_54_Out();
    l0 = Boxes[GetPathID("Domino/System/GetExpeditionGameplayElements.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_59();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1523141756", "1523141756", "Swamp_C2_CTP_010_Enemy", "box_GetExpeditionGameplayElements_54.Out", "box_IntegerArithmetics_v2_59.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_31_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_1();
    l0 = self.box_SpawnAI_31;
    l1 = self.box_SpawnAI_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|750080550", "750080550", "Swamp_C2_CTP_010_Enemy", "box_SpawnAI_31.Out", "box_SpawnAI_1.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_2_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_16();
    l0 = self.box_PositionModifier_v2_16;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1716769466", "1716769466", "Swamp_C2_CTP_010_Enemy", "box_OutputOrder_v2_2.Out", "box_PositionModifier_v2_16.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_2_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_Swamp_C2_FlareSTP_194;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|354515592", "354515592", "Swamp_C2_CTP_010_Enemy", "box_OutputOrder_v2_2.Out", "box_Swamp_C2_FlareSTP_194.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_2_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1441128859", "1441128859", "Swamp_C2_CTP_010_Enemy", "box_OutputOrder_v2_2.Out", "box_OnceOnly_v3_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_2_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_PlayerFullyDetected_167();
    l0 = self.box_Brick_Exp_Common_PlayerFullyDetected_167;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|506779585", "506779585", "Swamp_C2_CTP_010_Enemy", "box_OutputOrder_v2_2.Out", "box_Brick_Exp_Common_PlayerFullyDetected_167.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_2_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RadioModifier_v3_266();
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1818150481", "1818150481", "Swamp_C2_CTP_010_Enemy", "box_OutputOrder_v2_2.Out", "box_RadioModifier_v3_266.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_249_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_165();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1667048538", "1667048538", "Swamp_C2_CTP_010_Enemy", "box_SetContextualStrategy_249.Out", "box_SetContextualStrategy_165.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_147_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_147_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveRequestGroup_40();
    l0 = self.box_Brick_Exp_Common_WaveRequestGroup_40;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1239598382", "1239598382", "Swamp_C2_CTP_010_Enemy", "box_SetInteger_v2_147.Out", "box_Brick_Exp_Common_WaveRequestGroup_40.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_SpawnAI_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_192();
    l0 = self.box_SpawnAI_4;
    l1 = self.box_SpawnAI_192;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1997843688", "1997843688", "Swamp_C2_CTP_010_Enemy", "box_SpawnAI_4.Out", "box_SpawnAI_192.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_197_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_149();
    l0 = self.box_OnceOnly_v3_197;
    l1 = self.box_Delay_v5_149;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1162162554", "1162162554", "Swamp_C2_CTP_010_Enemy", "box_OnceOnly_v3_197.Out", "box_Delay_v5_149.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Compare_Boolean_241_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_261;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1522361241", "1522361241", "Swamp_C2_CTP_010_Enemy", "box_Compare_Boolean_241.A_is_True", "box_MultipleOR_261.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetInteger_v2_46_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_46_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_53();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|849338544", "849338544", "Swamp_C2_CTP_010_Enemy", "box_SetInteger_v2_46.Out", "box_SetInteger_v2_53.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_60_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_60_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_65;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|492737934", "492737934", "Swamp_C2_CTP_010_Enemy", "box_SetEntity_v2_60.Out", "box_MultipleOR_65.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_170_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_172();
    l0 = self.box_MultipleOR_170;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|630682054", "630682054", "Swamp_C2_CTP_010_Enemy", "box_MultipleOR_170.Out", "box_OutputOrder_v2_172.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetActivityFact_160_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_14();
    l0 = self.box_Delay_v5_14;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|430149583", "430149583", "Swamp_C2_CTP_010_Enemy", "box_SetActivityFact_160.Out", "box_Delay_v5_14.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SetInteger_v2_49_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_49_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_51();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|2103928659", "2103928659", "Swamp_C2_CTP_010_Enemy", "box_SetInteger_v2_49.Out", "box_SetInteger_v2_51.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_48_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_47();
    l0 = self.box_ProximityTrigger_v3_48;
    l1 = self.box_ProximityTrigger_v3_47;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|239395699", "239395699", "Swamp_C2_CTP_010_Enemy", "box_ProximityTrigger_v3_48.Disabled", "box_ProximityTrigger_v3_47.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v3_48_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_47();
    l0 = self.box_ProximityTrigger_v3_48;
    l1 = self.box_ProximityTrigger_v3_47;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|324382968", "324382968", "Swamp_C2_CTP_010_Enemy", "box_ProximityTrigger_v3_48.Enabled", "box_ProximityTrigger_v3_47.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_48_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_71();
    l0 = self.box_ProximityTrigger_v3_48;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1070126389", "1070126389", "Swamp_C2_CTP_010_Enemy", "box_ProximityTrigger_v3_48.Enter", "box_Compare_Boolean_71.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_53_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_53_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_60();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1922204579", "1922204579", "Swamp_C2_CTP_010_Enemy", "box_SetInteger_v2_53.Out", "box_SetEntity_v2_60.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_39();
    l0 = self.box_SpawnAI_1;
    l1 = self.box_SpawnAI_39;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|16373951", "16373951", "Swamp_C2_CTP_010_Enemy", "box_SpawnAI_1.Out", "box_SpawnAI_39.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SetInteger_v2_57_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_57_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_46();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1333203224", "1333203224", "Swamp_C2_CTP_010_Enemy", "box_SetInteger_v2_57.Out", "box_SetInteger_v2_46.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_72_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_73();
    l0 = self.box_ProximityTrigger_v3_72;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|270185413", "270185413", "Swamp_C2_CTP_010_Enemy", "box_ProximityTrigger_v3_72.Enter", "box_Compare_Boolean_73.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_182_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_152();
    l0 = self.box_IndexList_v2_182;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1744561044", "1744561044", "Swamp_C2_CTP_010_Enemy", "box_IndexList_v2_182.Output", "box_MissionBlockLayer_152.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_182_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_153();
    l0 = self.box_IndexList_v2_182;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|540863326", "540863326", "Swamp_C2_CTP_010_Enemy", "box_IndexList_v2_182.Output", "box_MissionBlockLayer_153.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_182_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_159();
    l0 = self.box_IndexList_v2_182;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1103014814", "1103014814", "Swamp_C2_CTP_010_Enemy", "box_IndexList_v2_182.Output", "box_MissionBlockLayer_159.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_13_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_145;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1970618912", "1970618912", "Swamp_C2_CTP_010_Enemy", "box_Compare_Boolean_13.A_is_True", "box_MultipleOR_145.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetString_v2_219_Out()
    local params, l0;
    self:OnExit_box_SetString_v2_219_Out();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetString_v2_221();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1352879452", "1352879452", "Swamp_C2_CTP_010_Enemy", "box_SetString_v2_219.Out", "box_SetString_v2_221.FromString", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromString
    l0:Exec(5, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetString_v2_231_Out()
    local params, l0;
    self:OnExit_box_SetString_v2_231_Out();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetString_v2_229();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|538505941", "538505941", "Swamp_C2_CTP_010_Enemy", "box_SetString_v2_231.Out", "box_SetString_v2_229.FromString", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromString
    l0:Exec(5, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_220_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_181();
    l0 = self.box_MultipleOR_220;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1261582704", "1261582704", "Swamp_C2_CTP_010_Enemy", "box_MultipleOR_220.Out", "box_SetInteger_v2_181.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_21_Out()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_146();
    l0 = self.box_MultipleOR_21;
    l1 = self.box_DisplayCustomUIMsg_v5_146;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|2008104158", "2008104158", "Swamp_C2_CTP_010_Enemy", "box_MultipleOR_21.Out", "box_DisplayCustomUIMsg_v5_146.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_29_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_6();
    l0 = self.box_SpawnAI_29;
    l1 = self.box_SpawnAI_6;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|361532326", "361532326", "Swamp_C2_CTP_010_Enemy", "box_SpawnAI_29.Out", "box_SpawnAI_6.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_81_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_72();
    l0 = self.box_ProximityTrigger_v3_81;
    l1 = self.box_ProximityTrigger_v3_72;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1443372674", "1443372674", "Swamp_C2_CTP_010_Enemy", "box_ProximityTrigger_v3_81.Disabled", "box_ProximityTrigger_v3_72.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v3_81_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_72();
    l0 = self.box_ProximityTrigger_v3_81;
    l1 = self.box_ProximityTrigger_v3_72;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1428047691", "1428047691", "Swamp_C2_CTP_010_Enemy", "box_ProximityTrigger_v3_81.Enabled", "box_ProximityTrigger_v3_72.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_81_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_76();
    l0 = self.box_ProximityTrigger_v3_81;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1417088801", "1417088801", "Swamp_C2_CTP_010_Enemy", "box_ProximityTrigger_v3_81.Enter", "box_Compare_Boolean_76.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_179_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveRequestGroup_157();
    l0 = self.box_IndexList_v2_179;
    l1 = self.box_Brick_Exp_Common_WaveRequestGroup_157;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1944174612", "1944174612", "Swamp_C2_CTP_010_Enemy", "box_IndexList_v2_179.Output", "box_Brick_Exp_Common_WaveRequestGroup_157.CleanupOnly", l0:GetLuaBox(), l1:GetLuaBox());
    -- CleanupOnly
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_179_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveRequestGroup_99();
    l0 = self.box_IndexList_v2_179;
    l1 = self.box_Brick_Exp_Common_WaveRequestGroup_99;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|102411462", "102411462", "Swamp_C2_CTP_010_Enemy", "box_IndexList_v2_179.Output", "box_Brick_Exp_Common_WaveRequestGroup_99.CleanupOnly", l0:GetLuaBox(), l1:GetLuaBox());
    -- CleanupOnly
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_179_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveRequestGroup_185();
    l0 = self.box_IndexList_v2_179;
    l1 = self.box_Brick_Exp_Common_WaveRequestGroup_185;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1669417094", "1669417094", "Swamp_C2_CTP_010_Enemy", "box_IndexList_v2_179.Output", "box_Brick_Exp_Common_WaveRequestGroup_185.CleanupOnly", l0:GetLuaBox(), l1:GetLuaBox());
    -- CleanupOnly
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_179_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveRequestGroup_190();
    l0 = self.box_IndexList_v2_179;
    l1 = self.box_Brick_Exp_Common_WaveRequestGroup_190;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1075796078", "1075796078", "Swamp_C2_CTP_010_Enemy", "box_IndexList_v2_179.Output", "box_Brick_Exp_Common_WaveRequestGroup_190.CleanupOnly", l0:GetLuaBox(), l1:GetLuaBox());
    -- CleanupOnly
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_179_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveRequestGroup_208();
    l0 = self.box_IndexList_v2_179;
    l1 = self.box_Brick_Exp_Common_WaveRequestGroup_208;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|964347707", "964347707", "Swamp_C2_CTP_010_Enemy", "box_IndexList_v2_179.Output", "box_Brick_Exp_Common_WaveRequestGroup_208.CleanupOnly", l0:GetLuaBox(), l1:GetLuaBox());
    -- CleanupOnly
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_243_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_239();
    l0 = self.box_MultipleOR_243;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1109588056", "1109588056", "Swamp_C2_CTP_010_Enemy", "box_MultipleOR_243.Out", "box_Compare_Integers_239.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_38();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|8851524", "8851524", "Swamp_C2_CTP_010_Enemy", "box_OutputOrder_v2_18.Out", "box_GetPlayerGroup_v2_38.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_168();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|439450044", "439450044", "Swamp_C2_CTP_010_Enemy", "box_OutputOrder_v2_18.Out", "box_OutputOrder_v2_168.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_30();
    l0 = self.box_IndexList_v2_30;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1438029920", "1438029920", "Swamp_C2_CTP_010_Enemy", "box_OutputOrder_v2_18.Out", "box_IndexList_v2_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_18_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_27();
    l0 = self.box_IndexList_v2_27;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1867447572", "1867447572", "Swamp_C2_CTP_010_Enemy", "box_OutputOrder_v2_18.Out", "box_IndexList_v2_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_18_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_182();
    l0 = self.box_IndexList_v2_182;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|901750050", "901750050", "Swamp_C2_CTP_010_Enemy", "box_OutputOrder_v2_18.Out", "box_IndexList_v2_182.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_260_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_118();
    l0 = self.box_Gate_v3_118;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|2121245462", "2121245462", "Swamp_C2_CTP_010_Enemy", "box_OutputOrder_v2_260.Out", "box_Gate_v3_118.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_260_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_15();
    l0 = self.box_Gate_v3_15;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|223556637", "223556637", "Swamp_C2_CTP_010_Enemy", "box_OutputOrder_v2_260.Out", "box_Gate_v3_15.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_260_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_256();
    l0 = self.box_Gate_v3_256;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|516302246", "516302246", "Swamp_C2_CTP_010_Enemy", "box_OutputOrder_v2_260.Out", "box_Gate_v3_256.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_260_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_258();
    l0 = self.box_Gate_v3_258;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1699063391", "1699063391", "Swamp_C2_CTP_010_Enemy", "box_OutputOrder_v2_260.Out", "box_Gate_v3_258.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_78_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_70;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1844941846", "1844941846", "Swamp_C2_CTP_010_Enemy", "box_OutputOrder_v2_78.Out", "box_MultipleOR_70.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_78_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_80();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|546884374", "546884374", "Swamp_C2_CTP_010_Enemy", "box_OutputOrder_v2_78.Out", "box_SetBoolean_v2_80.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_171_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_178();
    l0 = self.box_EntityStatusListener_171;
    l1 = self.box_SpawnAI_178;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1944866830", "1944866830", "Swamp_C2_CTP_010_Enemy", "box_EntityStatusListener_171.Loaded", "box_SpawnAI_178.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SetBoolean_v2_79_Out()
    self:OnExit_box_SetBoolean_v2_79_Out();
end;

function export:f_box_SetString_v2_235_Out()
    local params, l0;
    self:OnExit_box_SetString_v2_235_Out();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetString_v2_238();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|2000477750", "2000477750", "Swamp_C2_CTP_010_Enemy", "box_SetString_v2_235.Out", "box_SetString_v2_238.FromString", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromString
    l0:Exec(5, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_155_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_155_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveRequestGroup_187();
    l0 = self.box_Brick_Exp_Common_WaveRequestGroup_187;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|830944327", "830944327", "Swamp_C2_CTP_010_Enemy", "box_SetInteger_v2_155.Out", "box_Brick_Exp_Common_WaveRequestGroup_187.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_Compare_Boolean_200_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_220;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1446396223", "1446396223", "Swamp_C2_CTP_010_Enemy", "box_Compare_Boolean_200.A_is_False", "box_MultipleOR_220.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_200_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_126;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1721280182", "1721280182", "Swamp_C2_CTP_010_Enemy", "box_Compare_Boolean_200.A_is_True", "box_MultipleOR_126.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetBoolean_v2_67_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_67_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_82();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|902710329", "902710329", "Swamp_C2_CTP_010_Enemy", "box_SetBoolean_v2_67.Out", "box_SetBoolean_v2_82.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_257_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_48();
    l0 = self.box_Delay_v5_257;
    l1 = self.box_ProximityTrigger_v3_48;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|459448025", "459448025", "Swamp_C2_CTP_010_Enemy", "box_Delay_v5_257.TimeElapsed", "box_ProximityTrigger_v3_48.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_148_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_148;
    l1 = self.box_Swamp_C2_FlareSTP_194;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1880380972", "1880380972", "Swamp_C2_CTP_010_Enemy", "box_Delay_v5_148.TimeElapsed", "box_Swamp_C2_FlareSTP_194.Cleanup", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cleanup
    l1:Exec(0, {
    });
end;

function export:f_box_MessageListener_v3_144_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = self.box_MessageListener_v3_144;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|264959298", "264959298", "Swamp_C2_CTP_010_Enemy", "box_MessageListener_v3_144.Enabled", "box_OutputOrder_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_144_Received()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_134();
    l0 = self.box_MessageListener_v3_144;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|52248596", "52248596", "Swamp_C2_CTP_010_Enemy", "box_MessageListener_v3_144.Received", "box_Simple_Node_134.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_181_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_181_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveRequestGroup_190();
    l0 = self.box_Brick_Exp_Common_WaveRequestGroup_190;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|759087862", "759087862", "Swamp_C2_CTP_010_Enemy", "box_SetInteger_v2_181.Out", "box_Brick_Exp_Common_WaveRequestGroup_190.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_145_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_245();
    l0 = self.box_MultipleOR_145;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|874374482", "874374482", "Swamp_C2_CTP_010_Enemy", "box_MultipleOR_145.Out", "box_Compare_Integers_245.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveRequestGroup_99_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_180();
    l0 = self.box_Brick_Exp_Common_WaveRequestGroup_99;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|517670713", "517670713", "Swamp_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveRequestGroup_99.NextWave", "box_SetInteger_v2_180.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveRequestGroup_157_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveRequestGroup_157;
    l1 = self.box_MultipleOR_126;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|775427220", "775427220", "Swamp_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveRequestGroup_157.NextWave", "box_MultipleOR_126.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetString_v2_226_Out()
    local params, l0;
    self:OnExit_box_SetString_v2_226_Out();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetString_v2_224();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1545911122", "1545911122", "Swamp_C2_CTP_010_Enemy", "box_SetString_v2_226.Out", "box_SetString_v2_224.FromString", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromString
    l0:Exec(5, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_264_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_265();
    l0 = self.box_OnceOnly_v3_264;
    l1 = self.box_Delay_v5_265;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|175086098", "175086098", "Swamp_C2_CTP_010_Enemy", "box_OnceOnly_v3_264.Out", "box_Delay_v5_265.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SetBoolean_v2_82_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_82_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_79();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|616275650", "616275650", "Swamp_C2_CTP_010_Enemy", "box_SetBoolean_v2_82.Out", "box_SetBoolean_v2_79.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetString_v2_221_Out()
    local params, l0;
    self:OnExit_box_SetString_v2_221_Out();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetString_v2_223();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|948191932", "948191932", "Swamp_C2_CTP_010_Enemy", "box_SetString_v2_221.Out", "box_SetString_v2_223.FromString", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromString
    l0:Exec(5, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveRequestGroup_190_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_184();
    l0 = self.box_Brick_Exp_Common_WaveRequestGroup_190;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1099303921", "1099303921", "Swamp_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveRequestGroup_190.NextWave", "box_SetInteger_v2_184.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_35_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_9();
    l0 = self.box_SpawnAI_35;
    l1 = self.box_SpawnAI_9;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|452625699", "452625699", "Swamp_C2_CTP_010_Enemy", "box_SpawnAI_35.Out", "box_SpawnAI_9.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SetString_v2_227_Out()
    local params, l0;
    self:OnExit_box_SetString_v2_227_Out();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetString_v2_225();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|2109560881", "2109560881", "Swamp_C2_CTP_010_Enemy", "box_SetString_v2_227.Out", "box_SetString_v2_225.FromString", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromString
    l0:Exec(5, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_180_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_180_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveRequestGroup_185();
    l0 = self.box_Brick_Exp_Common_WaveRequestGroup_185;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1429532350", "1429532350", "Swamp_C2_CTP_010_Enemy", "box_SetInteger_v2_180.Out", "box_Brick_Exp_Common_WaveRequestGroup_185.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_12_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_151();
    l0 = self.box_Gate_v3_151;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|843395898", "843395898", "Swamp_C2_CTP_010_Enemy", "box_OutputOrder_v2_12.Out", "box_Gate_v3_151.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_SpawnAI_176_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_173();
    l0 = self.box_SpawnAI_176;
    l1 = self.box_EntityStatusListener_173;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|115791666", "115791666", "Swamp_C2_CTP_010_Enemy", "box_SpawnAI_176.Out", "box_EntityStatusListener_173.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_33_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_24();
    l0 = self.box_SpawnAI_33;
    l1 = self.box_SpawnAI_24;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|357860761", "357860761", "Swamp_C2_CTP_010_Enemy", "box_SpawnAI_33.Out", "box_SpawnAI_24.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_IntegerArithmetics_v2_59_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_59_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_55();
    l0 = self.box_IndexList_v2_55;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|512370118", "512370118", "Swamp_C2_CTP_010_Enemy", "box_IntegerArithmetics_v2_59.Out", "box_IndexList_v2_55.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Brick_Exp_Common_WaveRequestGroup_40_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveRequestGroup_40;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|595062899", "595062899", "Swamp_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveRequestGroup_40.NextWave", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_26_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_29();
    l0 = self.box_SpawnAI_26;
    l1 = self.box_SpawnAI_29;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1613363953", "1613363953", "Swamp_C2_CTP_010_Enemy", "box_SpawnAI_26.Out", "box_SpawnAI_29.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_128_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_222();
    l0 = self.box_Delay_v5_128;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|103335720", "103335720", "Swamp_C2_CTP_010_Enemy", "box_Delay_v5_128.TimeElapsed", "box_Simple_Node_222.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_69_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_75();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|777250868", "777250868", "Swamp_C2_CTP_010_Enemy", "box_Compare_Boolean_69.A_is_False", "box_OutputOrder_v2_75.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_65_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MessageListener_v3_150();
    l0 = self.box_MultipleOR_65;
    l1 = self.box_MessageListener_v3_150;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|661049498", "661049498", "Swamp_C2_CTP_010_Enemy", "box_MultipleOR_65.Out", "box_MessageListener_v3_150.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_250_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_249();
    l0 = self.box_Delay_v5_250;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1490384057", "1490384057", "Swamp_C2_CTP_010_Enemy", "box_Delay_v5_250.TimeElapsed", "box_SetContextualStrategy_249.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_47_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_81();
    l0 = self.box_ProximityTrigger_v3_47;
    l1 = self.box_ProximityTrigger_v3_81;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1256679701", "1256679701", "Swamp_C2_CTP_010_Enemy", "box_ProximityTrigger_v3_47.Disabled", "box_ProximityTrigger_v3_81.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v3_47_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_81();
    l0 = self.box_ProximityTrigger_v3_47;
    l1 = self.box_ProximityTrigger_v3_81;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|465856909", "465856909", "Swamp_C2_CTP_010_Enemy", "box_ProximityTrigger_v3_47.Enabled", "box_ProximityTrigger_v3_81.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_47_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_69();
    l0 = self.box_ProximityTrigger_v3_47;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1934570793", "1934570793", "Swamp_C2_CTP_010_Enemy", "box_ProximityTrigger_v3_47.Enter", "box_Compare_Boolean_69.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_45_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_191();
    l0 = self.box_SpawnAI_45;
    l1 = self.box_SpawnAI_191;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|901529442", "901529442", "Swamp_C2_CTP_010_Enemy", "box_SpawnAI_45.Out", "box_SpawnAI_191.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_113_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_IndexList_v2_25();
    l0 = self.box_Gate_v3_113;
    l1 = self.box_IndexList_v2_25;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1621701945", "1621701945", "Swamp_C2_CTP_010_Enemy", "box_Gate_v3_113.Closed", "box_IndexList_v2_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_113_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveRequestGroup_186();
    l0 = self.box_Gate_v3_113;
    l1 = self.box_Brick_Exp_Common_WaveRequestGroup_186;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1387246534", "1387246534", "Swamp_C2_CTP_010_Enemy", "box_Gate_v3_113.Out", "box_Brick_Exp_Common_WaveRequestGroup_186.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_Brick_Exp_Common_PlayerFullyDetected_167_Detected()
    local params, l0, l1;
    self:OnExit_box_Brick_Exp_Common_PlayerFullyDetected_167_Detected();
    params = self:OnEnter_box_OutputOrder_v2_2();
    l0 = self.box_Brick_Exp_Common_PlayerFullyDetected_167;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1510744114", "1510744114", "Swamp_C2_CTP_010_Enemy", "box_Brick_Exp_Common_PlayerFullyDetected_167.Detected", "box_OutputOrder_v2_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_PlayerFullyDetected_167_Detected_BothPlayers()
    self:OnExit_box_Brick_Exp_Common_PlayerFullyDetected_167_Detected_BothPlayers();
end;

function export:f_box_Brick_Exp_Common_PlayerFullyDetected_167_Detected_ClientOnly()
    self:OnExit_box_Brick_Exp_Common_PlayerFullyDetected_167_Detected_ClientOnly();
end;

function export:f_box_Brick_Exp_Common_PlayerFullyDetected_167_Detected_HostOnly()
    self:OnExit_box_Brick_Exp_Common_PlayerFullyDetected_167_Detected_HostOnly();
end;

function export:f_box_Brick_Exp_Common_PlayerFullyDetected_167_Disabled()
    self:OnExit_box_Brick_Exp_Common_PlayerFullyDetected_167_Disabled();
end;

function export:f_box_Brick_Exp_Common_PlayerFullyDetected_167_Enabled()
    self:OnExit_box_Brick_Exp_Common_PlayerFullyDetected_167_Enabled();
end;

function export:f_box_Brick_Exp_Common_WaveRequestGroup_189_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveRequestGroup_189;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|737897490", "737897490", "Swamp_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveRequestGroup_189.NextWave", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_259_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_243;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|627132224", "627132224", "Swamp_C2_CTP_010_Enemy", "box_Compare_Boolean_259.A_is_True", "box_MultipleOR_243.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_256_Opened()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_13();
    l0 = self.box_Gate_v3_256;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1303753633", "1303753633", "Swamp_C2_CTP_010_Enemy", "box_Gate_v3_256.Opened", "box_Compare_Boolean_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_256_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_256;
    l1 = self.box_MultipleOR_145;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1395213735", "1395213735", "Swamp_C2_CTP_010_Enemy", "box_Gate_v3_256.Out", "box_MultipleOR_145.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_252_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_248();
    l0 = self.box_Delay_v5_252;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1574298462", "1574298462", "Swamp_C2_CTP_010_Enemy", "box_Delay_v5_252.TimeElapsed", "box_SetContextualStrategy_248.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_245_A_eq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_244;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|919412890", "919412890", "Swamp_C2_CTP_010_Enemy", "box_Compare_Integers_245.A_eq_B", "box_OnceOnly_v3_244.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetString_v2_229_Out()
    local params, l0;
    self:OnExit_box_SetString_v2_229_Out();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetString_v2_232();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1330260450", "1330260450", "Swamp_C2_CTP_010_Enemy", "box_SetString_v2_229.Out", "box_SetString_v2_232.FromString", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromString
    l0:Exec(5, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_25_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveRequestGroup_186();
    l0 = self.box_IndexList_v2_25;
    l1 = self.box_Brick_Exp_Common_WaveRequestGroup_186;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1142479098", "1142479098", "Swamp_C2_CTP_010_Enemy", "box_IndexList_v2_25.Output", "box_Brick_Exp_Common_WaveRequestGroup_186.CleanupOnly", l0:GetLuaBox(), l1:GetLuaBox());
    -- CleanupOnly
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_25_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveRequestGroup_40();
    l0 = self.box_IndexList_v2_25;
    l1 = self.box_Brick_Exp_Common_WaveRequestGroup_40;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|170190621", "170190621", "Swamp_C2_CTP_010_Enemy", "box_IndexList_v2_25.Output", "box_Brick_Exp_Common_WaveRequestGroup_40.CleanupOnly", l0:GetLuaBox(), l1:GetLuaBox());
    -- CleanupOnly
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_25_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveRequestGroup_22();
    l0 = self.box_IndexList_v2_25;
    l1 = self.box_Brick_Exp_Common_WaveRequestGroup_22;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|186697653", "186697653", "Swamp_C2_CTP_010_Enemy", "box_IndexList_v2_25.Output", "box_Brick_Exp_Common_WaveRequestGroup_22.CleanupOnly", l0:GetLuaBox(), l1:GetLuaBox());
    -- CleanupOnly
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_25_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveRequestGroup_187();
    l0 = self.box_IndexList_v2_25;
    l1 = self.box_Brick_Exp_Common_WaveRequestGroup_187;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|818731685", "818731685", "Swamp_C2_CTP_010_Enemy", "box_IndexList_v2_25.Output", "box_Brick_Exp_Common_WaveRequestGroup_187.CleanupOnly", l0:GetLuaBox(), l1:GetLuaBox());
    -- CleanupOnly
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_25_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveRequestGroup_189();
    l0 = self.box_IndexList_v2_25;
    l1 = self.box_Brick_Exp_Common_WaveRequestGroup_189;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1054329288", "1054329288", "Swamp_C2_CTP_010_Enemy", "box_IndexList_v2_25.Output", "box_Brick_Exp_Common_WaveRequestGroup_189.CleanupOnly", l0:GetLuaBox(), l1:GetLuaBox());
    -- CleanupOnly
    l1:Exec(1, params);
end;

function export:f_box_SetBoolean_v2_61_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_61_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_67();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|2114682344", "2114682344", "Swamp_C2_CTP_010_Enemy", "box_SetBoolean_v2_61.Out", "box_SetBoolean_v2_67.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_38_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_38_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_PlayerFullyDetected_167();
    l0 = self.box_Brick_Exp_Common_PlayerFullyDetected_167;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|662276297", "662276297", "Swamp_C2_CTP_010_Enemy", "box_GetPlayerGroup_v2_38.Out", "box_Brick_Exp_Common_PlayerFullyDetected_167.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_70_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_138();
    l0 = self.box_MultipleOR_70;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1169668422", "1169668422", "Swamp_C2_CTP_010_Enemy", "box_MultipleOR_70.Out", "box_Simple_Node_138.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_175_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_177();
    l0 = self.box_SpawnAI_175;
    l1 = self.box_EntityStatusListener_177;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|511620731", "511620731", "Swamp_C2_CTP_010_Enemy", "box_SpawnAI_175.Out", "box_EntityStatusListener_177.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_24_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_26();
    l0 = self.box_SpawnAI_24;
    l1 = self.box_SpawnAI_26;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|964727186", "964727186", "Swamp_C2_CTP_010_Enemy", "box_SpawnAI_24.Out", "box_SpawnAI_26.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_244_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_252();
    l0 = self.box_OnceOnly_v3_244;
    l1 = self.box_Delay_v5_252;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|104440546", "104440546", "Swamp_C2_CTP_010_Enemy", "box_OnceOnly_v3_244.Out", "box_Delay_v5_252.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Brick_Exp_Common_WaveRequestGroup_185_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveRequestGroup_185;
    l1 = self.box_MultipleOR_220;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1633389127", "1633389127", "Swamp_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveRequestGroup_185.NextWave", "box_MultipleOR_220.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_168_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_174();
    l0 = self.box_IndexList_v2_174;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1865460403", "1865460403", "Swamp_C2_CTP_010_Enemy", "box_OutputOrder_v2_168.Out", "box_IndexList_v2_174.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_168_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_20();
    l0 = self.box_SpawnAI_20;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|2087850596", "2087850596", "Swamp_C2_CTP_010_Enemy", "box_OutputOrder_v2_168.Out", "box_SpawnAI_20.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_169_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityFact_160();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|760210150", "760210150", "Swamp_C2_CTP_010_Enemy", "box_OutputOrder_v2_169.Out", "box_SetActivityFact_160.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_169_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_23();
    l0 = self.box_SpawnAI_23;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1989986981", "1989986981", "Swamp_C2_CTP_010_Enemy", "box_OutputOrder_v2_169.Out", "box_SpawnAI_23.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_169_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_183();
    l0 = self.box_Delay_v5_183;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|714585025", "714585025", "Swamp_C2_CTP_010_Enemy", "box_OutputOrder_v2_169.Out", "box_Delay_v5_183.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_68_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_70;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1763993555", "1763993555", "Swamp_C2_CTP_010_Enemy", "box_OutputOrder_v2_68.Out", "box_MultipleOR_70.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_OutputOrder_v2_68_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_77();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|527260549", "527260549", "Swamp_C2_CTP_010_Enemy", "box_OutputOrder_v2_68.Out", "box_SetBoolean_v2_77.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_28_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetExpeditionGameplayElements_54();
    l0 = self.box_ActivityInitialized_28;
    l1 = Boxes[GetPathID("Domino/System/GetExpeditionGameplayElements.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1608543365", "1608543365", "Swamp_C2_CTP_010_Enemy", "box_ActivityInitialized_28.Out", "box_GetExpeditionGameplayElements_54.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_11_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_169();
    l0 = self.box_OnceOnly_v3_11;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|495182090", "495182090", "Swamp_C2_CTP_010_Enemy", "box_OnceOnly_v3_11.Out", "box_OutputOrder_v2_169.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_15_Opened()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_259();
    l0 = self.box_Gate_v3_15;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|648154874", "648154874", "Swamp_C2_CTP_010_Enemy", "box_Gate_v3_15.Opened", "box_Compare_Boolean_259.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_15_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_15;
    l1 = self.box_MultipleOR_243;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1199318643", "1199318643", "Swamp_C2_CTP_010_Enemy", "box_Gate_v3_15.Out", "box_MultipleOR_243.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_261_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_246();
    l0 = self.box_MultipleOR_261;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|108076094", "108076094", "Swamp_C2_CTP_010_Enemy", "box_MultipleOR_261.Out", "box_Compare_Integers_246.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_44();
    l0 = self.box_SpawnAI_6;
    l1 = self.box_SpawnAI_44;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|190657608", "190657608", "Swamp_C2_CTP_010_Enemy", "box_SpawnAI_6.Out", "box_SpawnAI_44.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_177_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_175();
    l0 = self.box_EntityStatusListener_177;
    l1 = self.box_SpawnAI_175;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|263386793", "263386793", "Swamp_C2_CTP_010_Enemy", "box_EntityStatusListener_177.Loaded", "box_SpawnAI_175.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SetBoolean_v2_77_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_77_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_136();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|900029244", "900029244", "Swamp_C2_CTP_010_Enemy", "box_SetBoolean_v2_77.Out", "box_Simple_Node_136.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_150_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MessageListener_v3_10();
    l0 = self.box_MessageListener_v3_150;
    l1 = self.box_MessageListener_v3_10;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|315897788", "315897788", "Swamp_C2_CTP_010_Enemy", "box_MessageListener_v3_150.Enabled", "box_MessageListener_v3_10.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MessageListener_v3_150_Received()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_195();
    l0 = self.box_MessageListener_v3_150;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1328051964", "1328051964", "Swamp_C2_CTP_010_Enemy", "box_MessageListener_v3_150.Received", "box_Simple_Node_195.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_75_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_70;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1686202218", "1686202218", "Swamp_C2_CTP_010_Enemy", "box_OutputOrder_v2_75.Out", "box_MultipleOR_70.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_75_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_74();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1100127389", "1100127389", "Swamp_C2_CTP_010_Enemy", "box_OutputOrder_v2_75.Out", "box_SetBoolean_v2_74.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetString_v2_215_Out()
    local params, l0;
    self:OnExit_box_SetString_v2_215_Out();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetString_v2_218();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|427471835", "427471835", "Swamp_C2_CTP_010_Enemy", "box_SetString_v2_215.Out", "box_SetString_v2_218.FromString", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromString
    l0:Exec(5, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_183_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_113();
    l0 = self.box_Delay_v5_183;
    l1 = self.box_Gate_v3_113;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|174054726", "174054726", "Swamp_C2_CTP_010_Enemy", "box_Delay_v5_183.TimeElapsed", "box_Gate_v3_113.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_263_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_263;
    l1 = self.box_OnceOnly_v3_264;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|432426617", "432426617", "Swamp_C2_CTP_010_Enemy", "box_MultipleOR_263.Out", "box_OnceOnly_v3_264.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_240_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_251();
    l0 = self.box_OnceOnly_v3_240;
    l1 = self.box_Delay_v5_251;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1015392655", "1015392655", "Swamp_C2_CTP_010_Enemy", "box_OnceOnly_v3_240.Out", "box_Delay_v5_251.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_IndexList_v2_27_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuard_37();
    l0 = self.box_IndexList_v2_27;
    l1 = self.box_Brick_Exp_Enemy_PackageGuard_37;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|203634525", "203634525", "Swamp_C2_CTP_010_Enemy", "box_IndexList_v2_27.Output", "box_Brick_Exp_Enemy_PackageGuard_37.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_27_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuard_17();
    l0 = self.box_IndexList_v2_27;
    l1 = self.box_Brick_Exp_Enemy_PackageGuard_17;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1334860321", "1334860321", "Swamp_C2_CTP_010_Enemy", "box_IndexList_v2_27.Output", "box_Brick_Exp_Enemy_PackageGuard_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_27_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuard_43();
    l0 = self.box_IndexList_v2_27;
    l1 = self.box_Brick_Exp_Enemy_PackageGuard_43;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1508286435", "1508286435", "Swamp_C2_CTP_010_Enemy", "box_IndexList_v2_27.Output", "box_Brick_Exp_Enemy_PackageGuard_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_4();
    l0 = self.box_SpawnAI_7;
    l1 = self.box_SpawnAI_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|135242803", "135242803", "Swamp_C2_CTP_010_Enemy", "box_SpawnAI_7.Out", "box_SpawnAI_4.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Compare_Integers_239_A_eq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_240;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1059837071", "1059837071", "Swamp_C2_CTP_010_Enemy", "box_Compare_Integers_239.A_eq_B", "box_OnceOnly_v3_240.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetString_v2_238_Out()
    local params, l0;
    self:OnExit_box_SetString_v2_238_Out();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_258();
    l0 = self.box_Gate_v3_258;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|567721267", "567721267", "Swamp_C2_CTP_010_Enemy", "box_SetString_v2_238.Out", "box_Gate_v3_258.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_SetString_v2_236_Out()
    local params, l0;
    self:OnExit_box_SetString_v2_236_Out();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetString_v2_234();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1350670213", "1350670213", "Swamp_C2_CTP_010_Enemy", "box_SetString_v2_236.Out", "box_SetString_v2_234.FromString", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromString
    l0:Exec(5, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetString_v2_225_Out()
    local params, l0;
    self:OnExit_box_SetString_v2_225_Out();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetString_v2_228();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|389066478", "389066478", "Swamp_C2_CTP_010_Enemy", "box_SetString_v2_225.Out", "box_SetString_v2_228.FromString", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromString
    l0:Exec(5, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_126_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_124();
    l0 = self.box_MultipleOR_126;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1615318976", "1615318976", "Swamp_C2_CTP_010_Enemy", "box_MultipleOR_126.Out", "box_SetInteger_v2_124.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_174_Output_1()
    local l0, l1;
    l0 = self.box_IndexList_v2_174;
    l1 = self.box_MultipleOR_170;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1065800237", "1065800237", "Swamp_C2_CTP_010_Enemy", "box_IndexList_v2_174.Output", "box_MultipleOR_170.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IndexList_v2_174_Output_2()
    local l0, l1;
    l0 = self.box_IndexList_v2_174;
    l1 = self.box_MultipleOR_170;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|826993134", "826993134", "Swamp_C2_CTP_010_Enemy", "box_IndexList_v2_174.Output", "box_MultipleOR_170.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Brick_Exp_Common_WaveRequestGroup_187_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_156();
    l0 = self.box_Brick_Exp_Common_WaveRequestGroup_187;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|601359128", "601359128", "Swamp_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveRequestGroup_187.NextWave", "box_SetInteger_v2_156.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_34_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_34_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_135();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|641364586", "641364586", "Swamp_C2_CTP_010_Enemy", "box_SetBoolean_v2_34.Out", "box_Simple_Node_135.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_156_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_156_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveRequestGroup_189();
    l0 = self.box_Brick_Exp_Common_WaveRequestGroup_189;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|69175901", "69175901", "Swamp_C2_CTP_010_Enemy", "box_SetInteger_v2_156.Out", "box_Brick_Exp_Common_WaveRequestGroup_189.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
end;

function export:f_box_SetString_v2_228_Out()
    local params, l0;
    self:OnExit_box_SetString_v2_228_Out();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_15();
    l0 = self.box_Gate_v3_15;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1253711913", "1253711913", "Swamp_C2_CTP_010_Enemy", "box_SetString_v2_228.Out", "box_Gate_v3_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Brick_Exp_Common_WaveRequestGroup_186_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_147();
    l0 = self.box_Brick_Exp_Common_WaveRequestGroup_186;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|994164510", "994164510", "Swamp_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveRequestGroup_186.NextWave", "box_SetInteger_v2_147.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_242_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_163();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|144694211", "144694211", "Swamp_C2_CTP_010_Enemy", "box_SetContextualStrategy_242.Out", "box_SetContextualStrategy_163.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_247_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_250();
    l0 = self.box_OnceOnly_v3_247;
    l1 = self.box_Delay_v5_250;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|69490220", "69490220", "Swamp_C2_CTP_010_Enemy", "box_OnceOnly_v3_247.Out", "box_Delay_v5_250.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Compare_Boolean_76_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_78();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|449873457", "449873457", "Swamp_C2_CTP_010_Enemy", "box_Compare_Boolean_76.A_is_False", "box_OutputOrder_v2_78.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetString_v2_218_Out()
    local params, l0;
    self:OnExit_box_SetString_v2_218_Out();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetString_v2_219();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1916069805", "1916069805", "Swamp_C2_CTP_010_Enemy", "box_SetString_v2_218.Out", "box_SetString_v2_219.FromString", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromString
    l0:Exec(5, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_158_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuardNearest_42();
    l0 = self.box_Brick_Exp_Enemy_PackageGuardNearest_42;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|477110727", "477110727", "Swamp_C2_CTP_010_Enemy", "box_OutputOrder_v2_158.Out", "box_Brick_Exp_Enemy_PackageGuardNearest_42.PackageStolenDetected", clone:GetLuaBox(), l0:GetLuaBox());
    -- PackageStolenDetected
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_158_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuard_37();
    l0 = self.box_Brick_Exp_Enemy_PackageGuard_37;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|425536238", "425536238", "Swamp_C2_CTP_010_Enemy", "box_OutputOrder_v2_158.Out", "box_Brick_Exp_Enemy_PackageGuard_37.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_158_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuard_17();
    l0 = self.box_Brick_Exp_Enemy_PackageGuard_17;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|844899528", "844899528", "Swamp_C2_CTP_010_Enemy", "box_OutputOrder_v2_158.Out", "box_Brick_Exp_Enemy_PackageGuard_17.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_158_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuard_43();
    l0 = self.box_Brick_Exp_Enemy_PackageGuard_43;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|2125875482", "2125875482", "Swamp_C2_CTP_010_Enemy", "box_OutputOrder_v2_158.Out", "box_Brick_Exp_Enemy_PackageGuard_43.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Brick_Exp_Common_BasicSetups_58_Out()
    local l0, l1;
    self:OnExit_box_Brick_Exp_Common_BasicSetups_58_Out();
    l0 = self.box_Brick_Exp_Common_BasicSetups_58;
    l1 = self.box_MultipleOR_65;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|108390128", "108390128", "Swamp_C2_CTP_010_Enemy", "box_Brick_Exp_Common_BasicSetups_58.Out", "box_MultipleOR_65.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Brick_Exp_Common_WaveRequestGroup_208_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_200();
    l0 = self.box_Brick_Exp_Common_WaveRequestGroup_208;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1006973067", "1006973067", "Swamp_C2_CTP_010_Enemy", "box_Brick_Exp_Common_WaveRequestGroup_208.NextWave", "box_Compare_Boolean_200.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_73_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_68();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|245500684", "245500684", "Swamp_C2_CTP_010_Enemy", "box_Compare_Boolean_73.A_is_False", "box_OutputOrder_v2_68.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetString_v2_230_Out()
    local params, l0;
    self:OnExit_box_SetString_v2_230_Out();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetString_v2_233();
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|98724026", "98724026", "Swamp_C2_CTP_010_Enemy", "box_SetString_v2_230.Out", "box_SetString_v2_233.FromString", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromString
    l0:Exec(5, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_134()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_134");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|@EndWave");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_134_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_135()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_135");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|@FortressSpawners");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_135_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_139()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_139");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|@FrontGateSpawners");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_139_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_196()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_196");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|@PackagePicked");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_196_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_195()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_195");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|@PackageStolenDetected");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_195_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_138()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_138");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|@ResetRegionBooleans");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_138_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_136()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_136");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|@RollerCoasterSpawners");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_136_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_137()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_137");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|@SkyScreamerSpawners");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_137_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_222()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_222");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|@StartSpawning");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_222_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveRequestGroup_22()
    local params;
    DrawTextToScreen("Comment: Before_Wave_3", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Brick_Exp_Common_WaveRequestGroup')-- Comment: Before_Wave_3");
    params = {
        -- AllowedRemainingNPC,
        [0] = 4,
        -- EnemyGroup,
        [1] = "#95FE825F",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = true,
        -- RequestGroupName,
        [6] = "before_loop_wave_01",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_178()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109451225693951358",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_153()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_153");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|33945961");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160317971873889",
        -- missionLayerId,
        [1] = "45174716504963479",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_39()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108896574514937914",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_246()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_246");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|44933466");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_246_A_eq_B,
    });
    params = {
        -- A,
        [0] = self.iExtractionPOIID,
        -- B,
        [1] = 3,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_154()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_154");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|51132740");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_154_Out,
    });
    params = {
        -- Integer,
        [1] = 3,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetString_v2_233()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetString_v2_233");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|51324674");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetString_v2_233_Out,
    });
    params = {
        -- String,
        [5] = "after_skyscreamer_wave_05",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|58796394");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_63_Out,
    });
    params = {
        -- Integer,
        [1] = 2,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_23()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108982092959331824",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_74()
    local params, l0;
    DrawTextToScreen("Comment: In Front Gate", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SetBoolean_v2')-- Comment: In Front Gate");
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|64584283");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_74_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|70173424");
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
                [0] = self.f_box_OutputOrder_v2_50_Out_0,
                [1] = self.f_box_OutputOrder_v2_50_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_14()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_32()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108896991699286097",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_19()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108244775158162286",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_173()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109451077349806732",
    };
    return params;
end;

function export:OnEnter_box_SetString_v2_237()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetString_v2_237");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|100167842");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetString_v2_237_Out,
    });
    params = {
        -- String,
        [5] = "after_rollercoaster_wave_03",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_30()
    local params;
    params = {
        -- Index,
        [0] = self.iPackagePositionID,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_5()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108897069579123393",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_118()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_16()
    local params, l0;
    l0 = self.box_Brick_Exp_Common_PlayerFullyDetected_167;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = l0:GetDataOutValue(2),
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108991555527259648",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_152()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_152");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|163105111");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160317971873889",
        -- missionLayerId,
        [1] = "36167517226614882",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|233633369");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_71_A_is_False,
    });
    params = {
        -- A,
        [0] = self.bInFortress,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_PackageGuard_43()
    local params;
    params = {
        -- EnemyGroup_All,
        [0] = "#95FE825F",
        -- EnemyGroup_PackageGuard,
        [1] = "#4C6F297D",
        -- EnemyGroup_Prio_01,
        [2] = "#877928B5",
        -- EnemyGroup_Prio_02,
        [3] = "#9440D180",
        -- PackageGuardCS,
        [5] = "2108415785698338265",
        -- PackageGuardNUM,
        [6] = 2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_172()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_172");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|245326404");
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
                [0] = self.f_box_OutputOrder_v2_172_Out_0,
                [1] = self.f_box_OutputOrder_v2_172_Out_1,
                [2] = self.f_box_OutputOrder_v2_172_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_159()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_159");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|261662530");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160317971873889",
        -- missionLayerId,
        [1] = "54181915759710467",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_124()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_124");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|289275729");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_124_Out,
    });
    params = {
        -- Integer,
        [1] = 2,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_55()
    local params;
    params = {
        -- Index,
        [0] = self.iDifficulty,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_262()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_262");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|294006055");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_262_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bInFortress,
    };
    return params;
end;

function export:OnEnter_box_SetString_v2_232()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetString_v2_232");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|338015886");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetString_v2_232_Out,
    });
    params = {
        -- String,
        [5] = "after_skyscreamer_wave_03",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_151()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SetString_v2_224()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetString_v2_224");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|378860267");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetString_v2_224_Out,
    });
    params = {
        -- String,
        [5] = "after_frontgate_wave_02",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_9()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107222039780655745",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_PackageGuard_37()
    local params;
    params = {
        -- EnemyGroup_All,
        [0] = "#95FE825F",
        -- EnemyGroup_PackageGuard,
        [1] = "#4C6F297D",
        -- EnemyGroup_Prio_01,
        [2] = "#877928B5",
        -- EnemyGroup_Prio_02,
        [3] = "#9440D180",
        -- PackageGuardCS,
        [5] = "2108595284415090168",
        -- PackageGuardNUM,
        [6] = 2,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_251()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|407404605");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_64_Out,
    });
    params = {
        -- Entity,
        [0] = "2108124352263240347",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_80()
    local params, l0;
    DrawTextToScreen("Comment: In Sky Screamer", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SetBoolean_v2')-- Comment: In Sky Screamer");
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|413210731");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_80_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_20()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107222037400388167",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_265()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_191()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109546646917365262",
    };
    return params;
end;

function export:OnEnter_box_SetString_v2_234()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetString_v2_234");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|479675430");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetString_v2_234_Out,
    });
    params = {
        -- String,
        [5] = "after_rollercoaster_wave_02",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_184()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_184");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|503408838");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_184_Out,
    });
    params = {
        -- Integer,
        [1] = 5,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetString_v2_223()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetString_v2_223");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|535958715");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetString_v2_223_Out,
    });
    params = {
        -- String,
        [5] = "after_fortress_wave_05",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_8()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108244775164453751",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_44()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107222122253255430",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|614242257");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_51_Out,
    });
    params = {
        -- Integer,
        [1] = 2,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_248()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_248");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|621592247");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_248_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108703088039705700",
        -- Group,
        [1] = "#95FE825F",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_258()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_149()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_10()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "package_is_picked",
    };
    return params;
end;

function export:OnEnter_box_GetExpeditionGameplayElements_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetExpeditionGameplayElements.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetExpeditionGameplayElements_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|667883063");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetExpeditionGameplayElements_54_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_31()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108896552597602274",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|695994469");
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
                [0] = self.f_box_OutputOrder_v2_2_Out_0,
                [1] = self.f_box_OutputOrder_v2_2_Out_1,
                [2] = self.f_box_OutputOrder_v2_2_Out_2,
                [3] = self.f_box_OutputOrder_v2_2_Out_3,
                [4] = self.f_box_OutputOrder_v2_2_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_249()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_249");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|696635439");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_249_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108717297324545365",
        -- Group,
        [1] = "#95FE825F",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_147()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_147");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|698653486");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_147_Out,
    });
    params = {
        -- Integer,
        [1] = 2,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_4()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109177129955503977",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_165()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_165");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|771935298");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109393808295737143",
        -- Group,
        [1] = "#FDCD928C",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_241()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_241");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|773721755");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_241_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bInRollerCoaster,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_PackageGuardNearest_42()
    local params;
    params = {
        -- ActualPackageSpawner,
        [0] = self.ePackageSpawner,
        -- EnemyGroup_PackageGuard,
        [1] = "#4C6F297D",
        -- EnemyGroupAll,
        [2] = "#95FE825F",
        -- PackageGuardPositionCS_A,
        [3] = "2108595284415090168",
        -- PackageGuardPositionCS_B,
        [4] = "2108595020551424882",
        -- PackageGuardPositionCS_C,
        [5] = "2108415785698338265",
        -- PackageSpawner_A,
        [9] = "2108124175288777165",
        -- PackageSpawner_B,
        [10] = "2108124352263240347",
        -- PackageSpawner_C,
        [11] = "2108123443556787365",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_PackageGuard_17()
    local params;
    params = {
        -- EnemyGroup_All,
        [0] = "#95FE825F",
        -- EnemyGroup_PackageGuard,
        [1] = "#4C6F297D",
        -- EnemyGroup_Prio_01,
        [2] = "#877928B5",
        -- EnemyGroup_Prio_02,
        [3] = "#9440D180",
        -- PackageGuardCS,
        [5] = "2108595020551424882",
        -- PackageGuardNUM,
        [6] = 2,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|802704486");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_46_Out,
    });
    params = {
        -- Integer,
        [1] = 3,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|810322003");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_60_Out,
    });
    params = {
        -- Entity,
        [0] = "2108123443556787365",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_160()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_160");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|828536529");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_160_Out,
    });
    params = {
        -- Fact,
        [0] = "player_fullydetected",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|846606087");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_49_Out,
    });
    params = {
        -- Integer,
        [1] = 1,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_48()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = PersistentGlobals.Lib_Expeditions_Gameplay.ePackageOwner,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108589192847043002",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|857506150");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_53_Out,
    });
    params = {
        -- Integer,
        [1] = 1,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_1()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108896567491575837",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|875691579");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_57_Out,
    });
    params = {
        -- Integer,
        [1] = 3,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_72()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = PersistentGlobals.Lib_Expeditions_Gameplay.ePackageOwner,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108595205583146442",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_182()
    local params;
    params = {
        -- Index,
        [0] = self.iPackagePositionID,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|881532786");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_13_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bInSkyScreamer,
    };
    return params;
end;

function export:OnEnter_box_SetString_v2_219()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetString_v2_219");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|890149751");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetString_v2_219_Out,
    });
    params = {
        -- String,
        [5] = "after_fortress_wave_03",
    };
    return params;
end;

function export:OnEnter_box_SetString_v2_231()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetString_v2_231");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|899655572");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetString_v2_231_Out,
    });
    params = {
        -- String,
        [5] = "after_skyscreamer_wave_01",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_29()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108884260248113330",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_81()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = PersistentGlobals.Lib_Expeditions_Gameplay.ePackageOwner,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108595133447409097",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_179()
    local params;
    params = {
        -- Index,
        [0] = self.iWaveAfter_Index,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|970131912");
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
                [0] = self.f_box_OutputOrder_v2_18_Out_0,
                [1] = self.f_box_OutputOrder_v2_18_Out_1,
                [2] = self.f_box_OutputOrder_v2_18_Out_2,
                [3] = self.f_box_OutputOrder_v2_18_Out_3,
                [4] = self.f_box_OutputOrder_v2_18_Out_4,
            },
            count = 9,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_260()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_260");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|974837962");
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
                [0] = self.f_box_OutputOrder_v2_260_Out_0,
                [1] = self.f_box_OutputOrder_v2_260_Out_1,
                [2] = self.f_box_OutputOrder_v2_260_Out_2,
                [3] = self.f_box_OutputOrder_v2_260_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|984451374");
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
                [0] = self.f_box_OutputOrder_v2_78_Out_0,
                [1] = self.f_box_OutputOrder_v2_78_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_171()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109451242355824115",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1000452317");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_79_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_36()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107222122452484889",
    };
    return params;
end;

function export:OnEnter_box_SetString_v2_235()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetString_v2_235");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1010544957");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetString_v2_235_Out,
    });
    params = {
        -- String,
        [5] = "after_rollercoaster_wave_04",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_155()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_155");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1022075423");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_155_Out,
    });
    params = {
        -- Integer,
        [1] = 4,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_200()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_200");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1035242907");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_200_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_200_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bInFortress,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1073555239");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_67_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_257()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_148()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_144()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "EndWave",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_181()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_181");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1114965702");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_181_Out,
    });
    params = {
        -- Integer,
        [1] = 4,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveRequestGroup_99()
    local params;
    DrawTextToScreen("Comment: After_Wave_2", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Brick_Exp_Common_WaveRequestGroup')-- Comment: After_Wave_2");
    params = {
        -- AllowedRemainingNPC,
        [0] = 5,
        -- EnemyGroup,
        [1] = "#95FE825F",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 19,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- RequestGroupName,
        [6] = self.after_wave_02,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveRequestGroup_157()
    local params;
    DrawTextToScreen("Comment: After_Wave_1", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Brick_Exp_Common_WaveRequestGroup')-- Comment: After_Wave_1");
    params = {
        -- AllowedRemainingNPC,
        [0] = 4,
        -- EnemyGroup,
        [1] = "#95FE825F",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 20,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- RequestGroupName,
        [6] = self.after_wave_01,
    };
    return params;
end;

function export:OnEnter_box_SetString_v2_226()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetString_v2_226");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1226935934");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetString_v2_226_Out,
    });
    params = {
        -- String,
        [5] = "after_frontgate_wave_01",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1244061841");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_82_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_193()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109572127333037320",
    };
    return params;
end;

function export:OnEnter_box_SetString_v2_221()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetString_v2_221");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1284927193");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetString_v2_221_Out,
    });
    params = {
        -- String,
        [5] = "after_fortress_wave_04",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveRequestGroup_190()
    local params;
    DrawTextToScreen("Comment: After_Wave_4", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Brick_Exp_Common_WaveRequestGroup')-- Comment: After_Wave_4");
    params = {
        -- AllowedRemainingNPC,
        [0] = 6,
        -- EnemyGroup,
        [1] = "#95FE825F",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 17,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- RequestGroupName,
        [6] = self.after_wave_04,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_35()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107222043408728758",
    };
    return params;
end;

function export:OnEnter_box_SetString_v2_227()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetString_v2_227");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1337943754");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetString_v2_227_Out,
    });
    params = {
        -- String,
        [5] = "after_frontgate_wave_03",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_180()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_180");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1370683720");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_180_Out,
    });
    params = {
        -- Integer,
        [1] = 3,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1382039543");
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
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_176()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109451116574938107",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_33()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108244787223078483",
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1409495621");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_59_Out,
    });
    params = {
        -- A,
        [0] = self.iDifficulty,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveRequestGroup_40()
    local params;
    DrawTextToScreen("Comment: Before_Wave_2", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Brick_Exp_Common_WaveRequestGroup')-- Comment: Before_Wave_2");
    params = {
        -- AllowedRemainingNPC,
        [0] = 4,
        -- EnemyGroup,
        [1] = "#95FE825F",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = true,
        -- RequestGroupName,
        [6] = "before_wave_02",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_26()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108244787202106936",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_128()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1456851402");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_69_A_is_False,
    });
    params = {
        -- A,
        [0] = self.bInFrontGate,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_250()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_47()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = PersistentGlobals.Lib_Expeditions_Gameplay.ePackageOwner,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108589228695759291",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_45()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109177018527526514",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_113()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_PlayerFullyDetected_167()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    params = {
        -- EnemyGroup,
        [0] = "#95FE825F",
        -- OnceOnly,
        [1] = true,
        -- PlayerGroup,
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveRequestGroup_189()
    local params;
    DrawTextToScreen("Comment: Before_Wave_5", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Brick_Exp_Common_WaveRequestGroup')-- Comment: Before_Wave_5");
    params = {
        -- AllowedRemainingNPC,
        [0] = 4,
        -- EnemyGroup,
        [1] = "#95FE825F",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = true,
        -- RequestGroupName,
        [6] = "before_loop_wave_03",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_259()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_259");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1611996849");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_259_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bInFrontGate,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_256()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_252()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_245()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_245");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1622732937");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_245_A_eq_B,
    });
    params = {
        -- A,
        [0] = self.iExtractionPOIID,
        -- B,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_192()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109546398272732094",
    };
    return params;
end;

function export:OnEnter_box_SetString_v2_229()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetString_v2_229");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1628357065");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetString_v2_229_Out,
    });
    params = {
        -- String,
        [5] = "after_skyscreamer_wave_02",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_25()
    local params;
    params = {
        -- Index,
        [0] = self.iWaveBefore_Index,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1648276785");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_61_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1661494361");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_38_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_175()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109451293054473987",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_166()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_166");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1711576315");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109394041129941776",
        -- Group,
        [1] = "#FDCD928C",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_24()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108884238982991930",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveRequestGroup_185()
    local params;
    DrawTextToScreen("Comment: After_Wave_3", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Brick_Exp_Common_WaveRequestGroup')-- Comment: After_Wave_3");
    params = {
        -- AllowedRemainingNPC,
        [0] = 5,
        -- EnemyGroup,
        [1] = "#95FE825F",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 18,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- RequestGroupName,
        [6] = self.after_wave_03,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_168()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_168");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1724581458");
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
                [0] = self.f_box_OutputOrder_v2_168_Out_0,
                [1] = self.f_box_OutputOrder_v2_168_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_169()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_169");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1726168109");
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
                [0] = self.f_box_OutputOrder_v2_169_Out_0,
                [2] = self.f_box_OutputOrder_v2_169_Out_2,
                [3] = self.f_box_OutputOrder_v2_169_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1730296056");
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
                [0] = self.f_box_OutputOrder_v2_68_Out_0,
                [1] = self.f_box_OutputOrder_v2_68_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v5_146()
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

function export:OnEnter_box_Gate_v3_15()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_41()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108813344388429318",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_6()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108896231215347980",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_177()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109451294153381654",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_77()
    local params, l0;
    DrawTextToScreen("Comment: In Roller Coaster", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SetBoolean_v2')-- Comment: In Roller Coaster");
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1882185944");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_77_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_163()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_163");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1895783510");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109393874081298239",
        -- Group,
        [1] = "#FDCD928C",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_150()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "Package_Stolen_Detected",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1909953832");
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
                [0] = self.f_box_OutputOrder_v2_75_Out_0,
                [1] = self.f_box_OutputOrder_v2_75_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetString_v2_215()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetString_v2_215");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1914927621");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetString_v2_215_Out,
    });
    params = {
        -- String,
        [5] = "after_fortress_wave_01",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_183()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_27()
    local params;
    params = {
        -- Index,
        [0] = self.iPackagePositionID,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_7()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108897083145599734",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_239()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_239");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1948038724");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_239_A_eq_B,
    });
    params = {
        -- A,
        [0] = self.iExtractionPOIID,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_SetString_v2_238()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetString_v2_238");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|1955704691");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetString_v2_238_Out,
    });
    params = {
        -- String,
        [5] = "after_rollercoaster_wave_05",
    };
    return params;
end;

function export:OnEnter_box_SetString_v2_236()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetString_v2_236");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|2004087282");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetString_v2_236_Out,
    });
    params = {
        -- String,
        [5] = "after_rollercoaster_wave_01",
    };
    return params;
end;

function export:OnEnter_box_SetString_v2_225()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetString_v2_225");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|2007386104");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetString_v2_225_Out,
    });
    params = {
        -- String,
        [5] = "after_frontgate_wave_04",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_174()
    local params;
    params = {
        -- Index,
        [0] = self.iDifficulty,
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_266()
    local params, l0;
    DrawTextToScreen("Comment: LC: Disable on detection BOW-74745", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RadioModifier_v3')-- Comment: LC: Disable on detection BOW-74745");
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_266");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|2030186902");
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
        [5] = "2109975940722343772",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveRequestGroup_187()
    local params;
    DrawTextToScreen("Comment: Before_Wave_4", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Brick_Exp_Common_WaveRequestGroup')-- Comment: Before_Wave_4");
    params = {
        -- AllowedRemainingNPC,
        [0] = 4,
        -- EnemyGroup,
        [1] = "#95FE825F",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = true,
        -- RequestGroupName,
        [6] = "before_loop_wave_02",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_34()
    local params, l0;
    DrawTextToScreen("Comment: In Fortress", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SetBoolean_v2')-- Comment: In Fortress");
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|2038766128");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_34_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_156()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_156");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|2045710858");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_156_Out,
    });
    params = {
        -- Integer,
        [1] = 5,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetString_v2_228()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetString_v2_228");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|2057606654");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetString_v2_228_Out,
    });
    params = {
        -- String,
        [5] = "after_frontgate_wave_05",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveRequestGroup_186()
    local params;
    DrawTextToScreen("Comment: Before_Wave_1", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Brick_Exp_Common_WaveRequestGroup')-- Comment: Before_Wave_1");
    params = {
        -- AllowedRemainingNPC,
        [0] = 4,
        -- EnemyGroup,
        [1] = "#95FE825F",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 10,
        -- NextWaveWaitUntilCombat,
        [5] = true,
        -- RequestGroupName,
        [6] = "before_wave_01",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_242()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_242");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|2079994671");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_242_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108692411334034473",
        -- Group,
        [1] = "#95FE825F",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|2084605167");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_76_A_is_False,
    });
    params = {
        -- A,
        [0] = self.bInSkyScreamer,
    };
    return params;
end;

function export:OnEnter_box_SetString_v2_218()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetString_v2_218");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|2087847186");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetString_v2_218_Out,
    });
    params = {
        -- String,
        [5] = "after_fortress_wave_02",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_158()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_158");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|2093041662");
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
                [0] = self.f_box_OutputOrder_v2_158_Out_0,
                [1] = self.f_box_OutputOrder_v2_158_Out_1,
                [2] = self.f_box_OutputOrder_v2_158_Out_2,
                [3] = self.f_box_OutputOrder_v2_158_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_BasicSetups_58()
    local params;
    params = {
        -- DebugMode,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveRequestGroup_208()
    local params;
    DrawTextToScreen("Comment: After_Wave_5", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Brick_Exp_Common_WaveRequestGroup')-- Comment: After_Wave_5");
    params = {
        -- AllowedRemainingNPC,
        [0] = 6,
        -- EnemyGroup,
        [1] = "#95FE825F",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = 45,
        -- MinWaveDuration,
        [4] = 16,
        -- NextWaveWaitUntilCombat,
        [5] = false,
        -- RequestGroupName,
        [6] = self.after_wave_05,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_164()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_164");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|2118460354");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109393863025112891",
        -- Group,
        [1] = "#FDCD928C",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|2122466546");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_73_A_is_False,
    });
    params = {
        -- A,
        [0] = self.bInRollerCoaster,
    };
    return params;
end;

function export:OnEnter_box_SetString_v2_230()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetString_v2_230");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Enemy.domino|@Swamp_C2_CTP_010_Enemy|2127954107");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetString_v2_230_Out,
    });
    params = {
        -- String,
        [5] = "after_skyscreamer_wave_04",
    };
    return params;
end;

function export:OnExit_box_SetInteger_v2_154_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iWaveBefore_Index = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetString_v2_233_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    self.after_wave_05 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_63_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iExtractionPOIID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_74_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bInFrontGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetString_v2_237_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    self.after_wave_03 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_124_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iWaveAfter_Index = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetString_v2_232_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    self.after_wave_03 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetString_v2_224_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    self.after_wave_02 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_64_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.ePackageSpawner = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_80_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bInSkyScreamer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetString_v2_234_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    self.after_wave_02 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_184_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iWaveAfter_Index = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetString_v2_223_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    self.after_wave_05 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_51_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iPackagePositionID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetExpeditionGameplayElements_54_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetExpeditionGameplayElements.lua")];
    self.iDifficulty = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_147_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iWaveBefore_Index = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_46_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iPackagePositionID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_60_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.ePackageSpawner = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_49_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iPlayerSpawnPOIIndex = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_53_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iExtractionPOIID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_57_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iPlayerSpawnPOIIndex = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetString_v2_219_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    self.after_wave_03 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetString_v2_231_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    self.after_wave_01 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_79_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bInRollerCoaster = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetString_v2_235_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    self.after_wave_04 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_155_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iWaveBefore_Index = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_67_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bInFortress = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_181_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iWaveAfter_Index = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetString_v2_226_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    self.after_wave_01 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_82_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bInSkyScreamer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetString_v2_221_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    self.after_wave_04 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetString_v2_227_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    self.after_wave_03 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_180_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iWaveAfter_Index = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_59_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.iDifficulty = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_Exp_Common_PlayerFullyDetected_167_Detected()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_PlayerFullyDetected_167;
    l1 = self.box_PositionModifier_v2_16;
    l1:GetLuaBox().endTarget = l0:GetDataOutValue(2);
end;

function export:OnExit_box_Brick_Exp_Common_PlayerFullyDetected_167_Detected_BothPlayers()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_PlayerFullyDetected_167;
    l1 = self.box_PositionModifier_v2_16;
    l1:GetLuaBox().endTarget = l0:GetDataOutValue(2);
end;

function export:OnExit_box_Brick_Exp_Common_PlayerFullyDetected_167_Detected_ClientOnly()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_PlayerFullyDetected_167;
    l1 = self.box_PositionModifier_v2_16;
    l1:GetLuaBox().endTarget = l0:GetDataOutValue(2);
end;

function export:OnExit_box_Brick_Exp_Common_PlayerFullyDetected_167_Detected_HostOnly()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_PlayerFullyDetected_167;
    l1 = self.box_PositionModifier_v2_16;
    l1:GetLuaBox().endTarget = l0:GetDataOutValue(2);
end;

function export:OnExit_box_Brick_Exp_Common_PlayerFullyDetected_167_Disabled()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_PlayerFullyDetected_167;
    l1 = self.box_PositionModifier_v2_16;
    l1:GetLuaBox().endTarget = l0:GetDataOutValue(2);
end;

function export:OnExit_box_Brick_Exp_Common_PlayerFullyDetected_167_Enabled()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_PlayerFullyDetected_167;
    l1 = self.box_PositionModifier_v2_16;
    l1:GetLuaBox().endTarget = l0:GetDataOutValue(2);
end;

function export:OnExit_box_SetString_v2_229_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    self.after_wave_02 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_61_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bInFrontGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_38_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l1 = self.box_Brick_Exp_Common_PlayerFullyDetected_167;
    l1:GetLuaBox().PlayerGroup = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_77_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bInRollerCoaster = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetString_v2_215_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    self.after_wave_01 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetString_v2_238_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    self.after_wave_05 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetString_v2_236_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    self.after_wave_01 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetString_v2_225_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    self.after_wave_04 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_34_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bInFortress = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_156_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iWaveBefore_Index = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetString_v2_228_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    self.after_wave_05 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetString_v2_218_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    self.after_wave_02 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_Exp_Common_BasicSetups_58_Out()
    local l0;
    l0 = self.box_Brick_Exp_Common_BasicSetups_58;
    self.iDifficulty = l0:GetDataOutValue(0);
    self.iPlayerSpawnPOIIndex = l0:GetDataOutValue(4);
    self.iExtractionPOIID = l0:GetDataOutValue(1);
    self.iPackagePositionID = l0:GetDataOutValue(2);
    self.ePackageSpawner = l0:GetDataOutValue(3);
end;

function export:OnExit_box_SetString_v2_230_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetString_v2.lua")];
    self.after_wave_04 = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="OnLeaveZone" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
