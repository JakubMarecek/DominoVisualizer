LUAC}c -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_canyon/expeditions/c2/canyon_c2_ctp_010_ext_c.domino
-- User graph: Canyon_C2_CTP_010_Ext_C
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
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
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
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/TriggerState_v2.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/Library/Sp/Lib_Expeditions_Gameplay.globals.lua");
        cboxRes:RegisterGlobals("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Enemy.globals.lua");
        cboxRes:RegisterGlobals("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Main.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[4120864174.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1481059655.bnk]], "CSoundResource");
        cboxRes:LoadResource([[404565370.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1718341629.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3796536693.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2242572988.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3828208729.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3694213426.bnk]], "CSoundResource");
        cboxRes:LoadResource([[30992813.bnk]], "CSoundResource");
        cboxRes:LoadResource([[924628978.bnk]], "CSoundResource");
        cboxRes:LoadResource([[597559651.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1873469197.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4158060662.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1576015005.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2583714736.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2247502782.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4223568461.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1748906633.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3394256395.bnk]], "CSoundResource");
        cboxRes:LoadResource([[335981144.bnk]], "CSoundResource");
        cboxRes:LoadResource([[697883140.bnk]], "CSoundResource");
        cboxRes:LoadResource([[279154678.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1045442344.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Ext_C.Canyon_C2_CTP_010_Ext_C.debug.lua")] = {
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
    self._name = "Canyon_C2_CTP_010_Ext_C";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C";
    self.iExtractionPOIID = 0;
    self.Timer = 0;
    self.Ext_C_FastTeam_Village_Wave_02 = nil;
    self.GurrentEnemy = nil;
    self.PickedPackageWaveSpawned = false;
    self.box_SpawnAI_25 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|23621310");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_50 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|184829593");
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
        [0] = self.f_box_MultipleAND_v2_50_Out,
    });
    self.box_ProximityTrigger_v3_30 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|322845438");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_30_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v3_30_Leave,
    });
    self.box_Delay_v5_40 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|373275276");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_40_TimeElapsed,
    });
    self.box_IndexList_v2_42 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|416927150");
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
                [1] = self.f_box_IndexList_v2_42_Output_1,
                [2] = self.f_box_IndexList_v2_42_Output_2,
            },
            count = 3,
        },
    });
    self.box_Gate_v3_31 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|436722262");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_31_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_31_Out,
    });
    self.box_Brick_Exp_Extraction_PackageStolenDetector_16 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Extraction_PackageStolenDetector.debug.lua");
    l0 = self.box_Brick_Exp_Extraction_PackageStolenDetector_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Extraction_PackageStolenDetector_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|541324467");
    l0:SetConnections({
        -- Enabled,
        [0] = self.f_box_Brick_Exp_Extraction_PackageStolenDetector_16_Enabled,
        -- PackageStolenDetected,
        [1] = self.f_box_Brick_Exp_Extraction_PackageStolenDetector_16_PackageStolenDetected,
    });
    self.box_SpawnAI_47 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|596459037");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_47_Out,
    });
    self.box_SpawnAI_56 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|622306850");
    l0:SetConnections({
    });
    self.box_SpawnAI_48 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|663679852");
    l0:SetConnections({
    });
    self.box_MissionAckTriggerListener_90 = cbox:CreateBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
    l0 = self.box_MissionAckTriggerListener_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionAckTriggerListener_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|667905050");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_MissionAckTriggerListener_90_Enter,
    });
    self.box_MultipleOR_8 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|708580666");
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
        [0] = self.f_box_MultipleOR_8_Out,
    });
    self.box_SpawnAI_Wave_v2_79 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|772966450");
    l0:SetConnections({
    });
    self.box_Brick_Exp_Common_BasicSetups_9 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_BasicSetups.debug.lua");
    l0 = self.box_Brick_Exp_Common_BasicSetups_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_BasicSetups_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|789574491");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Brick_Exp_Common_BasicSetups_9_Out,
    });
    self.box_MultipleOR_57 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|799152674");
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
        [0] = self.f_box_MultipleOR_57_Out,
    });
    self.box_MultipleOR_34 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|915414109");
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
        [0] = self.f_box_MultipleOR_34_Out,
    });
    self.box_SpawnAI_45 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1009552540");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_45_Out,
    });
    self.box_ProximityRadiusListener_v3_26 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1065267508");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_26_SomeoneNear,
    });
    self.box_OnceOnly_v3_104 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_104");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1161044209");
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
                [0] = self.f_box_OnceOnly_v3_104_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_7 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1231245897");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_7_TimeElapsed,
    });
    self.box_Brick_Exp_Extraction_Helicopter_v2_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Extraction_Helicopter_v2.debug.lua");
    l0 = self.box_Brick_Exp_Extraction_Helicopter_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Extraction_Helicopter_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1334378301");
    l0:SetConnections({
        -- PlayersAllSeated,
        [0] = self.f_box_Brick_Exp_Extraction_Helicopter_v2_1_PlayersAllSeated,
        -- ToTakeOff,
        [2] = self.f_box_Brick_Exp_Extraction_Helicopter_v2_1_ToTakeOff,
    });
    self.box_MessageListener_v3_60 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1400869372");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_60_Received,
    });
    self.box_SpawnAI_18 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1472858243");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_15 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1505482964");
    l0:SetConnections({
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_15_SomeoneFar,
    });
    self.box_SpawnAI_Wave_v2_77 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1532368415");
    l0:SetConnections({
        -- Cancelled,
        [0] = self.f_box_SpawnAI_Wave_v2_77_Cancelled,
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_77_NextWave,
    });
    self.box_OnceOnly_v3_35 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1570467543");
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
    self.box_Delay_v5_52 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1586618335");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_52_TimeElapsed,
    });
    self.box_Brick_Exp_Outro_v4_17 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Narrative.Brick_Exp_Outro_v4.debug.lua");
    l0 = self.box_Brick_Exp_Outro_v4_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Outro_v4_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1628370845");
    l0:SetConnections({
    });
    self.box_Brick_Exp_Extraction_ReachSurvive_v3_12 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Extraction_ReachSurvive_v3.debug.lua");
    l0 = self.box_Brick_Exp_Extraction_ReachSurvive_v3_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Extraction_ReachSurvive_v3_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1667570154");
    l0:SetConnections({
        -- ReachedSurvived,
        [0] = self.f_box_Brick_Exp_Extraction_ReachSurvive_v3_12_ReachedSurvived,
        -- ToSpawnHelicopter,
        [1] = self.f_box_Brick_Exp_Extraction_ReachSurvive_v3_12_ToSpawnHelicopter,
    });
    self.box_SpawnAI_44 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1710218592");
    l0:SetConnections({
    });
    self.box_ActivityInitialized_10 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1715435517");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_10_Out,
    });
    self.box_Delay_v5_102 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_102");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1715561575");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_102_TimeElapsed,
    });
    self.box_Delay_v5_19 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1777650345");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_19_TimeElapsed,
    });
    self.box_SpawnAI_32 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1849565132");
    l0:SetConnections({
    });
    self.box_ActivityAcknowledgeGate_4 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1862482751");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_4_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_4_Reloaded,
    });
    self.box_PlayerFullyDetected_58 = cbox:CreateBox("Domino/Library/Sp/Lib_Quest_Common.PlayerFullyDetected.debug.lua");
    l0 = self.box_PlayerFullyDetected_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerFullyDetected_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1876331414");
    l0:SetConnections({
        -- Detected,
        [0] = self.f_box_PlayerFullyDetected_58_Detected,
        -- Disabled,
        [1] = self.f_box_PlayerFullyDetected_58_Disabled,
    });
    self.box_ProximityRadiusListener_v3_41 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1905395690");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_41_SomeoneNear,
    });
    self.box_ProximityRadiusListener_v3_49 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1991384920");
    l0:SetConnections({
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_49_SomeoneFar,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_49_SomeoneNear,
    });
    self.box_SpawnAI_43 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|2079149232");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_43_Out,
    });
    self.box_GroupIter_39 = cbox:CreateBox("Domino/System/GroupIter.lua");
    l0 = self.box_GroupIter_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupIter_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|2138184337");
    l0:SetConnections({
        -- EndIter,
        [0] = self.f_box_GroupIter_39_EndIter,
        -- PawnIter,
        [1] = self.f_box_GroupIter_39_PawnIter,
        -- Started,
        [2] = self.f_box_GroupIter_39_Started,
        -- Stopped,
        [3] = self.f_box_GroupIter_39_Stopped,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1128106703", "1128106703", "Canyon_C2_CTP_010_Ext_C", "In", "box_ActivityAcknowledgeGate_4.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_v2_6();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|787200974", "787200974", "Canyon_C2_CTP_010_Ext_C", "OnLeaveZone", "box_ActivityRetry_v2_6.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_51_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_53();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1310641860", "1310641860", "Canyon_C2_CTP_010_Ext_C", "box_Compare_Integers_51.A_le_B", "box_OutputOrder_v2_53.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_50_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_49();
    l0 = self.box_MultipleAND_v2_50;
    l1 = self.box_ProximityRadiusListener_v3_49;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1525585112", "1525585112", "Canyon_C2_CTP_010_Ext_C", "box_MultipleAND_v2_50.Out", "box_ProximityRadiusListener_v3_49.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_BroadcastMessage_14_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|70541619", "70541619", "Canyon_C2_CTP_010_Ext_C", "box_BroadcastMessage_14.Out", "box_OutputOrder_v2_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_54_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_56();
    l0 = self.box_SpawnAI_56;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|437805553", "437805553", "Canyon_C2_CTP_010_Ext_C", "box_Compare_Boolean_54.A_is_False", "box_SpawnAI_56.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_30_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_28();
    l0 = self.box_ProximityTrigger_v3_30;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|10443700", "10443700", "Canyon_C2_CTP_010_Ext_C", "box_ProximityTrigger_v3_30.Enter", "box_UseContextualActionModifier_v3_28.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_30_Leave()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_28();
    l0 = self.box_ProximityTrigger_v3_30;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|184455122", "184455122", "Canyon_C2_CTP_010_Ext_C", "box_ProximityTrigger_v3_30.Leave", "box_UseContextualActionModifier_v3_28.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_29_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_102();
    l0 = self.box_Delay_v5_102;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|2141514148", "2141514148", "Canyon_C2_CTP_010_Ext_C", "box_OutputOrder_v2_29.Out", "box_Delay_v5_102.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_29_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_27();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|752986094", "752986094", "Canyon_C2_CTP_010_Ext_C", "box_OutputOrder_v2_29.Out", "box_TriggerState_v2_27.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_40_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_41();
    l0 = self.box_Delay_v5_40;
    l1 = self.box_ProximityRadiusListener_v3_41;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1488164962", "1488164962", "Canyon_C2_CTP_010_Ext_C", "box_Delay_v5_40.TimeElapsed", "box_ProximityRadiusListener_v3_41.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SetBoolean_v2_46_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_46_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_21();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|168206045", "168206045", "Canyon_C2_CTP_010_Ext_C", "box_SetBoolean_v2_46.Out", "box_GetActivityFact_21.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_42_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_32();
    l0 = self.box_IndexList_v2_42;
    l1 = self.box_SpawnAI_32;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|737327516", "737327516", "Canyon_C2_CTP_010_Ext_C", "box_IndexList_v2_42.Output", "box_SpawnAI_32.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_42_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_43();
    l0 = self.box_IndexList_v2_42;
    l1 = self.box_SpawnAI_43;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|501546447", "501546447", "Canyon_C2_CTP_010_Ext_C", "box_IndexList_v2_42.Output", "box_SpawnAI_43.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_31_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_50();
    l0 = self.box_Gate_v3_31;
    l1 = self.box_MultipleAND_v2_50;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1278533793", "1278533793", "Canyon_C2_CTP_010_Ext_C", "box_Gate_v3_31.Closed", "box_MultipleAND_v2_50.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_Gate_v3_31_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_46();
    l0 = self.box_Gate_v3_31;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|996865319", "996865319", "Canyon_C2_CTP_010_Ext_C", "box_Gate_v3_31.Out", "box_SetBoolean_v2_46.FromBool", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromBool
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetDistance_38_Out()
    local params, l0;
    self:OnExit_box_GetDistance_38_Out();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Floats_36();
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|383840803", "383840803", "Canyon_C2_CTP_010_Ext_C", "box_GetDistance_38.Out", "box_Compare_Floats_36.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_63_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|910705188", "910705188", "Canyon_C2_CTP_010_Ext_C", "box_OutputOrder_v2_63.Out", "box_MultipleOR_34.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_63_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RadioModifier_v3_62();
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1114682852", "1114682852", "Canyon_C2_CTP_010_Ext_C", "box_OutputOrder_v2_63.Out", "box_RadioModifier_v3_62.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Extraction_PackageStolenDetector_16_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_BasicSetups_9();
    l0 = self.box_Brick_Exp_Extraction_PackageStolenDetector_16;
    l1 = self.box_Brick_Exp_Common_BasicSetups_9;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|2052951804", "2052951804", "Canyon_C2_CTP_010_Ext_C", "box_Brick_Exp_Extraction_PackageStolenDetector_16.Enabled", "box_Brick_Exp_Common_BasicSetups_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Brick_Exp_Extraction_PackageStolenDetector_16_PackageStolenDetected()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_24();
    l0 = self.box_Brick_Exp_Extraction_PackageStolenDetector_16;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1373628403", "1373628403", "Canyon_C2_CTP_010_Ext_C", "box_Brick_Exp_Extraction_PackageStolenDetector_16.PackageStolenDetected", "box_OutputOrder_v2_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Floats_36_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_37();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1706733062", "1706733062", "Canyon_C2_CTP_010_Ext_C", "box_Compare_Floats_36.A_ge_B", "box_SetContextualStrategy_37.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_47_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_48();
    l0 = self.box_SpawnAI_47;
    l1 = self.box_SpawnAI_48;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|524227154", "524227154", "Canyon_C2_CTP_010_Ext_C", "box_SpawnAI_47.Out", "box_SpawnAI_48.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MissionAckTriggerListener_90_Enter()
    local l0, l1;
    l0 = self.box_MissionAckTriggerListener_90;
    l1 = self.box_OnceOnly_v3_104;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|945576836", "945576836", "Canyon_C2_CTP_010_Ext_C", "box_MissionAckTriggerListener_90.Enter", "box_OnceOnly_v3_104.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_8_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_8;
    l1 = self.box_ActivityInitialized_10;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1733496203", "1733496203", "Canyon_C2_CTP_010_Ext_C", "box_MultipleOR_8.Out", "box_ActivityInitialized_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Brick_Exp_Common_BasicSetups_9_Out()
    local params, l0, l1;
    self:OnExit_box_Brick_Exp_Common_BasicSetups_9_Out();
    params = self:OnEnter_box_Brick_Exp_Extraction_ReachSurvive_v3_12();
    l0 = self.box_Brick_Exp_Common_BasicSetups_9;
    l1 = self.box_Brick_Exp_Extraction_ReachSurvive_v3_12;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1960414061", "1960414061", "Canyon_C2_CTP_010_Ext_C", "box_Brick_Exp_Common_BasicSetups_9.Out", "box_Brick_Exp_Extraction_ReachSurvive_v3_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_57_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_52();
    l0 = self.box_MultipleOR_57;
    l1 = self.box_Delay_v5_52;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1101472744", "1101472744", "Canyon_C2_CTP_010_Ext_C", "box_MultipleOR_57.Out", "box_Delay_v5_52.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_Compare_Integers_100_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_101();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|662427825", "662427825", "Canyon_C2_CTP_010_Ext_C", "box_Compare_Integers_100.A_le_B", "box_OutputOrder_v2_101.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_34_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_34;
    l1 = self.box_OnceOnly_v3_35;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1435009536", "1435009536", "Canyon_C2_CTP_010_Ext_C", "box_MultipleOR_34.Out", "box_OnceOnly_v3_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UseContextualActionModifier_v3_28_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_30();
    l0 = self.box_ProximityTrigger_v3_30;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1204308775", "1204308775", "Canyon_C2_CTP_010_Ext_C", "box_UseContextualActionModifier_v3_28.Disabled", "box_ProximityTrigger_v3_30.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_SpawnAI_45_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_25();
    l0 = self.box_SpawnAI_45;
    l1 = self.box_SpawnAI_25;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1192927508", "1192927508", "Canyon_C2_CTP_010_Ext_C", "box_SpawnAI_45.Out", "box_SpawnAI_25.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_26_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_71();
    l0 = self.box_ProximityRadiusListener_v3_26;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|352678745", "352678745", "Canyon_C2_CTP_010_Ext_C", "box_ProximityRadiusListener_v3_26.SomeoneNear", "box_SetActivityFact_71.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_BroadcastMessage_89_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_31();
    l0 = self.box_Gate_v3_31;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|92025316", "92025316", "Canyon_C2_CTP_010_Ext_C", "box_BroadcastMessage_89.Out", "box_Gate_v3_31.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_RadioModifier_v3_62_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RadioModifier_v3_61();
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1369215713", "1369215713", "Canyon_C2_CTP_010_Ext_C", "box_RadioModifier_v3_62.Out", "box_RadioModifier_v3_61.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TriggerState_v2_27_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_30();
    l0 = self.box_ProximityTrigger_v3_30;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|591722784", "591722784", "Canyon_C2_CTP_010_Ext_C", "box_TriggerState_v2_27.Enabled", "box_ProximityTrigger_v3_30.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_104_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_BroadcastMessage_89();
    l0 = self.box_OnceOnly_v3_104;
    l1 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1412391777", "1412391777", "Canyon_C2_CTP_010_Ext_C", "box_OnceOnly_v3_104.Out", "box_BroadcastMessage_89.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetActivityFact_21_FactNotSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_42();
    l0 = self.box_IndexList_v2_42;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1918513017", "1918513017", "Canyon_C2_CTP_010_Ext_C", "box_GetActivityFact_21.FactNotSet", "box_IndexList_v2_42.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_GetActivityFact_21_FactSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_45();
    l0 = self.box_SpawnAI_45;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1138534238", "1138534238", "Canyon_C2_CTP_010_Ext_C", "box_GetActivityFact_21.FactSet", "box_SpawnAI_45.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_GetActivityFact_59_FactNotSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_60();
    l0 = self.box_MessageListener_v3_60;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|923237055", "923237055", "Canyon_C2_CTP_010_Ext_C", "box_GetActivityFact_59.FactNotSet", "box_MessageListener_v3_60.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetActivityFact_59_FactSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerFullyDetected_58();
    l0 = self.box_PlayerFullyDetected_58;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|2034364387", "2034364387", "Canyon_C2_CTP_010_Ext_C", "box_GetActivityFact_59.FactSet", "box_PlayerFullyDetected_58.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_24_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Extraction_ReachSurvive_v3_12();
    l0 = self.box_Brick_Exp_Extraction_ReachSurvive_v3_12;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|926216047", "926216047", "Canyon_C2_CTP_010_Ext_C", "box_OutputOrder_v2_24.Out", "box_Brick_Exp_Extraction_ReachSurvive_v3_12.PackageStolenDetected", clone:GetLuaBox(), l0:GetLuaBox());
    -- PackageStolenDetected
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_24_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|564042218", "564042218", "Canyon_C2_CTP_010_Ext_C", "box_OutputOrder_v2_24.Out", "box_MultipleOR_34.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_24_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_50();
    l0 = self.box_MultipleAND_v2_50;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|698622248", "698622248", "Canyon_C2_CTP_010_Ext_C", "box_OutputOrder_v2_24.Out", "box_MultipleAND_v2_50.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_24_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_40();
    l0 = self.box_Delay_v5_40;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1066411049", "1066411049", "Canyon_C2_CTP_010_Ext_C", "box_OutputOrder_v2_24.Out", "box_Delay_v5_40.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_7_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_Wave_v2_77();
    l0 = self.box_Delay_v5_7;
    l1 = self.box_SpawnAI_Wave_v2_77;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|689034770", "689034770", "Canyon_C2_CTP_010_Ext_C", "box_Delay_v5_7.TimeElapsed", "box_SpawnAI_Wave_v2_77.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_55_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Extraction_Helicopter_v2_1();
    l0 = self.box_Brick_Exp_Extraction_Helicopter_v2_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|2015137251", "2015137251", "Canyon_C2_CTP_010_Ext_C", "box_OutputOrder_v2_55.Out", "box_Brick_Exp_Extraction_Helicopter_v2_1.SpawnHelicopter", clone:GetLuaBox(), l0:GetLuaBox());
    -- SpawnHelicopter
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_55_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_54();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|321921658", "321921658", "Canyon_C2_CTP_010_Ext_C", "box_OutputOrder_v2_55.Out", "box_Compare_Boolean_54.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_101_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_Wave_v2_77();
    l0 = self.box_SpawnAI_Wave_v2_77;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1656892300", "1656892300", "Canyon_C2_CTP_010_Ext_C", "box_OutputOrder_v2_101.Out", "box_SpawnAI_Wave_v2_77.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_101_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_102();
    l0 = self.box_Delay_v5_102;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1057388686", "1057388686", "Canyon_C2_CTP_010_Ext_C", "box_OutputOrder_v2_101.Out", "box_Delay_v5_102.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_Brick_Exp_Extraction_Helicopter_v2_1_PlayersAllSeated()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_23();
    l0 = self.box_Brick_Exp_Extraction_Helicopter_v2_1;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|430455683", "430455683", "Canyon_C2_CTP_010_Ext_C", "box_Brick_Exp_Extraction_Helicopter_v2_1.PlayersAllSeated", "box_SetActivityFact_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Extraction_Helicopter_v2_1_ToTakeOff()
    local params, l0, l1;
    params = self:OnEnter_box_BroadcastMessage_14();
    l0 = self.box_Brick_Exp_Extraction_Helicopter_v2_1;
    l1 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1102659043", "1102659043", "Canyon_C2_CTP_010_Ext_C", "box_Brick_Exp_Extraction_Helicopter_v2_1.ToTakeOff", "box_BroadcastMessage_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_60_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_60;
    l1 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1619900423", "1619900423", "Canyon_C2_CTP_010_Ext_C", "box_MessageListener_v3_60.Received", "box_MultipleOR_34.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_ProximityRadiusListener_v3_15_SomeoneFar()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_19();
    l0 = self.box_ProximityRadiusListener_v3_15;
    l1 = self.box_Delay_v5_19;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|407319089", "407319089", "Canyon_C2_CTP_010_Ext_C", "box_ProximityRadiusListener_v3_15.SomeoneFar", "box_Delay_v5_19.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SpawnAI_Wave_v2_77_Cancelled()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_Wave_v2_79();
    l0 = self.box_SpawnAI_Wave_v2_77;
    l1 = self.box_SpawnAI_Wave_v2_79;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1965645726", "1965645726", "Canyon_C2_CTP_010_Ext_C", "box_SpawnAI_Wave_v2_77.Cancelled", "box_SpawnAI_Wave_v2_79.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_Wave_v2_77_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_Wave_v2_79();
    l0 = self.box_SpawnAI_Wave_v2_77;
    l1 = self.box_SpawnAI_Wave_v2_79;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1645648922", "1645648922", "Canyon_C2_CTP_010_Ext_C", "box_SpawnAI_Wave_v2_77.NextWave", "box_SpawnAI_Wave_v2_79.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Compare_Integers_22_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_20();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1593410459", "1593410459", "Canyon_C2_CTP_010_Ext_C", "box_Compare_Integers_22.A_le_B", "box_OutputOrder_v2_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_13();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|960843806", "960843806", "Canyon_C2_CTP_010_Ext_C", "box_OutputOrder_v2_3.Out", "box_MissionBlockLayer_13.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_7();
    l0 = self.box_Delay_v5_7;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1382116349", "1382116349", "Canyon_C2_CTP_010_Ext_C", "box_OutputOrder_v2_3.Out", "box_Delay_v5_7.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_2_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Extraction_Helicopter_v2_1();
    l0 = self.box_Brick_Exp_Extraction_Helicopter_v2_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1981032449", "1981032449", "Canyon_C2_CTP_010_Ext_C", "box_OutputOrder_v2_2.Out", "box_Brick_Exp_Extraction_Helicopter_v2_1.TimeToGetIn", clone:GetLuaBox(), l0:GetLuaBox());
    -- TimeToGetIn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_2_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_15();
    l0 = self.box_ProximityRadiusListener_v3_15;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1449147127", "1449147127", "Canyon_C2_CTP_010_Ext_C", "box_OutputOrder_v2_2.Out", "box_ProximityRadiusListener_v3_15.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_35_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_33();
    l0 = self.box_OnceOnly_v3_35;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1690233549", "1690233549", "Canyon_C2_CTP_010_Ext_C", "box_OnceOnly_v3_35.Out", "box_OutputOrder_v2_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Extraction_PackageStolenDetector_16();
    l0 = self.box_Brick_Exp_Extraction_PackageStolenDetector_16;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|420603959", "420603959", "Canyon_C2_CTP_010_Ext_C", "box_OutputOrder_v2_5.Out", "box_Brick_Exp_Extraction_PackageStolenDetector_16.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionAckTriggerListener_90();
    l0 = self.box_MissionAckTriggerListener_90;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1432015324", "1432015324", "Canyon_C2_CTP_010_Ext_C", "box_OutputOrder_v2_5.Out", "box_MissionAckTriggerListener_90.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_26();
    l0 = self.box_ProximityRadiusListener_v3_26;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1926761333", "1926761333", "Canyon_C2_CTP_010_Ext_C", "box_OutputOrder_v2_5.Out", "box_ProximityRadiusListener_v3_26.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_59();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1441045118", "1441045118", "Canyon_C2_CTP_010_Ext_C", "box_OutputOrder_v2_5.Out", "box_GetActivityFact_59.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_52_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_51();
    l0 = self.box_Delay_v5_52;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|783345606", "783345606", "Canyon_C2_CTP_010_Ext_C", "box_Delay_v5_52.TimeElapsed", "box_Compare_Integers_51.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetActivityFact_23_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_29();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|431005821", "431005821", "Canyon_C2_CTP_010_Ext_C", "box_SetActivityFact_23.Out", "box_OutputOrder_v2_29.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_53_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_47();
    l0 = self.box_SpawnAI_47;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|612684610", "612684610", "Canyon_C2_CTP_010_Ext_C", "box_OutputOrder_v2_53.Out", "box_SpawnAI_47.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_53_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_57;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|548762263", "548762263", "Canyon_C2_CTP_010_Ext_C", "box_OutputOrder_v2_53.Out", "box_MultipleOR_57.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_53_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_49();
    l0 = self.box_ProximityRadiusListener_v3_49;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|735759392", "735759392", "Canyon_C2_CTP_010_Ext_C", "box_OutputOrder_v2_53.Out", "box_ProximityRadiusListener_v3_49.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Brick_Exp_Extraction_ReachSurvive_v3_12_ReachedSurvived()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_2();
    l0 = self.box_Brick_Exp_Extraction_ReachSurvive_v3_12;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|909009501", "909009501", "Canyon_C2_CTP_010_Ext_C", "box_Brick_Exp_Extraction_ReachSurvive_v3_12.ReachedSurvived", "box_OutputOrder_v2_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Extraction_ReachSurvive_v3_12_ToSpawnHelicopter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_55();
    l0 = self.box_Brick_Exp_Extraction_ReachSurvive_v3_12;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1608769352", "1608769352", "Canyon_C2_CTP_010_Ext_C", "box_Brick_Exp_Extraction_ReachSurvive_v3_12.ToSpawnHelicopter", "box_OutputOrder_v2_55.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = self.box_ActivityInitialized_10;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|346068001", "346068001", "Canyon_C2_CTP_010_Ext_C", "box_ActivityInitialized_10.Out", "box_OutputOrder_v2_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_102_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_100();
    l0 = self.box_Delay_v5_102;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|226483281", "226483281", "Canyon_C2_CTP_010_Ext_C", "box_Delay_v5_102.TimeElapsed", "box_Compare_Integers_100.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_33_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_31();
    l0 = self.box_Gate_v3_31;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|35645905", "35645905", "Canyon_C2_CTP_010_Ext_C", "box_OutputOrder_v2_33.Out", "box_Gate_v3_31.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_33_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerFullyDetected_58();
    l0 = self.box_PlayerFullyDetected_58;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|829512951", "829512951", "Canyon_C2_CTP_010_Ext_C", "box_OutputOrder_v2_33.Out", "box_PlayerFullyDetected_58.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_19_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_22();
    l0 = self.box_Delay_v5_19;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1977644775", "1977644775", "Canyon_C2_CTP_010_Ext_C", "box_Delay_v5_19.TimeElapsed", "box_Compare_Integers_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_13_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Outro_v4_17();
    l0 = self.box_Brick_Exp_Outro_v4_17;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|742485411", "742485411", "Canyon_C2_CTP_010_Ext_C", "box_MissionBlockLayer_13.Activated", "box_Brick_Exp_Outro_v4_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_ActivityAcknowledgeGate_4_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1850859743", "1850859743", "Canyon_C2_CTP_010_Ext_C", "box_ActivityAcknowledgeGate_4.Acknowledged", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_4_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|892325491", "892325491", "Canyon_C2_CTP_010_Ext_C", "box_ActivityAcknowledgeGate_4.Reloaded", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayerFullyDetected_58_Detected()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_63();
    l0 = self.box_PlayerFullyDetected_58;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1964976275", "1964976275", "Canyon_C2_CTP_010_Ext_C", "box_PlayerFullyDetected_58.Detected", "box_OutputOrder_v2_63.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayerFullyDetected_58_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_MessageListener_v3_60();
    l0 = self.box_PlayerFullyDetected_58;
    l1 = self.box_MessageListener_v3_60;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|675847860", "675847860", "Canyon_C2_CTP_010_Ext_C", "box_PlayerFullyDetected_58.Disabled", "box_MessageListener_v3_60.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_41_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_GroupIter_39();
    l0 = self.box_ProximityRadiusListener_v3_41;
    l1 = self.box_GroupIter_39;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|697791230", "697791230", "Canyon_C2_CTP_010_Ext_C", "box_ProximityRadiusListener_v3_41.SomeoneNear", "box_GroupIter_39.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_49_SomeoneFar()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_49;
    l1 = self.box_MultipleOR_57;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|2054234351", "2054234351", "Canyon_C2_CTP_010_Ext_C", "box_ProximityRadiusListener_v3_49.SomeoneFar", "box_MultipleOR_57.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityRadiusListener_v3_49_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_52();
    l0 = self.box_ProximityRadiusListener_v3_49;
    l1 = self.box_Delay_v5_52;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|312752221", "312752221", "Canyon_C2_CTP_010_Ext_C", "box_ProximityRadiusListener_v3_49.SomeoneNear", "box_Delay_v5_52.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_20_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_18();
    l0 = self.box_SpawnAI_18;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|826376362", "826376362", "Canyon_C2_CTP_010_Ext_C", "box_OutputOrder_v2_20.Out", "box_SpawnAI_18.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_20_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_19();
    l0 = self.box_Delay_v5_19;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1168389368", "1168389368", "Canyon_C2_CTP_010_Ext_C", "box_OutputOrder_v2_20.Out", "box_Delay_v5_19.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_SpawnAI_43_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_44();
    l0 = self.box_SpawnAI_43;
    l1 = self.box_SpawnAI_44;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1958519785", "1958519785", "Canyon_C2_CTP_010_Ext_C", "box_SpawnAI_43.Out", "box_SpawnAI_44.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_GroupIter_39_PawnIter()
    local params, l0, l1;
    self:OnExit_box_GroupIter_39_PawnIter();
    params = self:OnEnter_box_GetDistance_38();
    l0 = self.box_GroupIter_39;
    l1 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1478465739", "1478465739", "Canyon_C2_CTP_010_Ext_C", "box_GroupIter_39.PawnIter", "box_GetDistance_38.Distance3D", l0:GetLuaBox(), l1:GetLuaBox());
    -- Distance3D
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Compare_Integers_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|3817832");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_51_A_le_B,
    });
    params = {
        -- A,
        [0] = Globals.Canyon_C2_CTP_010_Enemy.i_CurrentSize,
        -- B,
        [1] = 8,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_25()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109171278895135601",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_50()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|195817266");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_14_Out,
    });
    params = {
        -- Message,
        [0] = "EndEnemy",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|270392731");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_54_A_is_False,
    });
    params = {
        -- A,
        [0] = self.PickedPackageWaveSpawned,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_30()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109214237835430026",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|345402392");
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
                [0] = self.f_box_OutputOrder_v2_29_Out_0,
                [1] = self.f_box_OutputOrder_v2_29_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_40()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|390596238");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_46_Out,
    });
    params = {
        -- Bool,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_42()
    local params;
    params = {
        -- Index,
        [0] = PersistentGlobals.Canyon_C2_CTP_010_Main.Difficulty,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_31()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_GetDistance_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetDistance_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|441879918");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetDistance_38_Out,
    });
    params = {
        -- Entity1,
        [0] = self.GurrentEnemy,
        -- Entity2,
        [1] = "2108677276362088733",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|491549151");
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
                [0] = self.f_box_OutputOrder_v2_63_Out_0,
                [1] = self.f_box_OutputOrder_v2_63_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Extraction_PackageStolenDetector_16()
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

function export:OnEnter_box_Compare_Floats_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|573986773");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Floats_36_A_ge_B,
    });
    params = {
        -- A,
        [0] = self._sld_Distance_box_GetDistance_38,
        -- B,
        [1] = 300,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_47()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108344461030332726",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_56()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2110073265874539085",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_48()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109172379920909623",
    };
    return params;
