LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_swamp/expeditions/h2/swamp_h2_ctp_010_main.domino
-- User graph: Swamp_H2_CTP_010_Main
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
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/IndexList_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetInteger_v2.lua");
        cboxRes:RegisterBox("Domino/System/UI/ActivityForceAndLockTracking.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/H2/Swamp_H2_CTP_010_Main.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2226418254.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2794462597.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.Swamp_H2_CTP_010_Main = nil;
    Globals.Swamp_H2_CTP_010_Main = {
        ExtractionPOIID = 0,
        iPackageSpawner = nil,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/H2/Swamp_H2_CTP_010_Main.Swamp_H2_CTP_010_Main.debug.lua")] = {
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
end;

function export:Init(cbox)
    local l0;
    self._name = "Swamp_H2_CTP_010_Main";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main";
    self.PackageSpawner = nil;
    self.ExtractionID = 0;
    self.PlayerSpawnPOIIndex = 0;
    self.PackageID = 0;
    self.iPlayerSpawnPOIIndex = 0;
    self.iDifficulty = 0;
    self.iPackagePositionID = 0;
    self.iExtractionPOIID = 0;
    self.ePackageSpawner = nil;
    self.e_Wave_1_B = nil;
    self.e_Wave_1_A = nil;
    self.e_PlayerBeDected = nil;
    self.e_Wave_2_A = nil;
    self.e_Wave_2_B = nil;
    self.e_InfiWave_4_B = nil;
    self.e_InfiWave_4_A = nil;
    self.e_Wave_3_A = nil;
    self.e_Wave_4_A = nil;
    self.e_Wave_4_B = nil;
    self.e_Wave_5_A = nil;
    self.e_Wave_5_B = nil;
    self.e_Wave_6_A = nil;
    self.e_Wave_6_B = nil;
    self.e_InfiWave_1_A = nil;
    self.e_InfiWave_1_B = nil;
    self.e_InfiWave_2_A = nil;
    self.e_InfiWave_2_B = nil;
    self.e_InfiWave_3_A = nil;
    self.e_InfiWave_3_B = nil;
    self.e_Wave_3_B = nil;
    self.bInRollerCoaster = false;
    self.bInPlanebody = false;
    self.bInPlanetail = false;
    self.bInCamp = false;
    self.Difficulty = 0;
    self.iExtractionPOIIndex = 0;
    self.i_Difficulty = 0;
    self.box_MultipleOR_52 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|372638285");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 4,
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
        [0] = self.f_box_MultipleOR_52_Out,
    });
    self.box_MultipleOR_49 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|421783106");
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
        [0] = self.f_box_MultipleOR_49_Out,
    });
    self.box_MultipleOR_31 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|498927070");
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
        [0] = self.f_box_MultipleOR_31_Out,
    });
    self.box_MultipleOR_16 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|671417156");
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
        [0] = self.f_box_MultipleOR_16_Out,
    });
    self.box_IndexList_v2_17 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|737109687");
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
    self.box_Brick_Exp_Common_BasicSetups_186 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_BasicSetups.debug.lua");
    l0 = self.box_Brick_Exp_Common_BasicSetups_186;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_BasicSetups_186");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|785968562");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Brick_Exp_Common_BasicSetups_186_Out,
    });
    self.box_Brick_Exp_MainBeat_Pkg_199 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_MainBeat_Pkg.debug.lua");
    l0 = self.box_Brick_Exp_MainBeat_Pkg_199;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_MainBeat_Pkg_199");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|838720614");
    l0:SetConnections({
        -- PackagePicked,
        [1] = self.f_box_Brick_Exp_MainBeat_Pkg_199_PackagePicked,
    });
    self.box_NarrativeFade_43 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|907471470");
    l0:SetConnections({
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_43_FadedOut,
    });
    self.box_MultipleOR_18 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|974654791");
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
        [0] = self.f_box_MultipleOR_18_Out,
    });
    self.box_Brick_Exp_SpawnFrom_RandomizationDatabase_196 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Randomization.Brick_Exp_SpawnFrom_RandomizationDatabase.debug.lua");
    l0 = self.box_Brick_Exp_SpawnFrom_RandomizationDatabase_196;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_SpawnFrom_RandomizationDatabase_196");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1028678078");
    l0:SetConnections({
        -- All Entities Spawned,
        [0] = self.f_box_Brick_Exp_SpawnFrom_RandomizationDatabase_196_All_Entities_Spawned,
    });
    self.box_IndexList_v2_23 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1090819888");
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
        -- Output,
        [0] = {
            connections = {
                [0] = self.f_box_IndexList_v2_23_Output_0,
                [1] = self.f_box_IndexList_v2_23_Output_1,
                [2] = self.f_box_IndexList_v2_23_Output_2,
                [3] = self.f_box_IndexList_v2_23_Output_3,
                [4] = self.f_box_IndexList_v2_23_Output_4,
                [5] = self.f_box_IndexList_v2_23_Output_5,
            },
            count = 6,
        },
    });
    self.box_Brick_Exp_MainBeat_Helicopter_v2_9 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_MainBeat_Helicopter_v2.debug.lua");
    l0 = self.box_Brick_Exp_MainBeat_Helicopter_v2_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_MainBeat_Helicopter_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1397318103");
    l0:SetConnections({
        -- Spawned,
        [0] = self.f_box_Brick_Exp_MainBeat_Helicopter_v2_9_Spawned,
    });
    self.box_ActivityAcknowledgeGate_38 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1437248517");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_38_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_38_Reloaded,
    });
    self.box_IndexList_v2_33 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1594752655");
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
        -- Output,
        [0] = {
            connections = {
                [0] = self.f_box_IndexList_v2_33_Output_0,
                [1] = self.f_box_IndexList_v2_33_Output_1,
                [2] = self.f_box_IndexList_v2_33_Output_2,
                [3] = self.f_box_IndexList_v2_33_Output_3,
                [4] = self.f_box_IndexList_v2_33_Output_4,
                [5] = self.f_box_IndexList_v2_33_Output_5,
            },
            count = 6,
        },
    });
    self.box_IndexList_v2_8 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1789691826");
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
        -- Output,
        [0] = {
            connections = {
                [0] = self.f_box_IndexList_v2_8_Output_0,
                [1] = self.f_box_IndexList_v2_8_Output_1,
                [2] = self.f_box_IndexList_v2_8_Output_2,
            },
            count = 4,
        },
    });
    self.box_ActivityInitialized_27 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1821713980");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_27_Out,
    });
    self.box_MultipleOR_32 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1876506649");
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
        [0] = self.f_box_MultipleOR_32_Out,
    });
    self.box_MultipleOR_26 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1889441778");
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
        [0] = self.f_box_MultipleOR_26_Out,
    });
    self.box_SpawnAI_6 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1946771556");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_6_Out,
    });
    self.box_MultipleOR_44 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|2103571969");
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
        [0] = self.f_box_MultipleOR_44_Out,
    });
    self.box_MultipleOR_30 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|2135794578");
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
        [0] = self.f_box_MultipleOR_30_Out,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_38;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|893504560", "893504560", "Swamp_H2_CTP_010_Main", "In", "box_ActivityAcknowledgeGate_38.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_SetInteger_v2_15_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_15_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_2();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1376467693", "1376467693", "Swamp_H2_CTP_010_Main", "box_SetInteger_v2_15.Out", "box_SetEntity_v2_2.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_1_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_1_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_55();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|113282855", "113282855", "Swamp_H2_CTP_010_Main", "box_SetEntity_v2_1.Out", "box_MissionBlockLayer_55.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_39_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_37();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1012651205", "1012651205", "Swamp_H2_CTP_010_Main", "box_MissionBlockLayer_39.Activated", "box_MissionBlockLayer_37.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_37_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_52;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|791794322", "791794322", "Swamp_H2_CTP_010_Main", "box_MissionBlockLayer_37.Activated", "box_MultipleOR_52.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_52_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_MainBeat_Helicopter_v2_9();
    l0 = self.box_MultipleOR_52;
    l1 = self.box_Brick_Exp_MainBeat_Helicopter_v2_9;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|34694478", "34694478", "Swamp_H2_CTP_010_Main", "box_MultipleOR_52.Out", "box_Brick_Exp_MainBeat_Helicopter_v2_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_56_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_45();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|364519390", "364519390", "Swamp_H2_CTP_010_Main", "box_MissionBlockLayer_56.Activated", "box_MissionBlockLayer_45.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_49_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_50();
    l0 = self.box_MultipleOR_49;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1149145731", "1149145731", "Swamp_H2_CTP_010_Main", "box_MultipleOR_49.Out", "box_MissionBlockLayer_50.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_17();
    l0 = self.box_IndexList_v2_17;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|841679527", "841679527", "Swamp_H2_CTP_010_Main", "box_OutputOrder_v2_5.Out", "box_IndexList_v2_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_5_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_48();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|2073236638", "2073236638", "Swamp_H2_CTP_010_Main", "box_OutputOrder_v2_5.Out", "box_ActivityEnd_48.EndNoSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndNoSave
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_54_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_47();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1408804747", "1408804747", "Swamp_H2_CTP_010_Main", "box_MissionBlockLayer_54.Activated", "box_MissionBlockLayer_47.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_14_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_14_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_11();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|5823051", "5823051", "Swamp_H2_CTP_010_Main", "box_SetInteger_v2_14.Out", "box_SetInteger_v2_11.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_31_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_25();
    l0 = self.box_MultipleOR_31;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1920649439", "1920649439", "Swamp_H2_CTP_010_Main", "box_MultipleOR_31.Out", "box_SetActivityFact_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_40_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_52;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1427896639", "1427896639", "Swamp_H2_CTP_010_Main", "box_MissionBlockLayer_40.Activated", "box_MultipleOR_52.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MissionBlockLayer_3_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1186203405", "1186203405", "Swamp_H2_CTP_010_Main", "box_MissionBlockLayer_3.Activated", "box_MultipleOR_16.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MissionBlockLayer_58_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_42();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|838198034", "838198034", "Swamp_H2_CTP_010_Main", "box_MissionBlockLayer_58.Activated", "box_MissionBlockLayer_42.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_10_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_10_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_13();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|416746861", "416746861", "Swamp_H2_CTP_010_Main", "box_SetInteger_v2_10.Out", "box_SetInteger_v2_13.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_16_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_29();
    l0 = self.box_MultipleOR_16;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1611048123", "1611048123", "Swamp_H2_CTP_010_Main", "box_MultipleOR_16.Out", "box_OutputOrder_v2_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_17_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_20();
    l0 = self.box_IndexList_v2_17;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1279458798", "1279458798", "Swamp_H2_CTP_010_Main", "box_IndexList_v2_17.Output", "box_SetActivityFact_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_17_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_19();
    l0 = self.box_IndexList_v2_17;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|2003810677", "2003810677", "Swamp_H2_CTP_010_Main", "box_IndexList_v2_17.Output", "box_SetActivityFact_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_17_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_21();
    l0 = self.box_IndexList_v2_17;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|129674091", "129674091", "Swamp_H2_CTP_010_Main", "box_IndexList_v2_17.Output", "box_SetActivityFact_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_BasicSetups_186_Out()
    local params, l0, l1;
    self:OnExit_box_Brick_Exp_Common_BasicSetups_186_Out();
    params = self:OnEnter_box_IndexList_v2_8();
    l0 = self.box_Brick_Exp_Common_BasicSetups_186;
    l1 = self.box_IndexList_v2_8;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1446394360", "1446394360", "Swamp_H2_CTP_010_Main", "box_Brick_Exp_Common_BasicSetups_186.Out", "box_IndexList_v2_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SetEntity_v2_2_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_2_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_117();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1260470797", "1260470797", "Swamp_H2_CTP_010_Main", "box_SetEntity_v2_2.Out", "box_MissionBlockLayer_117.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_59_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_46();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|672317617", "672317617", "Swamp_H2_CTP_010_Main", "box_MissionBlockLayer_59.Activated", "box_MissionBlockLayer_46.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_MainBeat_Pkg_199_PackagePicked()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = self.box_Brick_Exp_MainBeat_Pkg_199;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1010441861", "1010441861", "Swamp_H2_CTP_010_Main", "box_Brick_Exp_MainBeat_Pkg_199.PackagePicked", "box_OutputOrder_v2_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_46_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|724653982", "724653982", "Swamp_H2_CTP_010_Main", "box_MissionBlockLayer_46.Activated", "box_MultipleOR_32.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_NarrativeFade_43_FadedOut()
    local l0, l1;
    l0 = self.box_NarrativeFade_43;
    l1 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|841023909", "841023909", "Swamp_H2_CTP_010_Main", "box_NarrativeFade_43.FadedOut", "box_MultipleOR_18.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MissionBlockLayer_55_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_4();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|2084012513", "2084012513", "Swamp_H2_CTP_010_Main", "box_MissionBlockLayer_55.Activated", "box_MissionBlockLayer_4.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_57_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_39();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|638406156", "638406156", "Swamp_H2_CTP_010_Main", "box_MissionBlockLayer_57.Activated", "box_MissionBlockLayer_39.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_18_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_BasicSetups_186();
    l0 = self.box_MultipleOR_18;
    l1 = self.box_Brick_Exp_Common_BasicSetups_186;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1764173732", "1764173732", "Swamp_H2_CTP_010_Main", "box_MultipleOR_18.Out", "box_Brick_Exp_Common_BasicSetups_186.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_61_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_34();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|850718158", "850718158", "Swamp_H2_CTP_010_Main", "box_MissionBlockLayer_61.Activated", "box_MissionBlockLayer_34.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_SpawnFrom_RandomizationDatabase_196_All_Entities_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_6();
    l0 = self.box_Brick_Exp_SpawnFrom_RandomizationDatabase_196;
    l1 = self.box_SpawnAI_6;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|199464198", "199464198", "Swamp_H2_CTP_010_Main", "box_Brick_Exp_SpawnFrom_RandomizationDatabase_196.All Entities Spawned", "box_SpawnAI_6.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_117_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_3();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|251911566", "251911566", "Swamp_H2_CTP_010_Main", "box_MissionBlockLayer_117.Activated", "box_MissionBlockLayer_3.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_29_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_51();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|510581757", "510581757", "Swamp_H2_CTP_010_Main", "box_OutputOrder_v2_29.Out", "box_Compare_Integers_51.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_29_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_23();
    l0 = self.box_IndexList_v2_23;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|2112320266", "2112320266", "Swamp_H2_CTP_010_Main", "box_OutputOrder_v2_29.Out", "box_IndexList_v2_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_IndexList_v2_23_Output_0()
    local l0, l1;
    l0 = self.box_IndexList_v2_23;
    l1 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|512486059", "512486059", "Swamp_H2_CTP_010_Main", "box_IndexList_v2_23.Output", "box_MultipleOR_26.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IndexList_v2_23_Output_1()
    local l0, l1;
    l0 = self.box_IndexList_v2_23;
    l1 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1169352796", "1169352796", "Swamp_H2_CTP_010_Main", "box_IndexList_v2_23.Output", "box_MultipleOR_26.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IndexList_v2_23_Output_2()
    local l0, l1;
    l0 = self.box_IndexList_v2_23;
    l1 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|758838859", "758838859", "Swamp_H2_CTP_010_Main", "box_IndexList_v2_23.Output", "box_MultipleOR_30.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IndexList_v2_23_Output_3()
    local l0, l1;
    l0 = self.box_IndexList_v2_23;
    l1 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1182185482", "1182185482", "Swamp_H2_CTP_010_Main", "box_IndexList_v2_23.Output", "box_MultipleOR_30.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IndexList_v2_23_Output_4()
    local l0, l1;
    l0 = self.box_IndexList_v2_23;
    l1 = self.box_MultipleOR_31;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|2039982926", "2039982926", "Swamp_H2_CTP_010_Main", "box_IndexList_v2_23.Output", "box_MultipleOR_31.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IndexList_v2_23_Output_5()
    local l0, l1;
    l0 = self.box_IndexList_v2_23;
    l1 = self.box_MultipleOR_31;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|208326599", "208326599", "Swamp_H2_CTP_010_Main", "box_IndexList_v2_23.Output", "box_MultipleOR_31.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MissionBlockLayer_45_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_44;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1475175456", "1475175456", "Swamp_H2_CTP_010_Main", "box_MissionBlockLayer_45.Activated", "box_MultipleOR_44.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MissionBlockLayer_41_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_52;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|56839597", "56839597", "Swamp_H2_CTP_010_Main", "box_MissionBlockLayer_41.Activated", "box_MultipleOR_52.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_MissionBlockLayer_22_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_7();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1916516358", "1916516358", "Swamp_H2_CTP_010_Main", "box_MissionBlockLayer_22.Activated", "box_MissionBlockLayer_7.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_13_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_13_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_12();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1618858986", "1618858986", "Swamp_H2_CTP_010_Main", "box_SetInteger_v2_13.Out", "box_SetInteger_v2_12.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_51_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_53();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|336453108", "336453108", "Swamp_H2_CTP_010_Main", "box_Compare_Integers_51.A_eq_B", "box_MissionBlockLayer_53.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_51_A_gt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_33();
    l0 = self.box_IndexList_v2_33;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|797839091", "797839091", "Swamp_H2_CTP_010_Main", "box_Compare_Integers_51.A_gt_B", "box_IndexList_v2_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Compare_Integers_51_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_57();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1759969749", "1759969749", "Swamp_H2_CTP_010_Main", "box_Compare_Integers_51.A_lt_B", "box_MissionBlockLayer_57.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_63_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_MainBeat_Pkg_199();
    l0 = self.box_Brick_Exp_MainBeat_Pkg_199;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|410335993", "410335993", "Swamp_H2_CTP_010_Main", "box_OutputOrder_v2_63.Out", "box_Brick_Exp_MainBeat_Pkg_199.Initialize_Wild", clone:GetLuaBox(), l0:GetLuaBox());
    -- Initialize_Wild
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_63_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_62();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1388165175", "1388165175", "Swamp_H2_CTP_010_Main", "box_OutputOrder_v2_63.Out", "box_MissionBlockLayer_62.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_MainBeat_Helicopter_v2_9_Spawned()
    local l0, l1;
    l0 = self.box_Brick_Exp_MainBeat_Helicopter_v2_9;
    l1 = self.box_ActivityInitialized_27;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|966967458", "966967458", "Swamp_H2_CTP_010_Main", "box_Brick_Exp_MainBeat_Helicopter_v2_9.Spawned", "box_ActivityInitialized_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_ActivityAcknowledgeGate_38_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_38;
    l1 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1571115415", "1571115415", "Swamp_H2_CTP_010_Main", "box_ActivityAcknowledgeGate_38.Acknowledged", "box_MultipleOR_18.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_38_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_43();
    l0 = self.box_ActivityAcknowledgeGate_38;
    l1 = self.box_NarrativeFade_43;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|2084478267", "2084478267", "Swamp_H2_CTP_010_Main", "box_ActivityAcknowledgeGate_38.Reloaded", "box_NarrativeFade_43.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_36_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|173941230", "173941230", "Swamp_H2_CTP_010_Main", "box_MissionBlockLayer_36.Activated", "box_MultipleOR_32.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetInteger_v2_12_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_12_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_1();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|289409948", "289409948", "Swamp_H2_CTP_010_Main", "box_SetInteger_v2_12.Out", "box_SetEntity_v2_1.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_33_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_58();
    l0 = self.box_IndexList_v2_33;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|276046546", "276046546", "Swamp_H2_CTP_010_Main", "box_IndexList_v2_33.Output", "box_MissionBlockLayer_58.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_33_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_59();
    l0 = self.box_IndexList_v2_33;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|311619749", "311619749", "Swamp_H2_CTP_010_Main", "box_IndexList_v2_33.Output", "box_MissionBlockLayer_59.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_33_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_61();
    l0 = self.box_IndexList_v2_33;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1403375556", "1403375556", "Swamp_H2_CTP_010_Main", "box_IndexList_v2_33.Output", "box_MissionBlockLayer_61.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_33_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_60();
    l0 = self.box_IndexList_v2_33;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|661329898", "661329898", "Swamp_H2_CTP_010_Main", "box_IndexList_v2_33.Output", "box_MissionBlockLayer_60.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_33_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_54();
    l0 = self.box_IndexList_v2_33;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1692056266", "1692056266", "Swamp_H2_CTP_010_Main", "box_IndexList_v2_33.Output", "box_MissionBlockLayer_54.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_33_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_56();
    l0 = self.box_IndexList_v2_33;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1643092187", "1643092187", "Swamp_H2_CTP_010_Main", "box_IndexList_v2_33.Output", "box_MissionBlockLayer_56.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_35_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_49;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1334097400", "1334097400", "Swamp_H2_CTP_010_Main", "box_MissionBlockLayer_35.Activated", "box_MultipleOR_49.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MissionBlockLayer_4_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|151996239", "151996239", "Swamp_H2_CTP_010_Main", "box_MissionBlockLayer_4.Activated", "box_MultipleOR_16.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MissionBlockLayer_34_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_49;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1358982441", "1358982441", "Swamp_H2_CTP_010_Main", "box_MissionBlockLayer_34.Activated", "box_MultipleOR_49.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MissionBlockLayer_53_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_36();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|315516535", "315516535", "Swamp_H2_CTP_010_Main", "box_MissionBlockLayer_53.Activated", "box_MissionBlockLayer_36.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_60_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_35();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|378078379", "378078379", "Swamp_H2_CTP_010_Main", "box_MissionBlockLayer_60.Activated", "box_MissionBlockLayer_35.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_8_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_14();
    l0 = self.box_IndexList_v2_8;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1375522101", "1375522101", "Swamp_H2_CTP_010_Main", "box_IndexList_v2_8.Output", "box_SetInteger_v2_14.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_8_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_10();
    l0 = self.box_IndexList_v2_8;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|958769221", "958769221", "Swamp_H2_CTP_010_Main", "box_IndexList_v2_8.Output", "box_SetInteger_v2_10.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_8_Output_2()
    local l0, l1;
    l0 = self.box_IndexList_v2_8;
    l1 = self.box_Brick_Exp_SpawnFrom_RandomizationDatabase_196;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|260889533", "260889533", "Swamp_H2_CTP_010_Main", "box_IndexList_v2_8.Output", "box_Brick_Exp_SpawnFrom_RandomizationDatabase_196.Spawn Entities from Database", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn Entities from Database
    l1:Exec(1, {
    });
