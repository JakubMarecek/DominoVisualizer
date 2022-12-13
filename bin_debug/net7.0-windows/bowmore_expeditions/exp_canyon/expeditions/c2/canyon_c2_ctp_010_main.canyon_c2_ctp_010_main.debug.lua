LUAC� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_canyon/expeditions/c2/canyon_c2_ctp_010_main.domino
-- User graph: Canyon_C2_CTP_010_Main
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_MainBeat_Pkg.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.DONOTUSE_Brick_Exp_MainBeat_Helicopter_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Randomization.Brick_Exp_SpawnFrom_RandomizationDatabase.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
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
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Main.DestroyPackageBFenceDoor.debug.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Main.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[30992813.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2583714736.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.Canyon_C2_CTP_010_Main = nil;
    Globals.Canyon_C2_CTP_010_Main = {
        PlayerSpawnPOIIndex = 0,
        ExtractionID = 0,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Main.Canyon_C2_CTP_010_Main.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Expeditions_Gameplay.DONOTUSE_Brick_Exp_MainBeat_Helicopter_v2.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Spawn",
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
                name = "HelicopterLeaveSTP_A",
                type = "entity",
            },
            [3] = {
                name = "HelicopterLeaveSTP_B",
                type = "entity",
            },
            [4] = {
                name = "HelicopterLeaveSTP_C",
                type = "entity",
            },
            [5] = {
                name = "HelicopterSpawner_A",
                type = "entity",
            },
            [6] = {
                name = "HelicopterSpawner_B",
                type = "entity",
            },
            [7] = {
                name = "HelicopterSpawner_C",
                type = "entity",
            },
            [8] = {
                name = "PlayerSpawnPOIIndex",
                type = "int",
            },
        },
        dataInCount = 9,
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
    metadataTable[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")] = {
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
                name = "ObjectiveId",
                type = "oasis",
            },
            [1] = {
                name = "Success",
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
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Main.DestroyPackageBFenceDoor.debug.lua")] = {
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
end;

function export:Init(cbox)
    local l0;
    self._name = "Canyon_C2_CTP_010_Main";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main";
    self.PackageID = 0;
    self.PackagePlayerID = nil;
    self.ePackageSpawner = nil;
    self.box_MultipleOR_87 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|155644384");
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
        [0] = self.f_box_MultipleOR_87_Out,
    });
    self.box_MultipleOR_74 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|192514722");
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
        [0] = self.f_box_MultipleOR_74_Out,
    });
    self.box_IndexList_v2_99 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_99");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|258586327");
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
                [0] = self.f_box_IndexList_v2_99_Output_0,
                [1] = self.f_box_IndexList_v2_99_Output_1,
                [2] = self.f_box_IndexList_v2_99_Output_2,
                [3] = self.f_box_IndexList_v2_99_Output_3,
                [4] = self.f_box_IndexList_v2_99_Output_4,
                [5] = self.f_box_IndexList_v2_99_Output_5,
            },
            count = 6,
        },
    });
    self.box_DONOTUSE_Brick_Exp_MainBeat_Helicopter_v2_45 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.DONOTUSE_Brick_Exp_MainBeat_Helicopter_v2.debug.lua");
    l0 = self.box_DONOTUSE_Brick_Exp_MainBeat_Helicopter_v2_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DONOTUSE_Brick_Exp_MainBeat_Helicopter_v2_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|504146305");
    l0:SetConnections({
        -- Spawned,
        [0] = self.f_box_DONOTUSE_Brick_Exp_MainBeat_Helicopter_v2_45_Spawned,
    });
    self.box_IndexList_v2_49 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|605272525");
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
                [0] = self.f_box_IndexList_v2_49_Output_0,
                [1] = self.f_box_IndexList_v2_49_Output_1,
                [2] = self.f_box_IndexList_v2_49_Output_2,
                [3] = self.f_box_IndexList_v2_49_Output_3,
                [4] = self.f_box_IndexList_v2_49_Output_4,
                [5] = self.f_box_IndexList_v2_49_Output_5,
            },
            count = 6,
        },
    });
    self.box_Brick_Exp_MainBeat_Pkg_5 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_MainBeat_Pkg.debug.lua");
    l0 = self.box_Brick_Exp_MainBeat_Pkg_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_MainBeat_Pkg_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|807878739");
    l0:SetConnections({
        -- Initialized,
        [0] = self.f_box_Brick_Exp_MainBeat_Pkg_5_Initialized,
        -- PackagePicked,
        [1] = self.f_box_Brick_Exp_MainBeat_Pkg_5_PackagePicked,
    });
    self.box_MultipleOR_19 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|822405411");
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
        [0] = self.f_box_MultipleOR_19_Out,
    });
    self.box_Brick_Exp_Common_BasicSetups_21 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_BasicSetups.debug.lua");
    l0 = self.box_Brick_Exp_Common_BasicSetups_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_BasicSetups_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1366815027");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Brick_Exp_Common_BasicSetups_21_Out,
    });
    self.box_DestroyPackageBFenceDoor_55 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Main.DestroyPackageBFenceDoor.debug.lua");
    l0 = self.box_DestroyPackageBFenceDoor_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DestroyPackageBFenceDoor_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1395543429");
    l0:SetConnections({
    });
    self.box_Brick_Exp_SpawnFrom_RandomizationDatabase_35 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Randomization.Brick_Exp_SpawnFrom_RandomizationDatabase.debug.lua");
    l0 = self.box_Brick_Exp_SpawnFrom_RandomizationDatabase_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_SpawnFrom_RandomizationDatabase_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1558588998");
    l0:SetConnections({
        -- All Entities Spawned,
        [0] = self.f_box_Brick_Exp_SpawnFrom_RandomizationDatabase_35_All_Entities_Spawned,
    });
    self.box_ActivityInitialized_68 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1582895335");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_68_Out,
    });
    self.box_IndexList_v2_92 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1605682247");
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
                [0] = self.f_box_IndexList_v2_92_Output_0,
                [1] = self.f_box_IndexList_v2_92_Output_1,
                [2] = self.f_box_IndexList_v2_92_Output_2,
            },
            count = 3,
        },
    });
    self.box_ActivityAcknowledgeGate_114 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_114");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1659943618");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_114_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_114_Reloaded,
    });
    self.box_IndexList_v2_23 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1717687929");
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
                [0] = self.f_box_IndexList_v2_23_Output_0,
                [1] = self.f_box_IndexList_v2_23_Output_1,
                [2] = self.f_box_IndexList_v2_23_Output_2,
            },
            count = 3,
        },
    });
    self.box_MultipleOR_14 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1735424951");
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
        [0] = self.f_box_MultipleOR_14_Out,
    });
    self.box_DestroyPackageBFenceDoor_54 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Main.DestroyPackageBFenceDoor.debug.lua");
    l0 = self.box_DestroyPackageBFenceDoor_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DestroyPackageBFenceDoor_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1778310511");
    l0:SetConnections({
    });
    self.box_MultipleOR_111 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_111");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1970941188");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 6,
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
        [0] = self.f_box_MultipleOR_111_Out,
    });
    self.box_MultipleOR_22 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|2016228256");
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
        [0] = self.f_box_MultipleOR_22_Out,
    });
    self.box_DestroyPackageBFenceDoor_47 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/C2/Canyon_C2_CTP_010_Main.DestroyPackageBFenceDoor.debug.lua");
    l0 = self.box_DestroyPackageBFenceDoor_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DestroyPackageBFenceDoor_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|2052189733");
    l0:SetConnections({
    });
    self.box_SpawnAI_36 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|2126111998");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_36_Spawned,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_Brick_Exp_Common_BasicSetups_21();
    l0 = self.box_Brick_Exp_Common_BasicSetups_21;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|435301222", "435301222", "Canyon_C2_CTP_010_Main", "In", "box_Brick_Exp_Common_BasicSetups_21.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_SetActivityFact_6_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1047913471", "1047913471", "Canyon_C2_CTP_010_Main", "box_SetActivityFact_6.Out", "box_OutputOrder_v2_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetActivityFact_101_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_74;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|839114793", "839114793", "Canyon_C2_CTP_010_Main", "box_SetActivityFact_101.Out", "box_MultipleOR_74.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_4_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_111;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|632822333", "632822333", "Canyon_C2_CTP_010_Main", "box_OutputOrder_v2_4.Out", "box_MultipleOR_111.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_OutputOrder_v2_4_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|869085371", "869085371", "Canyon_C2_CTP_010_Main", "box_OutputOrder_v2_4.Out", "box_MultipleOR_14.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetInteger_v2_29_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_29_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_53();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|644083967", "644083967", "Canyon_C2_CTP_010_Main", "box_SetInteger_v2_29.Out", "box_MissionBlockLayer_53.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_87_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_31();
    l0 = self.box_MultipleOR_87;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1618420770", "1618420770", "Canyon_C2_CTP_010_Main", "box_MultipleOR_87.Out", "box_OutputOrder_v2_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_74_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_89();
    l0 = self.box_MultipleOR_74;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1760834898", "1760834898", "Canyon_C2_CTP_010_Main", "box_MultipleOR_74.Out", "box_ActivityEnd_89.EndNoSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndNoSave
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_52_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_8();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|517050662", "517050662", "Canyon_C2_CTP_010_Main", "box_MissionBlockLayer_52.Activated", "box_SetEntity_v2_8.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_12_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_12_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_43();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|423597065", "423597065", "Canyon_C2_CTP_010_Main", "box_SetEntity_v2_12.Out", "box_MissionBlockLayer_43.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_99_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_91();
    l0 = self.box_IndexList_v2_99;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|604301287", "604301287", "Canyon_C2_CTP_010_Main", "box_IndexList_v2_99.Output", "box_SetActivityFact_91.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_99_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_69();
    l0 = self.box_IndexList_v2_99;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|2071223479", "2071223479", "Canyon_C2_CTP_010_Main", "box_IndexList_v2_99.Output", "box_SetActivityFact_69.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_99_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_80();
    l0 = self.box_IndexList_v2_99;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1188753640", "1188753640", "Canyon_C2_CTP_010_Main", "box_IndexList_v2_99.Output", "box_SetActivityFact_80.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_99_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_3();
    l0 = self.box_IndexList_v2_99;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1817818522", "1817818522", "Canyon_C2_CTP_010_Main", "box_IndexList_v2_99.Output", "box_SetActivityFact_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_99_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_6();
    l0 = self.box_IndexList_v2_99;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1832455152", "1832455152", "Canyon_C2_CTP_010_Main", "box_IndexList_v2_99.Output", "box_SetActivityFact_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_99_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_9();
    l0 = self.box_IndexList_v2_99;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|397989568", "397989568", "Canyon_C2_CTP_010_Main", "box_IndexList_v2_99.Output", "box_SetActivityFact_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_33_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_42();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1335981770", "1335981770", "Canyon_C2_CTP_010_Main", "box_MissionBlockLayer_33.Activated", "box_MissionBlockLayer_42.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityForceAndLockTracking_108_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_MainBeat_Pkg_5();
    l0 = self.box_Brick_Exp_MainBeat_Pkg_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|2143416076", "2143416076", "Canyon_C2_CTP_010_Main", "box_ActivityForceAndLockTracking_108.Enabled", "box_Brick_Exp_MainBeat_Pkg_5.Initialize_Stronghold", clone:GetLuaBox(), l0:GetLuaBox());
    -- Initialize_Stronghold
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_117_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_48();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1525034137", "1525034137", "Canyon_C2_CTP_010_Main", "box_OutputOrder_v2_117.Out", "box_OutputOrder_v2_48.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_117_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_111;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1614923058", "1614923058", "Canyon_C2_CTP_010_Main", "box_OutputOrder_v2_117.Out", "box_MultipleOR_111.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MissionBlockLayer_42_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_38();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|758233099", "758233099", "Canyon_C2_CTP_010_Main", "box_MissionBlockLayer_42.Activated", "box_MissionBlockLayer_38.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_DONOTUSE_Brick_Exp_MainBeat_Helicopter_v2_45_Spawned()
    local l0, l1;
    l0 = self.box_DONOTUSE_Brick_Exp_MainBeat_Helicopter_v2_45;
    l1 = self.box_ActivityInitialized_68;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1815889148", "1815889148", "Canyon_C2_CTP_010_Main", "box_DONOTUSE_Brick_Exp_MainBeat_Helicopter_v2_45.Spawned", "box_ActivityInitialized_68.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_SetInteger_v2_25_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_25_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_27();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|771618705", "771618705", "Canyon_C2_CTP_010_Main", "box_SetInteger_v2_25.Out", "box_SetInteger_v2_27.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetActivityFact_69_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|523244803", "523244803", "Canyon_C2_CTP_010_Main", "box_SetActivityFact_69.Out", "box_OutputOrder_v2_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetActivityFact_91_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_117();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|845511547", "845511547", "Canyon_C2_CTP_010_Main", "box_SetActivityFact_91.Out", "box_OutputOrder_v2_117.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_49_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_46();
    l0 = self.box_IndexList_v2_49;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|646751530", "646751530", "Canyon_C2_CTP_010_Main", "box_IndexList_v2_49.Output", "box_MissionBlockLayer_46.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_49_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_51();
    l0 = self.box_IndexList_v2_49;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|389306080", "389306080", "Canyon_C2_CTP_010_Main", "box_IndexList_v2_49.Output", "box_MissionBlockLayer_51.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_49_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_13();
    l0 = self.box_IndexList_v2_49;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|173669257", "173669257", "Canyon_C2_CTP_010_Main", "box_IndexList_v2_49.Output", "box_MissionBlockLayer_13.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_49_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_34();
    l0 = self.box_IndexList_v2_49;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1332228058", "1332228058", "Canyon_C2_CTP_010_Main", "box_IndexList_v2_49.Output", "box_MissionBlockLayer_34.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_49_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_50();
    l0 = self.box_IndexList_v2_49;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1790357382", "1790357382", "Canyon_C2_CTP_010_Main", "box_IndexList_v2_49.Output", "box_MissionBlockLayer_50.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_49_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_15();
    l0 = self.box_IndexList_v2_49;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1139560177", "1139560177", "Canyon_C2_CTP_010_Main", "box_IndexList_v2_49.Output", "box_MissionBlockLayer_15.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_23();
    l0 = self.box_IndexList_v2_23;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1067261505", "1067261505", "Canyon_C2_CTP_010_Main", "box_OutputOrder_v2_31.Out", "box_IndexList_v2_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_SetActivityFact_104_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_74;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1939690191", "1939690191", "Canyon_C2_CTP_010_Main", "box_SetActivityFact_104.Out", "box_MultipleOR_74.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Exp_MainBeat_Pkg_5_Initialized()
    local params, l0, l1;
    params = self:OnEnter_box_IndexList_v2_99();
    l0 = self.box_Brick_Exp_MainBeat_Pkg_5;
    l1 = self.box_IndexList_v2_99;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1050089920", "1050089920", "Canyon_C2_CTP_010_Main", "box_Brick_Exp_MainBeat_Pkg_5.Initialized", "box_IndexList_v2_99.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Brick_Exp_MainBeat_Pkg_5_PackagePicked()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_107();
    l0 = self.box_Brick_Exp_MainBeat_Pkg_5;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1988626697", "1988626697", "Canyon_C2_CTP_010_Main", "box_Brick_Exp_MainBeat_Pkg_5.PackagePicked", "box_OutputOrder_v2_107.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetActivityFact_9_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_11();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|885097864", "885097864", "Canyon_C2_CTP_010_Main", "box_SetActivityFact_9.Out", "box_OutputOrder_v2_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_19_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_17();
    l0 = self.box_MultipleOR_19;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1564894347", "1564894347", "Canyon_C2_CTP_010_Main", "box_MultipleOR_19.Out", "box_SetActivityFact_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_38_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_40();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1722872128", "1722872128", "Canyon_C2_CTP_010_Main", "box_MissionBlockLayer_38.Activated", "box_MissionBlockLayer_40.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_30_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_22;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|2130988102", "2130988102", "Canyon_C2_CTP_010_Main", "box_MissionBlockLayer_30.Activated", "box_MultipleOR_22.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_111;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|19590260", "19590260", "Canyon_C2_CTP_010_Main", "box_OutputOrder_v2_7.Out", "box_MultipleOR_111.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|196940365", "196940365", "Canyon_C2_CTP_010_Main", "box_OutputOrder_v2_7.Out", "box_MultipleOR_14.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MissionBlockLayer_43_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_39();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1173295243", "1173295243", "Canyon_C2_CTP_010_Main", "box_MissionBlockLayer_43.Activated", "box_MissionBlockLayer_39.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_26_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_26_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_29();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1058905396", "1058905396", "Canyon_C2_CTP_010_Main", "box_SetInteger_v2_26.Out", "box_SetInteger_v2_29.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetActivityFact_3_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|396418387", "396418387", "Canyon_C2_CTP_010_Main", "box_SetActivityFact_3.Out", "box_OutputOrder_v2_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_37_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_30();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|192885968", "192885968", "Canyon_C2_CTP_010_Main", "box_MissionBlockLayer_37.Activated", "box_MissionBlockLayer_30.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_48_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|870474243", "870474243", "Canyon_C2_CTP_010_Main", "box_OutputOrder_v2_48.Out", "box_MultipleOR_19.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_48_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_DestroyPackageBFenceDoor_55;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|13899934", "13899934", "Canyon_C2_CTP_010_Main", "box_OutputOrder_v2_48.Out", "box_DestroyPackageBFenceDoor_55.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_83_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_16();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|732698884", "732698884", "Canyon_C2_CTP_010_Main", "box_OutputOrder_v2_83.Out", "box_OutputOrder_v2_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_83_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_111;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1410195529", "1410195529", "Canyon_C2_CTP_010_Main", "box_OutputOrder_v2_83.Out", "box_MultipleOR_111.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_SetActivityFact_80_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_83();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|952517807", "952517807", "Canyon_C2_CTP_010_Main", "box_SetActivityFact_80.Out", "box_OutputOrder_v2_83.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_24_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_24_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_25();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1640452003", "1640452003", "Canyon_C2_CTP_010_Main", "box_SetInteger_v2_24.Out", "box_SetInteger_v2_25.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_107_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_116();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1187871697", "1187871697", "Canyon_C2_CTP_010_Main", "box_OutputOrder_v2_107.Out", "box_BroadcastMessage_116.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_107_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_70();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|419369714", "419369714", "Canyon_C2_CTP_010_Main", "box_OutputOrder_v2_107.Out", "box_EndActivityObjective_v2_70.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_BasicSetups_21_Out()
    local l0, l1;
    self:OnExit_box_Brick_Exp_Common_BasicSetups_21_Out();
    l0 = self.box_Brick_Exp_Common_BasicSetups_21;
    l1 = self.box_ActivityAcknowledgeGate_114;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1341733668", "1341733668", "Canyon_C2_CTP_010_Main", "box_Brick_Exp_Common_BasicSetups_21.Out", "box_ActivityAcknowledgeGate_114.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_MissionBlockLayer_32_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_Brick_Exp_SpawnFrom_RandomizationDatabase_35;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1141851229", "1141851229", "Canyon_C2_CTP_010_Main", "box_MissionBlockLayer_32.Activated", "box_Brick_Exp_SpawnFrom_RandomizationDatabase_35.Spawn Entities from Database", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn Entities from Database
    l0:Exec(1, {
    });
