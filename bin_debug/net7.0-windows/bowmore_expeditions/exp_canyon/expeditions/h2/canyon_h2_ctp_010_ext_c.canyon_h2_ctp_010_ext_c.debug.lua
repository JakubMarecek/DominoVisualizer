LUAC��  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_canyon/expeditions/h2/canyon_h2_ctp_010_ext_c.domino
-- User graph: Canyon_H2_CTP_010_Ext_C
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
        cboxRes:RegisterBox("Domino/System/BroadcastMessage.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.globals.lua");
        cboxRes:RegisterGlobals("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Main.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[924628978.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4120864174.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3694213426.bnk]], "CSoundResource");
        cboxRes:LoadResource([[404565370.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1718341629.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3796536693.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2242572988.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3828208729.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2247502782.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1873469197.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1118604639.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1576015005.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4223568461.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1982326531.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1748906633.bnk]], "CSoundResource");
        cboxRes:LoadResource([[335981144.bnk]], "CSoundResource");
        cboxRes:LoadResource([[279154678.bnk]], "CSoundResource");
        cboxRes:LoadResource([[697883140.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1917035453.bnk]], "CSoundResource");
        cboxRes:LoadResource([[25348676.bnk]], "CSoundResource");
        cboxRes:LoadResource([[71164159.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1481059655.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3394256395.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Ext_C.Canyon_H2_CTP_010_Ext_C.debug.lua")] = {
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
end;

function export:Init(cbox)
    local l0;
    self._name = "Canyon_H2_CTP_010_Ext_C";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Ext_C.domino|@Canyon_H2_CTP_010_Ext_C";
    self.fGlobalTimer = 0;
    self.TimeUp = false;
    self.box_ActivityInitialized_2 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Ext_C.domino|@Canyon_H2_CTP_010_Ext_C|3935255");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_2_Out,
    });
    self.box_Brick_Exp_Extraction_ReachSurvive_v3_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Extraction_ReachSurvive_v3.debug.lua");
    l0 = self.box_Brick_Exp_Extraction_ReachSurvive_v3_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Extraction_ReachSurvive_v3_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Ext_C.domino|@Canyon_H2_CTP_010_Ext_C|23622482");
    l0:SetConnections({
        -- ReachedSurvived,
        [0] = self.f_box_Brick_Exp_Extraction_ReachSurvive_v3_1_ReachedSurvived,
        -- ToSpawnHelicopter,
        [1] = self.f_box_Brick_Exp_Extraction_ReachSurvive_v3_1_ToSpawnHelicopter,
    });
    self.box_Delay_v5_10 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Ext_C.domino|@Canyon_H2_CTP_010_Ext_C|201774980");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_10_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_10_TimeElapsed,
    });
    self.box_Brick_Exp_Extraction_Helicopter_v2_8 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Extraction_Helicopter_v2.debug.lua");
    l0 = self.box_Brick_Exp_Extraction_Helicopter_v2_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Extraction_Helicopter_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Ext_C.domino|@Canyon_H2_CTP_010_Ext_C|606524785");
    l0:SetConnections({
        -- PlayersAllSeated,
        [0] = self.f_box_Brick_Exp_Extraction_Helicopter_v2_8_PlayersAllSeated,
        -- SpawnCalled,
        [1] = self.f_box_Brick_Exp_Extraction_Helicopter_v2_8_SpawnCalled,
        -- ToTakeOff,
        [2] = self.f_box_Brick_Exp_Extraction_Helicopter_v2_8_ToTakeOff,
    });
    self.box_Brick_Exp_Extraction_PackageStolenDetector_5 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Extraction_PackageStolenDetector.debug.lua");
    l0 = self.box_Brick_Exp_Extraction_PackageStolenDetector_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Extraction_PackageStolenDetector_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Ext_C.domino|@Canyon_H2_CTP_010_Ext_C|1141535141");
    l0:SetConnections({
        -- Enabled,
        [0] = self.f_box_Brick_Exp_Extraction_PackageStolenDetector_5_Enabled,
        -- PackageStolenDetected,
        [1] = self.f_box_Brick_Exp_Extraction_PackageStolenDetector_5_PackageStolenDetected,
    });
    self.box_Brick_Exp_Outro_v4_9 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Narrative.Brick_Exp_Outro_v4.debug.lua");
    l0 = self.box_Brick_Exp_Outro_v4_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Outro_v4_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Ext_C.domino|@Canyon_H2_CTP_010_Ext_C|1218891301");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_14 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Ext_C.domino|@Canyon_H2_CTP_010_Ext_C|1365900921");
    l0:SetConnections({
        -- AllNear,
        [1] = self.f_box_ProximityRadiusListener_v3_14_AllNear,
    });
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Ext_C.domino|@Canyon_H2_CTP_010_Ext_C|1503355396");
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
        [0] = self.f_box_MultipleOR_7_Out,
    });
    self.box_ActivityAcknowledgeGate_20 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Ext_C.domino|@Canyon_H2_CTP_010_Ext_C|1619131306");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_20_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_20_Reloaded,
    });
    self.box_PositionModifier_v2_6 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Ext_C.domino|@Canyon_H2_CTP_010_Ext_C|1882454074");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_6_Done,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_16();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Ext_C.domino|@Canyon_H2_CTP_010_Ext_C|722314985", "722314985", "Canyon_H2_CTP_010_Ext_C", "In", "box_OutputOrder_v2_16.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_6();
    l0 = self.box_ActivityInitialized_2;
    l1 = self.box_PositionModifier_v2_6;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Ext_C.domino|@Canyon_H2_CTP_010_Ext_C|610421210", "610421210", "Canyon_H2_CTP_010_Ext_C", "box_ActivityInitialized_2.Out", "box_PositionModifier_v2_6.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_Brick_Exp_Extraction_ReachSurvive_v3_1_ReachedSurvived()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Extraction_Helicopter_v2_8();
    l0 = self.box_Brick_Exp_Extraction_ReachSurvive_v3_1;
    l1 = self.box_Brick_Exp_Extraction_Helicopter_v2_8;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Ext_C.domino|@Canyon_H2_CTP_010_Ext_C|772502938", "772502938", "Canyon_H2_CTP_010_Ext_C", "box_Brick_Exp_Extraction_ReachSurvive_v3_1.ReachedSurvived", "box_Brick_Exp_Extraction_Helicopter_v2_8.TimeToGetIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- TimeToGetIn
    l1:Exec(1, params);
