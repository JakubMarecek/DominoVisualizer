LUACK -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_coast/expeditions/c7/coast_c7_ctp_010_main.domino
-- User graph: Coast_C7_CTP_010_Main
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
        cboxRes:RegisterBox("Domino/System/IndexList_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetInteger_v2.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Main.Coast_C7_CTP_010_ContextualActions.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Main.Coast_C7_CTP_010_GameplayObjects.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Main.Coast_C7_CTP_010_Initial_NPC_Setup.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Main.Coast_C7_CTP_010_Initial_Setup.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Main.Coast_C7_CTP_010_Initial_Vehicle_Setup.debug.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Main.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[252127088.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2555049655.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.Coast_C7_CTP_010_Main = nil;
    Globals.Coast_C7_CTP_010_Main = {
        iC7Difficulty = 0,
        iDifficulty = 0,
        iPlayerSpawnPOIIndex = 0,
        iExtractionPOIID = 0,
        iPackagePositionID = 0,
        ePackageSpawner_OBSOLETEEEEEEEEE = nil,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Main.Coast_C7_CTP_010_Main.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Main.Coast_C7_CTP_010_ContextualActions.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "Navlink_Vehicle_Jump",
            },
            [2] = {
                name = "Set_WatchingFight_STP",
            },
            [3] = {
                name = "Switch_CS_RaceCars_PKG_D",
            },
            [4] = {
                name = "Switch_CS_RaceCars_PKG_F",
            },
        },
        controlInCount = 5,
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
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Main.Coast_C7_CTP_010_GameplayObjects.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Expert",
            },
            [1] = {
                name = "Extraction_ExplosiveBarrels",
            },
            [2] = {
                name = "Hard",
            },
            [3] = {
                name = "Normal",
            },
            [4] = {
                name = "Set_PKG_A",
            },
            [5] = {
                name = "Set_PKG_B",
            },
            [6] = {
                name = "Set_PKG_C",
            },
            [7] = {
                name = "Set_PKG_D",
            },
            [8] = {
                name = "Set_PKG_E",
            },
            [9] = {
                name = "Set_PKG_F",
            },
        },
        controlInCount = 10,
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
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Main.Coast_C7_CTP_010_Initial_NPC_Setup.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "NPC_Package_A_Bridge",
            },
            [1] = {
                name = "NPC_Package_B_Camp_I_Working",
            },
            [2] = {
                name = "NPC_Package_C_Camp_II_Storage",
            },
            [3] = {
                name = "NPC_Package_D_Hangar_I_Bar",
            },
            [4] = {
                name = "NPC_Package_E_Hangar_II_Chillout",
            },
            [5] = {
                name = "NPC_Package_F_RaceDeck",
            },
        },
        controlInCount = 6,
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
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Main.Coast_C7_CTP_010_Initial_Setup.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Package_Area_VFX",
            },
            [1] = {
                name = "Package_Flare_Setup",
            },
            [2] = {
                name = "Set_STP_Normal_Only",
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
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Main.Coast_C7_CTP_010_Initial_Vehicle_Setup.debug.lua")] = {
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
end;

function export:Init(cbox)
    local l0;
    self._name = "Coast_C7_CTP_010_Main";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main";
    self.PlayerPosition = "";
    self.box_NarrativeFade_40 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|157726914");
    l0:SetConnections({
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_40_FadedOut,
    });
    self.box_Coast_C7_CTP_010_Initial_Setup_21 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Main.Coast_C7_CTP_010_Initial_Setup.debug.lua");
    l0 = self.box_Coast_C7_CTP_010_Initial_Setup_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Coast_C7_CTP_010_Initial_Setup_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|390703207");
    l0:SetConnections({
    });
    self.box_Brick_Exp_MainBeat_Pkg_15 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_MainBeat_Pkg.debug.lua");
    l0 = self.box_Brick_Exp_MainBeat_Pkg_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_MainBeat_Pkg_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|422580613");
    l0:SetConnections({
        -- Initialized,
        [0] = self.f_box_Brick_Exp_MainBeat_Pkg_15_Initialized,
        -- PackagePicked,
        [1] = self.f_box_Brick_Exp_MainBeat_Pkg_15_PackagePicked,
    });
    self.box_ActivityAcknowledgeGate_32 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|438880061");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_32_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_32_Reloaded,
    });
    self.box_Brick_Exp_SpawnFrom_RandomizationDatabase_17 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Randomization.Brick_Exp_SpawnFrom_RandomizationDatabase.debug.lua");
    l0 = self.box_Brick_Exp_SpawnFrom_RandomizationDatabase_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_SpawnFrom_RandomizationDatabase_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|523072847");
    l0:SetConnections({
        -- All Entities Spawned,
        [0] = self.f_box_Brick_Exp_SpawnFrom_RandomizationDatabase_17_All_Entities_Spawned,
    });
    self.box_IndexList_v2_12 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|524031786");
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
                [0] = self.f_box_IndexList_v2_12_Output_0,
                [1] = self.f_box_IndexList_v2_12_Output_1,
                [2] = self.f_box_IndexList_v2_12_Output_2,
            },
            count = 3,
        },
    });
    self.box_Coast_C7_CTP_010_Initial_Setup_9 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Main.Coast_C7_CTP_010_Initial_Setup.debug.lua");
    l0 = self.box_Coast_C7_CTP_010_Initial_Setup_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Coast_C7_CTP_010_Initial_Setup_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|959698888");
    l0:SetConnections({
    });
    self.box_MultipleOR_29 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|978898982");
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
        [0] = self.f_box_MultipleOR_29_Out,
    });
    self.box_Coast_C7_CTP_010_Initial_Vehicle_Setup_24 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Main.Coast_C7_CTP_010_Initial_Vehicle_Setup.debug.lua");
    l0 = self.box_Coast_C7_CTP_010_Initial_Vehicle_Setup_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Coast_C7_CTP_010_Initial_Vehicle_Setup_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|986552145");
    l0:SetConnections({
    });
    self.box_Coast_C7_CTP_010_GameplayObjects_35 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Main.Coast_C7_CTP_010_GameplayObjects.debug.lua");
    l0 = self.box_Coast_C7_CTP_010_GameplayObjects_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Coast_C7_CTP_010_GameplayObjects_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|1013281620");
    l0:SetConnections({
    });
    self.box_Coast_C7_CTP_010_ContextualActions_28 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Main.Coast_C7_CTP_010_ContextualActions.debug.lua");
    l0 = self.box_Coast_C7_CTP_010_ContextualActions_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Coast_C7_CTP_010_ContextualActions_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|1141403640");
    l0:SetConnections({
    });
    self.box_Coast_C7_CTP_010_Initial_NPC_Setup_18 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Main.Coast_C7_CTP_010_Initial_NPC_Setup.debug.lua");
    l0 = self.box_Coast_C7_CTP_010_Initial_NPC_Setup_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Coast_C7_CTP_010_Initial_NPC_Setup_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|1293209082");
    l0:SetConnections({
    });
    self.box_Coast_C7_CTP_010_GameplayObjects_11 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Main.Coast_C7_CTP_010_GameplayObjects.debug.lua");
    l0 = self.box_Coast_C7_CTP_010_GameplayObjects_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Coast_C7_CTP_010_GameplayObjects_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|1388300355");
    l0:SetConnections({
    });
    self.box_Brick_Exp_MainBeat_Helicopter_v2_44 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_MainBeat_Helicopter_v2.debug.lua");
    l0 = self.box_Brick_Exp_MainBeat_Helicopter_v2_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_MainBeat_Helicopter_v2_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|1416367439");
    l0:SetConnections({
        -- Spawned,
        [0] = self.f_box_Brick_Exp_MainBeat_Helicopter_v2_44_Spawned,
    });
    self.box_Brick_Exp_Common_BasicSetups_25 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_BasicSetups.debug.lua");
    l0 = self.box_Brick_Exp_Common_BasicSetups_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_BasicSetups_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|1671262081");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Brick_Exp_Common_BasicSetups_25_Out,
    });
    self.box_IndexList_v2_13 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|1874622127");
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
                [0] = self.f_box_IndexList_v2_13_Output_0,
                [1] = self.f_box_IndexList_v2_13_Output_1,
                [2] = self.f_box_IndexList_v2_13_Output_2,
                [3] = self.f_box_IndexList_v2_13_Output_3,
                [4] = self.f_box_IndexList_v2_13_Output_4,
                [5] = self.f_box_IndexList_v2_13_Output_5,
            },
            count = 6,
        },
    });
    self.box_IndexList_v2_3 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|1946138878");
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
                [0] = self.f_box_IndexList_v2_3_Output_0,
                [1] = self.f_box_IndexList_v2_3_Output_1,
                [2] = self.f_box_IndexList_v2_3_Output_2,
            },
            count = 3,
        },
    });
    self.box_IndexList_v2_14 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|1973160241");
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
                [0] = self.f_box_IndexList_v2_14_Output_0,
                [1] = self.f_box_IndexList_v2_14_Output_1,
                [2] = self.f_box_IndexList_v2_14_Output_2,
                [3] = self.f_box_IndexList_v2_14_Output_3,
                [4] = self.f_box_IndexList_v2_14_Output_4,
                [5] = self.f_box_IndexList_v2_14_Output_5,
            },
            count = 6,
        },
    });
    self.box_ActivityInitialized_36 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|2019556503");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_36_Out,
    });
    self.box_Coast_C7_CTP_010_Initial_Setup_22 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Main.Coast_C7_CTP_010_Initial_Setup.debug.lua");
    l0 = self.box_Coast_C7_CTP_010_Initial_Setup_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Coast_C7_CTP_010_Initial_Setup_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|2060242479");
    l0:SetConnections({
    });
    self.box_MultipleOR_33 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|2093010363");
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
    self.box_IndexList_v2_20 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|2133770069");
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
                [0] = self.f_box_IndexList_v2_20_Output_0,
                [1] = self.f_box_IndexList_v2_20_Output_1,
                [2] = self.f_box_IndexList_v2_20_Output_2,
            },
            count = 3,
        },
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_32;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|917718926", "917718926", "Coast_C7_CTP_010_Main", "In", "box_ActivityAcknowledgeGate_32.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_SetInteger_v2_26_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_26_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_10();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|77641434", "77641434", "Coast_C7_CTP_010_Main", "box_SetInteger_v2_26.Out", "box_SetInteger_v2_10.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_30_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_Coast_C7_CTP_010_Initial_Setup_21;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|758296785", "758296785", "Coast_C7_CTP_010_Main", "box_OutputOrder_v2_30.Out", "box_Coast_C7_CTP_010_Initial_Setup_21.Package_Flare_Setup", clone:GetLuaBox(), l0:GetLuaBox());
    -- Package_Flare_Setup
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_30_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_Coast_C7_CTP_010_Initial_Setup_22;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|25458566", "25458566", "Coast_C7_CTP_010_Main", "box_OutputOrder_v2_30.Out", "box_Coast_C7_CTP_010_Initial_Setup_22.Package_Area_VFX", clone:GetLuaBox(), l0:GetLuaBox());
    -- Package_Area_VFX
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_30_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_Coast_C7_CTP_010_Initial_Setup_9;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|2039440852", "2039440852", "Coast_C7_CTP_010_Main", "box_OutputOrder_v2_30.Out", "box_Coast_C7_CTP_010_Initial_Setup_9.Set_STP_Normal_Only", clone:GetLuaBox(), l0:GetLuaBox());
    -- Set_STP_Normal_Only
    l0:Exec(2, {
    });
