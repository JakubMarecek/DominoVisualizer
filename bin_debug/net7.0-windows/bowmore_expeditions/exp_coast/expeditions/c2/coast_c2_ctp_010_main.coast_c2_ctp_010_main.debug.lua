LUACg -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_coast/expeditions/c2/coast_c2_ctp_010_main.domino
-- User graph: Coast_C2_CTP_010_Main
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
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_BasicSetups.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_MainBeat_Helicopter_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_MainBeat_Pkg.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Randomization.Brick_Exp_SpawnFrom_RandomizationDatabase.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/BroadcastMessage.lua");
        cboxRes:RegisterBox("Domino/System/IndexList_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetInteger_v2.lua");
        cboxRes:RegisterBox("Domino/System/UI/ActivityForceAndLockTracking.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C2/Coast_C2_CTP_010_Main.CellGateController.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3156198632.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3729034401.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C2/Coast_C2_CTP_010_Main.Coast_C2_CTP_010_Main.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "FadeIn",
            },
            [1] = {
                name = "FadeOut",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "FadedIn",
                delayed = false,
            },
            [1] = {
                name = "FadedOut",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "HUD",
                type = "string",
            },
            [1] = {
                name = "PostFX",
                type = "string",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_MainBeat_Helicopter_v2.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Spawned",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "EnemyGroup",
                type = "group",
            },
            [1] = {
                name = "ForceDespawnTimer",
                type = "float",
            },
            [2] = {
                name = "HelicopterMB",
                type = "missionblock",
            },
            [3] = {
                name = "HelicopterSpawner_A",
                type = "entity",
            },
            [4] = {
                name = "HelicopterSpawner_B",
                type = "entity",
            },
            [5] = {
                name = "HelicopterSpawner_C",
                type = "entity",
            },
            [6] = {
                name = "PlayerSpawnPOIIndex",
                type = "int",
            },
            [7] = {
                name = "STP_HelicopterLeave_A",
                type = "entity",
            },
            [8] = {
                name = "STP_HelicopterLeave_B",
                type = "entity",
            },
            [9] = {
                name = "STP_HelicopterLeave_C",
                type = "entity",
            },
            [10] = {
                name = "WorkbenchMBLayer_A",
                type = "missionblocklayer",
            },
            [11] = {
                name = "WorkbenchMBLayer_B",
                type = "missionblocklayer",
            },
            [12] = {
                name = "WorkbenchMBLayer_C",
                type = "missionblocklayer",
            },
        },
        dataInCount = 13,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_MainBeat_Pkg.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Initialize_Fortress",
            },
            [1] = {
                name = "Initialize_Stronghold",
            },
            [2] = {
                name = "Initialize_Wild",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Initialized",
                delayed = false,
            },
            [1] = {
                name = "PackagePicked",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "CloseRangeDiscoveryShape_A",
                type = "entity",
            },
            [1] = {
                name = "CloseRangeDiscoveryShape_B",
                type = "entity",
            },
            [2] = {
                name = "CloseRangeDiscoveryShape_C",
                type = "entity",
            },
            [3] = {
                name = "CloseRangeDiscoveryShape_D",
                type = "entity",
            },
            [4] = {
                name = "CloseRangeDiscoveryShape_E",
                type = "entity",
            },
            [5] = {
                name = "CloseRangeDiscoveryShape_F",
                type = "entity",
            },
            [6] = {
                name = "PackagePositionID",
                type = "int",
            },
            [7] = {
                name = "PackageSpawner_Variable",
                type = "entity",
            },
            [8] = {
                name = "PkgPickedUpFactToStartCS",
                type = "string",
            },
            [9] = {
                name = "PlayMusicEvent",
                type = "Sound",
            },
            [10] = {
                name = "SearchZoneMarker_A",
                type = "entity",
            },
            [11] = {
                name = "SearchZoneMarker_B",
                type = "entity",
            },
            [12] = {
                name = "SearchZoneMarker_C",
                type = "entity",
            },
            [13] = {
                name = "SearchZoneMarker_D",
                type = "entity",
            },
            [14] = {
                name = "SearchZoneMarker_E",
                type = "entity",
            },
            [15] = {
                name = "SearchZoneMarker_F",
                type = "entity",
            },
            [16] = {
                name = "StopMusicEvent",
                type = "Sound",
            },
        },
        dataInCount = 17,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Expeditions_Randomization.Brick_Exp_SpawnFrom_RandomizationDatabase.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "On_Activity_Reloaded",
            },
            [1] = {
                name = "Spawn_Entities_from_Database",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "All_Entities_Spawned",
                delayed = false,
            },
            [1] = {
                name = "Immediate_Out",
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityEnd.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "EndHardSave",
            },
            [1] = {
                name = "EndNoSave",
            },
            [2] = {
                name = "EndSoftSave",
            },
        },
        controlInCount = 3,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "Success",
                type = "bool",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")] = {
        stateless = true,
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
        },
        controlOutCount = 2,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C2/Coast_C2_CTP_010_Main.CellGateController.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "PackageLocationA",
            },
            [1] = {
                name = "PackageLocationB",
            },
            [2] = {
                name = "PackageLocationC",
            },
        },
        controlInCount = 3,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "Coast_C2_CTP_010_Main";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main";
    self.Out = DummyFunction;
    self.i_Difficulty = 0;
    self.i_PlayerSpawnPOIIndex = 0;
    self.i_ExtractionPOIIndex = 0;
    self.i_PackagePositionIndex = 0;
    self.e_PackageSpawner = nil;
    self.box_Brick_Exp_SpawnFrom_RandomizationDatabase_29 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Randomization.Brick_Exp_SpawnFrom_RandomizationDatabase.debug.lua");
    l0 = self.box_Brick_Exp_SpawnFrom_RandomizationDatabase_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_SpawnFrom_RandomizationDatabase_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|25393663");
    l0:SetConnections({
        -- All Entities Spawned,
        [0] = self.f_box_Brick_Exp_SpawnFrom_RandomizationDatabase_29_All_Entities_Spawned,
    });
    self.box_SpawnAI_36 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|171242125");
    l0:SetConnections({
    });
    self.box_SpawnAI_42 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|219114330");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_42_Out,
    });
    self.box_SpawnAI_37 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|427972608");
    l0:SetConnections({
    });
    self.box_Brick_Exp_Common_BasicSetups_25 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_BasicSetups.debug.lua");
    l0 = self.box_Brick_Exp_Common_BasicSetups_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_BasicSetups_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|525572114");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Brick_Exp_Common_BasicSetups_25_Out,
    });
    self.box_ActivityAcknowledgeGate_5 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|526406281");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_5_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_5_Reloaded,
    });
    self.box_ActivityInitialized_3 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|552232569");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_3_Out,
    });
    self.box_Brick_Exp_MainBeat_Helicopter_v2_23 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_MainBeat_Helicopter_v2.debug.lua");
    l0 = self.box_Brick_Exp_MainBeat_Helicopter_v2_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_MainBeat_Helicopter_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|598243971");
    l0:SetConnections({
        -- Spawned,
        [0] = self.f_box_Brick_Exp_MainBeat_Helicopter_v2_23_Spawned,
    });
    self.box_SpawnAI_40 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|681837027");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_40_Out,
    });
    self.box_MultipleOR_12 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|719535263");
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
        [0] = self.f_box_MultipleOR_12_Out,
    });
    self.box_IndexList_v2_30 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|727955681");
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
    self.box_MultipleOR_119 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_119");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|733345911");
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
        [0] = self.f_box_MultipleOR_119_Out,
    });
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|733882426");
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
        [0] = self.f_box_MultipleOR_4_Out,
    });
    self.box_IndexList_v2_1 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|780484536");
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
                [0] = self.f_box_IndexList_v2_1_Output_0,
                [1] = self.f_box_IndexList_v2_1_Output_1,
                [2] = self.f_box_IndexList_v2_1_Output_2,
            },
            count = 3,
        },
    });
    self.box_SpawnAI_44 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|1106027186");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_44_Out,
    });
    self.box_Brick_Exp_MainBeat_Pkg_19 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_MainBeat_Pkg.debug.lua");
    l0 = self.box_Brick_Exp_MainBeat_Pkg_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_MainBeat_Pkg_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|1135007355");
    l0:SetConnections({
        -- Initialized,
        [0] = self.f_box_Brick_Exp_MainBeat_Pkg_19_Initialized,
        -- PackagePicked,
        [1] = self.f_box_Brick_Exp_MainBeat_Pkg_19_PackagePicked,
    });
    self.box_SpawnAI_39 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|1448295159");
    l0:SetConnections({
    });
    self.box_NarrativeFade_18 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|1464153948");
    l0:SetConnections({
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_18_FadedOut,
    });
    self.box_SpawnAI_43 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|1561614672");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_43_Out,
    });
    self.box_IndexList_v2_22 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|1640234914");
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
                [0] = self.f_box_IndexList_v2_22_Output_0,
                [1] = self.f_box_IndexList_v2_22_Output_1,
                [2] = self.f_box_IndexList_v2_22_Output_2,
            },
            count = 3,
        },
    });
    self.box_IndexList_v2_17 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|1682207210");
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
                [0] = self.f_box_IndexList_v2_17_Output_0,
                [1] = self.f_box_IndexList_v2_17_Output_1,
                [2] = self.f_box_IndexList_v2_17_Output_2,
            },
            count = 3,
        },
    });
    self.box_MultipleOR_33 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|1708199216");
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
        [0] = self.f_box_MultipleOR_33_Out,
    });
    self.box_IndexList_v2_38 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|1985600089");
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
                [0] = self.f_box_IndexList_v2_38_Output_0,
                [1] = self.f_box_IndexList_v2_38_Output_1,
                [2] = self.f_box_IndexList_v2_38_Output_2,
            },
            count = 3,
        },
    });
    self.box_CellGateController_2 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C2/Coast_C2_CTP_010_Main.CellGateController.debug.lua");
    l0 = self.box_CellGateController_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CellGateController_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|2104163402");
    l0:SetConnections({
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|1545511435", "1545511435", "Coast_C2_CTP_010_Main", "In", "box_ActivityAcknowledgeGate_5.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_Brick_Exp_SpawnFrom_RandomizationDatabase_29_All_Entities_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_40();
    l0 = self.box_Brick_Exp_SpawnFrom_RandomizationDatabase_29;
    l1 = self.box_SpawnAI_40;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|151193843", "151193843", "Coast_C2_CTP_010_Main", "box_Brick_Exp_SpawnFrom_RandomizationDatabase_29.All Entities Spawned", "box_SpawnAI_40.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SetActivityFact_116_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_119;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|1682940487", "1682940487", "Coast_C2_CTP_010_Main", "box_SetActivityFact_116.Out", "box_MultipleOR_119.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MissionBlockLayer_31_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|149506906", "149506906", "Coast_C2_CTP_010_Main", "box_MissionBlockLayer_31.Activated", "box_MultipleOR_33.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SpawnAI_42_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_36();
    l0 = self.box_SpawnAI_42;
    l1 = self.box_SpawnAI_36;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|538595134", "538595134", "Coast_C2_CTP_010_Main", "box_SpawnAI_42.Out", "box_SpawnAI_36.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_21_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_34();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|339545436", "339545436", "Coast_C2_CTP_010_Main", "box_MissionBlockLayer_21.Activated", "box_MissionBlockLayer_34.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_27_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_20();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|1815050372", "1815050372", "Coast_C2_CTP_010_Main", "box_MissionBlockLayer_27.Activated", "box_MissionBlockLayer_20.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_BroadcastMessage_52_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_22();
    l0 = self.box_IndexList_v2_22;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|106089145", "106089145", "Coast_C2_CTP_010_Main", "box_BroadcastMessage_52.Out", "box_IndexList_v2_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_28_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_21();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|1573840112", "1573840112", "Coast_C2_CTP_010_Main", "box_MissionBlockLayer_28.Activated", "box_MissionBlockLayer_21.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_BasicSetups_25_Out()
    local params, l0, l1;
    self:OnExit_box_Brick_Exp_Common_BasicSetups_25_Out();
    params = self:OnEnter_box_IndexList_v2_17();
    l0 = self.box_Brick_Exp_Common_BasicSetups_25;
    l1 = self.box_IndexList_v2_17;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|1595633735", "1595633735", "Coast_C2_CTP_010_Main", "box_Brick_Exp_Common_BasicSetups_25.Out", "box_IndexList_v2_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ActivityAcknowledgeGate_5_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_5;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|707484939", "707484939", "Coast_C2_CTP_010_Main", "box_ActivityAcknowledgeGate_5.Acknowledged", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_5_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_18();
    l0 = self.box_ActivityAcknowledgeGate_5;
    l1 = self.box_NarrativeFade_18;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|2012291683", "2012291683", "Coast_C2_CTP_010_Main", "box_ActivityAcknowledgeGate_5.Reloaded", "box_NarrativeFade_18.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_ActivityInitialized_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityForceAndLockTracking_24();
    l0 = self.box_ActivityInitialized_3;
    l1 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|192406707", "192406707", "Coast_C2_CTP_010_Main", "box_ActivityInitialized_3.Out", "box_ActivityForceAndLockTracking_24.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_MainBeat_Helicopter_v2_23_Spawned()
    local l0, l1;
    l0 = self.box_Brick_Exp_MainBeat_Helicopter_v2_23;
    l1 = self.box_ActivityInitialized_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|620664349", "620664349", "Coast_C2_CTP_010_Main", "box_Brick_Exp_MainBeat_Helicopter_v2_23.Spawned", "box_ActivityInitialized_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_SetActivityFact_115_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_119;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|1625596491", "1625596491", "Coast_C2_CTP_010_Main", "box_SetActivityFact_115.Out", "box_MultipleOR_119.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_SpawnAI_40_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_41();
    l0 = self.box_SpawnAI_40;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|843310833", "843310833", "Coast_C2_CTP_010_Main", "box_SpawnAI_40.Out", "box_MissionBlockLayer_41.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_41_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_30();
    l0 = self.box_IndexList_v2_30;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|431532380", "431532380", "Coast_C2_CTP_010_Main", "box_MissionBlockLayer_41.Activated", "box_IndexList_v2_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_12_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_6();
    l0 = self.box_MultipleOR_12;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|397320728", "397320728", "Coast_C2_CTP_010_Main", "box_MultipleOR_12.Out", "box_OutputOrder_v2_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_30_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_9();
    l0 = self.box_IndexList_v2_30;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|350699450", "350699450", "Coast_C2_CTP_010_Main", "box_IndexList_v2_30.Output", "box_MissionBlockLayer_9.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_30_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_31();
    l0 = self.box_IndexList_v2_30;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|1453897740", "1453897740", "Coast_C2_CTP_010_Main", "box_IndexList_v2_30.Output", "box_MissionBlockLayer_31.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_30_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_32();
    l0 = self.box_IndexList_v2_30;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|250200022", "250200022", "Coast_C2_CTP_010_Main", "box_IndexList_v2_30.Output", "box_MissionBlockLayer_32.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_119_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_114();
    l0 = self.box_MultipleOR_119;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|1705237233", "1705237233", "Coast_C2_CTP_010_Main", "box_MultipleOR_119.Out", "box_ActivityEnd_114.EndNoSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndNoSave
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_BasicSetups_25();
    l0 = self.box_MultipleOR_4;
    l1 = self.box_Brick_Exp_Common_BasicSetups_25;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|417560366", "417560366", "Coast_C2_CTP_010_Main", "box_MultipleOR_4.Out", "box_Brick_Exp_Common_BasicSetups_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_1_Output_0()
    local l0, l1;
    l0 = self.box_IndexList_v2_1;
    l1 = self.box_CellGateController_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|837244502", "837244502", "Coast_C2_CTP_010_Main", "box_IndexList_v2_1.Output", "box_CellGateController_2.PackageLocationA", l0:GetLuaBox(), l1:GetLuaBox());
    -- PackageLocationA
    l1:Exec(0, {
    });
end;

function export:f_box_IndexList_v2_1_Output_1()
    local l0, l1;
    l0 = self.box_IndexList_v2_1;
    l1 = self.box_CellGateController_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|1766037831", "1766037831", "Coast_C2_CTP_010_Main", "box_IndexList_v2_1.Output", "box_CellGateController_2.PackageLocationB", l0:GetLuaBox(), l1:GetLuaBox());
    -- PackageLocationB
    l1:Exec(1, {
    });
end;

function export:f_box_IndexList_v2_1_Output_2()
    local l0, l1;
    l0 = self.box_IndexList_v2_1;
    l1 = self.box_CellGateController_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|292934234", "292934234", "Coast_C2_CTP_010_Main", "box_IndexList_v2_1.Output", "box_CellGateController_2.PackageLocationC", l0:GetLuaBox(), l1:GetLuaBox());
    -- PackageLocationC
    l1:Exec(2, {
    });
end;

function export:f_box_MissionBlockLayer_32_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|699435277", "699435277", "Coast_C2_CTP_010_Main", "box_MissionBlockLayer_32.Activated", "box_MultipleOR_33.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MissionBlockLayer_34_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|176193497", "176193497", "Coast_C2_CTP_010_Main", "box_MissionBlockLayer_34.Activated", "box_MultipleOR_12.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MissionBlockLayer_35_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|1826490657", "1826490657", "Coast_C2_CTP_010_Main", "box_MissionBlockLayer_35.Activated", "box_MultipleOR_12.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetActivityFact_117_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_119;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|1923029876", "1923029876", "Coast_C2_CTP_010_Main", "box_SetActivityFact_117.Out", "box_MultipleOR_119.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_44_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_39();
    l0 = self.box_SpawnAI_44;
    l1 = self.box_SpawnAI_39;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|1317994275", "1317994275", "Coast_C2_CTP_010_Main", "box_SpawnAI_44.Out", "box_SpawnAI_39.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Brick_Exp_MainBeat_Pkg_19_Initialized()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_8();
    l0 = self.box_Brick_Exp_MainBeat_Pkg_19;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|313748002", "313748002", "Coast_C2_CTP_010_Main", "box_Brick_Exp_MainBeat_Pkg_19.Initialized", "box_SetActivityFact_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_MainBeat_Pkg_19_PackagePicked()
    local params, l0, l1;
    params = self:OnEnter_box_BroadcastMessage_52();
    l0 = self.box_Brick_Exp_MainBeat_Pkg_19;
    l1 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|1209830649", "1209830649", "Coast_C2_CTP_010_Main", "box_Brick_Exp_MainBeat_Pkg_19.PackagePicked", "box_BroadcastMessage_52.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_14_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_14_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_26();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|1744764205", "1744764205", "Coast_C2_CTP_010_Main", "box_SetInteger_v2_14.Out", "box_SetEntity_v2_26.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_13_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_13_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_7();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|2007130936", "2007130936", "Coast_C2_CTP_010_Main", "box_SetInteger_v2_13.Out", "box_SetEntity_v2_7.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_20_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_35();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|208615345", "208615345", "Coast_C2_CTP_010_Main", "box_MissionBlockLayer_20.Activated", "box_MissionBlockLayer_35.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_26_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_26_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_27();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|1507834048", "1507834048", "Coast_C2_CTP_010_Main", "box_SetEntity_v2_26.Out", "box_MissionBlockLayer_27.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_16_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_16_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_11();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|214323360", "214323360", "Coast_C2_CTP_010_Main", "box_SetInteger_v2_16.Out", "box_SetInteger_v2_11.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_9_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|2127355253", "2127355253", "Coast_C2_CTP_010_Main", "box_MissionBlockLayer_9.Activated", "box_MultipleOR_33.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetInteger_v2_15_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_15_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_13();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|1463187436", "1463187436", "Coast_C2_CTP_010_Main", "box_SetInteger_v2_15.Out", "box_SetInteger_v2_13.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NarrativeFade_18_FadedOut()
    local l0, l1;
    l0 = self.box_NarrativeFade_18;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|2080243942", "2080243942", "Coast_C2_CTP_010_Main", "box_NarrativeFade_18.FadedOut", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ActivityForceAndLockTracking_24_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_MainBeat_Pkg_19();
    l0 = self.box_Brick_Exp_MainBeat_Pkg_19;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|2038816746", "2038816746", "Coast_C2_CTP_010_Main", "box_ActivityForceAndLockTracking_24.Enabled", "box_Brick_Exp_MainBeat_Pkg_19.Initialize_Fortress", clone:GetLuaBox(), l0:GetLuaBox());
    -- Initialize_Fortress
    l0:Exec(0, params);
end;

function export:f_box_SetInteger_v2_10_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_10_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_15();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|1767518419", "1767518419", "Coast_C2_CTP_010_Main", "box_SetInteger_v2_10.Out", "box_SetInteger_v2_15.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_43_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_37();
    l0 = self.box_SpawnAI_43;
    l1 = self.box_SpawnAI_37;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|1467457782", "1467457782", "Coast_C2_CTP_010_Main", "box_SpawnAI_43.Out", "box_SpawnAI_37.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_22_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_117();
    l0 = self.box_IndexList_v2_22;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|1919589647", "1919589647", "Coast_C2_CTP_010_Main", "box_IndexList_v2_22.Output", "box_SetActivityFact_117.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_22_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_116();
    l0 = self.box_IndexList_v2_22;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|1022651291", "1022651291", "Coast_C2_CTP_010_Main", "box_IndexList_v2_22.Output", "box_SetActivityFact_116.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_22_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_115();
    l0 = self.box_IndexList_v2_22;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|1128125146", "1128125146", "Coast_C2_CTP_010_Main", "box_IndexList_v2_22.Output", "box_SetActivityFact_115.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_17_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_10();
    l0 = self.box_IndexList_v2_17;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|1139706160", "1139706160", "Coast_C2_CTP_010_Main", "box_IndexList_v2_17.Output", "box_SetInteger_v2_10.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_17_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_16();
    l0 = self.box_IndexList_v2_17;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|349536700", "349536700", "Coast_C2_CTP_010_Main", "box_IndexList_v2_17.Output", "box_SetInteger_v2_16.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_17_Output_2()
    local l0, l1;
    l0 = self.box_IndexList_v2_17;
    l1 = self.box_Brick_Exp_SpawnFrom_RandomizationDatabase_29;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|202715870", "202715870", "Coast_C2_CTP_010_Main", "box_IndexList_v2_17.Output", "box_Brick_Exp_SpawnFrom_RandomizationDatabase_29.Spawn Entities from Database", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn Entities from Database
    l1:Exec(1, {
    });
end;

function export:f_box_MultipleOR_33_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_33;
    l1 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|588010726", "588010726", "Coast_C2_CTP_010_Main", "box_MultipleOR_33.Out", "box_MultipleOR_12.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_SetInteger_v2_11_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_11_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_14();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|1756027023", "1756027023", "Coast_C2_CTP_010_Main", "box_SetInteger_v2_11.Out", "box_SetInteger_v2_14.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_6_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_MainBeat_Helicopter_v2_23();
    l0 = self.box_Brick_Exp_MainBeat_Helicopter_v2_23;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|785248133", "785248133", "Coast_C2_CTP_010_Main", "box_OutputOrder_v2_6.Out", "box_Brick_Exp_MainBeat_Helicopter_v2_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_1();
    l0 = self.box_IndexList_v2_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|1729936804", "1729936804", "Coast_C2_CTP_010_Main", "box_OutputOrder_v2_6.Out", "box_IndexList_v2_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_38();
    l0 = self.box_IndexList_v2_38;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|396719932", "396719932", "Coast_C2_CTP_010_Main", "box_OutputOrder_v2_6.Out", "box_IndexList_v2_38.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_IndexList_v2_38_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_43();
    l0 = self.box_IndexList_v2_38;
    l1 = self.box_SpawnAI_43;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|1249587252", "1249587252", "Coast_C2_CTP_010_Main", "box_IndexList_v2_38.Output", "box_SpawnAI_43.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_38_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_44();
    l0 = self.box_IndexList_v2_38;
    l1 = self.box_SpawnAI_44;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|957296407", "957296407", "Coast_C2_CTP_010_Main", "box_IndexList_v2_38.Output", "box_SpawnAI_44.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_38_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_42();
    l0 = self.box_IndexList_v2_38;
    l1 = self.box_SpawnAI_42;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|2093496630", "2093496630", "Coast_C2_CTP_010_Main", "box_IndexList_v2_38.Output", "box_SpawnAI_42.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SetEntity_v2_7_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_7_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_28();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|817739727", "817739727", "Coast_C2_CTP_010_Main", "box_SetEntity_v2_7.Out", "box_MissionBlockLayer_28.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_ActivityEnd_114()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_114");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|13896408");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_116()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_116");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|48168624");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_116_Out,
    });
    params = {
        -- Fact,
        [0] = "Coast_C2_CTP_010_Ext_B_Start",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|105332156");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_31_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "63189111787572330",
        -- missionLayerId,
        [1] = "162268303590808587",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_36()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109090975186952960",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_42()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109976333382597609",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|404740446");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_21_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "63189111787572330",
        -- missionLayerId,
        [1] = "171275502845559670",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_37()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109090987266548487",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|436679802");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_27_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "63189111787572330",
        -- missionLayerId,
        [1] = "81203510297233763",
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|463015078");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_52_Out,
    });
    params = {
        -- Message,
        [0] = "package_is_picked",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|499294228");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_28_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "63189111787572330",
        -- missionLayerId,
        [1] = "72196311042313322",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_BasicSetups_25()
    local params;
    params = {
        -- DebugMode,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_MainBeat_Helicopter_v2_23()
    local params;
    params = {
        -- EnemyGroup,
        [0] = "#860A3B69",
        -- ForceDespawnTimer,
        [1] = 90,
        -- HelicopterSpawner_A,
        [3] = "2108244989560490135",
        -- HelicopterSpawner_B,
        [4] = "2108245013178616050",
        -- HelicopterSpawner_C,
        [5] = "2108245017133844786",
        -- PlayerSpawnPOIIndex,
        [6] = self.i_PlayerSpawnPOIIndex,
        -- STP_HelicopterLeave_A,
        [7] = "2108246444965109249",
        -- STP_HelicopterLeave_B,
        [8] = "2108246456010808837",
        -- STP_HelicopterLeave_C,
        [9] = "2108246456822406665",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_115()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_115");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|659015146");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_115_Out,
    });
    params = {
        -- Fact,
        [0] = "Coast_C2_CTP_010_Ext_C_Start",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_40()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109088300085027246",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|709354708");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_41_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "63189111787572330",
        -- missionLayerId,
        [1] = "27160317995615379",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_30()
    local params;
    params = {
        -- Index,
        [0] = self.i_PackagePositionIndex,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_1()
    local params;
    params = {
        -- Index,
        [0] = self.i_PackagePositionIndex,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|830143960");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_32_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "63189111787572330",
        -- missionLayerId,
        [1] = "171275502845559670",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|861908516");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_34_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160314885711265",
        -- missionLayerId,
        [1] = "36167514140452258",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|886605530");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_35_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160314885711265",
        -- missionLayerId,
        [1] = "45174713395238602",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_117()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_117");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|1001259320");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_117_Out,
    });
    params = {
        -- Fact,
        [0] = "Coast_C2_CTP_010_Ext_A_Start",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_44()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109976363034229748",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_MainBeat_Pkg_19()
    local params;
    params = {
        -- PackagePositionID,
        [6] = self.i_PackagePositionIndex,
        -- PackageSpawner_Variable,
        [7] = self.e_PackageSpawner,
        -- PkgPickedUpFactToStartCS,
        [8] = "package_pickedup",
        -- PlayMusicEvent,
        [9] = "3729034401",
        -- SearchZoneMarker_A,
        [10] = "2108203516408372180",
        -- SearchZoneMarker_B,
        [11] = "2108203591767432264",
        -- SearchZoneMarker_C,
        [12] = "2108203530765474776",
        -- StopMusicEvent,
        [16] = "3156198632",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|1136539371");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_14_Out,
    });
    params = {
        -- Integer,
        [1] = 2,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|1203164880");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_13_Out,
    });
    params = {
        -- Integer,
        [1] = 3,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|1246742290");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_20_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "63189111787572330",
        -- missionLayerId,
        [1] = "162268303590808587",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|1295512493");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_26_Out,
    });
    params = {
        -- Entity,
        [0] = "2108205035717401612",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|1326166890");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_16_Out,
    });
    params = {
        -- Integer,
        [1] = 3,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|1327761758");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_9_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "63189111787572330",
        -- missionLayerId,
        [1] = "153261104336039775",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|1429170260");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_15_Out,
    });
    params = {
        -- Integer,
        [1] = 2,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_39()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109090987266548487",
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_18()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_ActivityForceAndLockTracking_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityForceAndLockTracking_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|1478465157");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityForceAndLockTracking_24_Enabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|1517346150");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_10_Out,
    });
    params = {
        -- Integer,
        [1] = 1,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_43()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109976366922349564",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_22()
    local params;
    params = {
        -- Index,
        [0] = self.i_ExtractionPOIIndex,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_17()
    local params;
    params = {
        -- Index,
        [0] = self.i_Difficulty,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|1808710863");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_11_Out,
    });
    params = {
        -- Integer,
        [1] = 1,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|1961247162");
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
                [0] = self.f_box_OutputOrder_v2_6_Out_0,
                [1] = self.f_box_OutputOrder_v2_6_Out_1,
                [2] = self.f_box_OutputOrder_v2_6_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_38()
    local params;
    params = {
        -- Index,
        [0] = self.i_PackagePositionIndex,
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|2056089365");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "Package_Location_Set",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main.domino|@Coast_C2_CTP_010_Main|2058498172");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_7_Out,
    });
    params = {
        -- Entity,
        [0] = "2108205016306162668",
    };
    return params;
end;

function export:OnExit_box_Brick_Exp_Common_BasicSetups_25_Out()
    local l0;
    l0 = self.box_Brick_Exp_Common_BasicSetups_25;
    self.i_Difficulty = l0:GetDataOutValue(0);
    self.i_PlayerSpawnPOIIndex = l0:GetDataOutValue(4);
    self.i_ExtractionPOIIndex = l0:GetDataOutValue(1);
    self.i_PackagePositionIndex = l0:GetDataOutValue(2);
    self.e_PackageSpawner = l0:GetDataOutValue(3);
end;

function export:OnExit_box_SetInteger_v2_14_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.i_PackagePositionIndex = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_13_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.i_PackagePositionIndex = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_26_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_PackageSpawner = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_16_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.i_PlayerSpawnPOIIndex = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_15_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.i_ExtractionPOIIndex = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_10_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.i_PlayerSpawnPOIIndex = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_11_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.i_ExtractionPOIIndex = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_7_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_PackageSpawner = l0:GetDataOutValue(0);
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