end;

function export:f_box_Brick_Exp_Extraction_ReachSurvive_v3_1_ToSpawnHelicopter()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Extraction_Helicopter_v2_8();
    l0 = self.box_Brick_Exp_Extraction_ReachSurvive_v3_1;
    l1 = self.box_Brick_Exp_Extraction_Helicopter_v2_8;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Ext_C.domino|@Canyon_H2_CTP_010_Ext_C|184246930", "184246930", "Canyon_H2_CTP_010_Ext_C", "box_Brick_Exp_Extraction_ReachSurvive_v3_1.ToSpawnHelicopter", "box_Brick_Exp_Extraction_Helicopter_v2_8.SpawnHelicopter", l0:GetLuaBox(), l1:GetLuaBox());
    -- SpawnHelicopter
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_10_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Outro_v4_9();
    l0 = self.box_Delay_v5_10;
    l1 = self.box_Brick_Exp_Outro_v4_9;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Ext_C.domino|@Canyon_H2_CTP_010_Ext_C|1058434922", "1058434922", "Canyon_H2_CTP_010_Ext_C", "box_Delay_v5_10.Started", "box_Brick_Exp_Outro_v4_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_10_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_BroadcastMessage_4();
    l0 = self.box_Delay_v5_10;
    l1 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Ext_C.domino|@Canyon_H2_CTP_010_Ext_C|407045869", "407045869", "Canyon_H2_CTP_010_Ext_C", "box_Delay_v5_10.TimeElapsed", "box_BroadcastMessage_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_BroadcastMessage_30_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Extraction_ReachSurvive_v3_1();
    l0 = self.box_Brick_Exp_Extraction_ReachSurvive_v3_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Ext_C.domino|@Canyon_H2_CTP_010_Ext_C|2076792053", "2076792053", "Canyon_H2_CTP_010_Ext_C", "box_BroadcastMessage_30.Out", "box_Brick_Exp_Extraction_ReachSurvive_v3_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_16_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_20;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Ext_C.domino|@Canyon_H2_CTP_010_Ext_C|1325152755", "1325152755", "Canyon_H2_CTP_010_Ext_C", "box_OutputOrder_v2_16.Out", "box_ActivityAcknowledgeGate_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_BroadcastMessage_15_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_19();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Ext_C.domino|@Canyon_H2_CTP_010_Ext_C|1034199986", "1034199986", "Canyon_H2_CTP_010_Ext_C", "box_BroadcastMessage_15.Out", "box_Print_v2_19.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Extraction_Helicopter_v2_8_PlayersAllSeated()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_43();
    l0 = self.box_Brick_Exp_Extraction_Helicopter_v2_8;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Ext_C.domino|@Canyon_H2_CTP_010_Ext_C|709517371", "709517371", "Canyon_H2_CTP_010_Ext_C", "box_Brick_Exp_Extraction_Helicopter_v2_8.PlayersAllSeated", "box_Simple_Node_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Extraction_Helicopter_v2_8_SpawnCalled()
    local params, l0, l1;
    params = self:OnEnter_box_BroadcastMessage_13();
    l0 = self.box_Brick_Exp_Extraction_Helicopter_v2_8;
    l1 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Ext_C.domino|@Canyon_H2_CTP_010_Ext_C|1847025438", "1847025438", "Canyon_H2_CTP_010_Ext_C", "box_Brick_Exp_Extraction_Helicopter_v2_8.SpawnCalled", "box_BroadcastMessage_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Extraction_Helicopter_v2_8_ToTakeOff()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_10();
    l0 = self.box_Brick_Exp_Extraction_Helicopter_v2_8;
    l1 = self.box_Delay_v5_10;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Ext_C.domino|@Canyon_H2_CTP_010_Ext_C|1533213198", "1533213198", "Canyon_H2_CTP_010_Ext_C", "box_Brick_Exp_Extraction_Helicopter_v2_8.ToTakeOff", "box_Delay_v5_10.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Brick_Exp_Extraction_PackageStolenDetector_5_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_BroadcastMessage_30();
    l0 = self.box_Brick_Exp_Extraction_PackageStolenDetector_5;
    l1 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Ext_C.domino|@Canyon_H2_CTP_010_Ext_C|788725166", "788725166", "Canyon_H2_CTP_010_Ext_C", "box_Brick_Exp_Extraction_PackageStolenDetector_5.Enabled", "box_BroadcastMessage_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Extraction_PackageStolenDetector_5_PackageStolenDetected()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = self.box_Brick_Exp_Extraction_PackageStolenDetector_5;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Ext_C.domino|@Canyon_H2_CTP_010_Ext_C|1674052926", "1674052926", "Canyon_H2_CTP_010_Ext_C", "box_Brick_Exp_Extraction_PackageStolenDetector_5.PackageStolenDetected", "box_OutputOrder_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_14_AllNear()
    local params, l0, l1;
    params = self:OnEnter_box_BroadcastMessage_15();
    l0 = self.box_ProximityRadiusListener_v3_14;
    l1 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Ext_C.domino|@Canyon_H2_CTP_010_Ext_C|1740658663", "1740658663", "Canyon_H2_CTP_010_Ext_C", "box_ProximityRadiusListener_v3_14.AllNear", "box_BroadcastMessage_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_7_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_7;
    l1 = self.box_ActivityInitialized_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Ext_C.domino|@Canyon_H2_CTP_010_Ext_C|1513761527", "1513761527", "Canyon_H2_CTP_010_Ext_C", "box_MultipleOR_7.Out", "box_ActivityInitialized_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_ActivityAcknowledgeGate_20_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_20;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Ext_C.domino|@Canyon_H2_CTP_010_Ext_C|309595827", "309595827", "Canyon_H2_CTP_010_Ext_C", "box_ActivityAcknowledgeGate_20.Acknowledged", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_20_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_20;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Ext_C.domino|@Canyon_H2_CTP_010_Ext_C|1299818449", "1299818449", "Canyon_H2_CTP_010_Ext_C", "box_ActivityAcknowledgeGate_20.Reloaded", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_BroadcastMessage_13_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_21();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Ext_C.domino|@Canyon_H2_CTP_010_Ext_C|280711845", "280711845", "Canyon_H2_CTP_010_Ext_C", "box_BroadcastMessage_13.Out", "box_Print_v2_21.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_17();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Ext_C.domino|@Canyon_H2_CTP_010_Ext_C|482420568", "482420568", "Canyon_H2_CTP_010_Ext_C", "box_OutputOrder_v2_18.Out", "box_GetPlayerGroup_v2_17.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Extraction_ReachSurvive_v3_1();
    l0 = self.box_Brick_Exp_Extraction_ReachSurvive_v3_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Ext_C.domino|@Canyon_H2_CTP_010_Ext_C|1852453467", "1852453467", "Canyon_H2_CTP_010_Ext_C", "box_OutputOrder_v2_18.Out", "box_Brick_Exp_Extraction_ReachSurvive_v3_1.PackageStolenDetected", clone:GetLuaBox(), l0:GetLuaBox());
    -- PackageStolenDetected
    l0:Exec(2, params);