end;

function export:f_box_ActivityInitialized_27_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityForceAndLockTracking_198();
    l0 = self.box_ActivityInitialized_27;
    l1 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1449624943", "1449624943", "Swamp_H2_CTP_010_Main", "box_ActivityInitialized_27.Out", "box_ActivityForceAndLockTracking_198.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_7_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1443959912", "1443959912", "Swamp_H2_CTP_010_Main", "box_MissionBlockLayer_7.Activated", "box_MultipleOR_16.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_SetInteger_v2_11_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_11_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_15();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|701329681", "701329681", "Swamp_H2_CTP_010_Main", "box_SetInteger_v2_11.Out", "box_SetInteger_v2_15.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_32_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_40();
    l0 = self.box_MultipleOR_32;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|197101148", "197101148", "Swamp_H2_CTP_010_Main", "box_MultipleOR_32.Out", "box_MissionBlockLayer_40.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_26_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_24();
    l0 = self.box_MultipleOR_26;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|644748585", "644748585", "Swamp_H2_CTP_010_Main", "box_MultipleOR_26.Out", "box_SetActivityFact_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_42_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|110850090", "110850090", "Swamp_H2_CTP_010_Main", "box_MissionBlockLayer_42.Activated", "box_MultipleOR_32.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MissionBlockLayer_47_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_44;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|35575120", "35575120", "Swamp_H2_CTP_010_Main", "box_MissionBlockLayer_47.Activated", "box_MultipleOR_44.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_22();
    l0 = self.box_SpawnAI_6;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|14930747", "14930747", "Swamp_H2_CTP_010_Main", "box_SpawnAI_6.Out", "box_MissionBlockLayer_22.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityForceAndLockTracking_198_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_63();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1742205010", "1742205010", "Swamp_H2_CTP_010_Main", "box_ActivityForceAndLockTracking_198.Enabled", "box_OutputOrder_v2_63.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_50_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_52;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1122229640", "1122229640", "Swamp_H2_CTP_010_Main", "box_MissionBlockLayer_50.Activated", "box_MultipleOR_52.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MultipleOR_44_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_41();
    l0 = self.box_MultipleOR_44;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1785038414", "1785038414", "Swamp_H2_CTP_010_Main", "box_MultipleOR_44.Out", "box_MissionBlockLayer_41.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_30_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_28();
    l0 = self.box_MultipleOR_30;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1570957977", "1570957977", "Swamp_H2_CTP_010_Main", "box_MultipleOR_30.Out", "box_SetActivityFact_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_SetActivityFact_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|19057278");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "H2_CTP_010_B20_A_Start",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|83583692");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_15_Out,
    });
    params = {
        -- Integer,
        [1] = 1,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|119849518");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_1_Out,
    });
    params = {
        -- Entity,
        [0] = "2108194326872853749",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|122060642");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_39_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "243333088036295784",
        -- missionLayerId,
        [1] = "27160323780019865",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|300244734");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_37_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160314102598852",
        -- missionLayerId,
        [1] = "36167523154927760",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|390456347");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_56_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160314102598852",
        -- missionLayerId,
        [1] = "54181922473661606",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|435212102");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|441193994");
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
                [1] = self.f_box_OutputOrder_v2_5_Out_1,
                [2] = self.f_box_OutputOrder_v2_5_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|454191484");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_54_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160314102598852",
        -- missionLayerId,
        [1] = "63189121728408522",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|462423685");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_14_Out,
    });
    params = {
        -- Integer,
        [1] = 3,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|508186112");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_40_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160314102598852",
        -- missionLayerId,
        [1] = "27160323900167600",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|656751903");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_3_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160315017969137",
        -- missionLayerId,
        [1] = "45174713527642224",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|662641582");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_58_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160314102598852",
        -- missionLayerId,
        [1] = "27160324709406247",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|669545102");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_10_Out,
    });
    params = {
        -- Integer,
        [1] = 2,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|697326049");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "package_body",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_17()
    local params;
    params = {
        -- Index,
        [0] = self.iExtractionPOIIndex,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_BasicSetups_186()
    local params;
    params = {
        -- DebugMode,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|801076064");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_2_Out,
    });
    params = {
        -- Entity,
        [0] = "2108194382944406828",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|813410783");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_59_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160314102598852",
        -- missionLayerId,
        [1] = "27160324709406247",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_MainBeat_Pkg_199()
    local params;
    params = {
        -- CloseRangeDiscoveryShape_A,
        [0] = "2108230981608542172",
        -- CloseRangeDiscoveryShape_B,
        [1] = "2108231007611129822",
        -- CloseRangeDiscoveryShape_C,
        [2] = "2108231013590110175",
        -- CloseRangeDiscoveryShape_D,
        [3] = "2108231023698382817",
        -- CloseRangeDiscoveryShape_E,
        [4] = "2108230971642875867",
        -- CloseRangeDiscoveryShape_F,
        [5] = "2108231056338456547",
        -- PackagePositionID,
        [6] = self.iPackagePositionID,
        -- PackageSpawner_Variable,
        [7] = Globals.Swamp_H2_CTP_010_Main.iPackageSpawner,
        -- PkgPickedUpFactToStartCS,
        [8] = "package_pickedup",
        -- PlayMusicEvent,
        [9] = "2226418254",
        -- SearchZoneMarker_A,
        [10] = "2108194326872853751",
        -- SearchZoneMarker_B,
        [11] = "2108194336104516869",
        -- SearchZoneMarker_C,
        [12] = "2108194359861054752",
        -- SearchZoneMarker_D,
        [13] = "2108194382944406830",
        -- SearchZoneMarker_E,
        [14] = "2108194162500176969",
        -- SearchZoneMarker_F,
        [15] = "2108194267680738468",
        -- StopMusicEvent,
        [16] = "2794462597",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|904520649");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_46_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "243333088036295784",
        -- missionLayerId,
        [1] = "54181921544575649",
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_43()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|925683929");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_55_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160314102598852",
        -- missionLayerId,
        [1] = "45174712612143010",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|929389542");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_57_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160314102598852",
        -- missionLayerId,
        [1] = "36167523964164453",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|962182200");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160314102598852",
        -- missionLayerId,
        [1] = "27160326191808933",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1025906828");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_61_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160314102598852",
        -- missionLayerId,
        [1] = "45174723218912012",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_117()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_117");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1040028997");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_117_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160314102598852",
        -- missionLayerId,
        [1] = "36167513357339845",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1046201142");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "H2_CTP_010_B20_B_Start",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1049891535");
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
                [0] = self.f_box_OutputOrder_v2_29_Out_0,
                [1] = self.f_box_OutputOrder_v2_29_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_23()
    local params;
    params = {
        -- Index,
        [0] = self.iPackagePositionID,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1144060681");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_45_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "243333088036295784",
        -- missionLayerId,
        [1] = "81203519308837330",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1184333267");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_41_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160314102598852",
        -- missionLayerId,
        [1] = "45174722409678132",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1202624297");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_22_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160314102598852",
        -- missionLayerId,
        [1] = "27160318120464716",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1258816857");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "H2_CTP_010_B20_C_Start",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1275352847");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_13_Out,
    });
    params = {
        -- Integer,
        [1] = 1,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1328749944");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_51_A_eq_B,
        -- A_gt_B,
        [2] = self.f_box_Compare_Integers_51_A_gt_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_51_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.iDifficulty,
        -- B,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1368135675");
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

function export:OnEnter_box_Brick_Exp_MainBeat_Helicopter_v2_9()
    local params;
    params = {
        -- EnemyGroup,
        [0] = "#28DE7AF2",
        -- ForceDespawnTimer,
        [1] = 45,
        -- HelicopterSpawner_A,
        [3] = "2108317642791063917",
        -- HelicopterSpawner_B,
        [4] = "2108317508416049227",
        -- HelicopterSpawner_C,
        [5] = "2108317304642080380",
        -- PlayerSpawnPOIIndex,
        [6] = self.iPlayerSpawnPOIIndex,
        -- STP_HelicopterLeave_A,
        [7] = "2108414171528826848",
        -- STP_HelicopterLeave_B,
        [8] = "2108414374340203174",
        -- STP_HelicopterLeave_C,
        [9] = "2108414741218072043",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1455842951");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_36_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "243333088036295784",
        -- missionLayerId,
        [1] = "36167523034810871",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1458286850");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_12_Out,
    });
    params = {
        -- Integer,
        [1] = 3,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_33()
    local params;
    params = {
        -- Index,
        [0] = self.iPackagePositionID,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1631633360");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_35_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "243333088036295784",
        -- missionLayerId,
        [1] = "63189120799326216",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1696495755");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_4_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160315017969137",
        -- missionLayerId,
        [1] = "54181912782409849",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1706395136");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_34_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "243333088036295784",
        -- missionLayerId,
        [1] = "72196320054078006",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1760839636");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_53_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160314102598852",
        -- missionLayerId,
        [1] = "27160324709406247",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1783448896");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_60_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160314102598852",
        -- missionLayerId,
        [1] = "36167523964164453",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_8()
    local params;
    params = {
        -- Index,
        [0] = self.iDifficulty,
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1795702044");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "package_camp",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1812068865");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "package_tail",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1823814073");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_7_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160315017969137",
        -- missionLayerId,
        [1] = "63189112037162261",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1853691572");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_11_Out,
    });
    params = {
        -- Integer,
        [1] = 4,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1897002398");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_42_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "243333088036295784",
        -- missionLayerId,
        [1] = "45174722289816954",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|1944217311");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_47_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "243333088036295784",
        -- missionLayerId,
        [1] = "90210718563587429",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_6()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109064316046029099",
    };
    return params;
