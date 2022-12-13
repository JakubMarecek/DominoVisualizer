LUAC   -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_swamp/expeditions/c7/swamp_c7_ctp_010_ext_a.domino
-- User graph: Swamp_C7_CTP_010_Ext_A
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Extraction_Helicopter_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Extraction_PackageStolenDetector.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Extraction_ReachSurvive_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Narrative.Brick_Exp_Outro_v4.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/BroadcastMessage.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/C7/Swamp_C7_CTP_010_Main.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[4280431954.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3224385167.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4126530109.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2927030543.bnk]], "CSoundResource");
        cboxRes:LoadResource([[645226521.bnk]], "CSoundResource");
        cboxRes:LoadResource([[187352090.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1872243634.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1882754627.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3627679763.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2187618352.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4278996178.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2581513551.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1835623167.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2801888499.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3757372511.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2162807899.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3629686238.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2188347775.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2956254165.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3135746638.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1940132678.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3620615790.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2853668550.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/C7/Swamp_C7_CTP_010_Ext_A.Swamp_C7_CTP_010_Ext_A.debug.lua")] = {
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
end;

function export:Init(cbox)
    local l0;
    self._name = "Swamp_C7_CTP_010_Ext_A";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Ext_A.domino|@Swamp_C7_CTP_010_Ext_A";
    self.SurviveTimer = 119;
    self.Player = nil;
    self.fTimeBeforeSpawnHelicopter = 87;
    self.box_Brick_Exp_Extraction_PackageStolenDetector_13 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Extraction_PackageStolenDetector.debug.lua");
    l0 = self.box_Brick_Exp_Extraction_PackageStolenDetector_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Extraction_PackageStolenDetector_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Ext_A.domino|@Swamp_C7_CTP_010_Ext_A|408292133");
    l0:SetConnections({
        -- Enabled,
        [0] = self.f_box_Brick_Exp_Extraction_PackageStolenDetector_13_Enabled,
        -- PackageStolenDetected,
        [1] = self.f_box_Brick_Exp_Extraction_PackageStolenDetector_13_PackageStolenDetected,
    });
    self.box_Brick_Exp_Extraction_ReachSurvive_v3_2 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Extraction_ReachSurvive_v3.debug.lua");
    l0 = self.box_Brick_Exp_Extraction_ReachSurvive_v3_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Extraction_ReachSurvive_v3_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Ext_A.domino|@Swamp_C7_CTP_010_Ext_A|458581886");
    l0:SetConnections({
        -- ReachedSurvived,
        [0] = self.f_box_Brick_Exp_Extraction_ReachSurvive_v3_2_ReachedSurvived,
        -- ToSpawnHelicopter,
        [1] = self.f_box_Brick_Exp_Extraction_ReachSurvive_v3_2_ToSpawnHelicopter,
    });
    self.box_MultipleOR_14 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Ext_A.domino|@Swamp_C7_CTP_010_Ext_A|579466018");
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
    self.box_Brick_Exp_Extraction_Helicopter_v2_3 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Extraction_Helicopter_v2.debug.lua");
    l0 = self.box_Brick_Exp_Extraction_Helicopter_v2_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Extraction_Helicopter_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Ext_A.domino|@Swamp_C7_CTP_010_Ext_A|806238800");
    l0:SetConnections({
        -- PlayersAllSeated,
        [0] = self.f_box_Brick_Exp_Extraction_Helicopter_v2_3_PlayersAllSeated,
        -- SpawnCalled,
        [1] = self.f_box_Brick_Exp_Extraction_Helicopter_v2_3_SpawnCalled,
        -- ToTakeOff,
        [2] = self.f_box_Brick_Exp_Extraction_Helicopter_v2_3_ToTakeOff,
    });
    self.box_Delay_v5_12 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Ext_A.domino|@Swamp_C7_CTP_010_Ext_A|932287713");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_12_TimeElapsed,
    });
    self.box_Delay_v5_8 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Ext_A.domino|@Swamp_C7_CTP_010_Ext_A|1059384661");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_8_TimeElapsed,
    });
    self.box_SpawnAI_5 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Ext_A.domino|@Swamp_C7_CTP_010_Ext_A|1283496540");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_5_Out,
    });
    self.box_ActivityInitialized_7 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Ext_A.domino|@Swamp_C7_CTP_010_Ext_A|1402265711");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_7_Out,
    });
    self.box_ActivityAcknowledgeGate_4 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Ext_A.domino|@Swamp_C7_CTP_010_Ext_A|1703003494");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_4_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_4_Reloaded,
    });
    self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Ext_A.domino|@Swamp_C7_CTP_010_Ext_A|1725945224");
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
    self.box_Brick_Exp_Outro_v4_9 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Narrative.Brick_Exp_Outro_v4.debug.lua");
    l0 = self.box_Brick_Exp_Outro_v4_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Outro_v4_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Ext_A.domino|@Swamp_C7_CTP_010_Ext_A|1781823209");
    l0:SetConnections({
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Ext_A.domino|@Swamp_C7_CTP_010_Ext_A|840397784", "840397784", "Swamp_C7_CTP_010_Ext_A", "In", "box_ActivityAcknowledgeGate_4.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_6();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Ext_A.domino|@Swamp_C7_CTP_010_Ext_A|1583552478", "1583552478", "Swamp_C7_CTP_010_Ext_A", "box_OutputOrder_v2_10.Out", "box_BroadcastMessage_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Extraction_ReachSurvive_v3_2();
    l0 = self.box_Brick_Exp_Extraction_ReachSurvive_v3_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Ext_A.domino|@Swamp_C7_CTP_010_Ext_A|948929068", "948929068", "Swamp_C7_CTP_010_Ext_A", "box_OutputOrder_v2_10.Out", "box_Brick_Exp_Extraction_ReachSurvive_v3_2.PackageStolenDetected", clone:GetLuaBox(), l0:GetLuaBox());
    -- PackageStolenDetected
    l0:Exec(2, params);
end;

function export:f_box_Brick_Exp_Extraction_PackageStolenDetector_13_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Extraction_ReachSurvive_v3_2();
    l0 = self.box_Brick_Exp_Extraction_PackageStolenDetector_13;
    l1 = self.box_Brick_Exp_Extraction_ReachSurvive_v3_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Ext_A.domino|@Swamp_C7_CTP_010_Ext_A|2002362292", "2002362292", "Swamp_C7_CTP_010_Ext_A", "box_Brick_Exp_Extraction_PackageStolenDetector_13.Enabled", "box_Brick_Exp_Extraction_ReachSurvive_v3_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Brick_Exp_Extraction_PackageStolenDetector_13_PackageStolenDetected()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = self.box_Brick_Exp_Extraction_PackageStolenDetector_13;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Ext_A.domino|@Swamp_C7_CTP_010_Ext_A|607002315", "607002315", "Swamp_C7_CTP_010_Ext_A", "box_Brick_Exp_Extraction_PackageStolenDetector_13.PackageStolenDetected", "box_OutputOrder_v2_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Extraction_ReachSurvive_v3_2_ReachedSurvived()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Extraction_Helicopter_v2_3();
    l0 = self.box_Brick_Exp_Extraction_ReachSurvive_v3_2;
    l1 = self.box_Brick_Exp_Extraction_Helicopter_v2_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Ext_A.domino|@Swamp_C7_CTP_010_Ext_A|433822569", "433822569", "Swamp_C7_CTP_010_Ext_A", "box_Brick_Exp_Extraction_ReachSurvive_v3_2.ReachedSurvived", "box_Brick_Exp_Extraction_Helicopter_v2_3.TimeToGetIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- TimeToGetIn
    l1:Exec(1, params);
end;

function export:f_box_Brick_Exp_Extraction_ReachSurvive_v3_2_ToSpawnHelicopter()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Extraction_Helicopter_v2_3();
    l0 = self.box_Brick_Exp_Extraction_ReachSurvive_v3_2;
    l1 = self.box_Brick_Exp_Extraction_Helicopter_v2_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Ext_A.domino|@Swamp_C7_CTP_010_Ext_A|2095488043", "2095488043", "Swamp_C7_CTP_010_Ext_A", "box_Brick_Exp_Extraction_ReachSurvive_v3_2.ToSpawnHelicopter", "box_Brick_Exp_Extraction_Helicopter_v2_3.SpawnHelicopter", l0:GetLuaBox(), l1:GetLuaBox());
    -- SpawnHelicopter
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_14_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_5();
    l0 = self.box_MultipleOR_14;
    l1 = self.box_SpawnAI_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Ext_A.domino|@Swamp_C7_CTP_010_Ext_A|196554639", "196554639", "Swamp_C7_CTP_010_Ext_A", "box_MultipleOR_14.Out", "box_SpawnAI_5.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Brick_Exp_Extraction_Helicopter_v2_3_PlayersAllSeated()
    local params, l0, l1;
    params = self:OnEnter_box_BroadcastMessage_11();
    l0 = self.box_Brick_Exp_Extraction_Helicopter_v2_3;
    l1 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Ext_A.domino|@Swamp_C7_CTP_010_Ext_A|1345613788", "1345613788", "Swamp_C7_CTP_010_Ext_A", "box_Brick_Exp_Extraction_Helicopter_v2_3.PlayersAllSeated", "box_BroadcastMessage_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Extraction_Helicopter_v2_3_SpawnCalled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_8();
    l0 = self.box_Brick_Exp_Extraction_Helicopter_v2_3;
    l1 = self.box_Delay_v5_8;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Ext_A.domino|@Swamp_C7_CTP_010_Ext_A|2132930270", "2132930270", "Swamp_C7_CTP_010_Ext_A", "box_Brick_Exp_Extraction_Helicopter_v2_3.SpawnCalled", "box_Delay_v5_8.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Brick_Exp_Extraction_Helicopter_v2_3_ToTakeOff()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Outro_v4_9();
    l0 = self.box_Brick_Exp_Extraction_Helicopter_v2_3;
    l1 = self.box_Brick_Exp_Outro_v4_9;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Ext_A.domino|@Swamp_C7_CTP_010_Ext_A|303905003", "303905003", "Swamp_C7_CTP_010_Ext_A", "box_Brick_Exp_Extraction_Helicopter_v2_3.ToTakeOff", "box_Brick_Exp_Outro_v4_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_12_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_12;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Ext_A.domino|@Swamp_C7_CTP_010_Ext_A|1904121028", "1904121028", "Swamp_C7_CTP_010_Ext_A", "box_Delay_v5_12.TimeElapsed", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_8_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_8;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Ext_A.domino|@Swamp_C7_CTP_010_Ext_A|228094127", "228094127", "Swamp_C7_CTP_010_Ext_A", "box_Delay_v5_8.TimeElapsed", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_12();
    l0 = self.box_SpawnAI_5;
    l1 = self.box_Delay_v5_12;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Ext_A.domino|@Swamp_C7_CTP_010_Ext_A|658821984", "658821984", "Swamp_C7_CTP_010_Ext_A", "box_SpawnAI_5.Out", "box_Delay_v5_12.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ActivityInitialized_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Extraction_PackageStolenDetector_13();
    l0 = self.box_ActivityInitialized_7;
    l1 = self.box_Brick_Exp_Extraction_PackageStolenDetector_13;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Ext_A.domino|@Swamp_C7_CTP_010_Ext_A|564377134", "564377134", "Swamp_C7_CTP_010_Ext_A", "box_ActivityInitialized_7.Out", "box_Brick_Exp_Extraction_PackageStolenDetector_13.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, params);
end;

function export:f_box_ActivityAcknowledgeGate_4_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Ext_A.domino|@Swamp_C7_CTP_010_Ext_A|1317851340", "1317851340", "Swamp_C7_CTP_010_Ext_A", "box_ActivityAcknowledgeGate_4.Acknowledged", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_4_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Ext_A.domino|@Swamp_C7_CTP_010_Ext_A|922680291", "922680291", "Swamp_C7_CTP_010_Ext_A", "box_ActivityAcknowledgeGate_4.Reloaded", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_1_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_1;
    l1 = self.box_ActivityInitialized_7;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Ext_A.domino|@Swamp_C7_CTP_010_Ext_A|878334101", "878334101", "Swamp_C7_CTP_010_Ext_A", "box_MultipleOR_1.Out", "box_ActivityInitialized_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:OnEnter_box_BroadcastMessage_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Ext_A.domino|@Swamp_C7_CTP_010_Ext_A|117085050");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "GPSActived",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Ext_A.domino|@Swamp_C7_CTP_010_Ext_A|166612434");
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
                [0] = self.f_box_OutputOrder_v2_10_Out_0,
                [1] = self.f_box_OutputOrder_v2_10_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Extraction_PackageStolenDetector_13()
    local params;
    params = {
        -- AllEnemiesGroup,
        [0] = "#A21E7AC0",
        -- EnemyActivity,
        [1] = "9015340561801971",
        -- PackagePositionEntity,
        [2] = Globals.Swamp_C7_CTP_010_Main.e_PackageSpawner,
        -- PlayerDetectedFact,
        [3] = "SWAMP_C7_B10_PlayerDetected",
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

function export:OnEnter_box_Brick_Exp_Extraction_ReachSurvive_v3_2()
    local params;
    params = {
        -- ExtractionMarker_A,
        [0] = "2108205867303176598",
        -- ExtractionMarker_B,
        [1] = "2108205968868247999",
        -- ExtractionMarker_C,
        [2] = "2108205984739494345",
        -- ExtractionPOIID,
        [3] = 1,
        -- GroupAllEnemies,
        [4] = "#A21E7AC0",
        -- ObjectiveTimer,
        [5] = 120,
        -- PlayMusicEvent,
        [6] = "645226521",
        -- ReachExtractionShape_A,
        [7] = "2108205867303176603",
        -- ReachExtractionShape_B,
        [8] = "2108205968866150836",
        -- ReachExtractionShape_C,
        [9] = "2108205984739494347",
        -- StopMusicEvent,
        [10] = "3757372511",
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
        [17] = "1872243634",
        -- VO_ExtractionLocation_B,
        [18] = "1940132678",
        -- VO_ExtractionLocation_C,
        [19] = "3629686238",
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

function export:OnEnter_box_Brick_Exp_Extraction_Helicopter_v2_3()
    local params;
    params = {
        -- HelicopterSpawner,
        [0] = "2108221090422602355",
        -- ObjectiveMarker,
        [1] = "2108221183622134683",
        -- PlayMusicEvent,
        [2] = "645226521",
        -- StopMusicEvent,
        [3] = "3757372511",
        -- STP_Coming,
        [4] = "2108221090445671044",
        -- STP_Leaving,
        [5] = "2108221183622134687",
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

function export:OnEnter_box_Delay_v5_12()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 30,
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

function export:OnEnter_box_SpawnAI_5()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109657224061127177",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Outro_v4_9()
    local params;
    params = {
        -- DelayBeforeVictorySignOffVO,
        [0] = 6,
        -- PlayMusicEvent,
        [1] = "645226521",
        -- SceneEntity,
        [2] = "2108773148972292551",
        -- Sequence,
        [3] = "Sequences/bowmore_expedition/outro/expedition_outro_swamp.seq",
        -- StopMusicEvent,
        [4] = "3757372511",
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Ext_A.domino|@Swamp_C7_CTP_010_Ext_A|2115330391");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "Swamp_C7_Goodbye_Start",
    };
    return params;
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
