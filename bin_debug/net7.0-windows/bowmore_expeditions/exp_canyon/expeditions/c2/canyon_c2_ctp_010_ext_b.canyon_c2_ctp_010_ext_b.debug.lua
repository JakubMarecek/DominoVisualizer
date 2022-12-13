LUAC\ -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_canyon/expeditions/c2/canyon_c2_ctp_010_ext_b.domino
-- User graph: Canyon_C2_CTP_010_Ext_B
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_BasicSetups.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Extraction_Helicopter_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Extraction_PackageStolenDetector.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Extraction_ReachSurvive_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Narrative.Brick_Exp_Outro_v4.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Quest_Common.PlayerFullyDetected.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/BroadcastMessage.lua");
        cboxRes:RegisterBox("Domino/System/CompareFloats.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetDistance.lua");
        cboxRes:RegisterBox("Domino/System/GroupIter.lua");
        cboxRes:RegisterBox("Domino/System/IndexList_v2.lua");
        cboxRes:RegisterBox("Domino/System/MessageListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/RadioModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/TriggerState_v2.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/Library/Sp/Lib_Expeditions_Gameplay.globals.lua");
        cboxRes:RegisterGlobals("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.globals.lua");
        cboxRes:RegisterGlobals("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Main.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[924628978.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4120864174.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1481059655.bnk]], "CSoundResource");
        cboxRes:LoadResource([[404565370.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1718341629.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3796536693.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2242572988.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3828208729.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3694213426.bnk]], "CSoundResource");
        cboxRes:LoadResource([[30992813.bnk]], "CSoundResource");
        cboxRes:LoadResource([[335981144.bnk]], "CSoundResource");
        cboxRes:LoadResource([[597559651.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1873469197.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4158060662.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1576015005.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2583714736.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2247502782.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4223568461.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1748906633.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3394256395.bnk]], "CSoundResource");
        cboxRes:LoadResource([[697883140.bnk]], "CSoundResource");
        cboxRes:LoadResource([[279154678.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1045442344.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Ext_B.Canyon_C2_CTP_010_Ext_B.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua")] = {
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
                name = "LastWave_Cleanup",
                delayed = false,
            },
            [2] = {
                name = "NextWave",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "AttackersAliveToNextWave",
                type = "int",
            },
            [1] = {
                name = "AttackerSpawner_1",
                type = "entity",
            },
            [2] = {
                name = "CoreNPCGroup",
                type = "group",
            },
            [3] = {
                name = "IsLastWave",
                type = "bool",
            },
            [4] = {
                name = "NextWaveOnTimerEnd",
                type = "bool",
            },
            [5] = {
                name = "opt_AttackerSpawner_2",
                type = "entity",
            },
            [6] = {
                name = "opt_AttackerSpawner_3",
                type = "entity",
            },
            [7] = {
                name = "opt_AttackerSpawner_4",
                type = "entity",
            },
            [8] = {
                name = "opt_AttackerSpawner_5",
                type = "entity",
            },
            [9] = {
                name = "RequestGroup_1",
                type = "string",
            },
            [10] = {
                name = "RequestGroup_2",
                type = "string",
            },
            [11] = {
                name = "RequestGroup_3",
                type = "string",
            },
            [12] = {
                name = "RequestGroup_4",
                type = "string",
            },
            [13] = {
                name = "RequestGroup_5",
                type = "string",
            },
            [14] = {
                name = "Timer",
                type = "float",
            },
        },
        dataInCount = 15,
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Extraction_Helicopter_v2.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SpawnHelicopter",
            },
            [1] = {
                name = "TimeToGetIn",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "PlayersAllSeated",
                delayed = false,
            },
            [1] = {
                name = "SpawnCalled",
                delayed = false,
            },
            [2] = {
                name = "ToTakeOff",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "HelicopterSpawner",
                type = "entity",
            },
            [1] = {
                name = "ObjectiveMarker",
                type = "entity",
            },
            [2] = {
                name = "PlayMusicEvent",
                type = "Sound",
            },
            [3] = {
                name = "StopMusicEvent",
                type = "Sound",
            },
            [4] = {
                name = "STP_Coming",
                type = "entity",
            },
            [5] = {
                name = "STP_Leaving",
                type = "entity",
            },
            [6] = {
                name = "VO_ShootChopper_01",
                type = "Sound",
            },
            [7] = {
                name = "VO_ShootChopper_02",
                type = "Sound",
            },
            [8] = {
                name = "VO_ShootChopper_03",
                type = "Sound",
            },
            [9] = {
                name = "VO_ShootChopper_04",
                type = "Sound",
            },
        },
        dataInCount = 10,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Extraction_PackageStolenDetector.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Enabled",
                delayed = false,
            },
            [1] = {
                name = "PackageStolenDetected",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "AllEnemiesGroup",
                type = "group",
            },
            [1] = {
                name = "EnemyActivity",
                type = "genericdb",
            },
            [2] = {
                name = "PackagePositionEntity",
                type = "entity",
            },
            [3] = {
                name = "PlayerDetectedFact",
                type = "string",
            },
            [4] = {
                name = "VO_CheckPackage_01",
                type = "Sound",
            },
            [5] = {
                name = "VO_CheckPackage_02",
                type = "Sound",
            },
            [6] = {
                name = "VO_CheckPackage_03",
                type = "Sound",
            },
            [7] = {
                name = "VO_CheckPackage_04",
                type = "Sound",
            },
        },
        dataInCount = 8,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Extraction_ReachSurvive_v3.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cleanup",
            },
            [1] = {
                name = "In",
            },
            [2] = {
                name = "PackageStolenDetected",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "ReachedSurvived",
                delayed = false,
            },
            [1] = {
                name = "ToSpawnHelicopter",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "ExtractionMarker_A",
                type = "entity",
            },
            [1] = {
                name = "ExtractionMarker_B",
                type = "entity",
            },
            [2] = {
                name = "ExtractionMarker_C",
                type = "entity",
            },
            [3] = {
                name = "ExtractionPOIID",
                type = "int",
            },
            [4] = {
                name = "GroupAllEnemies",
                type = "group",
            },
            [5] = {
                name = "ObjectiveTimer",
                type = "float",
            },
            [6] = {
                name = "PlayMusicEvent",
                type = "Sound",
            },
            [7] = {
                name = "ReachExtractionShape_A",
                type = "entity",
            },
            [8] = {
                name = "ReachExtractionShape_B",
                type = "entity",
            },
            [9] = {
                name = "ReachExtractionShape_C",
                type = "entity",
            },
            [10] = {
                name = "StopMusicEvent",
                type = "Sound",
            },
            [11] = {
                name = "TimeBeforeSpawnHelicopter",
                type = "float",
            },
            [12] = {
                name = "VO_EnemyKnows_01",
                type = "Sound",
            },
            [13] = {
                name = "VO_EnemyKnows_02",
                type = "Sound",
            },
            [14] = {
                name = "VO_EnemyKnows_03",
                type = "Sound",
            },
            [15] = {
                name = "VO_EnemyKnows_04",
                type = "Sound",
            },
            [16] = {
                name = "VO_EnemyKnows_05",
                type = "Sound",
            },
            [17] = {
                name = "VO_ExtractionLocation_A",
                type = "Sound",
            },
            [18] = {
                name = "VO_ExtractionLocation_B",
                type = "Sound",
            },
            [19] = {
                name = "VO_ExtractionLocation_C",
                type = "Sound",
            },
            [20] = {
                name = "VO_FoundYouAgain_01",
                type = "Sound",
            },
            [21] = {
                name = "VO_FoundYouAgain_02",
                type = "Sound",
            },
            [22] = {
                name = "VO_FoundYouAgain_03",
                type = "Sound",
            },
            [23] = {
                name = "VO_FoundYouAgain_04",
                type = "Sound",
            },
            [24] = {
                name = "VO_FoundYouAgain_05",
                type = "Sound",
            },
        },
        dataInCount = 25,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Expeditions_Narrative.Brick_Exp_Outro_v4.debug.lua")] = {
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
            [0] = {
                name = "DelayBeforeVictorySignOffVO",
                type = "float",
            },
            [1] = {
                name = "PlayMusicEvent",
                type = "Sound",
            },
            [2] = {
                name = "SceneEntity",
                type = "entity",
            },
            [3] = {
                name = "Sequence",
                type = "sequence",
            },
            [4] = {
                name = "StopMusicEvent",
                type = "Sound",
            },
        },
        dataInCount = 5,
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Retry",
            },
        },
        controlInCount = 1,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "ReasonId",
                type = "oasis",
            },
            [1] = {
                name = "Reload",
                type = "bool",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/CompareFloats.lua")] = {
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
                type = "float",
            },
            [1] = {
                name = "B",
                type = "float",
            },
            [2] = {
                name = "Tolerance",
                type = "float",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/GetDistance.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Distance2D",
            },
            [1] = {
                name = "Distance3D",
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
                name = "Distance",
                type = "float",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/Mission_Flow/MissionAckTriggerListener.lua")] = {
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
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "triggerId",
                type = "entity",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "Canyon_C2_CTP_010_Ext_B";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B";
    self.iExtractionPOIID = 0;
    self.GurrentEnemy = nil;
    self.box_SpawnAI_9 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|79535847");
    l0:SetConnections({
    });
    self.box_MultipleOR_56 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|83964687");
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
        [0] = self.f_box_MultipleOR_56_Out,
    });
    self.box_MultipleOR_37 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|168998135");
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
        [0] = self.f_box_MultipleOR_37_Out,
    });
    self.box_MultipleOR_23 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|344439979");
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
        [0] = self.f_box_MultipleOR_23_Out,
    });
    self.box_SpawnAI_22 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|365311072");
    l0:SetConnections({
    });
    self.box_Gate_v3_45 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|430509666");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_45_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_45_Out,
    });
    self.box_ProximityRadiusListener_v3_10 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|444302603");
    l0:SetConnections({
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_10_SomeoneFar,
    });
    self.box_ProximityRadiusListener_v3_66 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|447339911");
    l0:SetConnections({
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_66_SomeoneFar,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_66_SomeoneNear,
    });
    self.box_Delay_v5_64 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|495650923");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_64_TimeElapsed,
    });
    self.box_ProximityRadiusListener_v3_47 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|511002059");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_47_SomeoneNear,
    });
    self.box_SpawnAI_60 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|540115157");
    l0:SetConnections({
    });
    self.box_Delay_v5_34 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|691441648");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_34_TimeElapsed,
    });
    self.box_ProximityRadiusListener_v3_38 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|722268894");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_38_SomeoneNear,
    });
    self.box_ActivityInitialized_27 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|843600032");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_27_Out,
    });
    self.box_Delay_v5_24 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|864486928");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_24_TimeElapsed,
    });
    self.box_OnceOnly_v3_28 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|919566355");
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
                [0] = self.f_box_OnceOnly_v3_28_Out_0,
            },
            count = 2,
        },
    });
    self.box_SpawnAI_59 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|946969326");
    l0:SetConnections({
    });
    self.box_SpawnAI_Wave_v2_41 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|994282083");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_62 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1030777925");
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
        [0] = self.f_box_MultipleAND_v2_62_Out,
    });
    self.box_Brick_Exp_Common_BasicSetups_15 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_BasicSetups.debug.lua");
    l0 = self.box_Brick_Exp_Common_BasicSetups_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_BasicSetups_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1066157307");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Brick_Exp_Common_BasicSetups_15_Out,
    });
    self.box_IndexList_v2_14 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1111110006");
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
                [0] = self.f_box_IndexList_v2_14_Output_0,
                [2] = self.f_box_IndexList_v2_14_Output_2,
            },
            count = 3,
        },
    });
    self.box_Delay_v5_46 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1182187859");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_46_TimeElapsed,
    });
    self.box_SpawnAI_43 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1283815859");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_53 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1348909967");
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
                [0] = self.f_box_OnceOnly_v3_53_Out_0,
            },
            count = 2,
        },
    });
    self.box_GroupIter_51 = cbox:CreateBox("Domino/System/GroupIter.lua");
    l0 = self.box_GroupIter_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupIter_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1363031919");
    l0:SetConnections({
        -- EndIter,
        [0] = self.f_box_GroupIter_51_EndIter,
        -- PawnIter,
        [1] = self.f_box_GroupIter_51_PawnIter,
        -- Started,
        [2] = self.f_box_GroupIter_51_Started,
        -- Stopped,
        [3] = self.f_box_GroupIter_51_Stopped,
    });
    self.box_SpawnAI_20 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1376966385");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_20_Out,
    });
    self.box_Brick_Exp_Extraction_Helicopter_v2_2 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Extraction_Helicopter_v2.debug.lua");
    l0 = self.box_Brick_Exp_Extraction_Helicopter_v2_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Extraction_Helicopter_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1377427382");
    l0:SetConnections({
        -- PlayersAllSeated,
        [0] = self.f_box_Brick_Exp_Extraction_Helicopter_v2_2_PlayersAllSeated,
        -- ToTakeOff,
        [2] = self.f_box_Brick_Exp_Extraction_Helicopter_v2_2_ToTakeOff,
    });
    self.box_MultipleOR_63 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1423282908");
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
        [0] = self.f_box_MultipleOR_63_Out,
    });
    self.box_ActivityAcknowledgeGate_16 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1432812078");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_16_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_16_Reloaded,
    });
    self.box_MessageListener_v3_69 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1450865042");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_69_Received,
    });
    self.box_PlayerFullyDetected_67 = cbox:CreateBox("Domino/Library/Sp/Lib_Quest_Common.PlayerFullyDetected.debug.lua");
    l0 = self.box_PlayerFullyDetected_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerFullyDetected_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1459436439");
    l0:SetConnections({
        -- Detected,
        [0] = self.f_box_PlayerFullyDetected_67_Detected,
        -- Disabled,
        [1] = self.f_box_PlayerFullyDetected_67_Disabled,
    });
    self.box_Delay_v5_12 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1512191058");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_12_TimeElapsed,
    });
    self.box_IndexList_v2_57 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1532293168");
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
                [0] = self.f_box_IndexList_v2_57_Output_0,
                [1] = self.f_box_IndexList_v2_57_Output_1,
                [2] = self.f_box_IndexList_v2_57_Output_2,
            },
            count = 3,
        },
    });
    self.box_SpawnAI_Wave_v2_17 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1594256631");
    l0:SetConnections({
        -- Cancelled,
        [0] = self.f_box_SpawnAI_Wave_v2_17_Cancelled,
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_17_NextWave,
    });
    self.box_MissionAckTriggerListener_30 = cbox:CreateBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
    l0 = self.box_MissionAckTriggerListener_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionAckTriggerListener_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1702553816");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_MissionAckTriggerListener_30_Enter,
    });
    self.box_SpawnAI_32 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1732143015");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_32_Out,
    });
    self.box_SpawnAI_58 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1808629701");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_58_Out,
    });
    self.box_Brick_Exp_Outro_v4_7 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Narrative.Brick_Exp_Outro_v4.debug.lua");
    l0 = self.box_Brick_Exp_Outro_v4_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Outro_v4_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1937893549");
    l0:SetConnections({
    });
    self.box_Brick_Exp_Extraction_PackageStolenDetector_6 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Extraction_PackageStolenDetector.debug.lua");
    l0 = self.box_Brick_Exp_Extraction_PackageStolenDetector_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Extraction_PackageStolenDetector_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1975969002");
    l0:SetConnections({
        -- Enabled,
        [0] = self.f_box_Brick_Exp_Extraction_PackageStolenDetector_6_Enabled,
        -- PackageStolenDetected,
        [1] = self.f_box_Brick_Exp_Extraction_PackageStolenDetector_6_PackageStolenDetected,
    });
    self.box_Brick_Exp_Extraction_ReachSurvive_v3_3 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Extraction_ReachSurvive_v3.debug.lua");
    l0 = self.box_Brick_Exp_Extraction_ReachSurvive_v3_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Extraction_ReachSurvive_v3_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|2026834166");
    l0:SetConnections({
        -- ReachedSurvived,
        [0] = self.f_box_Brick_Exp_Extraction_ReachSurvive_v3_3_ReachedSurvived,
        -- ToSpawnHelicopter,
        [1] = self.f_box_Brick_Exp_Extraction_ReachSurvive_v3_3_ToSpawnHelicopter,
    });
    self.box_ProximityTrigger_v3_29 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|2059091713");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_29_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v3_29_Leave,
    });
    self.box_SpawnAI_54 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|2119296438");
    l0:SetConnections({
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_16;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|163878040", "163878040", "Canyon_C2_CTP_010_Ext_B", "In", "box_ActivityAcknowledgeGate_16.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_v2_42();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|626309630", "626309630", "Canyon_C2_CTP_010_Ext_B", "OnLeaveZone", "box_ActivityRetry_v2_42.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_56_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_58();
    l0 = self.box_MultipleOR_56;
    l1 = self.box_SpawnAI_58;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|879301482", "879301482", "Canyon_C2_CTP_010_Ext_B", "box_MultipleOR_56.Out", "box_SpawnAI_58.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_9();
    l0 = self.box_SpawnAI_9;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1746861086", "1746861086", "Canyon_C2_CTP_010_Ext_B", "box_OutputOrder_v2_13.Out", "box_SpawnAI_9.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_12();
    l0 = self.box_Delay_v5_12;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|524381058", "524381058", "Canyon_C2_CTP_010_Ext_B", "box_OutputOrder_v2_13.Out", "box_Delay_v5_12.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_MultipleOR_37_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_37;
    l1 = self.box_ActivityInitialized_27;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|946864964", "946864964", "Canyon_C2_CTP_010_Ext_B", "box_MultipleOR_37.Out", "box_ActivityInitialized_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Compare_Integers_11_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|25936098", "25936098", "Canyon_C2_CTP_010_Ext_B", "box_Compare_Integers_11.A_le_B", "box_OutputOrder_v2_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_65_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_57();
    l0 = self.box_IndexList_v2_57;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|263845464", "263845464", "Canyon_C2_CTP_010_Ext_B", "box_OutputOrder_v2_65.Out", "box_IndexList_v2_57.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_65_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_63;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|27607740", "27607740", "Canyon_C2_CTP_010_Ext_B", "box_OutputOrder_v2_65.Out", "box_MultipleOR_63.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_65_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_66();
    l0 = self.box_ProximityRadiusListener_v3_66;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1683998595", "1683998595", "Canyon_C2_CTP_010_Ext_B", "box_OutputOrder_v2_65.Out", "box_ProximityRadiusListener_v3_66.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_23_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_23;
    l1 = self.box_OnceOnly_v3_28;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1796395718", "1796395718", "Canyon_C2_CTP_010_Ext_B", "box_MultipleOR_23.Out", "box_OnceOnly_v3_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_BroadcastMessage_25_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_45();
    l0 = self.box_Gate_v3_45;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1320811853", "1320811853", "Canyon_C2_CTP_010_Ext_B", "box_BroadcastMessage_25.Out", "box_Gate_v3_45.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_21_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_45();
    l0 = self.box_Gate_v3_45;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|814448187", "814448187", "Canyon_C2_CTP_010_Ext_B", "box_OutputOrder_v2_21.Out", "box_Gate_v3_45.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_21_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerFullyDetected_67();
    l0 = self.box_PlayerFullyDetected_67;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|149963585", "149963585", "Canyon_C2_CTP_010_Ext_B", "box_OutputOrder_v2_21.Out", "box_PlayerFullyDetected_67.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Gate_v3_45_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_62();
    l0 = self.box_Gate_v3_45;
    l1 = self.box_MultipleAND_v2_62;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|762033699", "762033699", "Canyon_C2_CTP_010_Ext_B", "box_Gate_v3_45.Closed", "box_MultipleAND_v2_62.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_Gate_v3_45_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetActivityFact_55();
    l0 = self.box_Gate_v3_45;
    l1 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|636855765", "636855765", "Canyon_C2_CTP_010_Ext_B", "box_Gate_v3_45.Out", "box_GetActivityFact_55.GetFact", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetFact
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_35_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_31();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|356942104", "356942104", "Canyon_C2_CTP_010_Ext_B", "box_Compare_Integers_35.A_le_B", "box_OutputOrder_v2_31.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_10_SomeoneFar()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_12();
    l0 = self.box_ProximityRadiusListener_v3_10;
    l1 = self.box_Delay_v5_12;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1870702454", "1870702454", "Canyon_C2_CTP_010_Ext_B", "box_ProximityRadiusListener_v3_10.SomeoneFar", "box_Delay_v5_12.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ProximityRadiusListener_v3_66_SomeoneFar()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_66;
    l1 = self.box_MultipleOR_63;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|810555808", "810555808", "Canyon_C2_CTP_010_Ext_B", "box_ProximityRadiusListener_v3_66.SomeoneFar", "box_MultipleOR_63.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityRadiusListener_v3_66_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_64();
    l0 = self.box_ProximityRadiusListener_v3_66;
    l1 = self.box_Delay_v5_64;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|737618035", "737618035", "Canyon_C2_CTP_010_Ext_B", "box_ProximityRadiusListener_v3_66.SomeoneNear", "box_Delay_v5_64.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_64_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_61();
    l0 = self.box_Delay_v5_64;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|343668431", "343668431", "Canyon_C2_CTP_010_Ext_B", "box_Delay_v5_64.TimeElapsed", "box_Compare_Integers_61.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_47_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_GroupIter_51();
    l0 = self.box_ProximityRadiusListener_v3_47;
    l1 = self.box_GroupIter_51;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|513148025", "513148025", "Canyon_C2_CTP_010_Ext_B", "box_ProximityRadiusListener_v3_47.SomeoneNear", "box_GroupIter_51.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_34_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_Wave_v2_17();
    l0 = self.box_Delay_v5_34;
    l1 = self.box_SpawnAI_Wave_v2_17;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|488620015", "488620015", "Canyon_C2_CTP_010_Ext_B", "box_Delay_v5_34.TimeElapsed", "box_SpawnAI_Wave_v2_17.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_26_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Extraction_PackageStolenDetector_6();
    l0 = self.box_Brick_Exp_Extraction_PackageStolenDetector_6;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1597561162", "1597561162", "Canyon_C2_CTP_010_Ext_B", "box_OutputOrder_v2_26.Out", "box_Brick_Exp_Extraction_PackageStolenDetector_6.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_26_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionAckTriggerListener_30();
    l0 = self.box_MissionAckTriggerListener_30;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|730985069", "730985069", "Canyon_C2_CTP_010_Ext_B", "box_OutputOrder_v2_26.Out", "box_MissionAckTriggerListener_30.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_26_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_38();
    l0 = self.box_ProximityRadiusListener_v3_38;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1261252496", "1261252496", "Canyon_C2_CTP_010_Ext_B", "box_OutputOrder_v2_26.Out", "box_ProximityRadiusListener_v3_38.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_26_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_68();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|2099034276", "2099034276", "Canyon_C2_CTP_010_Ext_B", "box_OutputOrder_v2_26.Out", "box_GetActivityFact_68.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_38_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_44();
    l0 = self.box_ProximityRadiusListener_v3_38;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|593885484", "593885484", "Canyon_C2_CTP_010_Ext_B", "box_ProximityRadiusListener_v3_38.SomeoneNear", "box_SetActivityFact_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_36_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_24();
    l0 = self.box_Delay_v5_24;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1553072789", "1553072789", "Canyon_C2_CTP_010_Ext_B", "box_OutputOrder_v2_36.Out", "box_Delay_v5_24.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_36_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_39();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|397597484", "397597484", "Canyon_C2_CTP_010_Ext_B", "box_OutputOrder_v2_36.Out", "box_TriggerState_v2_39.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetDistance_48_Out()
    local params, l0;
    self:OnExit_box_GetDistance_48_Out();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Floats_52();
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1347979301", "1347979301", "Canyon_C2_CTP_010_Ext_B", "box_GetDistance_48.Out", "box_Compare_Floats_52.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_27_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_26();
    l0 = self.box_ActivityInitialized_27;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1338571598", "1338571598", "Canyon_C2_CTP_010_Ext_B", "box_ActivityInitialized_27.Out", "box_OutputOrder_v2_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_4_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Outro_v4_7();
    l0 = self.box_Brick_Exp_Outro_v4_7;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|168436676", "168436676", "Canyon_C2_CTP_010_Ext_B", "box_MissionBlockLayer_4.Activated", "box_Brick_Exp_Outro_v4_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_24_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_35();
    l0 = self.box_Delay_v5_24;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1240401306", "1240401306", "Canyon_C2_CTP_010_Ext_B", "box_Delay_v5_24.TimeElapsed", "box_Compare_Integers_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetActivityFact_19_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_36();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|926259081", "926259081", "Canyon_C2_CTP_010_Ext_B", "box_SetActivityFact_19.Out", "box_OutputOrder_v2_36.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_28_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_21();
    l0 = self.box_OnceOnly_v3_28;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|487392258", "487392258", "Canyon_C2_CTP_010_Ext_B", "box_OnceOnly_v3_28.Out", "box_OutputOrder_v2_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RadioModifier_v3_71_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RadioModifier_v3_70();
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|300498464", "300498464", "Canyon_C2_CTP_010_Ext_B", "box_RadioModifier_v3_71.Out", "box_RadioModifier_v3_70.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_62_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_66();
    l0 = self.box_MultipleAND_v2_62;
    l1 = self.box_ProximityRadiusListener_v3_66;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1845696825", "1845696825", "Canyon_C2_CTP_010_Ext_B", "box_MultipleAND_v2_62.Out", "box_ProximityRadiusListener_v3_66.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_BroadcastMessage_5_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_1();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|2137552883", "2137552883", "Canyon_C2_CTP_010_Ext_B", "box_BroadcastMessage_5.Out", "box_OutputOrder_v2_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_BasicSetups_15_Out()
    local params, l0, l1;
    self:OnExit_box_Brick_Exp_Common_BasicSetups_15_Out();
    params = self:OnEnter_box_Brick_Exp_Extraction_ReachSurvive_v3_3();
    l0 = self.box_Brick_Exp_Common_BasicSetups_15;
    l1 = self.box_Brick_Exp_Extraction_ReachSurvive_v3_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|713142930", "713142930", "Canyon_C2_CTP_010_Ext_B", "box_Brick_Exp_Common_BasicSetups_15.Out", "box_Brick_Exp_Extraction_ReachSurvive_v3_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_GetActivityFact_68_FactNotSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_69();
    l0 = self.box_MessageListener_v3_69;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1177059067", "1177059067", "Canyon_C2_CTP_010_Ext_B", "box_GetActivityFact_68.FactNotSet", "box_MessageListener_v3_69.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetActivityFact_68_FactSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerFullyDetected_67();
    l0 = self.box_PlayerFullyDetected_67;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|743293377", "743293377", "Canyon_C2_CTP_010_Ext_B", "box_GetActivityFact_68.FactSet", "box_PlayerFullyDetected_67.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_TriggerState_v2_39_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_29();
    l0 = self.box_ProximityTrigger_v3_29;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|591722784", "591722784", "Canyon_C2_CTP_010_Ext_B", "box_TriggerState_v2_39.Enabled", "box_ProximityTrigger_v3_29.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IndexList_v2_14_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_54();
    l0 = self.box_IndexList_v2_14;
    l1 = self.box_SpawnAI_54;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1852629942", "1852629942", "Canyon_C2_CTP_010_Ext_B", "box_IndexList_v2_14.Output", "box_SpawnAI_54.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_14_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_32();
    l0 = self.box_IndexList_v2_14;
    l1 = self.box_SpawnAI_32;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|155187759", "155187759", "Canyon_C2_CTP_010_Ext_B", "box_IndexList_v2_14.Output", "box_SpawnAI_32.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_33_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_29();
    l0 = self.box_ProximityTrigger_v3_29;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1204308775", "1204308775", "Canyon_C2_CTP_010_Ext_B", "box_UseContextualActionModifier_v3_33.Disabled", "box_ProximityTrigger_v3_29.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Extraction_ReachSurvive_v3_3();
    l0 = self.box_Brick_Exp_Extraction_ReachSurvive_v3_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|747815506", "747815506", "Canyon_C2_CTP_010_Ext_B", "box_OutputOrder_v2_18.Out", "box_Brick_Exp_Extraction_ReachSurvive_v3_3.PackageStolenDetected", clone:GetLuaBox(), l0:GetLuaBox());
    -- PackageStolenDetected
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1114967907", "1114967907", "Canyon_C2_CTP_010_Ext_B", "box_OutputOrder_v2_18.Out", "box_MultipleOR_23.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_18_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_62();
    l0 = self.box_MultipleAND_v2_62;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|2024523400", "2024523400", "Canyon_C2_CTP_010_Ext_B", "box_OutputOrder_v2_18.Out", "box_MultipleAND_v2_62.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_18_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_46();
    l0 = self.box_Delay_v5_46;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1666396802", "1666396802", "Canyon_C2_CTP_010_Ext_B", "box_OutputOrder_v2_18.Out", "box_Delay_v5_46.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_46_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_47();
    l0 = self.box_Delay_v5_46;
    l1 = self.box_ProximityRadiusListener_v3_47;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|264652952", "264652952", "Canyon_C2_CTP_010_Ext_B", "box_Delay_v5_46.TimeElapsed", "box_ProximityRadiusListener_v3_47.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Compare_Integers_61_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_65();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1947073269", "1947073269", "Canyon_C2_CTP_010_Ext_B", "box_Compare_Integers_61.A_le_B", "box_OutputOrder_v2_65.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_53_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_BroadcastMessage_25();
    l0 = self.box_OnceOnly_v3_53;
    l1 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|329778347", "329778347", "Canyon_C2_CTP_010_Ext_B", "box_OnceOnly_v3_53.Out", "box_BroadcastMessage_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupIter_51_PawnIter()
    local params, l0, l1;
    self:OnExit_box_GroupIter_51_PawnIter();
    params = self:OnEnter_box_GetDistance_48();
    l0 = self.box_GroupIter_51;
    l1 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|658869348", "658869348", "Canyon_C2_CTP_010_Ext_B", "box_GroupIter_51.PawnIter", "box_GetDistance_48.Distance3D", l0:GetLuaBox(), l1:GetLuaBox());
    -- Distance3D
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_20_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_43();
    l0 = self.box_SpawnAI_20;
    l1 = self.box_SpawnAI_43;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1859136774", "1859136774", "Canyon_C2_CTP_010_Ext_B", "box_SpawnAI_20.Out", "box_SpawnAI_43.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Brick_Exp_Extraction_Helicopter_v2_2_PlayersAllSeated()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_19();
    l0 = self.box_Brick_Exp_Extraction_Helicopter_v2_2;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|381609926", "381609926", "Canyon_C2_CTP_010_Ext_B", "box_Brick_Exp_Extraction_Helicopter_v2_2.PlayersAllSeated", "box_SetActivityFact_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Extraction_Helicopter_v2_2_ToTakeOff()
    local params, l0, l1;
    params = self:OnEnter_box_BroadcastMessage_5();
    l0 = self.box_Brick_Exp_Extraction_Helicopter_v2_2;
    l1 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1076792757", "1076792757", "Canyon_C2_CTP_010_Ext_B", "box_Brick_Exp_Extraction_Helicopter_v2_2.ToTakeOff", "box_BroadcastMessage_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetActivityFact_55_FactNotSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_20();
    l0 = self.box_SpawnAI_20;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|729859371", "729859371", "Canyon_C2_CTP_010_Ext_B", "box_GetActivityFact_55.FactNotSet", "box_SpawnAI_20.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_GetActivityFact_55_FactSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_14();
    l0 = self.box_IndexList_v2_14;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|901841552", "901841552", "Canyon_C2_CTP_010_Ext_B", "box_GetActivityFact_55.FactSet", "box_IndexList_v2_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_72_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1830528510", "1830528510", "Canyon_C2_CTP_010_Ext_B", "box_OutputOrder_v2_72.Out", "box_MultipleOR_23.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_72_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RadioModifier_v3_71();
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|689770436", "689770436", "Canyon_C2_CTP_010_Ext_B", "box_OutputOrder_v2_72.Out", "box_RadioModifier_v3_71.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_63_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_64();
    l0 = self.box_MultipleOR_63;
    l1 = self.box_Delay_v5_64;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1489350507", "1489350507", "Canyon_C2_CTP_010_Ext_B", "box_MultipleOR_63.Out", "box_Delay_v5_64.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_ActivityAcknowledgeGate_16_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_16;
    l1 = self.box_MultipleOR_37;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|39861065", "39861065", "Canyon_C2_CTP_010_Ext_B", "box_ActivityAcknowledgeGate_16.Acknowledged", "box_MultipleOR_37.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_16_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_16;
    l1 = self.box_MultipleOR_37;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|722263459", "722263459", "Canyon_C2_CTP_010_Ext_B", "box_ActivityAcknowledgeGate_16.Reloaded", "box_MultipleOR_37.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MessageListener_v3_69_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_69;
    l1 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|141848417", "141848417", "Canyon_C2_CTP_010_Ext_B", "box_MessageListener_v3_69.Received", "box_MultipleOR_23.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayerFullyDetected_67_Detected()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_72();
    l0 = self.box_PlayerFullyDetected_67;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1633665864", "1633665864", "Canyon_C2_CTP_010_Ext_B", "box_PlayerFullyDetected_67.Detected", "box_OutputOrder_v2_72.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayerFullyDetected_67_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_MessageListener_v3_69();
    l0 = self.box_PlayerFullyDetected_67;
    l1 = self.box_MessageListener_v3_69;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|165724540", "165724540", "Canyon_C2_CTP_010_Ext_B", "box_PlayerFullyDetected_67.Disabled", "box_MessageListener_v3_69.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_12_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_11();
    l0 = self.box_Delay_v5_12;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|690868325", "690868325", "Canyon_C2_CTP_010_Ext_B", "box_Delay_v5_12.TimeElapsed", "box_Compare_Integers_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_57_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_60();
    l0 = self.box_IndexList_v2_57;
    l1 = self.box_SpawnAI_60;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|277087885", "277087885", "Canyon_C2_CTP_010_Ext_B", "box_IndexList_v2_57.Output", "box_SpawnAI_60.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_57_Output_1()
    local l0, l1;
    l0 = self.box_IndexList_v2_57;
    l1 = self.box_MultipleOR_56;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|510763175", "510763175", "Canyon_C2_CTP_010_Ext_B", "box_IndexList_v2_57.Output", "box_MultipleOR_56.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IndexList_v2_57_Output_2()
    local l0, l1;
    l0 = self.box_IndexList_v2_57;
    l1 = self.box_MultipleOR_56;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1755693081", "1755693081", "Canyon_C2_CTP_010_Ext_B", "box_IndexList_v2_57.Output", "box_MultipleOR_56.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SpawnAI_Wave_v2_17_Cancelled()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_Wave_v2_41();
    l0 = self.box_SpawnAI_Wave_v2_17;
    l1 = self.box_SpawnAI_Wave_v2_41;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1030800156", "1030800156", "Canyon_C2_CTP_010_Ext_B", "box_SpawnAI_Wave_v2_17.Cancelled", "box_SpawnAI_Wave_v2_41.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_Wave_v2_17_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_Wave_v2_41();
    l0 = self.box_SpawnAI_Wave_v2_17;
    l1 = self.box_SpawnAI_Wave_v2_41;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1699975056", "1699975056", "Canyon_C2_CTP_010_Ext_B", "box_SpawnAI_Wave_v2_17.NextWave", "box_SpawnAI_Wave_v2_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_8_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Extraction_Helicopter_v2_2();
    l0 = self.box_Brick_Exp_Extraction_Helicopter_v2_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|2028164212", "2028164212", "Canyon_C2_CTP_010_Ext_B", "box_OutputOrder_v2_8.Out", "box_Brick_Exp_Extraction_Helicopter_v2_2.TimeToGetIn", clone:GetLuaBox(), l0:GetLuaBox());
    -- TimeToGetIn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_8_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_10();
    l0 = self.box_ProximityRadiusListener_v3_10;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|732102941", "732102941", "Canyon_C2_CTP_010_Ext_B", "box_OutputOrder_v2_8.Out", "box_ProximityRadiusListener_v3_10.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MissionAckTriggerListener_30_Enter()
    local l0, l1;
    l0 = self.box_MissionAckTriggerListener_30;
    l1 = self.box_OnceOnly_v3_53;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1278645845", "1278645845", "Canyon_C2_CTP_010_Ext_B", "box_MissionAckTriggerListener_30.Enter", "box_OnceOnly_v3_53.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_32_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_22();
    l0 = self.box_SpawnAI_32;
    l1 = self.box_SpawnAI_22;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|525547830", "525547830", "Canyon_C2_CTP_010_Ext_B", "box_SpawnAI_32.Out", "box_SpawnAI_22.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_58_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_59();
    l0 = self.box_SpawnAI_58;
    l1 = self.box_SpawnAI_59;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1372503832", "1372503832", "Canyon_C2_CTP_010_Ext_B", "box_SpawnAI_58.Out", "box_SpawnAI_59.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Compare_Floats_52_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_50();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|712939903", "712939903", "Canyon_C2_CTP_010_Ext_B", "box_Compare_Floats_52.A_ge_B", "box_SetContextualStrategy_50.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_4();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1163168178", "1163168178", "Canyon_C2_CTP_010_Ext_B", "box_OutputOrder_v2_1.Out", "box_MissionBlockLayer_4.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_34();
    l0 = self.box_Delay_v5_34;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1090864369", "1090864369", "Canyon_C2_CTP_010_Ext_B", "box_OutputOrder_v2_1.Out", "box_Delay_v5_34.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Brick_Exp_Extraction_PackageStolenDetector_6_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_BasicSetups_15();
    l0 = self.box_Brick_Exp_Extraction_PackageStolenDetector_6;
    l1 = self.box_Brick_Exp_Common_BasicSetups_15;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1330726553", "1330726553", "Canyon_C2_CTP_010_Ext_B", "box_Brick_Exp_Extraction_PackageStolenDetector_6.Enabled", "box_Brick_Exp_Common_BasicSetups_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Brick_Exp_Extraction_PackageStolenDetector_6_PackageStolenDetected()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = self.box_Brick_Exp_Extraction_PackageStolenDetector_6;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1375294388", "1375294388", "Canyon_C2_CTP_010_Ext_B", "box_Brick_Exp_Extraction_PackageStolenDetector_6.PackageStolenDetected", "box_OutputOrder_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_40_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Extraction_Helicopter_v2_2();
    l0 = self.box_Brick_Exp_Extraction_Helicopter_v2_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1659559734", "1659559734", "Canyon_C2_CTP_010_Ext_B", "box_OutputOrder_v2_40.Out", "box_Brick_Exp_Extraction_Helicopter_v2_2.SpawnHelicopter", clone:GetLuaBox(), l0:GetLuaBox());
    -- SpawnHelicopter
    l0:Exec(0, params);
end;

function export:f_box_Brick_Exp_Extraction_ReachSurvive_v3_3_ReachedSurvived()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_8();
    l0 = self.box_Brick_Exp_Extraction_ReachSurvive_v3_3;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1496266638", "1496266638", "Canyon_C2_CTP_010_Ext_B", "box_Brick_Exp_Extraction_ReachSurvive_v3_3.ReachedSurvived", "box_OutputOrder_v2_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Extraction_ReachSurvive_v3_3_ToSpawnHelicopter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_40();
    l0 = self.box_Brick_Exp_Extraction_ReachSurvive_v3_3;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1694758206", "1694758206", "Canyon_C2_CTP_010_Ext_B", "box_Brick_Exp_Extraction_ReachSurvive_v3_3.ToSpawnHelicopter", "box_OutputOrder_v2_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_Wave_v2_17();
    l0 = self.box_SpawnAI_Wave_v2_17;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1097727439", "1097727439", "Canyon_C2_CTP_010_Ext_B", "box_OutputOrder_v2_31.Out", "box_SpawnAI_Wave_v2_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_31_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_24();
    l0 = self.box_Delay_v5_24;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|378987154", "378987154", "Canyon_C2_CTP_010_Ext_B", "box_OutputOrder_v2_31.Out", "box_Delay_v5_24.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_ProximityTrigger_v3_29_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_33();
    l0 = self.box_ProximityTrigger_v3_29;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|10443700", "10443700", "Canyon_C2_CTP_010_Ext_B", "box_ProximityTrigger_v3_29.Enter", "box_UseContextualActionModifier_v3_33.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_29_Leave()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_33();
    l0 = self.box_ProximityTrigger_v3_29;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|184455122", "184455122", "Canyon_C2_CTP_010_Ext_B", "box_ProximityTrigger_v3_29.Leave", "box_UseContextualActionModifier_v3_33.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_SpawnAI_9()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109117121838467182",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|85952291");
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

function export:OnEnter_box_SetContextualStrategy_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|145388187");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109889731807429000",
        -- Group,
        [1] = self.GurrentEnemy,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|190335093");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_11_A_le_B,
    });
    params = {
        -- A,
        [0] = Globals.Canyon_C2_CTP_010_Enemy.i_CurrentSize,
        -- B,
        [1] = 11,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|245922524");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|311028175");
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
                [0] = self.f_box_OutputOrder_v2_65_Out_0,
                [1] = self.f_box_OutputOrder_v2_65_Out_1,
                [2] = self.f_box_OutputOrder_v2_65_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|359671748");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_25_Out,
    });
    params = {
        -- Message,
        [0] = "reach_extraction",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_22()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109171070455001855",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|395292150");
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

