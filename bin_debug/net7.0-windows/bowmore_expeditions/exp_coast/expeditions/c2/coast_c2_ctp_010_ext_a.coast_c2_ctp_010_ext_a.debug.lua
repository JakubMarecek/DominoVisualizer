LUACK�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_coast/expeditions/c2/coast_c2_ctp_010_ext_a.domino
-- User graph: Coast_C2_CTP_010_Ext_A
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
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/BroadcastMessage.lua");
        cboxRes:RegisterBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C2/Coast_C2_CTP_010_Main_Enemy.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[800276208.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2178029307.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3373813313.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1584141897.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3156198632.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1398142132.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2241246172.bnk]], "CSoundResource");
        cboxRes:LoadResource([[814606112.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3190891322.bnk]], "CSoundResource");
        cboxRes:LoadResource([[68907972.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2671869843.bnk]], "CSoundResource");
        cboxRes:LoadResource([[561426583.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1149546885.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3872228536.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1564883687.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2546735414.bnk]], "CSoundResource");
        cboxRes:LoadResource([[517058564.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2151693776.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3330616606.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2547392799.bnk]], "CSoundResource");
        cboxRes:LoadResource([[226482355.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3729034401.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3116028612.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C2/Coast_C2_CTP_010_Ext_A.Coast_C2_CTP_010_Ext_A.debug.lua")] = {
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
end;

function export:Init(cbox)
    local l0;
    self._name = "Coast_C2_CTP_010_Ext_A";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Ext_A.domino|@Coast_C2_CTP_010_Ext_A";
    self.Out = DummyFunction;
    self.i_ExtractionPOIIndex = 0;
    self.box_Brick_Exp_Outro_v4_13 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Narrative.Brick_Exp_Outro_v4.debug.lua");
    l0 = self.box_Brick_Exp_Outro_v4_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Outro_v4_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Ext_A.domino|@Coast_C2_CTP_010_Ext_A|152688209");
    l0:SetConnections({
    });
    self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Ext_A.domino|@Coast_C2_CTP_010_Ext_A|199880996");
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
    self.box_ActivityInitialized_3 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Ext_A.domino|@Coast_C2_CTP_010_Ext_A|503261059");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_3_Out,
    });
    self.box_OnceOnly_v3_24 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Ext_A.domino|@Coast_C2_CTP_010_Ext_A|777089543");
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
                [0] = self.f_box_OnceOnly_v3_24_Out_0,
            },
            count = 2,
        },
    });
    self.box_ActivityAcknowledgeGate_2 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Ext_A.domino|@Coast_C2_CTP_010_Ext_A|890099606");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_2_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_2_Reloaded,
    });
    self.box_Brick_Exp_Extraction_Helicopter_v2_5 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Extraction_Helicopter_v2.debug.lua");
    l0 = self.box_Brick_Exp_Extraction_Helicopter_v2_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Extraction_Helicopter_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Ext_A.domino|@Coast_C2_CTP_010_Ext_A|1030781641");
    l0:SetConnections({
        -- PlayersAllSeated,
        [0] = self.f_box_Brick_Exp_Extraction_Helicopter_v2_5_PlayersAllSeated,
        -- ToTakeOff,
        [2] = self.f_box_Brick_Exp_Extraction_Helicopter_v2_5_ToTakeOff,
    });
    self.box_Brick_Exp_Common_BasicSetups_8 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_BasicSetups.debug.lua");
    l0 = self.box_Brick_Exp_Common_BasicSetups_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_BasicSetups_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Ext_A.domino|@Coast_C2_CTP_010_Ext_A|1068832544");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Brick_Exp_Common_BasicSetups_8_Out,
    });
    self.box_MissionAckTriggerListener_9 = cbox:CreateBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
    l0 = self.box_MissionAckTriggerListener_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionAckTriggerListener_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Ext_A.domino|@Coast_C2_CTP_010_Ext_A|1256682699");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_MissionAckTriggerListener_9_Enter,
    });
    self.box_Brick_Exp_Extraction_PackageStolenDetector_15 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Extraction_PackageStolenDetector.debug.lua");
    l0 = self.box_Brick_Exp_Extraction_PackageStolenDetector_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Extraction_PackageStolenDetector_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Ext_A.domino|@Coast_C2_CTP_010_Ext_A|1282446700");
    l0:SetConnections({
        -- PackageStolenDetected,
        [1] = self.f_box_Brick_Exp_Extraction_PackageStolenDetector_15_PackageStolenDetected,
    });
    self.box_Brick_Exp_Extraction_ReachSurvive_v3_11 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Extraction_ReachSurvive_v3.debug.lua");
    l0 = self.box_Brick_Exp_Extraction_ReachSurvive_v3_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Extraction_ReachSurvive_v3_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Ext_A.domino|@Coast_C2_CTP_010_Ext_A|1583464446");
    l0:SetConnections({
        -- ReachedSurvived,
        [0] = self.f_box_Brick_Exp_Extraction_ReachSurvive_v3_11_ReachedSurvived,
        -- ToSpawnHelicopter,
        [1] = self.f_box_Brick_Exp_Extraction_ReachSurvive_v3_11_ToSpawnHelicopter,
    });
    self.box_MissionAckTriggerListener_6 = cbox:CreateBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
    l0 = self.box_MissionAckTriggerListener_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionAckTriggerListener_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Ext_A.domino|@Coast_C2_CTP_010_Ext_A|1649123459");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_MissionAckTriggerListener_6_Enter,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Ext_A.domino|@Coast_C2_CTP_010_Ext_A|1952857823", "1952857823", "Coast_C2_CTP_010_Ext_A", "In", "box_ActivityAcknowledgeGate_2.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_MultipleOR_1_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_1;
    l1 = self.box_ActivityInitialized_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Ext_A.domino|@Coast_C2_CTP_010_Ext_A|1458820996", "1458820996", "Coast_C2_CTP_010_Ext_A", "box_MultipleOR_1.Out", "box_ActivityInitialized_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_ActivityInitialized_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_14();
    l0 = self.box_ActivityInitialized_3;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Ext_A.domino|@Coast_C2_CTP_010_Ext_A|2017886538", "2017886538", "Coast_C2_CTP_010_Ext_A", "box_ActivityInitialized_3.Out", "box_OutputOrder_v2_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_24_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Outro_v4_13();
    l0 = self.box_OnceOnly_v3_24;
    l1 = self.box_Brick_Exp_Outro_v4_13;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Ext_A.domino|@Coast_C2_CTP_010_Ext_A|2112172116", "2112172116", "Coast_C2_CTP_010_Ext_A", "box_OnceOnly_v3_24.Out", "box_Brick_Exp_Outro_v4_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_14_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_BasicSetups_8();
    l0 = self.box_Brick_Exp_Common_BasicSetups_8;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Ext_A.domino|@Coast_C2_CTP_010_Ext_A|1226863494", "1226863494", "Coast_C2_CTP_010_Ext_A", "box_OutputOrder_v2_14.Out", "box_Brick_Exp_Common_BasicSetups_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_14_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionAckTriggerListener_9();
    l0 = self.box_MissionAckTriggerListener_9;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Ext_A.domino|@Coast_C2_CTP_010_Ext_A|1425197428", "1425197428", "Coast_C2_CTP_010_Ext_A", "box_OutputOrder_v2_14.Out", "box_MissionAckTriggerListener_9.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_14_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionAckTriggerListener_6();
    l0 = self.box_MissionAckTriggerListener_6;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Ext_A.domino|@Coast_C2_CTP_010_Ext_A|1151381614", "1151381614", "Coast_C2_CTP_010_Ext_A", "box_OutputOrder_v2_14.Out", "box_MissionAckTriggerListener_6.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_14_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Extraction_PackageStolenDetector_15();
    l0 = self.box_Brick_Exp_Extraction_PackageStolenDetector_15;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Ext_A.domino|@Coast_C2_CTP_010_Ext_A|1921855957", "1921855957", "Coast_C2_CTP_010_Ext_A", "box_OutputOrder_v2_14.Out", "box_Brick_Exp_Extraction_PackageStolenDetector_15.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_ActivityAcknowledgeGate_2_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Ext_A.domino|@Coast_C2_CTP_010_Ext_A|1692422949", "1692422949", "Coast_C2_CTP_010_Ext_A", "box_ActivityAcknowledgeGate_2.Acknowledged", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_2_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Ext_A.domino|@Coast_C2_CTP_010_Ext_A|2048669475", "2048669475", "Coast_C2_CTP_010_Ext_A", "box_ActivityAcknowledgeGate_2.Reloaded", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Brick_Exp_Extraction_Helicopter_v2_5_PlayersAllSeated()
    local params, l0, l1;
    params = self:OnEnter_box_BroadcastMessage_17();
    l0 = self.box_Brick_Exp_Extraction_Helicopter_v2_5;
    l1 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Ext_A.domino|@Coast_C2_CTP_010_Ext_A|367493217", "367493217", "Coast_C2_CTP_010_Ext_A", "box_Brick_Exp_Extraction_Helicopter_v2_5.PlayersAllSeated", "box_BroadcastMessage_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Extraction_Helicopter_v2_5_ToTakeOff()
    local l0, l1;
    l0 = self.box_Brick_Exp_Extraction_Helicopter_v2_5;
    l1 = self.box_OnceOnly_v3_24;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Ext_A.domino|@Coast_C2_CTP_010_Ext_A|1931823182", "1931823182", "Coast_C2_CTP_010_Ext_A", "box_Brick_Exp_Extraction_Helicopter_v2_5.ToTakeOff", "box_OnceOnly_v3_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Exp_Common_BasicSetups_8_Out()
    local params, l0, l1;
    self:OnExit_box_Brick_Exp_Common_BasicSetups_8_Out();
    params = self:OnEnter_box_Brick_Exp_Extraction_ReachSurvive_v3_11();
    l0 = self.box_Brick_Exp_Common_BasicSetups_8;
    l1 = self.box_Brick_Exp_Extraction_ReachSurvive_v3_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Ext_A.domino|@Coast_C2_CTP_010_Ext_A|715866525", "715866525", "Coast_C2_CTP_010_Ext_A", "box_Brick_Exp_Common_BasicSetups_8.Out", "box_Brick_Exp_Extraction_ReachSurvive_v3_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MissionAckTriggerListener_9_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_BroadcastMessage_7();
    l0 = self.box_MissionAckTriggerListener_9;
    l1 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Ext_A.domino|@Coast_C2_CTP_010_Ext_A|523956307", "523956307", "Coast_C2_CTP_010_Ext_A", "box_MissionAckTriggerListener_9.Enter", "box_BroadcastMessage_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Extraction_PackageStolenDetector_15_PackageStolenDetected()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Extraction_ReachSurvive_v3_11();
    l0 = self.box_Brick_Exp_Extraction_PackageStolenDetector_15;
    l1 = self.box_Brick_Exp_Extraction_ReachSurvive_v3_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Ext_A.domino|@Coast_C2_CTP_010_Ext_A|636476668", "636476668", "Coast_C2_CTP_010_Ext_A", "box_Brick_Exp_Extraction_PackageStolenDetector_15.PackageStolenDetected", "box_Brick_Exp_Extraction_ReachSurvive_v3_11.PackageStolenDetected", l0:GetLuaBox(), l1:GetLuaBox());
    -- PackageStolenDetected
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_21_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Extraction_Helicopter_v2_5();
    l0 = self.box_Brick_Exp_Extraction_Helicopter_v2_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Ext_A.domino|@Coast_C2_CTP_010_Ext_A|33935366", "33935366", "Coast_C2_CTP_010_Ext_A", "box_OutputOrder_v2_21.Out", "box_Brick_Exp_Extraction_Helicopter_v2_5.SpawnHelicopter", clone:GetLuaBox(), l0:GetLuaBox());
    -- SpawnHelicopter
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_21_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_10();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Ext_A.domino|@Coast_C2_CTP_010_Ext_A|827859842", "827859842", "Coast_C2_CTP_010_Ext_A", "box_OutputOrder_v2_21.Out", "box_BroadcastMessage_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Extraction_ReachSurvive_v3_11_ReachedSurvived()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Extraction_Helicopter_v2_5();
    l0 = self.box_Brick_Exp_Extraction_ReachSurvive_v3_11;
    l1 = self.box_Brick_Exp_Extraction_Helicopter_v2_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Ext_A.domino|@Coast_C2_CTP_010_Ext_A|354034670", "354034670", "Coast_C2_CTP_010_Ext_A", "box_Brick_Exp_Extraction_ReachSurvive_v3_11.ReachedSurvived", "box_Brick_Exp_Extraction_Helicopter_v2_5.TimeToGetIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- TimeToGetIn
    l1:Exec(1, params);
