LUAC�2 -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_swamp/expeditions/c2/swamp_c2_ctp_010_main.domino
-- User graph: Swamp_C2_CTP_010_Main
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
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/GetExpeditionGameplayElements.lua");
        cboxRes:RegisterBox("Domino/System/IndexList_v2.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetInteger_v2.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/C2/Swamp_C2_CTP_010_Main.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3719151969.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1549670302.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.Swamp_C2_CTP_010_Main = nil;
    Globals.Swamp_C2_CTP_010_Main = {
        iRemainedWaves = 2,
        ePackageSpawner = nil,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/C2/Swamp_C2_CTP_010_Main.Swamp_C2_CTP_010_Main.debug.lua")] = {
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
end;

function export:Init(cbox)
    local l0;
    self._name = "Swamp_C2_CTP_010_Main";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main";
    self.iPackagePositionID = 0;
    self.iExtractionPOIID = 0;
    self.iPlayerSpawnPOIIndex = 0;
    self.ePackageSpawner = nil;
    self.iDifficulty = 0;
    self.PlayerDetected = false;
    self.box_SpawnAI_10 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|229248566");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_10_Out,
    });
    self.box_Brick_Exp_MainBeat_Pkg_2 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_MainBeat_Pkg.debug.lua");
    l0 = self.box_Brick_Exp_MainBeat_Pkg_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_MainBeat_Pkg_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|603102947");
    l0:SetConnections({
        -- PackagePicked,
        [1] = self.f_box_Brick_Exp_MainBeat_Pkg_2_PackagePicked,
    });
    self.box_Brick_Exp_SpawnFrom_RandomizationDatabase_4 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Randomization.Brick_Exp_SpawnFrom_RandomizationDatabase.debug.lua");
    l0 = self.box_Brick_Exp_SpawnFrom_RandomizationDatabase_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_SpawnFrom_RandomizationDatabase_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|664571429");
    l0:SetConnections({
        -- All Entities Spawned,
        [0] = self.f_box_Brick_Exp_SpawnFrom_RandomizationDatabase_4_All_Entities_Spawned,
    });
    self.box_Brick_Exp_Common_BasicSetups_35 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_BasicSetups.debug.lua");
    l0 = self.box_Brick_Exp_Common_BasicSetups_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_BasicSetups_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|752931947");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Brick_Exp_Common_BasicSetups_35_Out,
    });
    self.box_Brick_Exp_MainBeat_Helicopter_v2_11 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_MainBeat_Helicopter_v2.debug.lua");
    l0 = self.box_Brick_Exp_MainBeat_Helicopter_v2_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_MainBeat_Helicopter_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|903342021");
    l0:SetConnections({
        -- Spawned,
        [0] = self.f_box_Brick_Exp_MainBeat_Helicopter_v2_11_Spawned,
    });
    self.box_NarrativeFade_36 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|975413676");
    l0:SetConnections({
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_36_FadedOut,
    });
    self.box_MultipleOR_34 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|1041287152");
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
    self.box_IndexList_v2_22 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|1134631104");
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
    self.box_ActivityAcknowledgeGate_19 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|1181592806");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_19_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_19_Reloaded,
    });
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|1705865523");
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
    self.box_ActivityInitialized_15 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|1732787951");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_15_Out,
    });
    self.box_IndexList_v2_16 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|1972647283");
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
                [0] = self.f_box_IndexList_v2_16_Output_0,
                [1] = self.f_box_IndexList_v2_16_Output_1,
                [2] = self.f_box_IndexList_v2_16_Output_2,
            },
            count = 3,
        },
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_19;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|360594952", "360594952", "Swamp_C2_CTP_010_Main", "In", "box_ActivityAcknowledgeGate_19.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    
end;