end;

function export:f_box_OutputOrder_v2_30_Out_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_Coast_C7_CTP_010_Initial_Vehicle_Setup_24;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|1913030424", "1913030424", "Coast_C7_CTP_010_Main", "box_OutputOrder_v2_30.Out", "box_Coast_C7_CTP_010_Initial_Vehicle_Setup_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_30_Out_4()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_Coast_C7_CTP_010_GameplayObjects_35;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|460792335", "460792335", "Coast_C7_CTP_010_Main", "box_OutputOrder_v2_30.Out", "box_Coast_C7_CTP_010_GameplayObjects_35.Extraction_ExplosiveBarrels", clone:GetLuaBox(), l0:GetLuaBox());
    -- Extraction_ExplosiveBarrels
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_30_Out_5()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_Coast_C7_CTP_010_ContextualActions_28;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|1171586177", "1171586177", "Coast_C7_CTP_010_Main", "box_OutputOrder_v2_30.Out", "box_Coast_C7_CTP_010_ContextualActions_28.Navlink_Vehicle_Jump", clone:GetLuaBox(), l0:GetLuaBox());
    -- Navlink_Vehicle_Jump
    l0:Exec(1, {
    });
end;

function export:f_box_NarrativeFade_40_FadedOut()
    local l0, l1;
    l0 = self.box_NarrativeFade_40;
    l1 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|2076972935", "2076972935", "Coast_C7_CTP_010_Main", "box_NarrativeFade_40.FadedOut", "box_MultipleOR_29.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_23_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_MainBeat_Pkg_15();
    l0 = self.box_Brick_Exp_MainBeat_Pkg_15;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|1860713471", "1860713471", "Coast_C7_CTP_010_Main", "box_OutputOrder_v2_23.Out", "box_Brick_Exp_MainBeat_Pkg_15.Initialize_Stronghold", clone:GetLuaBox(), l0:GetLuaBox());
    -- Initialize_Stronghold
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_23_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_19();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|1818631901", "1818631901", "Coast_C7_CTP_010_Main", "box_OutputOrder_v2_23.Out", "box_MissionBlockLayer_19.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_MainBeat_Pkg_15_Initialized()
    local params, l0, l1;
    params = self:OnEnter_box_IndexList_v2_13();
    l0 = self.box_Brick_Exp_MainBeat_Pkg_15;
    l1 = self.box_IndexList_v2_13;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|436834325", "436834325", "Coast_C7_CTP_010_Main", "box_Brick_Exp_MainBeat_Pkg_15.Initialized", "box_IndexList_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Brick_Exp_MainBeat_Pkg_15_PackagePicked()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_87();
    l0 = self.box_Brick_Exp_MainBeat_Pkg_15;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|631713607", "631713607", "Coast_C7_CTP_010_Main", "box_Brick_Exp_MainBeat_Pkg_15.PackagePicked", "box_ActivityEnd_87.EndNoSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndNoSave
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_32_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_32;
    l1 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|1485891672", "1485891672", "Coast_C7_CTP_010_Main", "box_ActivityAcknowledgeGate_32.Acknowledged", "box_MultipleOR_29.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_32_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_40();
    l0 = self.box_ActivityAcknowledgeGate_32;
    l1 = self.box_NarrativeFade_40;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|887386249", "887386249", "Coast_C7_CTP_010_Main", "box_ActivityAcknowledgeGate_32.Reloaded", "box_NarrativeFade_40.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_Brick_Exp_SpawnFrom_RandomizationDatabase_17_All_Entities_Spawned()
    local l0, l1;
    l0 = self.box_Brick_Exp_SpawnFrom_RandomizationDatabase_17;
    l1 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|565948517", "565948517", "Coast_C7_CTP_010_Main", "box_Brick_Exp_SpawnFrom_RandomizationDatabase_17.All Entities Spawned", "box_MultipleOR_33.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_IndexList_v2_12_Output_0()
    local l0, l1;
    l0 = self.box_IndexList_v2_12;
    l1 = self.box_Coast_C7_CTP_010_GameplayObjects_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|2110773732", "2110773732", "Coast_C7_CTP_010_Main", "box_IndexList_v2_12.Output", "box_Coast_C7_CTP_010_GameplayObjects_11.Normal", l0:GetLuaBox(), l1:GetLuaBox());
    -- Normal
    l1:Exec(3, {
    });
