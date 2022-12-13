LUAC9�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_swamp/expeditions/h2/swamp_h2_ctp_010_ext_a.domino
-- User graph: Swamp_H2_CTP_010_Ext_A
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
        cboxRes:RegisterBox("Domino/System/BroadcastMessage.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/H2/Swamp_H2_CTP_010_Main.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[800276208.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2178029307.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3373813313.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1584141897.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2226418254.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1398142132.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2151693776.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2241246172.bnk]], "CSoundResource");
        cboxRes:LoadResource([[814606112.bnk]], "CSoundResource");
        cboxRes:LoadResource([[68907972.bnk]], "CSoundResource");
        cboxRes:LoadResource([[517058564.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2632978510.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1149546885.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3872228536.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1564883687.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2546735414.bnk]], "CSoundResource");
        cboxRes:LoadResource([[351143187.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3330616606.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2547392799.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2347906144.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2671869843.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3116028612.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2794462597.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/H2/Swamp_H2_CTP_010_Ext_A.Swamp_H2_CTP_010_Ext_A.debug.lua")] = {
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
end;

function export:Init(cbox)
    local l0;
    self._name = "Swamp_H2_CTP_010_Ext_A";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Ext_A.domino|@Swamp_H2_CTP_010_Ext_A";
    self.iExtractionPOIID = 0;
    self.SurviveTimer = 0;
    self.f_CountDown = 0;
    self.b_HelicopterLanded = false;
    self.b_IsObjectiveOne = true;
    self.ePackageSpawner = nil;
    self.box_ActivityInitialized_4 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Ext_A.domino|@Swamp_H2_CTP_010_Ext_A|199462837");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_4_Out,
    });
    self.box_ActivityAcknowledgeGate_5 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Ext_A.domino|@Swamp_H2_CTP_010_Ext_A|511079988");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_5_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_5_Reloaded,
    });
    self.box_Brick_Exp_Extraction_ReachSurvive_v3_7 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Extraction_ReachSurvive_v3.debug.lua");
    l0 = self.box_Brick_Exp_Extraction_ReachSurvive_v3_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Extraction_ReachSurvive_v3_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Ext_A.domino|@Swamp_H2_CTP_010_Ext_A|1057092780");
    l0:SetConnections({
        -- ReachedSurvived,
        [0] = self.f_box_Brick_Exp_Extraction_ReachSurvive_v3_7_ReachedSurvived,
        -- ToSpawnHelicopter,
        [1] = self.f_box_Brick_Exp_Extraction_ReachSurvive_v3_7_ToSpawnHelicopter,
    });
    self.box_Brick_Exp_Outro_v4_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Narrative.Brick_Exp_Outro_v4.debug.lua");
    l0 = self.box_Brick_Exp_Outro_v4_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Outro_v4_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Ext_A.domino|@Swamp_H2_CTP_010_Ext_A|1311690442");
    l0:SetConnections({
    });
    self.box_Brick_Exp_Extraction_PackageStolenDetector_3 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Extraction_PackageStolenDetector.debug.lua");
    l0 = self.box_Brick_Exp_Extraction_PackageStolenDetector_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Extraction_PackageStolenDetector_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Ext_A.domino|@Swamp_H2_CTP_010_Ext_A|1439273351");
    l0:SetConnections({
        -- Enabled,
        [0] = self.f_box_Brick_Exp_Extraction_PackageStolenDetector_3_Enabled,
        -- PackageStolenDetected,
        [1] = self.f_box_Brick_Exp_Extraction_PackageStolenDetector_3_PackageStolenDetected,
    });
    self.box_Brick_Exp_Extraction_Helicopter_v2_8 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Extraction_Helicopter_v2.debug.lua");
    l0 = self.box_Brick_Exp_Extraction_Helicopter_v2_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Extraction_Helicopter_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Ext_A.domino|@Swamp_H2_CTP_010_Ext_A|1556204793");
    l0:SetConnections({
        -- PlayersAllSeated,
        [0] = self.f_box_Brick_Exp_Extraction_Helicopter_v2_8_PlayersAllSeated,
        -- ToTakeOff,
        [2] = self.f_box_Brick_Exp_Extraction_Helicopter_v2_8_ToTakeOff,
    });
    self.box_MultipleOR_20 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Ext_A.domino|@Swamp_H2_CTP_010_Ext_A|1999645415");
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
        [0] = self.f_box_MultipleOR_20_Out,
    });
    self.box_Brick_Exp_Common_BasicSetups_2 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_BasicSetups.debug.lua");
    l0 = self.box_Brick_Exp_Common_BasicSetups_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_BasicSetups_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Ext_A.domino|@Swamp_H2_CTP_010_Ext_A|2098536601");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Brick_Exp_Common_BasicSetups_2_Out,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Ext_A.domino|@Swamp_H2_CTP_010_Ext_A|479122677", "479122677", "Swamp_H2_CTP_010_Ext_A", "In", "box_ActivityAcknowledgeGate_5.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_ActivityInitialized_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_BasicSetups_2();
    l0 = self.box_ActivityInitialized_4;
    l1 = self.box_Brick_Exp_Common_BasicSetups_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Ext_A.domino|@Swamp_H2_CTP_010_Ext_A|1404577122", "1404577122", "Swamp_H2_CTP_010_Ext_A", "box_ActivityInitialized_4.Out", "box_Brick_Exp_Common_BasicSetups_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ActivityAcknowledgeGate_5_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_5;
    l1 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Ext_A.domino|@Swamp_H2_CTP_010_Ext_A|993693934", "993693934", "Swamp_H2_CTP_010_Ext_A", "box_ActivityAcknowledgeGate_5.Acknowledged", "box_MultipleOR_20.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_5_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_5;
    l1 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Ext_A.domino|@Swamp_H2_CTP_010_Ext_A|169109543", "169109543", "Swamp_H2_CTP_010_Ext_A", "box_ActivityAcknowledgeGate_5.Reloaded", "box_MultipleOR_20.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Brick_Exp_Extraction_ReachSurvive_v3_7_ReachedSurvived()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Extraction_Helicopter_v2_8();
    l0 = self.box_Brick_Exp_Extraction_ReachSurvive_v3_7;
    l1 = self.box_Brick_Exp_Extraction_Helicopter_v2_8;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Ext_A.domino|@Swamp_H2_CTP_010_Ext_A|955125490", "955125490", "Swamp_H2_CTP_010_Ext_A", "box_Brick_Exp_Extraction_ReachSurvive_v3_7.ReachedSurvived", "box_Brick_Exp_Extraction_Helicopter_v2_8.TimeToGetIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- TimeToGetIn
    l1:Exec(1, params);