function export:f_box_SetInteger_v2_26_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_26_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_27();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|1635869481", "1635869481", "Swamp_C2_CTP_010_Main", "box_SetInteger_v2_26.Out", "box_SetInteger_v2_27.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_10_Out()
    local l0, l1;
    l0 = self.box_SpawnAI_10;
    l1 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|453246507", "453246507", "Swamp_C2_CTP_010_Main", "box_SpawnAI_10.Out", "box_MultipleOR_34.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_17_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_MainBeat_Helicopter_v2_11();
    l0 = self.box_Brick_Exp_MainBeat_Helicopter_v2_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|1324694130", "1324694130", "Swamp_C2_CTP_010_Main", "box_OutputOrder_v2_17.Out", "box_Brick_Exp_MainBeat_Helicopter_v2_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_17_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_16();
    l0 = self.box_IndexList_v2_16;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|614502752", "614502752", "Swamp_C2_CTP_010_Main", "box_OutputOrder_v2_17.Out", "box_IndexList_v2_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_17_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_38();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|1182256407", "1182256407", "Swamp_C2_CTP_010_Main", "box_OutputOrder_v2_17.Out", "box_Compare_Integers_38.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_81();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|1458100112", "1458100112", "Swamp_C2_CTP_010_Main", "box_OutputOrder_v2_17.Out", "box_SetEntity_v2_81.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_MainBeat_Pkg_2_PackagePicked()
    local params, l0, l1;
    params = self:OnEnter_box_BroadcastMessage_1();
    l0 = self.box_Brick_Exp_MainBeat_Pkg_2;
    l1 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|1400260198", "1400260198", "Swamp_C2_CTP_010_Main", "box_Brick_Exp_MainBeat_Pkg_2.PackagePicked", "box_BroadcastMessage_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetExpeditionGameplayElements_23_Out()
    local params, l0;
    self:OnExit_box_GetExpeditionGameplayElements_23_Out();
    l0 = Boxes[GetPathID("Domino/System/GetExpeditionGameplayElements.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_24();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|391130593", "391130593", "Swamp_C2_CTP_010_Main", "box_GetExpeditionGameplayElements_23.Out", "box_IntegerArithmetics_v2_24.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_SpawnFrom_RandomizationDatabase_4_All_Entities_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_10();
    l0 = self.box_Brick_Exp_SpawnFrom_RandomizationDatabase_4;
    l1 = self.box_SpawnAI_10;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|643505519", "643505519", "Swamp_C2_CTP_010_Main", "box_Brick_Exp_SpawnFrom_RandomizationDatabase_4.All Entities Spawned", "box_SpawnAI_10.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SetInteger_v2_30_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_30_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_32();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|1815955177", "1815955177", "Swamp_C2_CTP_010_Main", "box_SetInteger_v2_30.Out", "box_SetEntity_v2_32.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_BasicSetups_35_Out()
    local l0, l1;
    self:OnExit_box_Brick_Exp_Common_BasicSetups_35_Out();
    l0 = self.box_Brick_Exp_Common_BasicSetups_35;
    l1 = self.box_Brick_Exp_SpawnFrom_RandomizationDatabase_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|702547789", "702547789", "Swamp_C2_CTP_010_Main", "box_Brick_Exp_Common_BasicSetups_35.Out", "box_Brick_Exp_SpawnFrom_RandomizationDatabase_4.Spawn Entities from Database", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn Entities from Database
    l1:Exec(1, {
    });
end;

function export:f_box_SetInteger_v2_28_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_28_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_29();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|1025663442", "1025663442", "Swamp_C2_CTP_010_Main", "box_SetInteger_v2_28.Out", "box_SetEntity_v2_29.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_24_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_24_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_22();
    l0 = self.box_IndexList_v2_22;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|688850629", "688850629", "Swamp_C2_CTP_010_Main", "box_IntegerArithmetics_v2_24.Out", "box_IndexList_v2_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_SetInteger_v2_27_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_27_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_28();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|1734252403", "1734252403", "Swamp_C2_CTP_010_Main", "box_SetInteger_v2_27.Out", "box_SetInteger_v2_28.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_MainBeat_Helicopter_v2_11_Spawned()
    local l0, l1;
    l0 = self.box_Brick_Exp_MainBeat_Helicopter_v2_11;
    l1 = self.box_ActivityInitialized_15;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|1578818849", "1578818849", "Swamp_C2_CTP_010_Main", "box_Brick_Exp_MainBeat_Helicopter_v2_11.Spawned", "box_ActivityInitialized_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_SetEntity_v2_29_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_29_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|1214545153", "1214545153", "Swamp_C2_CTP_010_Main", "box_SetEntity_v2_29.Out", "box_MultipleOR_34.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MissionBlockLayer_61_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_BasicSetups_35();
    l0 = self.box_Brick_Exp_Common_BasicSetups_35;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|889322238", "889322238", "Swamp_C2_CTP_010_Main", "box_MissionBlockLayer_61.Activated", "box_Brick_Exp_Common_BasicSetups_35.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_NarrativeFade_36_FadedOut()
    local l0, l1;
    l0 = self.box_NarrativeFade_36;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|1846727683", "1846727683", "Swamp_C2_CTP_010_Main", "box_NarrativeFade_36.FadedOut", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_34_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_17();
    l0 = self.box_MultipleOR_34;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|2081986035", "2081986035", "Swamp_C2_CTP_010_Main", "box_MultipleOR_34.Out", "box_OutputOrder_v2_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_38_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_37();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|1025038104", "1025038104", "Swamp_C2_CTP_010_Main", "box_Compare_Integers_38.A_eq_B", "box_MissionBlockLayer_37.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_38_A_gt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_40();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|1924379617", "1924379617", "Swamp_C2_CTP_010_Main", "box_Compare_Integers_38.A_gt_B", "box_MissionBlockLayer_40.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_38_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_39();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|1315212443", "1315212443", "Swamp_C2_CTP_010_Main", "box_Compare_Integers_38.A_lt_B", "box_MissionBlockLayer_39.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_12_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_MainBeat_Pkg_2();
    l0 = self.box_Brick_Exp_MainBeat_Pkg_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|1877989520", "1877989520", "Swamp_C2_CTP_010_Main", "box_OutputOrder_v2_12.Out", "box_Brick_Exp_MainBeat_Pkg_2.Initialize_Fortress", clone:GetLuaBox(), l0:GetLuaBox());
    -- Initialize_Fortress
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_12_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_3();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|669154758", "669154758", "Swamp_C2_CTP_010_Main", "box_OutputOrder_v2_12.Out", "box_MissionBlockLayer_3.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_22_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_60();
    l0 = self.box_IndexList_v2_22;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|1045708565", "1045708565", "Swamp_C2_CTP_010_Main", "box_IndexList_v2_22.Output", "box_MissionBlockLayer_60.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_22_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_59();
    l0 = self.box_IndexList_v2_22;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|912207204", "912207204", "Swamp_C2_CTP_010_Main", "box_IndexList_v2_22.Output", "box_MissionBlockLayer_59.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_22_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_61();
    l0 = self.box_IndexList_v2_22;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|301091637", "301091637", "Swamp_C2_CTP_010_Main", "box_IndexList_v2_22.Output", "box_MissionBlockLayer_61.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_19_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_19;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|876560092", "876560092", "Swamp_C2_CTP_010_Main", "box_ActivityAcknowledgeGate_19.Acknowledged", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_19_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_36();
    l0 = self.box_ActivityAcknowledgeGate_19;
    l1 = self.box_NarrativeFade_36;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|1434494466", "1434494466", "Swamp_C2_CTP_010_Main", "box_ActivityAcknowledgeGate_19.Reloaded", "box_NarrativeFade_36.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_59_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_31();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|1711217402", "1711217402", "Swamp_C2_CTP_010_Main", "box_MissionBlockLayer_59.Activated", "box_SetInteger_v2_31.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_31_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_31_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_33();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|631043637", "631043637", "Swamp_C2_CTP_010_Main", "box_SetInteger_v2_31.Out", "box_SetInteger_v2_33.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_BroadcastMessage_1_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_14();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|1118372971", "1118372971", "Swamp_C2_CTP_010_Main", "box_BroadcastMessage_1.Out", "box_ActivityEnd_14.EndNoSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndNoSave
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_81_Out()
    self:OnExit_box_SetEntity_v2_81_Out();
end;

function export:f_box_MultipleOR_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetExpeditionGameplayElements_23();
    l0 = self.box_MultipleOR_7;
    l1 = Boxes[GetPathID("Domino/System/GetExpeditionGameplayElements.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|325176155", "325176155", "Swamp_C2_CTP_010_Main", "box_MultipleOR_7.Out", "box_GetExpeditionGameplayElements_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_15_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_12();
    l0 = self.box_ActivityInitialized_15;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|616227544", "616227544", "Swamp_C2_CTP_010_Main", "box_ActivityInitialized_15.Out", "box_OutputOrder_v2_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_60_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_26();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|303662907", "303662907", "Swamp_C2_CTP_010_Main", "box_MissionBlockLayer_60.Activated", "box_SetInteger_v2_26.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_16_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_5();
    l0 = self.box_IndexList_v2_16;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|1357180166", "1357180166", "Swamp_C2_CTP_010_Main", "box_IndexList_v2_16.Output", "box_SetActivityFact_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_16_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_6();
    l0 = self.box_IndexList_v2_16;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|572638485", "572638485", "Swamp_C2_CTP_010_Main", "box_IndexList_v2_16.Output", "box_SetActivityFact_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_16_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_8();
    l0 = self.box_IndexList_v2_16;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|678112340", "678112340", "Swamp_C2_CTP_010_Main", "box_IndexList_v2_16.Output", "box_SetActivityFact_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_33_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_33_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_30();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|1859723684", "1859723684", "Swamp_C2_CTP_010_Main", "box_SetInteger_v2_33.Out", "box_SetInteger_v2_30.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_32_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_32_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|1638843730", "1638843730", "Swamp_C2_CTP_010_Main", "box_SetEntity_v2_32.Out", "box_MultipleOR_34.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:OnEnter_box_SetInteger_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|104268939");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_26_Out,
    });
    params = {
        -- Integer,
        [1] = 3,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|133076887");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160323094597367",
        -- missionLayerId,
        [1] = "36167523694325428",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|144992212");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|146953154");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160310099165069",
        -- missionLayerId,
        [1] = "54181907863450786",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_10()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108869384184281391",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|271476427");
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
                [0] = self.f_box_OutputOrder_v2_17_Out_0,
                [1] = self.f_box_OutputOrder_v2_17_Out_1,
                [2] = self.f_box_OutputOrder_v2_17_Out_2,
                [3] = self.f_box_OutputOrder_v2_17_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_MainBeat_Pkg_2()
    local params;
    params = {
        -- CloseRangeDiscoveryShape_A,
        [0] = "2108218384014385675",
        -- CloseRangeDiscoveryShape_B,
        [1] = "2108218415098372620",
        -- CloseRangeDiscoveryShape_C,
        [2] = "2108218421599543821",
        -- PackagePositionID,
        [6] = self.iPackagePositionID,
        -- PackageSpawner_Variable,
        [7] = self.ePackageSpawner,
        -- PkgPickedUpFactToStartCS,
        [8] = "package_pickedup",
        -- PlayMusicEvent,
        [9] = "3719151969",
        -- SearchZoneMarker_A,
        [10] = "2108124179560675799",
        -- SearchZoneMarker_B,
        [11] = "2108124352265337506",
        -- SearchZoneMarker_C,
        [12] = "2107170204411758058",
        -- StopMusicEvent,
        [16] = "1549670302",
    };
    return params;
end;

function export:OnEnter_box_GetExpeditionGameplayElements_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetExpeditionGameplayElements.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetExpeditionGameplayElements_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|649509977");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetExpeditionGameplayElements_23_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|706422732");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_30_Out,
    });
    params = {
        -- Integer,
        [1] = 2,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_BasicSetups_35()
    local params;
    params = {
        -- DebugMode,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|807065433");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_28_Out,
    });
    params = {
        -- Integer,
        [1] = 1,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|833339709");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_24_Out,
    });
    params = {
        -- A,
        [0] = self.iDifficulty,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|844646630");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_27_Out,
    });
    params = {
        -- Integer,
        [1] = 3,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_MainBeat_Helicopter_v2_11()
    local params;
    params = {
        -- EnemyGroup,
        [0] = "#95FE825F",
        -- ForceDespawnTimer,
        [1] = 45,
        -- HelicopterSpawner_A,
        [3] = "2108230735188992544",
        -- HelicopterSpawner_B,
        [4] = "2108233267338552332",
        -- HelicopterSpawner_C,
        [5] = "2108233858003509490",
        -- PlayerSpawnPOIIndex,
        [6] = self.iPlayerSpawnPOIIndex,
        -- STP_HelicopterLeave_A,
        [7] = "2108230764333114438",
        -- STP_HelicopterLeave_B,
        [8] = "2108233267353232407",
        -- STP_HelicopterLeave_C,
        [9] = "2108233903752880468",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|911279598");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_29_Out,
    });
    params = {
        -- Entity,
        [0] = "2108123443556787365",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|929514831");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_61_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160311682460052",
        -- missionLayerId,
        [1] = "27160318107934997",
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_36()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|1045442361");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_38_A_eq_B,
        -- A_gt_B,
        [2] = self.f_box_Compare_Integers_38_A_gt_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_38_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.iPackagePositionID,
        -- B,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|1107461592");
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
                [1] = self.f_box_OutputOrder_v2_12_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_22()
    local params;
    params = {
        -- Index,
        [0] = self.iDifficulty,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|1209245048");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160310099165069",
        -- missionLayerId,
        [1] = "45174708608690047",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|1320971850");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_59_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160311682460052",
        -- missionLayerId,
        [1] = "36167510937201045",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|1649659759");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_31_Out,
    });
    params = {
        -- Integer,
        [1] = 1,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|1661910765");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_1_Out,
    });
    params = {
        -- Message,
        [0] = "package_is_picked",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|1672944608");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_81_Out,
    });
    params = {
        -- Entity,
        [0] = self.ePackageSpawner,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|1830136630");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_60_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160311682460052",
        -- missionLayerId,
        [1] = "45174710192055580",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|1832572795");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "ExtractionPoint_C",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|1844984329");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160310099165069",
        -- missionLayerId,
        [1] = "36167509353906061",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|1850730751");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "ExtractionPoint_A",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_16()
    local params;
    params = {
        -- Index,
        [0] = self.iExtractionPOIID,
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|2026661158");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "ExtractionPoint_B",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|2029015893");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_33_Out,
    });
    params = {
        -- Integer,
        [1] = 2,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C2\\Swamp_C2_CTP_010_Main.domino|@Swamp_C2_CTP_010_Main|2146735142");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_32_Out,
    });
    params = {
        -- Entity,
        [0] = "2108124352263240347",
    };
    return params;
end;

function export:OnExit_box_SetInteger_v2_26_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iPlayerSpawnPOIIndex = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetExpeditionGameplayElements_23_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetExpeditionGameplayElements.lua")];
    self.iDifficulty = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_30_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iExtractionPOIID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_Exp_Common_BasicSetups_35_Out()
    local l0;
    l0 = self.box_Brick_Exp_Common_BasicSetups_35;
    self.iDifficulty = l0:GetDataOutValue(0);
    self.iPlayerSpawnPOIIndex = l0:GetDataOutValue(4);
    self.iExtractionPOIID = l0:GetDataOutValue(1);
    self.iPackagePositionID = l0:GetDataOutValue(2);
    self.ePackageSpawner = l0:GetDataOutValue(3);
end;

function export:OnExit_box_SetInteger_v2_28_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iExtractionPOIID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_24_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.iDifficulty = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_27_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iPackagePositionID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_29_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.ePackageSpawner = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_31_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iPlayerSpawnPOIIndex = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_81_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    Globals.Swamp_C2_CTP_010_Main.ePackageSpawner = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_33_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iPackagePositionID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_32_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.ePackageSpawner = l0:GetDataOutValue(0);
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