end;

function export:f_box_IndexList_v2_12_Output_1()
    local l0, l1;
    l0 = self.box_IndexList_v2_12;
    l1 = self.box_Coast_C7_CTP_010_GameplayObjects_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|914166947", "914166947", "Coast_C7_CTP_010_Main", "box_IndexList_v2_12.Output", "box_Coast_C7_CTP_010_GameplayObjects_11.Hard", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hard
    l1:Exec(2, {
    });
end;

function export:f_box_IndexList_v2_12_Output_2()
    local l0, l1;
    l0 = self.box_IndexList_v2_12;
    l1 = self.box_Coast_C7_CTP_010_GameplayObjects_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|755335724", "755335724", "Coast_C7_CTP_010_Main", "box_IndexList_v2_12.Output", "box_Coast_C7_CTP_010_GameplayObjects_11.Expert", l0:GetLuaBox(), l1:GetLuaBox());
    -- Expert
    l1:Exec(0, {
    });
end;

function export:f_box_SetInteger_v2_31_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_31_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_16();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|157036176", "157036176", "Coast_C7_CTP_010_Main", "box_SetInteger_v2_31.Out", "box_SetInteger_v2_16.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_29_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_BasicSetups_25();
    l0 = self.box_MultipleOR_29;
    l1 = self.box_Brick_Exp_Common_BasicSetups_25;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|845722807", "845722807", "Coast_C7_CTP_010_Main", "box_MultipleOR_29.Out", "box_Brick_Exp_Common_BasicSetups_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SetInteger_v2_27_Out()
    local l0;
    self:OnExit_box_SetInteger_v2_27_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|720648192", "720648192", "Coast_C7_CTP_010_Main", "box_SetInteger_v2_27.Out", "box_MultipleOR_33.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetEntity_v2_1_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_1_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_34();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|1571775930", "1571775930", "Coast_C7_CTP_010_Main", "box_SetEntity_v2_1.Out", "box_SetInteger_v2_34.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_MainBeat_Helicopter_v2_44_Spawned()
    local l0, l1;
    l0 = self.box_Brick_Exp_MainBeat_Helicopter_v2_44;
    l1 = self.box_ActivityInitialized_36;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|3628905", "3628905", "Coast_C7_CTP_010_Main", "box_Brick_Exp_MainBeat_Helicopter_v2_44.Spawned", "box_ActivityInitialized_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_SetInteger_v2_16_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_16_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_1();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|1858868685", "1858868685", "Coast_C7_CTP_010_Main", "box_SetInteger_v2_16.Out", "box_SetEntity_v2_1.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_34_Out()
    local l0;
    self:OnExit_box_SetInteger_v2_34_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|1228693061", "1228693061", "Coast_C7_CTP_010_Main", "box_SetInteger_v2_34.Out", "box_MultipleOR_33.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Exp_Common_BasicSetups_25_Out()
    local params, l0, l1;
    self:OnExit_box_Brick_Exp_Common_BasicSetups_25_Out();
    params = self:OnEnter_box_IndexList_v2_20();
    l0 = self.box_Brick_Exp_Common_BasicSetups_25;
    l1 = self.box_IndexList_v2_20;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|1366039674", "1366039674", "Coast_C7_CTP_010_Main", "box_Brick_Exp_Common_BasicSetups_25.Out", "box_IndexList_v2_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SetInteger_v2_10_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_10_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_7();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|1118939533", "1118939533", "Coast_C7_CTP_010_Main", "box_SetInteger_v2_10.Out", "box_SetEntity_v2_7.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_13_Output_0()
    local l0, l1;
    l0 = self.box_IndexList_v2_13;
    l1 = self.box_Coast_C7_CTP_010_Initial_NPC_Setup_18;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|66225078", "66225078", "Coast_C7_CTP_010_Main", "box_IndexList_v2_13.Output", "box_Coast_C7_CTP_010_Initial_NPC_Setup_18.NPC_Package_A_Bridge", l0:GetLuaBox(), l1:GetLuaBox());
    -- NPC_Package_A_Bridge
    l1:Exec(0, {
    });
