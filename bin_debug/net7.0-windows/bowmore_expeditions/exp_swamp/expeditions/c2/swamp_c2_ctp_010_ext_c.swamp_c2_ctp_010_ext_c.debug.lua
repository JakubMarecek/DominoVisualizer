LUAC -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_swamp/expeditions/c2/swamp_c2_ctp_010_ext_c.domino
-- User graph: Swamp_C2_CTP_010_Ext_C
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Extraction_Helicopter_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Extraction_PackageStolenDetector.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Extraction_ReachSurvive_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Narrative.Brick_Exp_Outro_v4.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/BroadcastMessage.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/GetExpeditionGameplayElements.lua");
        cboxRes:RegisterBox("Domino/System/IndexList_v2.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetInteger_v2.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/C2/Swamp_C2_CTP_010_Main.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[4280431954.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3224385167.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4126530109.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2927030543.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1549670302.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3690117269.bnk]], "CSoundResource");
        cboxRes:LoadResource([[187352090.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1882754627.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3627679763.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3296277365.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2187618352.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4278996178.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2581513551.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1835623167.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2801888499.bnk]], "CSoundResource");
        cboxRes:LoadResource([[608511069.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2162807899.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2188347775.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2956254165.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3135746638.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2853668550.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3620615790.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3719151969.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/C2/Swamp_C2_CTP_010_Ext_C.Swamp_C2_CTP_010_Ext_C.debug.lua")] = {
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
end;

function export:Init(cbox)
    local l0;
    self._name = "Swamp_C2_CTP_010_Ext_C";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C";
    self.eWaveSpawner_5_1 = nil;
    self.eWaveSpawner_1_2 = nil;
    self.iExtractionPOIID = 0;
    self.eWaveSpawner_3_1 = nil;
    self.eWaveSpawner_4_1 = nil;
    self.eWaveSpawner_2_2 = nil;
    self.eLocalPlayer = nil;
    self.eWaveSpawner_5_2 = nil;
    self.eWaveSpawner_2_1 = nil;
    self.eWaveSpawner_3_2 = nil;
    self.eWaveSpawner_4_2 = nil;
    self.eWaveSpawner_1_1 = nil;
    self.bInFortress = false;
    self.bInRollerCoaster = false;
    self.iPackagePositionID = 0;
    self.bInFrontGate = false;
    self.bInSkyScreamer = false;
    self.iDifficulty = 0;
    self.bInEmptyRegion = false;
    self.box_Brick_Exp_Extraction_PackageStolenDetector_52 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Extraction_PackageStolenDetector.debug.lua");
    l0 = self.box_Brick_Exp_Extraction_PackageStolenDetector_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Extraction_PackageStolenDetector_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|5794870");
    l0:SetConnections({
        -- Enabled,
        [0] = self.f_box_Brick_Exp_Extraction_PackageStolenDetector_52_Enabled,
        -- PackageStolenDetected,
        [1] = self.f_box_Brick_Exp_Extraction_PackageStolenDetector_52_PackageStolenDetected,
    });
    self.box_Brick_Exp_Extraction_ReachSurvive_v3_62 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Extraction_ReachSurvive_v3.debug.lua");
    l0 = self.box_Brick_Exp_Extraction_ReachSurvive_v3_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Extraction_ReachSurvive_v3_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|146065482");
    l0:SetConnections({
        -- ReachedSurvived,
        [0] = self.f_box_Brick_Exp_Extraction_ReachSurvive_v3_62_ReachedSurvived,
        -- ToSpawnHelicopter,
        [1] = self.f_box_Brick_Exp_Extraction_ReachSurvive_v3_62_ToSpawnHelicopter,
    });
    self.box_MultipleOR_93 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_93");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|389352373");
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
        [0] = self.f_box_MultipleOR_93_Out,
    });
    self.box_Brick_Exp_Common_BasicSetups_53 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_BasicSetups.debug.lua");
    l0 = self.box_Brick_Exp_Common_BasicSetups_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_BasicSetups_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|535994025");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Brick_Exp_Common_BasicSetups_53_Out,
    });
    self.box_SpawnAI_144 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_144;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_144");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|570745052");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_144_Out,
    });
    self.box_ActivityAcknowledgeGate_71 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|623764954");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_71_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_71_Reloaded,
    });
    self.box_Brick_Exp_Common_BasicSetups_97 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_BasicSetups.debug.lua");
    l0 = self.box_Brick_Exp_Common_BasicSetups_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_BasicSetups_97");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|767568974");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Brick_Exp_Common_BasicSetups_97_Out,
    });
    self.box_SpawnAI_162 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_162;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_162");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|966122039");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_162_Out,
    });
    self.box_IndexList_v2_55 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|1069966304");
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
    self.box_SpawnAI_148 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_148;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_148");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|1159673063");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_148_Out,
    });
    self.box_Brick_Exp_Outro_v4_50 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Narrative.Brick_Exp_Outro_v4.debug.lua");
    l0 = self.box_Brick_Exp_Outro_v4_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Outro_v4_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|1247442022");
    l0:SetConnections({
    });
    self.box_Delay_v5_6 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|1339705841");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_6_TimeElapsed,
    });
    self.box_MultipleOR_171 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_171;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_171");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|1442468691");
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
    self.box_Delay_v5_163 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_163;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_163");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|1449648679");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_163_TimeElapsed,
    });
    self.box_Brick_Exp_Extraction_Helicopter_v2_114 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Extraction_Helicopter_v2.debug.lua");
    l0 = self.box_Brick_Exp_Extraction_Helicopter_v2_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Extraction_Helicopter_v2_114");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|1512736372");
    l0:SetConnections({
        -- PlayersAllSeated,
        [0] = self.f_box_Brick_Exp_Extraction_Helicopter_v2_114_PlayersAllSeated,
        -- ToTakeOff,
        [2] = self.f_box_Brick_Exp_Extraction_Helicopter_v2_114_ToTakeOff,
    });
    self.box_SpawnAI_142 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_142;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_142");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|1963104409");
    l0:SetConnections({
    });
    self.box_ActivityInitialized_109 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_109");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|1996695679");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_109_Out,
    });
    self.box_SpawnAI_161 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_161;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_161");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|2119643920");
    l0:SetConnections({
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_71;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|133796935", "133796935", "Swamp_C2_CTP_010_Ext_C", "In", "box_ActivityAcknowledgeGate_71.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_v2_121();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|1433931146", "1433931146", "Swamp_C2_CTP_010_Ext_C", "OnLeaveZone", "box_ActivityRetry_v2_121.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Extraction_PackageStolenDetector_52_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Extraction_ReachSurvive_v3_62();
    l0 = self.box_Brick_Exp_Extraction_PackageStolenDetector_52;
    l1 = self.box_Brick_Exp_Extraction_ReachSurvive_v3_62;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|863109037", "863109037", "Swamp_C2_CTP_010_Ext_C", "box_Brick_Exp_Extraction_PackageStolenDetector_52.Enabled", "box_Brick_Exp_Extraction_ReachSurvive_v3_62.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Brick_Exp_Extraction_PackageStolenDetector_52_PackageStolenDetected()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_61();
    l0 = self.box_Brick_Exp_Extraction_PackageStolenDetector_52;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|1096922899", "1096922899", "Swamp_C2_CTP_010_Ext_C", "box_Brick_Exp_Extraction_PackageStolenDetector_52.PackageStolenDetected", "box_OutputOrder_v2_61.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Extraction_ReachSurvive_v3_62_ReachedSurvived()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Extraction_Helicopter_v2_114();
    l0 = self.box_Brick_Exp_Extraction_ReachSurvive_v3_62;
    l1 = self.box_Brick_Exp_Extraction_Helicopter_v2_114;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|75374091", "75374091", "Swamp_C2_CTP_010_Ext_C", "box_Brick_Exp_Extraction_ReachSurvive_v3_62.ReachedSurvived", "box_Brick_Exp_Extraction_Helicopter_v2_114.TimeToGetIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- TimeToGetIn
    l1:Exec(1, params);
end;

function export:f_box_Brick_Exp_Extraction_ReachSurvive_v3_62_ToSpawnHelicopter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_160();
    l0 = self.box_Brick_Exp_Extraction_ReachSurvive_v3_62;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|530434341", "530434341", "Swamp_C2_CTP_010_Ext_C", "box_Brick_Exp_Extraction_ReachSurvive_v3_62.ToSpawnHelicopter", "box_OutputOrder_v2_160.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_93_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_93;
    l1 = self.box_ActivityInitialized_109;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|79997007", "79997007", "Swamp_C2_CTP_010_Ext_C", "box_MultipleOR_93.Out", "box_ActivityInitialized_109.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_SetInteger_v2_170_Out()
    local l0;
    self:OnExit_box_SetInteger_v2_170_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_171;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|1656797631", "1656797631", "Swamp_C2_CTP_010_Ext_C", "box_SetInteger_v2_170.Out", "box_MultipleOR_171.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Brick_Exp_Common_BasicSetups_53_Out()
    local l0, l1;
    self:OnExit_box_Brick_Exp_Common_BasicSetups_53_Out();
    l0 = self.box_Brick_Exp_Common_BasicSetups_53;
    l1 = self.box_MultipleOR_171;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|423135847", "423135847", "Swamp_C2_CTP_010_Ext_C", "box_Brick_Exp_Common_BasicSetups_53.Out", "box_MultipleOR_171.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_SpawnAI_144_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_6();
    l0 = self.box_SpawnAI_144;
    l1 = self.box_Delay_v5_6;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|452158842", "452158842", "Swamp_C2_CTP_010_Ext_C", "box_SpawnAI_144.Out", "box_Delay_v5_6.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ActivityAcknowledgeGate_71_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_71;
    l1 = self.box_MultipleOR_93;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|1565700327", "1565700327", "Swamp_C2_CTP_010_Ext_C", "box_ActivityAcknowledgeGate_71.Acknowledged", "box_MultipleOR_93.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_71_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_71;
    l1 = self.box_MultipleOR_93;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|1783787814", "1783787814", "Swamp_C2_CTP_010_Ext_C", "box_ActivityAcknowledgeGate_71.Reloaded", "box_MultipleOR_93.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetInteger_v2_164_Out()
    local l0;
    self:OnExit_box_SetInteger_v2_164_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_171;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|1107168912", "1107168912", "Swamp_C2_CTP_010_Ext_C", "box_SetInteger_v2_164.Out", "box_MultipleOR_171.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Exp_Common_BasicSetups_97_Out()
    local params, l0, l1;
    self:OnExit_box_Brick_Exp_Common_BasicSetups_97_Out();
    params = self:OnEnter_box_Brick_Exp_Extraction_PackageStolenDetector_52();
    l0 = self.box_Brick_Exp_Common_BasicSetups_97;
    l1 = self.box_Brick_Exp_Extraction_PackageStolenDetector_52;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|851718180", "851718180", "Swamp_C2_CTP_010_Ext_C", "box_Brick_Exp_Common_BasicSetups_97.Out", "box_Brick_Exp_Extraction_PackageStolenDetector_52.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_162_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_163();
    l0 = self.box_SpawnAI_162;
    l1 = self.box_Delay_v5_163;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|120783025", "120783025", "Swamp_C2_CTP_010_Ext_C", "box_SpawnAI_162.Out", "box_Delay_v5_163.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_IndexList_v2_55_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_164();
    l0 = self.box_IndexList_v2_55;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|270996244", "270996244", "Swamp_C2_CTP_010_Ext_C", "box_IndexList_v2_55.Output", "box_SetInteger_v2_164.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_55_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_170();
    l0 = self.box_IndexList_v2_55;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|679208768", "679208768", "Swamp_C2_CTP_010_Ext_C", "box_IndexList_v2_55.Output", "box_SetInteger_v2_170.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_55_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_BasicSetups_53();
    l0 = self.box_IndexList_v2_55;
    l1 = self.box_Brick_Exp_Common_BasicSetups_53;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|1628736975", "1628736975", "Swamp_C2_CTP_010_Ext_C", "box_IndexList_v2_55.Output", "box_Brick_Exp_Common_BasicSetups_53.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_143_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_144();
    l0 = self.box_SpawnAI_144;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|519661426", "519661426", "Swamp_C2_CTP_010_Ext_C", "box_OutputOrder_v2_143.Out", "box_SpawnAI_144.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_143_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_2();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|1030646415", "1030646415", "Swamp_C2_CTP_010_Ext_C", "box_OutputOrder_v2_143.Out", "box_BroadcastMessage_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_148_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_142();
    l0 = self.box_SpawnAI_148;
    l1 = self.box_SpawnAI_142;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|146456721", "146456721", "Swamp_C2_CTP_010_Ext_C", "box_SpawnAI_148.Out", "box_SpawnAI_142.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_6_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_148();
    l0 = self.box_Delay_v5_6;
    l1 = self.box_SpawnAI_148;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|91915738", "91915738", "Swamp_C2_CTP_010_Ext_C", "box_Delay_v5_6.TimeElapsed", "box_SpawnAI_148.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_61_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_1();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|1876997726", "1876997726", "Swamp_C2_CTP_010_Ext_C", "box_OutputOrder_v2_61.Out", "box_BroadcastMessage_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_61_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityFact_60();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|114321955", "114321955", "Swamp_C2_CTP_010_Ext_C", "box_OutputOrder_v2_61.Out", "box_SetActivityFact_60.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_61_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Extraction_ReachSurvive_v3_62();
    l0 = self.box_Brick_Exp_Extraction_ReachSurvive_v3_62;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|1032302770", "1032302770", "Swamp_C2_CTP_010_Ext_C", "box_OutputOrder_v2_61.Out", "box_Brick_Exp_Extraction_ReachSurvive_v3_62.PackageStolenDetected", clone:GetLuaBox(), l0:GetLuaBox());
    -- PackageStolenDetected
    l0:Exec(2, params);
end;

function export:f_box_IntegerArithmetics_v2_173_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_173_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_55();
    l0 = self.box_IndexList_v2_55;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|543017159", "543017159", "Swamp_C2_CTP_010_Ext_C", "box_IntegerArithmetics_v2_173.Out", "box_IndexList_v2_55.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_171_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_BasicSetups_97();
    l0 = self.box_MultipleOR_171;
    l1 = self.box_Brick_Exp_Common_BasicSetups_97;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|215111413", "215111413", "Swamp_C2_CTP_010_Ext_C", "box_MultipleOR_171.Out", "box_Brick_Exp_Common_BasicSetups_97.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_163_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_161();
    l0 = self.box_Delay_v5_163;
    l1 = self.box_SpawnAI_161;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|528564537", "528564537", "Swamp_C2_CTP_010_Ext_C", "box_Delay_v5_163.TimeElapsed", "box_SpawnAI_161.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Brick_Exp_Extraction_Helicopter_v2_114_PlayersAllSeated()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_143();
    l0 = self.box_Brick_Exp_Extraction_Helicopter_v2_114;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|1603416772", "1603416772", "Swamp_C2_CTP_010_Ext_C", "box_Brick_Exp_Extraction_Helicopter_v2_114.PlayersAllSeated", "box_OutputOrder_v2_143.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Extraction_Helicopter_v2_114_ToTakeOff()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_51();
    l0 = self.box_Brick_Exp_Extraction_Helicopter_v2_114;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|401121633", "401121633", "Swamp_C2_CTP_010_Ext_C", "box_Brick_Exp_Extraction_Helicopter_v2_114.ToTakeOff", "box_OutputOrder_v2_51.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_160_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Extraction_Helicopter_v2_114();
    l0 = self.box_Brick_Exp_Extraction_Helicopter_v2_114;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|328194947", "328194947", "Swamp_C2_CTP_010_Ext_C", "box_OutputOrder_v2_160.Out", "box_Brick_Exp_Extraction_Helicopter_v2_114.SpawnHelicopter", clone:GetLuaBox(), l0:GetLuaBox());
    -- SpawnHelicopter
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_160_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_162();
    l0 = self.box_SpawnAI_162;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|130139892", "130139892", "Swamp_C2_CTP_010_Ext_C", "box_OutputOrder_v2_160.Out", "box_SpawnAI_162.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_51_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Outro_v4_50();
    l0 = self.box_Brick_Exp_Outro_v4_50;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|700277036", "700277036", "Swamp_C2_CTP_010_Ext_C", "box_OutputOrder_v2_51.Out", "box_Brick_Exp_Outro_v4_50.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_51_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Extraction_ReachSurvive_v3_62();
    l0 = self.box_Brick_Exp_Extraction_ReachSurvive_v3_62;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|1910707710", "1910707710", "Swamp_C2_CTP_010_Ext_C", "box_OutputOrder_v2_51.Out", "box_Brick_Exp_Extraction_ReachSurvive_v3_62.Cleanup", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cleanup
    l0:Exec(0, params);
end;

function export:f_box_ActivityInitialized_109_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetExpeditionGameplayElements_172();
    l0 = self.box_ActivityInitialized_109;
    l1 = Boxes[GetPathID("Domino/System/GetExpeditionGameplayElements.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|354728824", "354728824", "Swamp_C2_CTP_010_Ext_C", "box_ActivityInitialized_109.Out", "box_GetExpeditionGameplayElements_172.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetExpeditionGameplayElements_172_Out()
    local params, l0;
    self:OnExit_box_GetExpeditionGameplayElements_172_Out();
    l0 = Boxes[GetPathID("Domino/System/GetExpeditionGameplayElements.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_173();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|1882782538", "1882782538", "Swamp_C2_CTP_010_Ext_C", "box_GetExpeditionGameplayElements_172.Out", "box_IntegerArithmetics_v2_173.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_SetActivityFact_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|4873609");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "PackageStolenDetected",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Extraction_PackageStolenDetector_52()
    local params;
    params = {
        -- AllEnemiesGroup,
        [0] = "#95FE825F",
        -- EnemyActivity,
        [1] = "9015335447594678",
        -- PackagePositionEntity,
        [2] = Globals.Swamp_C2_CTP_010_Main.ePackageSpawner,
        -- PlayerDetectedFact,
        [3] = "player_fullydetected",
        -- VO_CheckPackage_01,
        [4] = "4278996178",
        -- VO_CheckPackage_02,
        [5] = "3620615790",
        -- VO_CheckPackage_03,
        [6] = "2188347775",
        -- VO_CheckPackage_04,
        [7] = "1835623167",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Extraction_ReachSurvive_v3_62()
    local params;
    params = {
        -- ExtractionMarker_A,
        [0] = "2107276643773975837",
        -- ExtractionMarker_B,
        [1] = "2107321158272559086",
        -- ExtractionMarker_C,
        [2] = "2107323105585150627",
        -- ExtractionPOIID,
        [3] = self.iExtractionPOIID,
        -- GroupAllEnemies,
        [4] = "#95FE825F",
        -- ObjectiveTimer,
        [5] = 120,
        -- PlayMusicEvent,
        [6] = "3719151969",
        -- ReachExtractionShape_A,
        [7] = "2107345361145177585",
        -- ReachExtractionShape_B,
        [8] = "2107345397342021127",
        -- ReachExtractionShape_C,
        [9] = "2107345413464925725",
        -- StopMusicEvent,
        [10] = "1549670302",
        -- TimeBeforeSpawnHelicopter,
        [11] = 105,
        -- VO_EnemyKnows_01,
        [12] = "1882754627",
        -- VO_EnemyKnows_02,
        [13] = "2162807899",
        -- VO_EnemyKnows_03,
        [14] = "4126530109",
        -- VO_EnemyKnows_04,
        [15] = "2853668550",
        -- VO_EnemyKnows_05,
        [16] = "3135746638",
        -- VO_ExtractionLocation_A,
        [17] = "3296277365",
        -- VO_ExtractionLocation_B,
        [18] = "3690117269",
        -- VO_ExtractionLocation_C,
        [19] = "608511069",
        -- VO_FoundYouAgain_01,
        [20] = "2187618352",
        -- VO_FoundYouAgain_02,
        [21] = "2801888499",
        -- VO_FoundYouAgain_03,
        [22] = "3224385167",
        -- VO_FoundYouAgain_04,
        [23] = "187352090",
        -- VO_FoundYouAgain_05,
        [24] = "2581513551",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_121()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_121");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|182348846");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_170()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_170");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|432949059");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_170_Out,
    });
    params = {
        -- Integer,
        [1] = 2,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_BasicSetups_53()
    local params;
    params = {
        -- DebugMode,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_144()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109216431047445636",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_164()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_164");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|711738425");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_164_Out,
    });
    params = {
        -- Integer,
        [1] = 3,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_BasicSetups_97()
    local params;
    params = {
        -- Debug_ExtractionPOIID,
        [0] = 3,
        -- DebugMode,
        [4] = true,
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|845778707");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "EndWave",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_162()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108922044235135105",
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

function export:OnEnter_box_OutputOrder_v2_143()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_143");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|1077442849");
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
                [0] = self.f_box_OutputOrder_v2_143_Out_0,
                [1] = self.f_box_OutputOrder_v2_143_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_148()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109216431338949771",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Outro_v4_50()
    local params;
    params = {
        -- DelayBeforeVictorySignOffVO,
        [0] = 6,
        -- PlayMusicEvent,
        [1] = "3719151969",
        -- SceneEntity,
        [2] = "2108523413189437307",
        -- Sequence,
        [3] = "Sequences/bowmore_expedition/outro/expedition_outro_swamp.seq",
        -- StopMusicEvent,
        [4] = "1549670302",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_6()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|1377506265");
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
                [0] = self.f_box_OutputOrder_v2_61_Out_0,
                [1] = self.f_box_OutputOrder_v2_61_Out_1,
                [2] = self.f_box_OutputOrder_v2_61_Out_2,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_173()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_173");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|1423086025");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_173_Out,
    });
    params = {
        -- A,
        [0] = self.iDifficulty,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_163()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 30,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Extraction_Helicopter_v2_114()
    local params;
    params = {
        -- HelicopterSpawner,
        [0] = "2107183545941230499",
        -- ObjectiveMarker,
        [1] = "2107183545937036183",
        -- PlayMusicEvent,
        [2] = "3719151969",
        -- StopMusicEvent,
        [3] = "1549670302",
        -- STP_Coming,
        [4] = "2107666204484175961",
        -- STP_Leaving,
        [5] = "2107666253123422557",
        -- VO_ShootChopper_01,
        [6] = "4280431954",
        -- VO_ShootChopper_02,
        [7] = "2956254165",
        -- VO_ShootChopper_03,
        [8] = "3627679763",
        -- VO_ShootChopper_04,
        [9] = "2927030543",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_160()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_160");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|1758470023");
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
                [0] = self.f_box_OutputOrder_v2_160_Out_0,
                [1] = self.f_box_OutputOrder_v2_160_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|1774425980");
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
                [0] = self.f_box_OutputOrder_v2_51_Out_0,
                [1] = self.f_box_OutputOrder_v2_51_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|1820051528");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "Package_Stolen_Detected",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_142()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109216431626259602",
    };
    return params;
end;

function export:OnEnter_box_GetExpeditionGameplayElements_172()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetExpeditionGameplayElements.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetExpeditionGameplayElements_172");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_C.domino|@Swamp_C2_CTP_010_Ext_C|2035145604");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetExpeditionGameplayElements_172_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_161()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108922044241426568",
    };
    return params;
end;

function export:OnExit_box_SetInteger_v2_170_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iPackagePositionID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_Exp_Common_BasicSetups_53_Out()
    local l0;
    l0 = self.box_Brick_Exp_Common_BasicSetups_53;
    self.iPackagePositionID = l0:GetDataOutValue(2);
end;

function export:OnExit_box_SetInteger_v2_164_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iPackagePositionID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_Exp_Common_BasicSetups_97_Out()
    local l0;
    l0 = self.box_Brick_Exp_Common_BasicSetups_97;
    self.iExtractionPOIID = l0:GetDataOutValue(1);
end;

function export:OnExit_box_IntegerArithmetics_v2_173_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.iDifficulty = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetExpeditionGameplayElements_172_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetExpeditionGameplayElements.lua")];
    self.iDifficulty = l0:GetDataOutValue(0);
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