end;

function export:f_box_Brick_Exp_SpawnFrom_RandomizationDatabase_35_All_Entities_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_36();
    l0 = self.box_Brick_Exp_SpawnFrom_RandomizationDatabase_35;
    l1 = self.box_SpawnAI_36;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|998709500", "998709500", "Canyon_C2_CTP_010_Main", "box_Brick_Exp_SpawnFrom_RandomizationDatabase_35.All Entities Spawned", "box_SpawnAI_36.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_1_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_32();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|2084226868", "2084226868", "Canyon_C2_CTP_010_Main", "box_OutputOrder_v2_1.Out", "box_MissionBlockLayer_32.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_49();
    l0 = self.box_IndexList_v2_49;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|864941755", "864941755", "Canyon_C2_CTP_010_Main", "box_OutputOrder_v2_1.Out", "box_IndexList_v2_49.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_ActivityInitialized_68_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_44();
    l0 = self.box_ActivityInitialized_68;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|411019605", "411019605", "Canyon_C2_CTP_010_Main", "box_ActivityInitialized_68.Out", "box_OutputOrder_v2_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_44_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityForceAndLockTracking_108();
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|2015696926", "2015696926", "Canyon_C2_CTP_010_Main", "box_OutputOrder_v2_44.Out", "box_ActivityForceAndLockTracking_108.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_44_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_20();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|717598057", "717598057", "Canyon_C2_CTP_010_Main", "box_OutputOrder_v2_44.Out", "box_MissionBlockLayer_20.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_92_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_104();
    l0 = self.box_IndexList_v2_92;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1128593418", "1128593418", "Canyon_C2_CTP_010_Main", "box_IndexList_v2_92.Output", "box_SetActivityFact_104.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_92_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_101();
    l0 = self.box_IndexList_v2_92;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1232171103", "1232171103", "Canyon_C2_CTP_010_Main", "box_IndexList_v2_92.Output", "box_SetActivityFact_101.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_92_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_84();
    l0 = self.box_IndexList_v2_92;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1194182171", "1194182171", "Canyon_C2_CTP_010_Main", "box_IndexList_v2_92.Output", "box_SetActivityFact_84.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|122622182", "122622182", "Canyon_C2_CTP_010_Main", "box_OutputOrder_v2_18.Out", "box_MultipleOR_19.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_111;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1883635034", "1883635034", "Canyon_C2_CTP_010_Main", "box_OutputOrder_v2_18.Out", "box_MultipleOR_111.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_11_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_111;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|299438533", "299438533", "Canyon_C2_CTP_010_Main", "box_OutputOrder_v2_11.Out", "box_MultipleOR_111.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_OutputOrder_v2_11_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1140726294", "1140726294", "Canyon_C2_CTP_010_Main", "box_OutputOrder_v2_11.Out", "box_MultipleOR_14.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_ActivityAcknowledgeGate_114_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_114;
    l1 = self.box_MultipleOR_87;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1938150883", "1938150883", "Canyon_C2_CTP_010_Main", "box_ActivityAcknowledgeGate_114.Acknowledged", "box_MultipleOR_87.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_114_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_114;
    l1 = self.box_MultipleOR_87;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|771578468", "771578468", "Canyon_C2_CTP_010_Main", "box_ActivityAcknowledgeGate_114.Reloaded", "box_MultipleOR_87.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IndexList_v2_23_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_24();
    l0 = self.box_IndexList_v2_23;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1127225818", "1127225818", "Canyon_C2_CTP_010_Main", "box_IndexList_v2_23.Output", "box_SetInteger_v2_24.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_23_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_28();
    l0 = self.box_IndexList_v2_23;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|472314479", "472314479", "Canyon_C2_CTP_010_Main", "box_IndexList_v2_23.Output", "box_SetInteger_v2_28.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_23_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_1();
    l0 = self.box_IndexList_v2_23;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|946078252", "946078252", "Canyon_C2_CTP_010_Main", "box_IndexList_v2_23.Output", "box_OutputOrder_v2_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_61_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_10();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|357338619", "357338619", "Canyon_C2_CTP_010_Main", "box_OutputOrder_v2_61.Out", "box_MissionBlockLayer_10.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_61_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_DestroyPackageBFenceDoor_54;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|373104173", "373104173", "Canyon_C2_CTP_010_Main", "box_OutputOrder_v2_61.Out", "box_DestroyPackageBFenceDoor_54.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_MultipleOR_14_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_61();
    l0 = self.box_MultipleOR_14;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1792212472", "1792212472", "Canyon_C2_CTP_010_Main", "box_MultipleOR_14.Out", "box_OutputOrder_v2_61.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_40_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_22;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1088196374", "1088196374", "Canyon_C2_CTP_010_Main", "box_MissionBlockLayer_40.Activated", "box_MultipleOR_22.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EndActivityObjective_v2_70_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_92();
    l0 = self.box_IndexList_v2_92;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|200128231", "200128231", "Canyon_C2_CTP_010_Main", "box_EndActivityObjective_v2_70.Out", "box_IndexList_v2_92.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_41_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_22;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|426623099", "426623099", "Canyon_C2_CTP_010_Main", "box_MissionBlockLayer_41.Activated", "box_MultipleOR_22.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_SetInteger_v2_27_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_27_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_52();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|2027507742", "2027507742", "Canyon_C2_CTP_010_Main", "box_SetInteger_v2_27.Out", "box_MissionBlockLayer_52.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_111_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_79();
    l0 = self.box_MultipleOR_111;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1404460995", "1404460995", "Canyon_C2_CTP_010_Main", "box_MultipleOR_111.Out", "box_SetActivityFact_79.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_8_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_8_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_33();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1414994", "1414994", "Canyon_C2_CTP_010_Main", "box_SetEntity_v2_8.Out", "box_MissionBlockLayer_33.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_53_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_12();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1178207949", "1178207949", "Canyon_C2_CTP_010_Main", "box_MissionBlockLayer_53.Activated", "box_SetEntity_v2_12.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_39_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_37();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|207813592", "207813592", "Canyon_C2_CTP_010_Main", "box_MissionBlockLayer_39.Activated", "box_MissionBlockLayer_37.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_22_Out()
    local params, l0, l1;
    params = self:OnEnter_box_DONOTUSE_Brick_Exp_MainBeat_Helicopter_v2_45();
    l0 = self.box_MultipleOR_22;
    l1 = self.box_DONOTUSE_Brick_Exp_MainBeat_Helicopter_v2_45;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1052284040", "1052284040", "Canyon_C2_CTP_010_Main", "box_MultipleOR_22.Out", "box_DONOTUSE_Brick_Exp_MainBeat_Helicopter_v2_45.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(0, params);