end;

function export:f_box_IndexList_v2_13_Output_1()
    local l0, l1;
    l0 = self.box_IndexList_v2_13;
    l1 = self.box_Coast_C7_CTP_010_Initial_NPC_Setup_18;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|1338329819", "1338329819", "Coast_C7_CTP_010_Main", "box_IndexList_v2_13.Output", "box_Coast_C7_CTP_010_Initial_NPC_Setup_18.NPC_Package_B_Camp_I_Working", l0:GetLuaBox(), l1:GetLuaBox());
    -- NPC_Package_B_Camp_I_Working
    l1:Exec(1, {
    });
end;

function export:f_box_IndexList_v2_13_Output_2()
    local l0, l1;
    l0 = self.box_IndexList_v2_13;
    l1 = self.box_Coast_C7_CTP_010_Initial_NPC_Setup_18;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|1406282078", "1406282078", "Coast_C7_CTP_010_Main", "box_IndexList_v2_13.Output", "box_Coast_C7_CTP_010_Initial_NPC_Setup_18.NPC_Package_C_Camp_II_Storage", l0:GetLuaBox(), l1:GetLuaBox());
    -- NPC_Package_C_Camp_II_Storage
    l1:Exec(2, {
    });
end;

function export:f_box_IndexList_v2_13_Output_3()
    local l0, l1;
    l0 = self.box_IndexList_v2_13;
    l1 = self.box_Coast_C7_CTP_010_Initial_NPC_Setup_18;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|1467143404", "1467143404", "Coast_C7_CTP_010_Main", "box_IndexList_v2_13.Output", "box_Coast_C7_CTP_010_Initial_NPC_Setup_18.NPC_Package_D_Hangar_I_Bar", l0:GetLuaBox(), l1:GetLuaBox());
    -- NPC_Package_D_Hangar_I_Bar
    l1:Exec(3, {
    });