end;

function export:f_box_Brick_Exp_Extraction_ReachSurvive_v3_7_ToSpawnHelicopter()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Extraction_Helicopter_v2_8();
    l0 = self.box_Brick_Exp_Extraction_ReachSurvive_v3_7;
    l1 = self.box_Brick_Exp_Extraction_Helicopter_v2_8;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Ext_A.domino|@Swamp_H2_CTP_010_Ext_A|1777020654", "1777020654", "Swamp_H2_CTP_010_Ext_A", "box_Brick_Exp_Extraction_ReachSurvive_v3_7.ToSpawnHelicopter", "box_Brick_Exp_Extraction_Helicopter_v2_8.SpawnHelicopter", l0:GetLuaBox(), l1:GetLuaBox());
    -- SpawnHelicopter
    l1:Exec(0, params);
end;

function export:f_box_Brick_Exp_Extraction_PackageStolenDetector_3_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Extraction_ReachSurvive_v3_7();
    l0 = self.box_Brick_Exp_Extraction_PackageStolenDetector_3;
    l1 = self.box_Brick_Exp_Extraction_ReachSurvive_v3_7;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Ext_A.domino|@Swamp_H2_CTP_010_Ext_A|1112498897", "1112498897", "Swamp_H2_CTP_010_Ext_A", "box_Brick_Exp_Extraction_PackageStolenDetector_3.Enabled", "box_Brick_Exp_Extraction_ReachSurvive_v3_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Brick_Exp_Extraction_PackageStolenDetector_3_PackageStolenDetected()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Extraction_ReachSurvive_v3_7();
    l0 = self.box_Brick_Exp_Extraction_PackageStolenDetector_3;
    l1 = self.box_Brick_Exp_Extraction_ReachSurvive_v3_7;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Ext_A.domino|@Swamp_H2_CTP_010_Ext_A|1217479212", "1217479212", "Swamp_H2_CTP_010_Ext_A", "box_Brick_Exp_Extraction_PackageStolenDetector_3.PackageStolenDetected", "box_Brick_Exp_Extraction_ReachSurvive_v3_7.PackageStolenDetected", l0:GetLuaBox(), l1:GetLuaBox());
    -- PackageStolenDetected
    l1:Exec(2, params);
end;

