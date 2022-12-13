LUACr  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_swamp/expeditions/c2/swamp_c2_ctp_010_ext_b.domino
-- User graph: Swamp_C2_CTP_010_Ext_B
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
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/C2/Swamp_C2_CTP_010_Ext_B.Swamp_C2_CTP_010_Ext_B.debug.lua")] = {
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
    self._name = "Swamp_C2_CTP_010_Ext_B";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B";
    self.eWaveSpawner_2_2 = nil;
    self.iExtractionPOIID = 0;
    self.eWaveSpawner_3_1 = nil;
    self.eWaveSpawner_1_2 = nil;
    self.eLocalPlayer = nil;
    self.eWaveSpawner_3_2 = nil;
    self.eWaveSpawner_5_1 = nil;
    self.eWaveSpawner_1_1 = nil;
    self.eWaveSpawner_4_1 = nil;
    self.eWaveSpawner_2_1 = nil;
    self.eWaveSpawner_4_2 = nil;
    self.eWaveSpawner_5_2 = nil;
    self.bInFortress = false;
    self.bInSkyScreamer = false;
    self.iDifficulty = 0;
    self.iPackagePositionID = 0;
    self.bInFrontGate = false;
    self.bInRollerCoaster = false;
    self.bInEmptyRegion = false;
    self.box_SpawnAI_148 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_148;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_148");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|166049641");
    l0:SetConnections({
    });
    self.box_SpawnAI_164 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_164;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_164");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|203200856");
    l0:SetConnections({
    });
    self.box_Brick_Exp_Extraction_PackageStolenDetector_64 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Extraction_PackageStolenDetector.debug.lua");
    l0 = self.box_Brick_Exp_Extraction_PackageStolenDetector_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Extraction_PackageStolenDetector_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|290434203");
    l0:SetConnections({
        -- Enabled,
        [0] = self.f_box_Brick_Exp_Extraction_PackageStolenDetector_64_Enabled,
        -- PackageStolenDetected,
        [1] = self.f_box_Brick_Exp_Extraction_PackageStolenDetector_64_PackageStolenDetected,
    });
    self.box_SpawnAI_74 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|401166573");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_74_Out,
    });
    self.box_Brick_Exp_Extraction_ReachSurvive_v3_73 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Extraction_ReachSurvive_v3.debug.lua");
    l0 = self.box_Brick_Exp_Extraction_ReachSurvive_v3_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Extraction_ReachSurvive_v3_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|467371662");
    l0:SetConnections({
        -- ReachedSurvived,
        [0] = self.f_box_Brick_Exp_Extraction_ReachSurvive_v3_73_ReachedSurvived,
        -- ToSpawnHelicopter,
        [1] = self.f_box_Brick_Exp_Extraction_ReachSurvive_v3_73_ToSpawnHelicopter,
    });
    self.box_Brick_Exp_Common_BasicSetups_69 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_BasicSetups.debug.lua");
    l0 = self.box_Brick_Exp_Common_BasicSetups_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_BasicSetups_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|790643329");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Brick_Exp_Common_BasicSetups_69_Out,
    });
    self.box_MultipleOR_166 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_166;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_166");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|799905807");
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
        [0] = self.f_box_MultipleOR_166_Out,
    });
    self.box_Delay_v5_165 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_165;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_165");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|992598936");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_165_TimeElapsed,
    });
    self.box_MultipleOR_63 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|1025057026");
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
    self.box_ActivityInitialized_13 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|1181310516");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_13_Out,
    });
    self.box_Delay_v5_145 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_145;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_145");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|1258014524");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_145_TimeElapsed,
    });
    self.box_Brick_Exp_Common_BasicSetups_83 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_BasicSetups.debug.lua");
    l0 = self.box_Brick_Exp_Common_BasicSetups_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_BasicSetups_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|1275692523");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Brick_Exp_Common_BasicSetups_83_Out,
    });
    self.box_SpawnAI_129 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_129;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_129");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|1307320915");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_129_Out,
    });
    self.box_SpawnAI_163 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_163;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_163");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|1341149597");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_163_Out,
    });
    self.box_Brick_Exp_Outro_v4_9 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Narrative.Brick_Exp_Outro_v4.debug.lua");
    l0 = self.box_Brick_Exp_Outro_v4_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Outro_v4_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|1500896511");
    l0:SetConnections({
    });
    self.box_ActivityAcknowledgeGate_36 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|1900395517");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_36_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_36_Reloaded,
    });
    self.box_Delay_v5_8 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|1969794378");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_8_TimeElapsed,
    });
    self.box_IndexList_v2_71 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|2007134515");
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
                [0] = self.f_box_IndexList_v2_71_Output_0,
                [1] = self.f_box_IndexList_v2_71_Output_1,
                [2] = self.f_box_IndexList_v2_71_Output_2,
            },
            count = 3,
        },
    });
    self.box_Brick_Exp_Extraction_Helicopter_v2_26 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Extraction_Helicopter_v2.debug.lua");
    l0 = self.box_Brick_Exp_Extraction_Helicopter_v2_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Extraction_Helicopter_v2_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|2134346118");
    l0:SetConnections({
        -- PlayersAllSeated,
        [0] = self.f_box_Brick_Exp_Extraction_Helicopter_v2_26_PlayersAllSeated,
        -- ToTakeOff,
        [2] = self.f_box_Brick_Exp_Extraction_Helicopter_v2_26_ToTakeOff,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_36;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|2126647346", "2126647346", "Swamp_C2_CTP_010_Ext_B", "In", "box_ActivityAcknowledgeGate_36.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_v2_19();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|1674153677", "1674153677", "Swamp_C2_CTP_010_Ext_B", "OnLeaveZone", "box_ActivityRetry_v2_19.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetExpeditionGameplayElements_168_Out()
    local params, l0;
    self:OnExit_box_GetExpeditionGameplayElements_168_Out();
    l0 = Boxes[GetPathID("Domino/System/GetExpeditionGameplayElements.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_170();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|462278663", "462278663", "Swamp_C2_CTP_010_Ext_B", "box_GetExpeditionGameplayElements_168.Out", "box_IntegerArithmetics_v2_170.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Extraction_PackageStolenDetector_64_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Extraction_ReachSurvive_v3_73();
    l0 = self.box_Brick_Exp_Extraction_PackageStolenDetector_64;
    l1 = self.box_Brick_Exp_Extraction_ReachSurvive_v3_73;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|587757074", "587757074", "Swamp_C2_CTP_010_Ext_B", "box_Brick_Exp_Extraction_PackageStolenDetector_64.Enabled", "box_Brick_Exp_Extraction_ReachSurvive_v3_73.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Brick_Exp_Extraction_PackageStolenDetector_64_PackageStolenDetected()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_72();
    l0 = self.box_Brick_Exp_Extraction_PackageStolenDetector_64;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|164656364", "164656364", "Swamp_C2_CTP_010_Ext_B", "box_Brick_Exp_Extraction_PackageStolenDetector_64.PackageStolenDetected", "box_OutputOrder_v2_72.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_74_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_8();
    l0 = self.box_SpawnAI_74;
    l1 = self.box_Delay_v5_8;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|2127692591", "2127692591", "Swamp_C2_CTP_010_Ext_B", "box_SpawnAI_74.Out", "box_Delay_v5_8.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Brick_Exp_Extraction_ReachSurvive_v3_73_ReachedSurvived()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Extraction_Helicopter_v2_26();
    l0 = self.box_Brick_Exp_Extraction_ReachSurvive_v3_73;
    l1 = self.box_Brick_Exp_Extraction_Helicopter_v2_26;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|1865563116", "1865563116", "Swamp_C2_CTP_010_Ext_B", "box_Brick_Exp_Extraction_ReachSurvive_v3_73.ReachedSurvived", "box_Brick_Exp_Extraction_Helicopter_v2_26.TimeToGetIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- TimeToGetIn
    l1:Exec(1, params);
end;

function export:f_box_Brick_Exp_Extraction_ReachSurvive_v3_73_ToSpawnHelicopter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_162();
    l0 = self.box_Brick_Exp_Extraction_ReachSurvive_v3_73;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|1254227410", "1254227410", "Swamp_C2_CTP_010_Ext_B", "box_Brick_Exp_Extraction_ReachSurvive_v3_73.ToSpawnHelicopter", "box_OutputOrder_v2_162.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_62_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Outro_v4_9();
    l0 = self.box_Brick_Exp_Outro_v4_9;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|816570497", "816570497", "Swamp_C2_CTP_010_Ext_B", "box_OutputOrder_v2_62.Out", "box_Brick_Exp_Outro_v4_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_62_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Extraction_ReachSurvive_v3_73();
    l0 = self.box_Brick_Exp_Extraction_ReachSurvive_v3_73;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|578612395", "578612395", "Swamp_C2_CTP_010_Ext_B", "box_OutputOrder_v2_62.Out", "box_Brick_Exp_Extraction_ReachSurvive_v3_73.Cleanup", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cleanup
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_127_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_145();
    l0 = self.box_Delay_v5_145;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|613023811", "613023811", "Swamp_C2_CTP_010_Ext_B", "box_OutputOrder_v2_127.Out", "box_Delay_v5_145.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_127_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_2();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|2074477008", "2074477008", "Swamp_C2_CTP_010_Ext_B", "box_OutputOrder_v2_127.Out", "box_BroadcastMessage_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_167_Out()
    local l0;
    self:OnExit_box_SetInteger_v2_167_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_166;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|1284326922", "1284326922", "Swamp_C2_CTP_010_Ext_B", "box_SetInteger_v2_167.Out", "box_MultipleOR_166.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Brick_Exp_Common_BasicSetups_69_Out()
    local l0, l1;
    self:OnExit_box_Brick_Exp_Common_BasicSetups_69_Out();
    l0 = self.box_Brick_Exp_Common_BasicSetups_69;
    l1 = self.box_MultipleOR_166;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|1149047970", "1149047970", "Swamp_C2_CTP_010_Ext_B", "box_Brick_Exp_Common_BasicSetups_69.Out", "box_MultipleOR_166.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MultipleOR_166_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_BasicSetups_83();
    l0 = self.box_MultipleOR_166;
    l1 = self.box_Brick_Exp_Common_BasicSetups_83;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|668763012", "668763012", "Swamp_C2_CTP_010_Ext_B", "box_MultipleOR_166.Out", "box_Brick_Exp_Common_BasicSetups_83.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_165_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_164();
    l0 = self.box_Delay_v5_165;
    l1 = self.box_SpawnAI_164;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|464648076", "464648076", "Swamp_C2_CTP_010_Ext_B", "box_Delay_v5_165.TimeElapsed", "box_SpawnAI_164.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_63_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_63;
    l1 = self.box_ActivityInitialized_13;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|1436231438", "1436231438", "Swamp_C2_CTP_010_Ext_B", "box_MultipleOR_63.Out", "box_ActivityInitialized_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_ActivityInitialized_13_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetExpeditionGameplayElements_168();
    l0 = self.box_ActivityInitialized_13;
    l1 = Boxes[GetPathID("Domino/System/GetExpeditionGameplayElements.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|76790168", "76790168", "Swamp_C2_CTP_010_Ext_B", "box_ActivityInitialized_13.Out", "box_GetExpeditionGameplayElements_168.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_162_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Extraction_Helicopter_v2_26();
    l0 = self.box_Brick_Exp_Extraction_Helicopter_v2_26;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|816303332", "816303332", "Swamp_C2_CTP_010_Ext_B", "box_OutputOrder_v2_162.Out", "box_Brick_Exp_Extraction_Helicopter_v2_26.SpawnHelicopter", clone:GetLuaBox(), l0:GetLuaBox());
    -- SpawnHelicopter
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_162_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_163();
    l0 = self.box_SpawnAI_163;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|1744360348", "1744360348", "Swamp_C2_CTP_010_Ext_B", "box_OutputOrder_v2_162.Out", "box_SpawnAI_163.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_145_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_129();
    l0 = self.box_Delay_v5_145;
    l1 = self.box_SpawnAI_129;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|1076350645", "1076350645", "Swamp_C2_CTP_010_Ext_B", "box_Delay_v5_145.TimeElapsed", "box_SpawnAI_129.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Brick_Exp_Common_BasicSetups_83_Out()
    local params, l0, l1;
    self:OnExit_box_Brick_Exp_Common_BasicSetups_83_Out();
    params = self:OnEnter_box_Brick_Exp_Extraction_PackageStolenDetector_64();
    l0 = self.box_Brick_Exp_Common_BasicSetups_83;
    l1 = self.box_Brick_Exp_Extraction_PackageStolenDetector_64;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|818261483", "818261483", "Swamp_C2_CTP_010_Ext_B", "box_Brick_Exp_Common_BasicSetups_83.Out", "box_Brick_Exp_Extraction_PackageStolenDetector_64.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_129_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_74();
    l0 = self.box_SpawnAI_129;
    l1 = self.box_SpawnAI_74;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|584000575", "584000575", "Swamp_C2_CTP_010_Ext_B", "box_SpawnAI_129.Out", "box_SpawnAI_74.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_163_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_165();
    l0 = self.box_SpawnAI_163;
    l1 = self.box_Delay_v5_165;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|864308211", "864308211", "Swamp_C2_CTP_010_Ext_B", "box_SpawnAI_163.Out", "box_Delay_v5_165.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_72_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_1();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|654831386", "654831386", "Swamp_C2_CTP_010_Ext_B", "box_OutputOrder_v2_72.Out", "box_BroadcastMessage_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_72_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityFact_70();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|1587206595", "1587206595", "Swamp_C2_CTP_010_Ext_B", "box_OutputOrder_v2_72.Out", "box_SetActivityFact_70.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_72_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Extraction_ReachSurvive_v3_73();
    l0 = self.box_Brick_Exp_Extraction_ReachSurvive_v3_73;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|1229197951", "1229197951", "Swamp_C2_CTP_010_Ext_B", "box_OutputOrder_v2_72.Out", "box_Brick_Exp_Extraction_ReachSurvive_v3_73.PackageStolenDetected", clone:GetLuaBox(), l0:GetLuaBox());
    -- PackageStolenDetected
    l0:Exec(2, params);
end;

function export:f_box_SetInteger_v2_61_Out()
    local l0;
    self:OnExit_box_SetInteger_v2_61_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_166;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|1927112134", "1927112134", "Swamp_C2_CTP_010_Ext_B", "box_SetInteger_v2_61.Out", "box_MultipleOR_166.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_36_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_36;
    l1 = self.box_MultipleOR_63;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|1349289964", "1349289964", "Swamp_C2_CTP_010_Ext_B", "box_ActivityAcknowledgeGate_36.Acknowledged", "box_MultipleOR_63.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_36_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_36;
    l1 = self.box_MultipleOR_63;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|1053161551", "1053161551", "Swamp_C2_CTP_010_Ext_B", "box_ActivityAcknowledgeGate_36.Reloaded", "box_MultipleOR_63.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_8_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_148();
    l0 = self.box_Delay_v5_8;
    l1 = self.box_SpawnAI_148;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|1291783674", "1291783674", "Swamp_C2_CTP_010_Ext_B", "box_Delay_v5_8.TimeElapsed", "box_SpawnAI_148.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_71_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_61();
    l0 = self.box_IndexList_v2_71;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|1127206327", "1127206327", "Swamp_C2_CTP_010_Ext_B", "box_IndexList_v2_71.Output", "box_SetInteger_v2_61.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_71_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_167();
    l0 = self.box_IndexList_v2_71;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|2040044501", "2040044501", "Swamp_C2_CTP_010_Ext_B", "box_IndexList_v2_71.Output", "box_SetInteger_v2_167.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_71_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_BasicSetups_69();
    l0 = self.box_IndexList_v2_71;
    l1 = self.box_Brick_Exp_Common_BasicSetups_69;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|1441412550", "1441412550", "Swamp_C2_CTP_010_Ext_B", "box_IndexList_v2_71.Output", "box_Brick_Exp_Common_BasicSetups_69.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IntegerArithmetics_v2_170_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_170_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_71();
    l0 = self.box_IndexList_v2_71;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|1960781199", "1960781199", "Swamp_C2_CTP_010_Ext_B", "box_IntegerArithmetics_v2_170.Out", "box_IndexList_v2_71.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Brick_Exp_Extraction_Helicopter_v2_26_PlayersAllSeated()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_127();
    l0 = self.box_Brick_Exp_Extraction_Helicopter_v2_26;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|704669538", "704669538", "Swamp_C2_CTP_010_Ext_B", "box_Brick_Exp_Extraction_Helicopter_v2_26.PlayersAllSeated", "box_OutputOrder_v2_127.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Extraction_Helicopter_v2_26_ToTakeOff()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_62();
    l0 = self.box_Brick_Exp_Extraction_Helicopter_v2_26;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|1233056212", "1233056212", "Swamp_C2_CTP_010_Ext_B", "box_Brick_Exp_Extraction_Helicopter_v2_26.ToTakeOff", "box_OutputOrder_v2_62.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_BroadcastMessage_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|132149887");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "Package_Stolen_Detected",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_148()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109215617857901562",
    };
    return params;
end;

function export:OnEnter_box_GetExpeditionGameplayElements_168()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetExpeditionGameplayElements.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetExpeditionGameplayElements_168");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|186526274");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetExpeditionGameplayElements_168_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_164()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108921970782385961",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Extraction_PackageStolenDetector_64()
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

function export:OnEnter_box_SetActivityFact_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|388742430");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "PackageStolenDetected",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_74()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109215605843317686",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Extraction_ReachSurvive_v3_73()
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
        [11] = 100,
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

function export:OnEnter_box_OutputOrder_v2_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|566624587");
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
                [0] = self.f_box_OutputOrder_v2_62_Out_0,
                [1] = self.f_box_OutputOrder_v2_62_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_127()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_127");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|664104396");
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
                [0] = self.f_box_OutputOrder_v2_127_Out_0,
                [1] = self.f_box_OutputOrder_v2_127_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_167()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_167");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|675441719");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_167_Out,
    });
    params = {
        -- Integer,
        [1] = 2,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_BasicSetups_69()
    local params;
    params = {
        -- DebugMode,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_165()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 30,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_162()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_162");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|1228710600");
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

function export:OnEnter_box_Delay_v5_145()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_BasicSetups_83()
    local params;
    params = {
        -- Debug_ExtractionPOIID,
        [0] = 2,
        -- DebugMode,
        [4] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_129()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109215587619066399",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_163()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108921970776094498",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|1379622771");
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
                [0] = self.f_box_OutputOrder_v2_72_Out_0,
                [1] = self.f_box_OutputOrder_v2_72_Out_1,
                [2] = self.f_box_OutputOrder_v2_72_Out_2,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|1469253269");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_61_Out,
    });
    params = {
        -- Integer,
        [1] = 3,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Outro_v4_9()
    local params;
    params = {
        -- DelayBeforeVictorySignOffVO,
        [0] = 6,
        -- PlayMusicEvent,
        [1] = "3719151969",
        -- SceneEntity,
        [2] = "2108523495385212811",
        -- Sequence,
        [3] = "Sequences/bowmore_expedition/outro/expedition_outro_swamp.seq",
        -- StopMusicEvent,
        [4] = "1549670302",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|1654382513");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|1918923130");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "EndWave",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_8()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_71()
    local params;
    params = {
        -- Index,
        [0] = self.iDifficulty,
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_170()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_170");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Ext_B.domino|@Swamp_C2_CTP_010_Ext_B|2044758023");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_170_Out,
    });
    params = {
        -- A,
        [0] = self.iDifficulty,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Extraction_Helicopter_v2_26()
    local params;
    params = {
        -- HelicopterSpawner,
        [0] = "2107183584140854383",
        -- ObjectiveMarker,
        [1] = "2107183584134562919",
        -- PlayMusicEvent,
        [2] = "3719151969",
        -- StopMusicEvent,
        [3] = "1549670302",
        -- STP_Coming,
        [4] = "2107183584138757228",
        -- STP_Leaving,
        [5] = "2107376940586371816",
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

function export:OnExit_box_GetExpeditionGameplayElements_168_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetExpeditionGameplayElements.lua")];
    self.iDifficulty = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_167_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iPackagePositionID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_Exp_Common_BasicSetups_69_Out()
    local l0;
    l0 = self.box_Brick_Exp_Common_BasicSetups_69;
    self.iPackagePositionID = l0:GetDataOutValue(2);
end;

function export:OnExit_box_Brick_Exp_Common_BasicSetups_83_Out()
    local l0;
    l0 = self.box_Brick_Exp_Common_BasicSetups_83;
    self.iExtractionPOIID = l0:GetDataOutValue(1);
end;

function export:OnExit_box_SetInteger_v2_61_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iPackagePositionID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_170_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
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