end;

function export:OnEnter_box_ActivityForceAndLockTracking_198()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityForceAndLockTracking_198");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|2045231234");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityForceAndLockTracking_198_Enabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\H2\\Swamp_H2_CTP_010_Main.domino|@Swamp_H2_CTP_010_Main|2069649774");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_50_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160314102598852",
        -- missionLayerId,
        [1] = "36167523154927760",
    };
    return params;
end;

function export:OnExit_box_SetInteger_v2_15_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iExtractionPOIIndex = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_1_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    Globals.Swamp_H2_CTP_010_Main.iPackageSpawner = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_14_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iPlayerSpawnPOIIndex = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_10_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iPlayerSpawnPOIIndex = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_Exp_Common_BasicSetups_186_Out()
    local l0;
    l0 = self.box_Brick_Exp_Common_BasicSetups_186;
    self.iDifficulty = l0:GetDataOutValue(0);
    self.iPlayerSpawnPOIIndex = l0:GetDataOutValue(4);
    self.iExtractionPOIIndex = l0:GetDataOutValue(1);
    self.iPackagePositionID = l0:GetDataOutValue(2);
    Globals.Swamp_H2_CTP_010_Main.iPackageSpawner = l0:GetDataOutValue(3);
end;

function export:OnExit_box_SetEntity_v2_2_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    Globals.Swamp_H2_CTP_010_Main.iPackageSpawner = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_13_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iPackagePositionID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_12_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iExtractionPOIIndex = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_11_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iPackagePositionID = l0:GetDataOutValue(0);
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