function export:f_box_Brick_Exp_Extraction_Helicopter_v2_8_PlayersAllSeated()
    local params, l0, l1;
    params = self:OnEnter_box_BroadcastMessage_10();
    l0 = self.box_Brick_Exp_Extraction_Helicopter_v2_8;
    l1 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Ext_A.domino|@Swamp_H2_CTP_010_Ext_A|1618339469", "1618339469", "Swamp_H2_CTP_010_Ext_A", "box_Brick_Exp_Extraction_Helicopter_v2_8.PlayersAllSeated", "box_BroadcastMessage_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Extraction_Helicopter_v2_8_ToTakeOff()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Outro_v4_1();
    l0 = self.box_Brick_Exp_Extraction_Helicopter_v2_8;
    l1 = self.box_Brick_Exp_Outro_v4_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Ext_A.domino|@Swamp_H2_CTP_010_Ext_A|1084668860", "1084668860", "Swamp_H2_CTP_010_Ext_A", "box_Brick_Exp_Extraction_Helicopter_v2_8.ToTakeOff", "box_Brick_Exp_Outro_v4_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_BroadcastMessage_10_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_9();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Ext_A.domino|@Swamp_H2_CTP_010_Ext_A|731755643", "731755643", "Swamp_H2_CTP_010_Ext_A", "box_BroadcastMessage_10.Out", "box_BroadcastMessage_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_20_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_20;
    l1 = self.box_ActivityInitialized_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Ext_A.domino|@Swamp_H2_CTP_010_Ext_A|327868822", "327868822", "Swamp_H2_CTP_010_Ext_A", "box_MultipleOR_20.Out", "box_ActivityInitialized_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Brick_Exp_Common_BasicSetups_2_Out()
    local params, l0, l1;
    self:OnExit_box_Brick_Exp_Common_BasicSetups_2_Out();
    params = self:OnEnter_box_Brick_Exp_Extraction_PackageStolenDetector_3();
    l0 = self.box_Brick_Exp_Common_BasicSetups_2;
    l1 = self.box_Brick_Exp_Extraction_PackageStolenDetector_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Ext_A.domino|@Swamp_H2_CTP_010_Ext_A|1850479656", "1850479656", "Swamp_H2_CTP_010_Ext_A", "box_Brick_Exp_Common_BasicSetups_2.Out", "box_Brick_Exp_Extraction_PackageStolenDetector_3.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, params);
end;

function export:OnEnter_box_BroadcastMessage_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Ext_A.domino|@Swamp_H2_CTP_010_Ext_A|777135851");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "heli_takeoff",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Extraction_ReachSurvive_v3_7()
    local params;
    params = {
        -- ExtractionMarker_A,
        [0] = "2108194124843715603",
        -- ExtractionMarker_B,
        [1] = "2108194088099515373",
        -- ExtractionMarker_C,
        [2] = "2108194152349961275",
        -- ExtractionPOIID,
        [3] = self.iExtractionPOIID,
        -- GroupAllEnemies,
        [4] = "#28DE7AF2",
        -- ObjectiveTimer,
        [5] = 120,
        -- PlayMusicEvent,
        [6] = "2226418254",
        -- ReachExtractionShape_A,
        [7] = "2108194616487447958",
        -- ReachExtractionShape_B,
        [8] = "2108194088099515378",
        -- ReachExtractionShape_C,
        [9] = "2108194622317530519",
        -- StopMusicEvent,
        [10] = "2794462597",
        -- TimeBeforeSpawnHelicopter,
        [11] = 106,
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
        [17] = "2632978510",
        -- VO_ExtractionLocation_B,
        [18] = "2347906144",
        -- VO_ExtractionLocation_C,
        [19] = "351143187",
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

function export:OnEnter_box_Brick_Exp_Outro_v4_1()
    local params;
    params = {
        -- DelayBeforeVictorySignOffVO,
        [0] = 6,
        -- PlayMusicEvent,
        [1] = "2226418254",
        -- SceneEntity,
        [2] = "2108802156952824737",
        -- Sequence,
        [3] = "sequences/bowmore_expedition/outro/expedition_outro_swamp.seq",
        -- StopMusicEvent,
        [4] = "2794462597",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Extraction_PackageStolenDetector_3()
    local params;
    params = {
        -- AllEnemiesGroup,
        [0] = "#00390573",
        -- EnemyActivity,
        [1] = "9015340444129570",
        -- PackagePositionEntity,
        [2] = Globals.Swamp_H2_CTP_010_Main.iPackageSpawner,
        -- PlayerDetectedFact,
        [3] = "h2_ctp_010_b10_playerdetected",
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

function export:OnEnter_box_Brick_Exp_Extraction_Helicopter_v2_8()
    local params;
    params = {
        -- HelicopterSpawner,
        [0] = "2108330364788278373",
        -- ObjectiveMarker,
        [1] = "2108438203359823682",
        -- PlayMusicEvent,
        [2] = "2226418254",
        -- StopMusicEvent,
        [3] = "2794462597",
        -- STP_Coming,
        [4] = "2108318413725111333",
        -- STP_Leaving,
        [5] = "2108317643055305084",
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

function export:OnEnter_box_BroadcastMessage_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Ext_A.domino|@Swamp_H2_CTP_010_Ext_A|1726041502");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_10_Out,
    });
    params = {
        -- Message,
        [0] = "heli_takeoff_dock",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_BasicSetups_2()
    local params;
    params = {
        -- Debug_ExtractionPOIID,
        [0] = 1,
        -- DebugMode,
        [4] = true,
    };
    return params;
end;

function export:OnExit_box_Brick_Exp_Common_BasicSetups_2_Out()
    local l0;
    l0 = self.box_Brick_Exp_Common_BasicSetups_2;
    self.iExtractionPOIID = l0:GetDataOutValue(1);
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