end;

function export:f_box_IndexList_v2_13_Output_4()
    local l0, l1;
    l0 = self.box_IndexList_v2_13;
    l1 = self.box_Coast_C7_CTP_010_Initial_NPC_Setup_18;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|308058215", "308058215", "Coast_C7_CTP_010_Main", "box_IndexList_v2_13.Output", "box_Coast_C7_CTP_010_Initial_NPC_Setup_18.NPC_Package_E_Hangar_II_Chillout", l0:GetLuaBox(), l1:GetLuaBox());
    -- NPC_Package_E_Hangar_II_Chillout
    l1:Exec(4, {
    });
end;

function export:f_box_IndexList_v2_13_Output_5()
    local l0, l1;
    l0 = self.box_IndexList_v2_13;
    l1 = self.box_Coast_C7_CTP_010_Initial_NPC_Setup_18;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|628486968", "628486968", "Coast_C7_CTP_010_Main", "box_IndexList_v2_13.Output", "box_Coast_C7_CTP_010_Initial_NPC_Setup_18.NPC_Package_F_RaceDeck", l0:GetLuaBox(), l1:GetLuaBox());
    -- NPC_Package_F_RaceDeck
    l1:Exec(5, {
    });
end;

function export:f_box_IndexList_v2_3_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_6();
    l0 = self.box_IndexList_v2_3;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|1283910771", "1283910771", "Coast_C7_CTP_010_Main", "box_IndexList_v2_3.Output", "box_SetActivityFact_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_3_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_5();
    l0 = self.box_IndexList_v2_3;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|1198998889", "1198998889", "Coast_C7_CTP_010_Main", "box_IndexList_v2_3.Output", "box_SetActivityFact_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_3_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_4();
    l0 = self.box_IndexList_v2_3;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|1375163255", "1375163255", "Coast_C7_CTP_010_Main", "box_IndexList_v2_3.Output", "box_SetActivityFact_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_14_Output_0()
    local l0, l1;
    l0 = self.box_IndexList_v2_14;
    l1 = self.box_Coast_C7_CTP_010_GameplayObjects_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|1434660398", "1434660398", "Coast_C7_CTP_010_Main", "box_IndexList_v2_14.Output", "box_Coast_C7_CTP_010_GameplayObjects_11.Set_PKG_A", l0:GetLuaBox(), l1:GetLuaBox());
    -- Set_PKG_A
    l1:Exec(4, {
    });