end;

function export:f_box_SetInteger_v2_28_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_28_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_26();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1665483303", "1665483303", "Canyon_C2_CTP_010_Main", "box_SetInteger_v2_28.Out", "box_SetInteger_v2_26.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetActivityFact_17_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_2();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1325266367", "1325266367", "Canyon_C2_CTP_010_Main", "box_SetActivityFact_17.Out", "box_MissionBlockLayer_2.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetActivityFact_84_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_74;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1611242580", "1611242580", "Canyon_C2_CTP_010_Main", "box_SetActivityFact_84.Out", "box_MultipleOR_74.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_16_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1511149721", "1511149721", "Canyon_C2_CTP_010_Main", "box_OutputOrder_v2_16.Out", "box_MultipleOR_19.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_16_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_DestroyPackageBFenceDoor_47;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1916108422", "1916108422", "Canyon_C2_CTP_010_Main", "box_OutputOrder_v2_16.Out", "box_DestroyPackageBFenceDoor_47.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_SpawnAI_36_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_41();
    l0 = self.box_SpawnAI_36;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1580037698", "1580037698", "Canyon_C2_CTP_010_Main", "box_SpawnAI_36.Spawned", "box_MissionBlockLayer_41.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_SetActivityFact_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|7408533");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_6_Out,
    });
    params = {
        -- Fact,
        [0] = "Set_Package_E",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_101");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|73401428");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_101_Out,
    });
    params = {
        -- Fact,
        [0] = "Canyon_C2_CTP_010_Ext_B_Start",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|80141222");
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
                [0] = self.f_box_OutputOrder_v2_4_Out_0,
                [1] = self.f_box_OutputOrder_v2_4_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|83283059");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_29_Out,
    });
    params = {
        -- Integer,
        [1] = 4,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|121568649");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160323099603513",
        -- missionLayerId,
        [1] = "36167522354344506",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|143279150");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160322015570823",
        -- missionLayerId,
        [1] = "36167521270311816",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|193927054");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_52_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160322015570823",
        -- missionLayerId,
        [1] = "36167521270311816",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|220550125");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160322015570823",
        -- missionLayerId,
        [1] = "36167521274085767",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|254258309");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_12_Out,
    });
    params = {
        -- Entity,
        [0] = "2108232201022738527",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_99()
    local params;
    params = {
        -- Index,
        [0] = self.PackageID,
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_116()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_116");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|319225261");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "Canyon_C2_Package_Picked",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|345063924");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160322015570823",
        -- missionLayerId,
        [1] = "54181919786146207",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|356797811");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_33_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160313809447863",
        -- missionLayerId,
        [1] = "36167513064188855",
    };
    return params;