end;

function export:f_box_PositionModifier_v2_6_Done()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Extraction_PackageStolenDetector_5();
    l0 = self.box_PositionModifier_v2_6;
    l1 = self.box_Brick_Exp_Extraction_PackageStolenDetector_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Ext_C.domino|@Canyon_H2_CTP_010_Ext_C|987566450", "987566450", "Canyon_H2_CTP_010_Ext_C", "box_PositionModifier_v2_6.Done", "box_Brick_Exp_Extraction_PackageStolenDetector_5.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, params);
end;

function export:f_box_GetPlayerGroup_v2_17_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_17_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_14();
    l0 = self.box_ProximityRadiusListener_v3_14;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Ext_C.domino|@Canyon_H2_CTP_010_Ext_C|586773741", "586773741", "Canyon_H2_CTP_010_Ext_C", "box_GetPlayerGroup_v2_17.Out", "box_ProximityRadiusListener_v3_14.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:OnEnter_box_Simple_Node_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Ext_C.domino|@Canyon_H2_CTP_010_Ext_C|@CleanUp");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Extraction_ReachSurvive_v3_1()
    local params;
    params = {
        -- ExtractionMarker_A,
        [0] = "2108147971024488886",
        -- ExtractionMarker_B,
        [1] = "2108147999801608670",
        -- ExtractionMarker_C,
        [2] = "2108148014016104946",
        -- ExtractionPOIID,
        [3] = Globals.Canyon_H2_CTP_010_Enemy.iExtractionPOIIndex,
        -- GroupAllEnemies,
        [4] = "#CAC04D14",
        -- ObjectiveTimer,
        [5] = 120,
        -- PlayMusicEvent,
        [6] = "25348676",
        -- ReachExtractionShape_A,
        [7] = "2108148398392606981",
        -- ReachExtractionShape_B,
        [8] = "2108148411399143742",
        -- ReachExtractionShape_C,
        [9] = "2108148415410995519",
        -- StopMusicEvent,
        [10] = "1982326531",
        -- TimeBeforeSpawnHelicopter,
        [11] = 88,
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
        [17] = "1917035453",
        -- VO_ExtractionLocation_B,
        [18] = "71164159",
        -- VO_ExtractionLocation_C,
        [19] = "1118604639",
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

function export:OnEnter_box_Print_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Ext_C.domino|@Canyon_H2_CTP_010_Ext_C|134690360");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "Red",
        -- duration,
        [3] = 60,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Player In Extraction",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Ext_C.domino|@Canyon_H2_CTP_010_Ext_C|163736680");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "Red",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Helicopter Incoming",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_10()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 22,
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Ext_C.domino|@Canyon_H2_CTP_010_Ext_C|265078022");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_30_Out,
    });
    params = {
        -- Message,
        [0] = "Extraction Phase Initialized",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Ext_C.domino|@Canyon_H2_CTP_010_Ext_C|540679116");
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
                [0] = self.f_box_OutputOrder_v2_16_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Ext_C.domino|@Canyon_H2_CTP_010_Ext_C|567977330");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_15_Out,
    });
    params = {
        -- Message,
        [0] = "Player In Extraction",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Extraction_Helicopter_v2_8()
    local params;
    params = {
        -- HelicopterSpawner,
        [0] = "2108318601936119493",
        -- ObjectiveMarker,
        [1] = "2108318555031217836",
        -- PlayMusicEvent,
        [2] = "25348676",
        -- StopMusicEvent,
        [3] = "1982326531",
        -- STP_Coming,
        [4] = "2108318824687216521",
        -- STP_Leaving,
        [5] = "2108319074854382265",
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

function export:OnEnter_box_BroadcastMessage_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Ext_C.domino|@Canyon_H2_CTP_010_Ext_C|908091664");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "leave_expediton",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Extraction_PackageStolenDetector_5()
    local params;
    params = {
        -- AllEnemiesGroup,
        [0] = "#CAC04D14",
        -- EnemyActivity,
        [1] = "9015339903304435",
        -- PackagePositionEntity,
        [2] = Globals.Canyon_H2_CTP_010_Main.ePackageSpawner,
        -- PlayerDetectedFact,
        [3] = "H2_CTP_010_B10_PlayerDetected",
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

function export:OnEnter_box_Brick_Exp_Outro_v4_9()
    local params;
    params = {
        -- DelayBeforeVictorySignOffVO,
        [0] = 6,
        -- PlayMusicEvent,
        [1] = "25348676",
        -- SceneEntity,
        [2] = "2109754355528766574",
        -- Sequence,
        [3] = "sequences/bowmore_expedition/outro/expedition_outro_canyon.seq",
        -- StopMusicEvent,
        [4] = "1982326531",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = l0:GetDataOutValue(0),
        -- id2,
        [3] = "2108218727280414558",
        -- nearZone,
        [4] = 100,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Ext_C.domino|@Canyon_H2_CTP_010_Ext_C|1746422582");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_13_Out,
    });
    params = {
        -- Message,
        [0] = "Helicopter Incoming",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Ext_C.domino|@Canyon_H2_CTP_010_Ext_C|1867333707");
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
                [0] = self.f_box_OutputOrder_v2_18_Out_0,
                [1] = self.f_box_OutputOrder_v2_18_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_6()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2108218727280414558",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108908365024335568",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Ext_C.domino|@Canyon_H2_CTP_010_Ext_C|1906942914");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_17_Out,
    });
    params = {
    };
    return params;
end;

function export:OnExit_box_GetPlayerGroup_v2_17_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l1 = self.box_ProximityRadiusListener_v3_14;
    l1:GetLuaBox().Entities = l0:GetDataOutValue(0);
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