end;

function export:f_box_IndexList_v2_14_Output_1()
    local l0, l1;
    l0 = self.box_IndexList_v2_14;
    l1 = self.box_Coast_C7_CTP_010_GameplayObjects_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|769606325", "769606325", "Coast_C7_CTP_010_Main", "box_IndexList_v2_14.Output", "box_Coast_C7_CTP_010_GameplayObjects_11.Set_PKG_B", l0:GetLuaBox(), l1:GetLuaBox());
    -- Set_PKG_B
    l1:Exec(5, {
    });
end;

function export:f_box_IndexList_v2_14_Output_2()
    local l0, l1;
    l0 = self.box_IndexList_v2_14;
    l1 = self.box_Coast_C7_CTP_010_GameplayObjects_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|373958131", "373958131", "Coast_C7_CTP_010_Main", "box_IndexList_v2_14.Output", "box_Coast_C7_CTP_010_GameplayObjects_11.Set_PKG_C", l0:GetLuaBox(), l1:GetLuaBox());
    -- Set_PKG_C
    l1:Exec(6, {
    });
end;

function export:f_box_IndexList_v2_14_Output_3()
    local l0, l1;
    l0 = self.box_IndexList_v2_14;
    l1 = self.box_Coast_C7_CTP_010_GameplayObjects_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|53185016", "53185016", "Coast_C7_CTP_010_Main", "box_IndexList_v2_14.Output", "box_Coast_C7_CTP_010_GameplayObjects_11.Set_PKG_D", l0:GetLuaBox(), l1:GetLuaBox());
    -- Set_PKG_D
    l1:Exec(7, {
    });
end;

function export:f_box_IndexList_v2_14_Output_4()
    local l0, l1;
    l0 = self.box_IndexList_v2_14;
    l1 = self.box_Coast_C7_CTP_010_GameplayObjects_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|1303730307", "1303730307", "Coast_C7_CTP_010_Main", "box_IndexList_v2_14.Output", "box_Coast_C7_CTP_010_GameplayObjects_11.Set_PKG_E", l0:GetLuaBox(), l1:GetLuaBox());
    -- Set_PKG_E
    l1:Exec(8, {
    });
end;

function export:f_box_IndexList_v2_14_Output_5()
    local l0, l1;
    l0 = self.box_IndexList_v2_14;
    l1 = self.box_Coast_C7_CTP_010_GameplayObjects_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|877651450", "877651450", "Coast_C7_CTP_010_Main", "box_IndexList_v2_14.Output", "box_Coast_C7_CTP_010_GameplayObjects_11.Set_PKG_F", l0:GetLuaBox(), l1:GetLuaBox());
    -- Set_PKG_F
    l1:Exec(9, {
    });
end;