end;

function export:OnEnter_box_ActivityForceAndLockTracking_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityForceAndLockTracking_108");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|405160893");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityForceAndLockTracking_108_Enabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_117()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_117");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|446278626");
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
                [0] = self.f_box_OutputOrder_v2_117_Out_0,
                [1] = self.f_box_OutputOrder_v2_117_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|457110046");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_42_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "45174712318943338",
        -- missionLayerId,
        [1] = "54181911573684330",
    };
    return params;
end;

function export:OnEnter_box_DONOTUSE_Brick_Exp_MainBeat_Helicopter_v2_45()
    local params;
    params = {
        -- EnemyGroup,
        [0] = "#71C4A962",
        -- ForceDespawnTimer,
        [1] = 30,
        -- HelicopterLeaveSTP_A,
        [2] = "2108245009753969534",
        -- HelicopterLeaveSTP_B,
        [3] = "2108244626635752335",
        -- HelicopterLeaveSTP_C,
        [4] = "2108302161642279920",
        -- HelicopterSpawner_A,
        [5] = "2108244389856810170",
        -- HelicopterSpawner_B,
        [6] = "2108244262421271186",
        -- HelicopterSpawner_C,
        [7] = "2108244342935131158",
        -- PlayerSpawnPOIIndex,
        [8] = Globals.Canyon_C2_CTP_010_Main.PlayerSpawnPOIIndex,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|513481230");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160322015570823",
        -- missionLayerId,
        [1] = "27160322019327573",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|546747803");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_25_Out,
    });
    params = {
        -- Integer,
        [1] = 2,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|557529310");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_69_Out,
    });
    params = {
        -- Fact,
        [0] = "Set_Package_B",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|563431029");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_91_Out,
    });
    params = {
        -- Fact,
        [0] = "Set_Package_A",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_49()
    local params;
    params = {
        -- Index,
        [0] = self.PackageID,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|648105468");
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
                [0] = self.f_box_OutputOrder_v2_31_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_104");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|679631550");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_104_Out,
    });
    params = {
        -- Fact,
        [0] = "Canyon_C2_CTP_010_Ext_A_Start",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_MainBeat_Pkg_5()
    local params;
    params = {
        -- CloseRangeDiscoveryShape_A,
        [0] = "2108246245024728741",
        -- CloseRangeDiscoveryShape_B,
        [1] = "2108635544576598597",
        -- CloseRangeDiscoveryShape_C,
        [2] = "2108316071049047680",
        -- CloseRangeDiscoveryShape_D,
        [3] = "2108232226960314482",
        -- CloseRangeDiscoveryShape_E,
        [4] = "2108635567280366179",
        -- CloseRangeDiscoveryShape_F,
        [5] = "2108635679387820804",
        -- PackagePositionID,
        [6] = self.PackageID,
        -- PackageSpawner_Variable,
        [7] = PersistentGlobals.Canyon_C2_CTP_010_Main.PackageSpawner,
        -- PkgPickedUpFactToStartCS,
        [8] = "Canyon_C2_Package_Picked",
        -- PlayMusicEvent,
        [9] = "30992813",
        -- SearchZoneMarker_A,
        [10] = "2108191436395519580",
        -- SearchZoneMarker_B,
        [11] = "2108635486420476479",
        -- SearchZoneMarker_C,
        [12] = "2108316105257791113",
        -- SearchZoneMarker_D,
        [13] = "2108232201022738534",
        -- SearchZoneMarker_E,
        [14] = "2108635824357647236",
        -- SearchZoneMarker_F,
        [15] = "2108635693818323720",
        -- StopMusicEvent,
        [16] = "2583714736",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|814049612");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_9_Out,
    });
    params = {
        -- Fact,
        [0] = "Set_Package_F",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|832001591");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_38_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "63189110828604737",
        -- missionLayerId,
        [1] = "99217907847649379",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|846766329");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160322015570823",
        -- missionLayerId,
        [1] = "45174720528844057",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|863442837");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_30_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "63189110828604737",
        -- missionLayerId,
        [1] = "81203509338138654",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|913033150");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160323099603513",
        -- missionLayerId,
        [1] = "45174721609176029",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|977327820");
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
                [0] = self.f_box_OutputOrder_v2_7_Out_0,
                [1] = self.f_box_OutputOrder_v2_7_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_20()
    local params, l0;
    DrawTextToScreen("Comment: Manually Activate Window NavLink Layer", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionBlockLayer')-- Comment: Manually Activate Window NavLink Layer");
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1027011817");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160323256835367",
        -- missionLayerId,
        [1] = "36167522511576359",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1167051276");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_43_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160313809447863",
        -- missionLayerId,
        [1] = "126239505611949601",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1171707559");
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

function export:OnEnter_box_SetActivityFact_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1174064437");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_3_Out,
    });
    params = {
        -- Fact,
        [0] = "Set_Package_D",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1217501527");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_37_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "63189110828604737",
        -- missionLayerId,
        [1] = "108225107102407563",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1221846134");
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
                [0] = self.f_box_OutputOrder_v2_48_Out_0,
                [1] = self.f_box_OutputOrder_v2_48_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1235804850");
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
                [0] = self.f_box_OutputOrder_v2_83_Out_0,
                [1] = self.f_box_OutputOrder_v2_83_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1285006362");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_80_Out,
    });
    params = {
        -- Fact,
        [0] = "Set_Package_C",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1298080662");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_24_Out,
    });
    params = {
        -- Integer,
        [1] = 1,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_89");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1299411940");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_107");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1303065229");
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
                [0] = self.f_box_OutputOrder_v2_107_Out_0,
                [1] = self.f_box_OutputOrder_v2_107_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1352198062");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160322015570823",
        -- missionLayerId,
        [1] = "63189119040896838",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_BasicSetups_21()
    local params;
    params = {
        -- DebugMode,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1413731701");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_32_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "54181910782095594",
        -- missionLayerId,
        [1] = "90210707801300928",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1581537563");
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
                [0] = self.f_box_OutputOrder_v2_1_Out_0,
                [1] = self.f_box_OutputOrder_v2_1_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1596540889");
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
                [0] = self.f_box_OutputOrder_v2_44_Out_0,
                [1] = self.f_box_OutputOrder_v2_44_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_92()
    local params;
    params = {
        -- Index,
        [0] = Globals.Canyon_C2_CTP_010_Main.ExtractionID,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1647647076");
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

function export:OnEnter_box_OutputOrder_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1650801056");
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
                [0] = self.f_box_OutputOrder_v2_11_Out_0,
                [1] = self.f_box_OutputOrder_v2_11_Out_1,
            },
            count = 2,
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
        [0] = PersistentGlobals.Canyon_C2_CTP_010_Main.Difficulty,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1734294338");
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
                [0] = self.f_box_OutputOrder_v2_61_Out_0,
                [1] = self.f_box_OutputOrder_v2_61_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1794266776");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_40_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "63189110828604737",
        -- missionLayerId,
        [1] = "72196310083345729",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1802870382");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_70_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective Text",
            item = "EXP_B20_OBJ_StealThePackage",
            id = "959299",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1804838176");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_41_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160313809447863",
        -- missionLayerId,
        [1] = "27160317974790872",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1967770726");
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

function export:OnEnter_box_SetEntity_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1976398231");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_8_Out,
    });
    params = {
        -- Entity,
        [0] = "2108191287376092751",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1976647747");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_53_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160322015570823",
        -- missionLayerId,
        [1] = "45174720528844057",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1977011979");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "Package_Location_Set",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|1998387793");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_39_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "45174712318943338",
        -- missionLayerId,
        [1] = "144253904121452726",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|2027038623");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_28_Out,
    });
    params = {
        -- Integer,
        [1] = 2,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|2102638430");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_17_Out,
    });
    params = {
        -- Fact,
        [0] = "Package_In_Sentry",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_84()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|2107283936");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_84_Out,
    });
    params = {
        -- Fact,
        [0] = "Canyon_C2_CTP_010_Ext_C_Start",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\C2\\Canyon_C2_CTP_010_Main.domino|@Canyon_C2_CTP_010_Main|2117577512");
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
                [1] = self.f_box_OutputOrder_v2_16_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_36()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108981266415095953",
    };
    return params;