function export:OnEnter_box_Gate_v3_45()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|433428591");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_35_A_le_B,
    });
    params = {
        -- A,
        [0] = Globals.Canyon_C2_CTP_010_Enemy.i_CurrentSize,
        -- B,
        [1] = 8,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_10()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = PersistentGlobals.Lib_Expeditions_Gameplay.ePackageOwner,
        -- farZone,
        [2] = 50,
        -- id2,
        [3] = "2108206542271547399",
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_66()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = PersistentGlobals.Lib_Expeditions_Gameplay.ePackageOwner,
        -- farZone,
        [2] = 110,
        -- id2,
        [3] = "2108206542271547399",
        -- nearZone,
        [4] = 100,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_64()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_47()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = PersistentGlobals.Lib_Expeditions_Gameplay.ePackageOwner,
        -- id2,
        [3] = "2108206542271547399",
        -- nearZone,
        [4] = 50,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_60()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108206761417640660",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_34()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 30,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|713487977");
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
                [0] = self.f_box_OutputOrder_v2_26_Out_0,
                [1] = self.f_box_OutputOrder_v2_26_Out_1,
                [2] = self.f_box_OutputOrder_v2_26_Out_2,
                [3] = self.f_box_OutputOrder_v2_26_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_38()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = PersistentGlobals.Lib_Expeditions_Gameplay.ePackageOwner,
        -- id2,
        [3] = "2108206542271547399",
        -- nearZone,
        [4] = 100,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|759784798");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "GetCloseTo_Extraction_B",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|782544861");
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
                [0] = self.f_box_OutputOrder_v2_36_Out_0,
                [1] = self.f_box_OutputOrder_v2_36_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetDistance_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetDistance_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|828739824");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetDistance_48_Out,
    });
    params = {
        -- Entity1,
        [0] = self.GurrentEnemy,
        -- Entity2,
        [1] = "2108206542271547399",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|843937855");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_4_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160306431395166",
        -- missionLayerId,
        [1] = "27160309138306419",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_24()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|864664338");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_19_Out,
    });
    params = {
        -- Fact,
        [0] = "PlayerAllSeated_Ext_B",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_59()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109172345326289955",
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_71()
    local params, l0;
    DrawTextToScreen("Comment: LC: Disable on detection BOW-74745", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RadioModifier_v3')-- Comment: LC: Disable on detection BOW-74745");
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|978692449");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RadioModifier_v3_71_Out,
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

function export:OnEnter_box_SpawnAI_Wave_v2_41()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 10,
        -- AttackerSpawner_1,
        [1] = "2108609082458905650",
        -- CoreNPCGroup,
        [2] = "#71C4A962",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2109119947998296455",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_62()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1034084781");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_5_Out,
    });
    params = {
        -- Message,
        [0] = "EndEnemy",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_BasicSetups_15()
    local params;
    params = {
        -- Debug_ExtractionPOIID,
        [0] = 2,
        -- DebugMode,
        [4] = true,
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1090856428");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_68_FactNotSet,
        -- FactSet,
        [1] = self.f_box_GetActivityFact_68_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015339891382363",
        -- Fact,
        [1] = "Canyon_C2_CTP_010_PlayerDetected",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1107095973");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_TriggerState_v2_39_Enabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2109212537470864757",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_14()
    local params;
    params = {
        -- Index,
        [0] = PersistentGlobals.Canyon_C2_CTP_010_Main.Difficulty,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1141255560");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_33_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109212497333472611",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1155244870");
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
                [0] = self.f_box_OutputOrder_v2_18_Out_0,
                [1] = self.f_box_OutputOrder_v2_18_Out_1,
                [2] = self.f_box_OutputOrder_v2_18_Out_2,
                [3] = self.f_box_OutputOrder_v2_18_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_46()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1232828194");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_61_A_le_B,
    });
    params = {
        -- A,
        [0] = Globals.Canyon_C2_CTP_010_Enemy.i_CurrentSize,
        -- B,
        [1] = 8,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_43()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109171150815770198",
    };
    return params;
end;

function export:OnEnter_box_GroupIter_51()
    local params;
    params = {
        -- entities,
        [0] = "#71C4A962",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_20()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108396253611034718",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Extraction_Helicopter_v2_2()
    local params;
    params = {
        -- HelicopterSpawner,
        [0] = "2108234075476070743",
        -- ObjectiveMarker,
        [1] = "2108234321694298975",
        -- PlayMusicEvent,
        [2] = "30992813",
        -- StopMusicEvent,
        [3] = "2583714736",
        -- STP_Coming,
        [4] = "2108234239565632087",
        -- STP_Leaving,
        [5] = "2108234299663717166",
        -- VO_ShootChopper_01,
        [6] = "697883140",
        -- VO_ShootChopper_02,
        [7] = "3828208729",
        -- VO_ShootChopper_03,
        [8] = "335981144",
        -- VO_ShootChopper_04,
        [9] = "924628978",
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1399106305");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_55_FactNotSet,
        -- FactSet,
        [1] = self.f_box_GetActivityFact_55_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015339891340427",
        -- Fact,
        [1] = "Package_In_Sentry",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1411372473");
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
                [0] = self.f_box_OutputOrder_v2_72_Out_0,
                [1] = self.f_box_OutputOrder_v2_72_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_69()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "Canyon_C2_CTP_010_PlayerDetected",
    };
    return params;
end;

function export:OnEnter_box_PlayerFullyDetected_67()
    local params;
    params = {
        -- group,
        [0] = "#71C4A962",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_12()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_57()
    local params;
    params = {
        -- Index,
        [0] = PersistentGlobals.Canyon_C2_CTP_010_Main.Difficulty,
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_70()
    local params, l0;
    DrawTextToScreen("Comment: LC: Disable on detection BOW-74745", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RadioModifier_v3')-- Comment: LC: Disable on detection BOW-74745");
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1589637232");
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

function export:OnEnter_box_SpawnAI_Wave_v2_17()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 10,
        -- AttackerSpawner_1,
        [1] = "2108609086823079007",
        -- CoreNPCGroup,
        [2] = "#71C4A962",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2109462034832701157",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1609008175");
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
                [0] = self.f_box_OutputOrder_v2_8_Out_0,
                [1] = self.f_box_OutputOrder_v2_8_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionAckTriggerListener_30()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- triggerId,
        [1] = "2108193320749498859",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_32()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108206512703801204",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_58()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108206761417640660",
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1900636699");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Floats_52_A_ge_B,
    });
    params = {
        -- A,
        [0] = self._sld_Distance_box_GetDistance_48,
        -- B,
        [1] = 300,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Outro_v4_7()
    local params;
    params = {
        -- DelayBeforeVictorySignOffVO,
        [0] = 6,
        -- PlayMusicEvent,
        [1] = "30992813",
        -- SceneEntity,
        [2] = "2108510580751998923",
        -- Sequence,
        [3] = "Sequences/bowmore_expedition/outro/expedition_outro_canyon.seq",
        -- StopMusicEvent,
        [4] = "2583714736",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|1975678587");
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
                [0] = self.f_box_OutputOrder_v2_1_Out_0,
                [1] = self.f_box_OutputOrder_v2_1_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Extraction_PackageStolenDetector_6()
    local params;
    params = {
        -- AllEnemiesGroup,
        [0] = "#71C4A962",
        -- EnemyActivity,
        [1] = "9015339891382363",
        -- PackagePositionEntity,
        [2] = PersistentGlobals.Canyon_C2_CTP_010_Main.PackageSpawner,
        -- PlayerDetectedFact,
        [3] = "Canyon_C2_CTP_010_PlayerDetected",
        -- VO_CheckPackage_01,
        [4] = "4223568461",
        -- VO_CheckPackage_02,
        [5] = "2247502782",
        -- VO_CheckPackage_03,
        [6] = "3694213426",
        -- VO_CheckPackage_04,
        [7] = "1481059655",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|2010931625");
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
                [0] = self.f_box_OutputOrder_v2_40_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Extraction_ReachSurvive_v3_3()
    local params;
    params = {
        -- ExtractionMarker_A,
        [0] = "2108636111835243714",
        -- ExtractionMarker_B,
        [1] = "2108193299285148137",
        -- ExtractionMarker_C,
        [2] = "2108677996100459944",
        -- ExtractionPOIID,
        [3] = self.iExtractionPOIID,
        -- GroupAllEnemies,
        [4] = "#71C4A962",
        -- ObjectiveTimer,
        [5] = 120,
        -- PlayMusicEvent,
        [6] = "30992813",
        -- ReachExtractionShape_A,
        [7] = "2108193327600894444",
        -- ReachExtractionShape_B,
        [8] = "2108193320749498859",
        -- ReachExtractionShape_C,
        [9] = "2108636135889577185",
        -- StopMusicEvent,
        [10] = "2583714736",
        -- TimeBeforeSpawnHelicopter,
        [11] = 102,
        -- VO_EnemyKnows_01,
        [12] = "3394256395",
        -- VO_EnemyKnows_02,
        [13] = "1718341629",
        -- VO_EnemyKnows_03,
        [14] = "279154678",
        -- VO_EnemyKnows_04,
        [15] = "3796536693",
        -- VO_EnemyKnows_05,
        [16] = "1576015005",
        -- VO_ExtractionLocation_A,
        [17] = "4158060662",
        -- VO_ExtractionLocation_B,
        [18] = "597559651",
        -- VO_ExtractionLocation_C,
        [19] = "1045442344",
        -- VO_FoundYouAgain_01,
        [20] = "404565370",
        -- VO_FoundYouAgain_02,
        [21] = "1748906633",
        -- VO_FoundYouAgain_03,
        [22] = "4120864174",
        -- VO_FoundYouAgain_04,
        [23] = "1873469197",
        -- VO_FoundYouAgain_05,
        [24] = "2242572988",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_B.domino|@Canyon_C2_CTP_010_Ext_B|2033090155");
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

function export:OnEnter_box_ProximityTrigger_v3_29()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109212537470864757",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_54()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108206512703801204",
    };
    return params;
end;

function export:OnExit_box_GetDistance_48_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    self._sld_Distance_box_GetDistance_48 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_Exp_Common_BasicSetups_15_Out()
    local l0;
    l0 = self.box_Brick_Exp_Common_BasicSetups_15;
    self.iExtractionPOIID = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupIter_51_PawnIter()
    local l0;
    l0 = self.box_GroupIter_51;
    self.GurrentEnemy = l0:GetDataOutValue(0);
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