function export:f_box_ActivityInitialized_36_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_23();
    l0 = self.box_ActivityInitialized_36;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|1635024629", "1635024629", "Coast_C7_CTP_010_Main", "box_ActivityInitialized_36.Out", "box_OutputOrder_v2_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_2_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_MainBeat_Helicopter_v2_44();
    l0 = self.box_Brick_Exp_MainBeat_Helicopter_v2_44;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|739541641", "739541641", "Coast_C7_CTP_010_Main", "box_OutputOrder_v2_2.Out", "box_Brick_Exp_MainBeat_Helicopter_v2_44.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_2_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_3();
    l0 = self.box_IndexList_v2_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|1588995642", "1588995642", "Coast_C7_CTP_010_Main", "box_OutputOrder_v2_2.Out", "box_IndexList_v2_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_2_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_12();
    l0 = self.box_IndexList_v2_12;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|364918805", "364918805", "Coast_C7_CTP_010_Main", "box_OutputOrder_v2_2.Out", "box_IndexList_v2_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_2_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_14();
    l0 = self.box_IndexList_v2_14;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|2004357583", "2004357583", "Coast_C7_CTP_010_Main", "box_OutputOrder_v2_2.Out", "box_IndexList_v2_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_2_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_30();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|135906848", "135906848", "Coast_C7_CTP_010_Main", "box_OutputOrder_v2_2.Out", "box_OutputOrder_v2_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_7_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_7_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_27();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|892124003", "892124003", "Coast_C7_CTP_010_Main", "box_SetEntity_v2_7.Out", "box_SetInteger_v2_27.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_33_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_2();
    l0 = self.box_MultipleOR_33;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|1203142115", "1203142115", "Coast_C7_CTP_010_Main", "box_MultipleOR_33.Out", "box_OutputOrder_v2_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_20_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_31();
    l0 = self.box_IndexList_v2_20;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|2047857731", "2047857731", "Coast_C7_CTP_010_Main", "box_IndexList_v2_20.Output", "box_SetInteger_v2_31.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_20_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_26();
    l0 = self.box_IndexList_v2_20;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|1263316050", "1263316050", "Coast_C7_CTP_010_Main", "box_IndexList_v2_20.Output", "box_SetInteger_v2_26.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_20_Output_2()
    local l0, l1;
    l0 = self.box_IndexList_v2_20;
    l1 = self.box_Brick_Exp_SpawnFrom_RandomizationDatabase_17;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|2100156748", "2100156748", "Coast_C7_CTP_010_Main", "box_IndexList_v2_20.Output", "box_Brick_Exp_SpawnFrom_RandomizationDatabase_17.Spawn Entities from Database", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn Entities from Database
    l1:Exec(1, {
    });
end;

function export:OnEnter_box_MissionBlockLayer_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|@Activating navlink object for Bridge Windows to make sure they are valid after navmesh being build");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "72196310223406434",
        -- missionLayerId,
        [1] = "81203509478147427",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|17192279");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "ExtractionPoint_A",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|32775345");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_26_Out,
    });
    params = {
        -- Integer,
        [1] = 1,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|118867061");
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
                [0] = self.f_box_OutputOrder_v2_30_Out_0,
                [1] = self.f_box_OutputOrder_v2_30_Out_1,
                [2] = self.f_box_OutputOrder_v2_30_Out_2,
                [3] = self.f_box_OutputOrder_v2_30_Out_3,
                [4] = self.f_box_OutputOrder_v2_30_Out_4,
                [5] = self.f_box_OutputOrder_v2_30_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_40()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|319657615");
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
                [0] = self.f_box_OutputOrder_v2_23_Out_0,
                [1] = self.f_box_OutputOrder_v2_23_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_MainBeat_Pkg_15()
    local params;
    params = {
        -- CloseRangeDiscoveryShape_A,
        [0] = "2108967088398802929",
        -- CloseRangeDiscoveryShape_B,
        [1] = "2108967367020126230",
        -- CloseRangeDiscoveryShape_C,
        [2] = "2109023085735711012",
        -- CloseRangeDiscoveryShape_D,
        [3] = "2108397581028562251",
        -- CloseRangeDiscoveryShape_E,
        [4] = "2109023294282797438",
        -- CloseRangeDiscoveryShape_F,
        [5] = "2109023031847293209",
        -- PackagePositionID,
        [6] = Globals.Coast_C7_CTP_010_Main.iPackagePositionID,
        -- PackageSpawner_Variable,
        [7] = PersistentGlobals.Coast_C7_CTP_010_Main.PackageSpawner,
        -- PkgPickedUpFactToStartCS,
        [8] = "package_pickedup",
        -- PlayMusicEvent,
        [9] = "2555049655",
        -- SearchZoneMarker_A,
        [10] = "2108967082954596335",
        -- SearchZoneMarker_B,
        [11] = "2108967236455636997",
        -- SearchZoneMarker_C,
        [12] = "2109023099901972776",
        -- SearchZoneMarker_D,
        [13] = "2108134399072538744",
        -- SearchZoneMarker_E,
        [14] = "2109023303755633025",
        -- SearchZoneMarker_F,
        [15] = "2109023013784522192",
        -- StopMusicEvent,
        [16] = "252127088",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_12()
    local params;
    params = {
        -- Index,
        [0] = Globals.Coast_C7_CTP_010_Main.iDifficulty,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|829619812");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_31_Out,
    });
    params = {
        -- Integer,
        [1] = 2,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|1165340395");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "ExtractionPoint_C",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|1315624752");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_27_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|1322473409");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_1_Out,
    });
    params = {
        -- Entity,
        [0] = "2108123846600033056",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_MainBeat_Helicopter_v2_44()
    local params;
    params = {
        -- EnemyGroup,
        [0] = "#FA620E34",
        -- ForceDespawnTimer,
        [1] = 30,
        -- HelicopterSpawner_A,
        [3] = "2108289591856334148",
        -- HelicopterSpawner_B,
        [4] = "2108289591835362616",
        -- HelicopterSpawner_C,
        [5] = "2108289591810196768",
        -- PlayerSpawnPOIIndex,
        [6] = Globals.Coast_C7_CTP_010_Main.iPlayerSpawnPOIIndex,
        -- STP_HelicopterLeave_A,
        [7] = "2108289591835362613",
        -- STP_HelicopterLeave_B,
        [8] = "2108289591833265457",
        -- STP_HelicopterLeave_C,
        [9] = "2108289591833265453",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|1521299606");
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

function export:OnEnter_box_SetInteger_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|1556185291");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_34_Out,
    });
    params = {
        -- Integer,
        [1] = 4,
        -- UseFloor,
        [3] = false,
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

function export:OnEnter_box_ActivityEnd_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|1786294233");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|1804950917");
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