end;

function export:OnExit_box_SetInteger_v2_29_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.PackageID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_12_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    PersistentGlobals.Canyon_C2_CTP_010_Main.PackageSpawner = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_25_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.Canyon_C2_CTP_010_Main.ExtractionID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_26_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.Canyon_C2_CTP_010_Main.ExtractionID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_24_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.Canyon_C2_CTP_010_Main.PlayerSpawnPOIIndex = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_Exp_Common_BasicSetups_21_Out()
    local l0;
    l0 = self.box_Brick_Exp_Common_BasicSetups_21;
    PersistentGlobals.Canyon_C2_CTP_010_Main.Difficulty = l0:GetDataOutValue(0);
    Globals.Canyon_C2_CTP_010_Main.PlayerSpawnPOIIndex = l0:GetDataOutValue(4);
    Globals.Canyon_C2_CTP_010_Main.ExtractionID = l0:GetDataOutValue(1);
    self.PackageID = l0:GetDataOutValue(2);
    PersistentGlobals.Canyon_C2_CTP_010_Main.PackageSpawner = l0:GetDataOutValue(3);
end;

function export:OnExit_box_SetInteger_v2_27_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.PackageID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_8_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    PersistentGlobals.Canyon_C2_CTP_010_Main.PackageSpawner = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_28_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.Canyon_C2_CTP_010_Main.PlayerSpawnPOIIndex = l0:GetDataOutValue(0);
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