end;

function export:OnEnter_box_MissionAckTriggerListener_90()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- triggerId,
        [1] = "2108636135889577185",
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_61()
    local params, l0;
    DrawTextToScreen("Comment: LC: Disable on detection BOW-74745", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RadioModifier_v3')-- Comment: LC: Disable on detection BOW-74745");
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|705568948");
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

function export:OnEnter_box_SpawnAI_Wave_v2_79()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 10,
        -- AttackerSpawner_1,
        [1] = "2109174232505151173",
        -- CoreNPCGroup,
        [2] = "#71C4A962",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2109174317282521420",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_BasicSetups_9()
    local params;
    params = {
        -- Debug_ExtractionPOIID,
        [0] = 3,
        -- DebugMode,
        [4] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_100");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|851241358");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_100_A_le_B,
    });
    params = {
        -- A,
        [0] = Globals.Canyon_C2_CTP_010_Enemy.i_CurrentSize,
        -- B,
        [1] = 10,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|969185063");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_28_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109214294932490382",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_45()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108719677088731139",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_26()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = PersistentGlobals.Lib_Expeditions_Gameplay.ePackageOwner,
        -- id2,
        [3] = "2108677276362088733",
        -- nearZone,
        [4] = 100,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1072068573");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_89");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1075577081");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_89_Out,
    });
    params = {
        -- Message,
        [0] = "reach_extraction",
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_62()
    local params, l0;
    DrawTextToScreen("Comment: LC: Disable on detection BOW-74745", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RadioModifier_v3')-- Comment: LC: Disable on detection BOW-74745");
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1120913611");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RadioModifier_v3_62_Out,
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

function export:OnEnter_box_TriggerState_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1143269883");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_TriggerState_v2_27_Enabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2109214237835430026",
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1169994094");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_21_FactNotSet,
        -- FactSet,
        [1] = self.f_box_GetActivityFact_21_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015339891340427",
        -- Fact,
        [1] = "Package_In_Sentry",
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1186793945");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_59_FactNotSet,
        -- FactSet,
        [1] = self.f_box_GetActivityFact_59_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015339891382363",
        -- Fact,
        [1] = "Canyon_C2_CTP_010_PlayerDetected",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1229820289");
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
                [0] = self.f_box_OutputOrder_v2_24_Out_0,
                [1] = self.f_box_OutputOrder_v2_24_Out_1,
                [2] = self.f_box_OutputOrder_v2_24_Out_2,
                [3] = self.f_box_OutputOrder_v2_24_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_7()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 30,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1244609323");
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

function export:OnEnter_box_OutputOrder_v2_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_101");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1325092690");
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
                [0] = self.f_box_OutputOrder_v2_101_Out_0,
                [1] = self.f_box_OutputOrder_v2_101_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Extraction_Helicopter_v2_1()
    local params;
    params = {
        -- HelicopterSpawner,
        [0] = "2108332362338147153",
        -- ObjectiveMarker,
        [1] = "2108332689938456068",
        -- PlayMusicEvent,
        [2] = "30992813",
        -- StopMusicEvent,
        [3] = "2583714736",
        -- STP_Coming,
        [4] = "2108332362354924382",
        -- STP_Leaving,
        [5] = "2108332627376217456",
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

function export:OnEnter_box_MessageListener_v3_60()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "Canyon_C2_CTP_010_PlayerDetected",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_18()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109117180885879578",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_15()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = PersistentGlobals.Lib_Expeditions_Gameplay.ePackageOwner,
        -- farZone,
        [2] = 50,
        -- id2,
        [3] = "2108677276362088733",
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_77()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 10,
        -- AttackerSpawner_1,
        [1] = "2109174116662668663",
        -- CoreNPCGroup,
        [2] = "#71C4A962",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2109463885420455911",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1554929765");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_22_A_le_B,
    });
    params = {
        -- A,
        [0] = Globals.Canyon_C2_CTP_010_Enemy.i_CurrentSize,
        -- B,
        [1] = 11,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1558509719");
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
                [0] = self.f_box_OutputOrder_v2_3_Out_0,
                [1] = self.f_box_OutputOrder_v2_3_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1561876412");
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
                [0] = self.f_box_OutputOrder_v2_2_Out_0,
                [1] = self.f_box_OutputOrder_v2_2_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1572781601");
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
                [0] = self.f_box_OutputOrder_v2_5_Out_0,
                [1] = self.f_box_OutputOrder_v2_5_Out_1,
                [2] = self.f_box_OutputOrder_v2_5_Out_2,
                [3] = self.f_box_OutputOrder_v2_5_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_52()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1599354669");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_23_Out,
    });
    params = {
        -- Fact,
        [0] = "PlayerAllSeated_Ext_C",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1618693261");
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
                [0] = self.f_box_OutputOrder_v2_53_Out_0,
                [1] = self.f_box_OutputOrder_v2_53_Out_1,
                [2] = self.f_box_OutputOrder_v2_53_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Outro_v4_17()
    local params;
    params = {
        -- DelayBeforeVictorySignOffVO,
        [0] = 6,
        -- PlayMusicEvent,
        [1] = "30992813",
        -- SceneEntity,
        [2] = "2108717067587820713",
        -- Sequence,
        [3] = "Sequences/bowmore_expedition/outro/expedition_outro_canyon.seq",
        -- StopMusicEvent,
        [4] = "2583714736",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1660099993");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109889770019635596",
        -- Group,
        [1] = self.GurrentEnemy,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Extraction_ReachSurvive_v3_12()
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
        [11] = 98,
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

function export:OnEnter_box_SpawnAI_44()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109171189017491351",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_102()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1763973515");
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
                [0] = self.f_box_OutputOrder_v2_33_Out_0,
                [1] = self.f_box_OutputOrder_v2_33_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_19()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_32()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108331971038942410",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|1852640334");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_13_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160306431395166",
        -- missionLayerId,
        [1] = "27160309138306419",
    };
    return params;