function export:OnEnter_box_IndexList_v2_13()
    local params;
    params = {
        -- Index,
        [0] = Globals.Coast_C7_CTP_010_Main.iPackagePositionID,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_3()
    local params;
    params = {
        -- Index,
        [0] = Globals.Coast_C7_CTP_010_Main.iExtractionPOIID,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_14()
    local params;
    params = {
        -- Index,
        [0] = Globals.Coast_C7_CTP_010_Main.iPackagePositionID,
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|1979043961");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "ExtractionPoint_B",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|2024255182");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 5,
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
                [2] = self.f_box_OutputOrder_v2_2_Out_2,
                [3] = self.f_box_OutputOrder_v2_2_Out_3,
                [4] = self.f_box_OutputOrder_v2_2_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Main|2064491508");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_7_Out,
    });
    params = {
        -- Entity,
        [0] = "2108967071862759397",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_20()
    local params;
    params = {
        -- Index,
        [0] = Globals.Coast_C7_CTP_010_Main.iDifficulty,
    };
    return params;
end;

function export:OnExit_box_SetInteger_v2_26_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.Coast_C7_CTP_010_Main.iPlayerSpawnPOIIndex = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_31_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.Coast_C7_CTP_010_Main.iPlayerSpawnPOIIndex = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_27_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.Coast_C7_CTP_010_Main.iPackagePositionID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_1_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    PersistentGlobals.Coast_C7_CTP_010_Main.PackageSpawner = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_16_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.Coast_C7_CTP_010_Main.iExtractionPOIID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_34_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.Coast_C7_CTP_010_Main.iPackagePositionID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_Exp_Common_BasicSetups_25_Out()
    local l0;
    l0 = self.box_Brick_Exp_Common_BasicSetups_25;
    Globals.Coast_C7_CTP_010_Main.iDifficulty = l0:GetDataOutValue(0);
    Globals.Coast_C7_CTP_010_Main.iPlayerSpawnPOIIndex = l0:GetDataOutValue(4);
    Globals.Coast_C7_CTP_010_Main.iExtractionPOIID = l0:GetDataOutValue(1);
    Globals.Coast_C7_CTP_010_Main.iPackagePositionID = l0:GetDataOutValue(2);
    PersistentGlobals.Coast_C7_CTP_010_Main.PackageSpawner = l0:GetDataOutValue(3);
end;

function export:OnExit_box_SetInteger_v2_10_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.Coast_C7_CTP_010_Main.iExtractionPOIID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_7_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    PersistentGlobals.Coast_C7_CTP_010_Main.PackageSpawner = l0:GetDataOutValue(0);
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