end;

function export:f_box_Brick_Exp_Extraction_ReachSurvive_v3_11_ToSpawnHelicopter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_21();
    l0 = self.box_Brick_Exp_Extraction_ReachSurvive_v3_11;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Ext_A.domino|@Coast_C2_CTP_010_Ext_A|165478589", "165478589", "Coast_C2_CTP_010_Ext_A", "box_Brick_Exp_Extraction_ReachSurvive_v3_11.ToSpawnHelicopter", "box_OutputOrder_v2_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionAckTriggerListener_6_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_BroadcastMessage_12();
    l0 = self.box_MissionAckTriggerListener_6;
    l1 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Ext_A.domino|@Coast_C2_CTP_010_Ext_A|960235336", "960235336", "Coast_C2_CTP_010_Ext_A", "box_MissionAckTriggerListener_6.Enter", "box_BroadcastMessage_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_BroadcastMessage_7_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityFact_4();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Ext_A.domino|@Coast_C2_CTP_010_Ext_A|1584915907", "1584915907", "Coast_C2_CTP_010_Ext_A", "box_BroadcastMessage_7.Out", "box_SetActivityFact_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Brick_Exp_Outro_v4_13()
    local params;
    params = {
        -- DelayBeforeVictorySignOffVO,
        [0] = 6,
        -- PlayMusicEvent,
        [1] = "3729034401",
        -- SceneEntity,
        [2] = "2109184552944535332",
        -- Sequence,
        [3] = "Sequences/bowmore_expedition/outro/expedition_outro.seq",
        -- StopMusicEvent,
        [4] = "3156198632",
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Ext_A.domino|@Coast_C2_CTP_010_Ext_A|822019048");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "get_on_helicopter",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Ext_A.domino|@Coast_C2_CTP_010_Ext_A|889041106");
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
                [0] = self.f_box_OutputOrder_v2_14_Out_0,
                [1] = self.f_box_OutputOrder_v2_14_Out_1,
                [2] = self.f_box_OutputOrder_v2_14_Out_2,
                [3] = self.f_box_OutputOrder_v2_14_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Extraction_Helicopter_v2_5()
    local params;
    params = {
        -- HelicopterSpawner,
        [0] = "2109020647242860269",
        -- ObjectiveMarker,
        [1] = "2109021308441335059",
        -- PlayMusicEvent,
        [2] = "3729034401",
        -- StopMusicEvent,
        [3] = "3156198632",
        -- STP_Coming,
        [4] = "2109020647270123258",
        -- STP_Leaving,
        [5] = "2109020759899769004",
        -- VO_ShootChopper_01,
        [6] = "3872228536",
        -- VO_ShootChopper_02,
        [7] = "1564883687",
        -- VO_ShootChopper_03,
        [8] = "3373813313",
        -- VO_ShootChopper_04,
        [9] = "1149546885",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Ext_A.domino|@Coast_C2_CTP_010_Ext_A|1037352187");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "run_to_ext_a",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_BasicSetups_8()
    local params;
    params = {
        -- Debug_ExtractionPOIID,
        [0] = 1,
        -- DebugMode,
        [4] = true,
    };
    return params;
end;

function export:OnEnter_box_MissionAckTriggerListener_9()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- triggerId,
        [1] = "2109020518362383985",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Extraction_PackageStolenDetector_15()
    local params;
    params = {
        -- AllEnemiesGroup,
        [0] = "#860A3B69",
        -- EnemyActivity,
        [1] = "9015340572528165",
        -- PackagePositionEntity,
        [2] = Globals.Coast_C2_CTP_010_Main_Enemy.e_PackageSpawner,
        -- PlayerDetectedFact,
        [3] = "player_fullydetected",
        -- VO_CheckPackage_01,
        [4] = "3330616606",
        -- VO_CheckPackage_02,
        [5] = "517058564",
        -- VO_CheckPackage_03,
        [6] = "1584141897",
        -- VO_CheckPackage_04,
        [7] = "800276208",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Ext_A.domino|@Coast_C2_CTP_010_Ext_A|1410891085");
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

function export:OnEnter_box_BroadcastMessage_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Ext_A.domino|@Coast_C2_CTP_010_Ext_A|1476440187");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "spawn_helicopter",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Extraction_ReachSurvive_v3_11()
    local params;
    params = {
        -- ExtractionMarker_A,
        [0] = "2109020736254380147",
        -- ExtractionMarker_B,
        [1] = "2108193077557461710",
        -- ExtractionMarker_C,
        [2] = "2108193078945776338",
        -- ExtractionPOIID,
        [3] = self.i_ExtractionPOIIndex,
        -- GroupAllEnemies,
        [4] = "#860A3B69",
        -- ObjectiveTimer,
        [5] = 120,
        -- PlayMusicEvent,
        [6] = "3729034401",
        -- ReachExtractionShape_A,
        [7] = "2108192982543893165",
        -- ReachExtractionShape_B,
        [8] = "2108192991098176174",
        -- ReachExtractionShape_C,
        [9] = "2108192994187281071",
        -- StopMusicEvent,
        [10] = "3156198632",
        -- TimeBeforeSpawnHelicopter,
        [11] = 86,
        -- VO_EnemyKnows_01,
        [12] = "1398142132",
        -- VO_EnemyKnows_02,
        [13] = "2178029307",
        -- VO_EnemyKnows_03,
        [14] = "2671869843",
        -- VO_EnemyKnows_04,
        [15] = "2547392799",
        -- VO_EnemyKnows_05,
        [16] = "68907972",
        -- VO_ExtractionLocation_A,
        [17] = "3190891322",
        -- VO_ExtractionLocation_B,
        [18] = "226482355",
        -- VO_ExtractionLocation_C,
        [19] = "561426583",
        -- VO_FoundYouAgain_01,
        [20] = "2241246172",
        -- VO_FoundYouAgain_02,
        [21] = "2546735414",
        -- VO_FoundYouAgain_03,
        [22] = "2151693776",
        -- VO_FoundYouAgain_04,
        [23] = "3116028612",
        -- VO_FoundYouAgain_05,
        [24] = "814606112",
    };
    return params;
end;

function export:OnEnter_box_MissionAckTriggerListener_6()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- triggerId,
        [1] = "2109562110823369247",
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Ext_A.domino|@Coast_C2_CTP_010_Ext_A|1730675651");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_7_Out,
    });
    params = {
        -- Message,
        [0] = "leave_fortress_to_ext_a",
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Ext_A.domino|@Coast_C2_CTP_010_Ext_A|1935961621");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "reach_extraction_a",
    };
    return params;
end;

function export:OnExit_box_Brick_Exp_Common_BasicSetups_8_Out()
    local l0;
    l0 = self.box_Brick_Exp_Common_BasicSetups_8;
    self.i_ExtractionPOIIndex = l0:GetDataOutValue(1);
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