end;

function export:OnEnter_box_PlayerFullyDetected_58()
    local params;
    params = {
        -- group,
        [0] = "#71C4A962",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_41()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = PersistentGlobals.Lib_Expeditions_Gameplay.ePackageOwner,
        -- id2,
        [3] = "2108677276362088733",
        -- nearZone,
        [4] = 50,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_49()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = PersistentGlobals.Lib_Expeditions_Gameplay.ePackageOwner,
        -- farZone,
        [2] = 110,
        -- id2,
        [3] = "2108677276362088733",
        -- nearZone,
        [4] = 100,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|2026556566");
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
                [0] = self.f_box_OutputOrder_v2_20_Out_0,
                [1] = self.f_box_OutputOrder_v2_20_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_43()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108331971038942410",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Ext_C.domino|@Canyon_C2_CTP_010_Ext_C|2129553720");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "GetCloseTo_Extraction_C",
    };
    return params;
end;

function export:OnEnter_box_GroupIter_39()
    local params;
    params = {
        -- entities,
        [0] = "#71C4A962",
    };
    return params;
end;

function export:OnExit_box_SetBoolean_v2_46_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.PickedPackageWaveSpawned = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetDistance_38_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    self._sld_Distance_box_GetDistance_38 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_Exp_Common_BasicSetups_9_Out()
    local l0;
    l0 = self.box_Brick_Exp_Common_BasicSetups_9;
    self.iExtractionPOIID = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupIter_39_PawnIter()
    local l0;
    l0 = self.box_GroupIter_39;
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
