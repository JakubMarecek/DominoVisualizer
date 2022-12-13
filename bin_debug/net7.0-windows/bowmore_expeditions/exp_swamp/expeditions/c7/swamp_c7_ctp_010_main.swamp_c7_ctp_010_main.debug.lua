LUAC� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_swamp/expeditions/c7/swamp_c7_ctp_010_main.domino
-- User graph: Swamp_C7_CTP_010_Main
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
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cboxRes:RegisterBox("Domino/System/BroadcastMessage.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/GroupAddToGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/GetExpeditionGameplayElements.lua");
        cboxRes:RegisterBox("Domino/System/IndexList_v2.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetInteger_v2.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/C7/Swamp_C7_CTP_010_Main.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3757372511.bnk]], "CSoundResource");
        cboxRes:LoadResource([[645226521.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.Swamp_C7_CTP_010_Main = nil;
    Globals.Swamp_C7_CTP_010_Main = {
        i_Difficulty = 0,
        i_ExtractionPOIID = 0,
        e_PackageSpawner = nil,
        e_CS_GuardPackage = nil,
        e_CS_GuardPOI = nil,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/C7/Swamp_C7_CTP_010_Main.Swamp_C7_CTP_010_Main.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/AI/ContextualAction/ContextualActionListener.lua")] = {
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
                name = "Available",
                delayed = true,
            },
            [1] = {
                name = "Disabled",
                delayed = false,
            },
            [2] = {
                name = "Enabled",
                delayed = false,
            },
            [3] = {
                name = "End",
                delayed = true,
            },
            [4] = {
                name = "Interrupt",
                delayed = true,
            },
            [5] = {
                name = "Markup1",
                delayed = true,
            },
            [6] = {
                name = "Markup2",
                delayed = true,
            },
            [7] = {
                name = "Select",
                delayed = true,
            },
            [8] = {
                name = "Start",
                delayed = true,
            },
        },
        controlOutCount = 9,
        dataIn = {
            [0] = {
                name = "ContextualAction",
                type = "entity",
            },
            [1] = {
                name = "InCAIndex",
                type = "int",
            },
            [2] = {
                name = "UserFilter",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "OutCAIndex",
                type = "int",
            },
            [1] = {
                name = "User",
                type = "entity",
            },
        },
        dataOutCount = 2,
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
    metadataTable[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")] = {
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
                name = "FromGroup",
                type = "group",
            },
            [1] = {
                name = "ToGroup",
                type = "group",
            },
        },
        dataInCount = 2,
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
    self._name = "Swamp_C7_CTP_010_Main";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main";
    self.i_PackagePositionID = 0;
    self.i_PlayerSpawnPOIIndex = 0;
    self.box_ActivityInitialized_3 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1987967");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_3_Out,
    });
    self.box_Delay_v5_43 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|63091134");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_43_TimeElapsed,
    });
    self.box_MultipleOR_70 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|190963430");
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
        [0] = self.f_box_MultipleOR_70_Out,
    });
    self.box_Delay_v5_44 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|328049238");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_44_TimeElapsed,
    });
    self.box_MultipleOR_57 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|384345648");
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
        [0] = self.f_box_MultipleOR_57_Out,
    });
    self.box_IndexList_v2_73 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|473798389");
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
                [0] = self.f_box_IndexList_v2_73_Output_0,
                [1] = self.f_box_IndexList_v2_73_Output_1,
                [2] = self.f_box_IndexList_v2_73_Output_2,
            },
            count = 3,
        },
    });
    self.box_Brick_Exp_MainBeat_Pkg_46 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_MainBeat_Pkg.debug.lua");
    l0 = self.box_Brick_Exp_MainBeat_Pkg_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_MainBeat_Pkg_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|545067605");
    l0:SetConnections({
        -- PackagePicked,
        [1] = self.f_box_Brick_Exp_MainBeat_Pkg_46_PackagePicked,
    });
    self.box_Brick_Exp_SpawnFrom_RandomizationDatabase_45 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Randomization.Brick_Exp_SpawnFrom_RandomizationDatabase.debug.lua");
    l0 = self.box_Brick_Exp_SpawnFrom_RandomizationDatabase_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_SpawnFrom_RandomizationDatabase_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|699373356");
    l0:SetConnections({
        -- All Entities Spawned,
        [0] = self.f_box_Brick_Exp_SpawnFrom_RandomizationDatabase_45_All_Entities_Spawned,
    });
    self.box_IndexList_v2_88 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|742088191");
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
                [0] = self.f_box_IndexList_v2_88_Output_0,
                [1] = self.f_box_IndexList_v2_88_Output_1,
                [2] = self.f_box_IndexList_v2_88_Output_2,
            },
            count = 3,
        },
    });
    self.box_Brick_Exp_MainBeat_Helicopter_v2_50 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_MainBeat_Helicopter_v2.debug.lua");
    l0 = self.box_Brick_Exp_MainBeat_Helicopter_v2_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_MainBeat_Helicopter_v2_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|989262075");
    l0:SetConnections({
        -- Spawned,
        [0] = self.f_box_Brick_Exp_MainBeat_Helicopter_v2_50_Spawned,
    });
    self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1084441460");
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
        [0] = self.f_box_MultipleOR_6_Out,
    });
    self.box_ActivityAcknowledgeGate_10 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1340229981");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_10_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_10_Reloaded,
    });
    self.box_MultipleOR_62 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1536383598");
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
        [0] = self.f_box_MultipleOR_62_Out,
    });
    self.box_ContextualActionListener_42 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1816570307");
    l0:SetConnections({
        -- Disabled,
        [1] = self.f_box_ContextualActionListener_42_Disabled,
        -- Start,
        [8] = self.f_box_ContextualActionListener_42_Start,
    });
    self.box_Brick_Exp_Common_BasicSetups_79 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_BasicSetups.debug.lua");
    l0 = self.box_Brick_Exp_Common_BasicSetups_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_BasicSetups_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1937138982");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Brick_Exp_Common_BasicSetups_79_Out,
    });
    self.box_IndexList_v2_114 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_114");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|2025225907");
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
                [0] = self.f_box_IndexList_v2_114_Output_0,
                [1] = self.f_box_IndexList_v2_114_Output_1,
                [2] = self.f_box_IndexList_v2_114_Output_2,
                [3] = self.f_box_IndexList_v2_114_Output_3,
                [4] = self.f_box_IndexList_v2_114_Output_4,
                [5] = self.f_box_IndexList_v2_114_Output_5,
            },
            count = 6,
        },
    });
    self.box_NarrativeFade_47 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|2130212009");
    l0:SetConnections({
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_47_FadedOut,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_10;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|622010391", "622010391", "Swamp_C7_CTP_010_Main", "In", "box_ActivityAcknowledgeGate_10.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    
end;

function export:f_box_ActivityInitialized_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_14();
    l0 = self.box_ActivityInitialized_3;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1918515455", "1918515455", "Swamp_C7_CTP_010_Main", "box_ActivityInitialized_3.Out", "box_SetActivityFact_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_20_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_1();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|418913266", "418913266", "Swamp_C7_CTP_010_Main", "box_MissionBlockLayer_20.Activated", "box_MissionBlockLayer_1.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_19_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_19_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_97();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|796490820", "796490820", "Swamp_C7_CTP_010_Main", "box_SetEntity_v2_19.Out", "box_SetEntity_v2_97.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_43_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ContextualActionListener_42();
    l0 = self.box_Delay_v5_43;
    l1 = self.box_ContextualActionListener_42;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|450641083", "450641083", "Swamp_C7_CTP_010_Main", "box_Delay_v5_43.TimeElapsed", "box_ContextualActionListener_42.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_IntegerArithmetics_v2_71_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_71_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_73();
    l0 = self.box_IndexList_v2_73;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1781313274", "1781313274", "Swamp_C7_CTP_010_Main", "box_IntegerArithmetics_v2_71.Out", "box_IndexList_v2_73.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_SetEntity_v2_92_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_92_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_57;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|596114841", "596114841", "Swamp_C7_CTP_010_Main", "box_SetEntity_v2_92.Out", "box_MultipleOR_57.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_OutputOrder_v2_98_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|100500027", "100500027", "Swamp_C7_CTP_010_Main", "box_OutputOrder_v2_98.Out", "box_MultipleOR_62.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_98_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_MainBeat_Pkg_46();
    l0 = self.box_Brick_Exp_MainBeat_Pkg_46;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1807891064", "1807891064", "Swamp_C7_CTP_010_Main", "box_OutputOrder_v2_98.Out", "box_Brick_Exp_MainBeat_Pkg_46.Initialize_Stronghold", clone:GetLuaBox(), l0:GetLuaBox());
    -- Initialize_Stronghold
    l0:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_15_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_5();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1417260578", "1417260578", "Swamp_C7_CTP_010_Main", "box_MissionBlockLayer_15.Activated", "box_MissionBlockLayer_5.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_70_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_110();
    l0 = self.box_MultipleOR_70;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1597028681", "1597028681", "Swamp_C7_CTP_010_Main", "box_MultipleOR_70.Out", "box_OutputOrder_v2_110.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetActivityFact_14_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_98();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|145743429", "145743429", "Swamp_C7_CTP_010_Main", "box_SetActivityFact_14.Out", "box_OutputOrder_v2_98.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_26_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_7();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|524841885", "524841885", "Swamp_C7_CTP_010_Main", "box_MissionBlockLayer_26.Activated", "box_MissionBlockLayer_7.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_83_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_83_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_72();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|326570934", "326570934", "Swamp_C7_CTP_010_Main", "box_SetInteger_v2_83.Out", "box_SetInteger_v2_72.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetExpeditionGameplayElements_75_Out()
    local params, l0;
    self:OnExit_box_GetExpeditionGameplayElements_75_Out();
    l0 = Boxes[GetPathID("Domino/System/GetExpeditionGameplayElements.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_71();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1914496944", "1914496944", "Swamp_C7_CTP_010_Main", "box_GetExpeditionGameplayElements_75.Out", "box_IntegerArithmetics_v2_71.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_44_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_44;
    l1 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|551743292", "551743292", "Swamp_C7_CTP_010_Main", "box_Delay_v5_44.TimeElapsed", "box_MultipleOR_62.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_57_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_57;
    l1 = self.box_ActivityInitialized_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1411740851", "1411740851", "Swamp_C7_CTP_010_Main", "box_MultipleOR_57.Out", "box_ActivityInitialized_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_MissionBlockLayer_8_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_54();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|461409289", "461409289", "Swamp_C7_CTP_010_Main", "box_MissionBlockLayer_8.Activated", "box_SetEntity_v2_54.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_80_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_74();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|645595786", "645595786", "Swamp_C7_CTP_010_Main", "box_MissionBlockLayer_80.Activated", "box_SetInteger_v2_74.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_76_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_76_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_81();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|937868044", "937868044", "Swamp_C7_CTP_010_Main", "box_SetInteger_v2_76.Out", "box_SetEntity_v2_81.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_1_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_36();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|411990446", "411990446", "Swamp_C7_CTP_010_Main", "box_MissionBlockLayer_1.Activated", "box_SetEntity_v2_36.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_73_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_80();
    l0 = self.box_IndexList_v2_73;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|898160074", "898160074", "Swamp_C7_CTP_010_Main", "box_IndexList_v2_73.Output", "box_MissionBlockLayer_80.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_73_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_77();
    l0 = self.box_IndexList_v2_73;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|279745011", "279745011", "Swamp_C7_CTP_010_Main", "box_IndexList_v2_73.Output", "box_MissionBlockLayer_77.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_73_Output_2()
    local l0, l1;
    l0 = self.box_IndexList_v2_73;
    l1 = self.box_Brick_Exp_SpawnFrom_RandomizationDatabase_45;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1847016062", "1847016062", "Swamp_C7_CTP_010_Main", "box_IndexList_v2_73.Output", "box_Brick_Exp_SpawnFrom_RandomizationDatabase_45.Spawn Entities from Database", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn Entities from Database
    l1:Exec(1, {
    });
end;

function export:f_box_Brick_Exp_MainBeat_Pkg_46_PackagePicked()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_29();
    l0 = self.box_Brick_Exp_MainBeat_Pkg_46;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1123677469", "1123677469", "Swamp_C7_CTP_010_Main", "box_Brick_Exp_MainBeat_Pkg_46.PackagePicked", "box_GroupAddToGroup_v2_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_36_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_36_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_100();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|971697214", "971697214", "Swamp_C7_CTP_010_Main", "box_SetEntity_v2_36.Out", "box_SetEntity_v2_100.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_110_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_MainBeat_Helicopter_v2_50();
    l0 = self.box_Brick_Exp_MainBeat_Helicopter_v2_50;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|828624392", "828624392", "Swamp_C7_CTP_010_Main", "box_OutputOrder_v2_110.Out", "box_Brick_Exp_MainBeat_Helicopter_v2_50.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_110_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_88();
    l0 = self.box_IndexList_v2_88;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|2043968354", "2043968354", "Swamp_C7_CTP_010_Main", "box_OutputOrder_v2_110.Out", "box_IndexList_v2_88.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_SetEntity_v2_99_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_99_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_57;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1364071499", "1364071499", "Swamp_C7_CTP_010_Main", "box_SetEntity_v2_99.Out", "box_MultipleOR_57.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetEntity_v2_90_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_90_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_57;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1455531601", "1455531601", "Swamp_C7_CTP_010_Main", "box_SetEntity_v2_90.Out", "box_MultipleOR_57.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_MissionBlockLayer_2_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_4();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1543216242", "1543216242", "Swamp_C7_CTP_010_Main", "box_MissionBlockLayer_2.Activated", "box_MissionBlockLayer_4.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_SpawnFrom_RandomizationDatabase_45_All_Entities_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_12();
    l0 = self.box_Brick_Exp_SpawnFrom_RandomizationDatabase_45;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|780921046", "780921046", "Swamp_C7_CTP_010_Main", "box_Brick_Exp_SpawnFrom_RandomizationDatabase_45.All Entities Spawned", "box_MissionBlockLayer_12.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_77_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_83();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|104895779", "104895779", "Swamp_C7_CTP_010_Main", "box_MissionBlockLayer_77.Activated", "box_SetInteger_v2_83.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_88_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_13();
    l0 = self.box_IndexList_v2_88;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|312333242", "312333242", "Swamp_C7_CTP_010_Main", "box_IndexList_v2_88.Output", "box_SetActivityFact_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_88_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_85();
    l0 = self.box_IndexList_v2_88;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|882368327", "882368327", "Swamp_C7_CTP_010_Main", "box_IndexList_v2_88.Output", "box_SetActivityFact_85.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_88_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_63();
    l0 = self.box_IndexList_v2_88;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1388983501", "1388983501", "Swamp_C7_CTP_010_Main", "box_IndexList_v2_88.Output", "box_SetActivityFact_63.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_27_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_8();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1006975754", "1006975754", "Swamp_C7_CTP_010_Main", "box_MissionBlockLayer_27.Activated", "box_MissionBlockLayer_8.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_MainBeat_Helicopter_v2_50_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_IndexList_v2_114();
    l0 = self.box_Brick_Exp_MainBeat_Helicopter_v2_50;
    l1 = self.box_IndexList_v2_114;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|699671092", "699671092", "Swamp_C7_CTP_010_Main", "box_Brick_Exp_MainBeat_Helicopter_v2_50.Spawned", "box_IndexList_v2_114.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetExpeditionGameplayElements_75();
    l0 = self.box_MultipleOR_6;
    l1 = Boxes[GetPathID("Domino/System/GetExpeditionGameplayElements.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1349990511", "1349990511", "Swamp_C7_CTP_010_Main", "box_MultipleOR_6.Out", "box_GetExpeditionGameplayElements_75.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_9_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_55();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1353827982", "1353827982", "Swamp_C7_CTP_010_Main", "box_MissionBlockLayer_9.Activated", "box_SetEntity_v2_55.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_4_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_23();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|571402807", "571402807", "Swamp_C7_CTP_010_Main", "box_MissionBlockLayer_4.Activated", "box_SetEntity_v2_23.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_11_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_11_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_76();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1202771313", "1202771313", "Swamp_C7_CTP_010_Main", "box_SetInteger_v2_11.Out", "box_SetInteger_v2_76.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_97_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_97_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_57;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1113653800", "1113653800", "Swamp_C7_CTP_010_Main", "box_SetEntity_v2_97.Out", "box_MultipleOR_57.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_ActivityAcknowledgeGate_10_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_10;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1503597497", "1503597497", "Swamp_C7_CTP_010_Main", "box_ActivityAcknowledgeGate_10.Acknowledged", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_10_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_47();
    l0 = self.box_ActivityAcknowledgeGate_10;
    l1 = self.box_NarrativeFade_47;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|315566837", "315566837", "Swamp_C7_CTP_010_Main", "box_ActivityAcknowledgeGate_10.Reloaded", "box_NarrativeFade_47.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_SetInteger_v2_82_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_82_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_84();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1545550287", "1545550287", "Swamp_C7_CTP_010_Main", "box_SetInteger_v2_82.Out", "box_SetEntity_v2_84.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_7_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_28();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|91672095", "91672095", "Swamp_C7_CTP_010_Main", "box_MissionBlockLayer_7.Activated", "box_SetEntity_v2_28.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_5_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_19();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|2061378078", "2061378078", "Swamp_C7_CTP_010_Main", "box_MissionBlockLayer_5.Activated", "box_SetEntity_v2_19.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_84_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_84_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_70;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|14571536", "14571536", "Swamp_C7_CTP_010_Main", "box_SetEntity_v2_84.Out", "box_MultipleOR_70.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetEntity_v2_81_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_81_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_70;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1180162487", "1180162487", "Swamp_C7_CTP_010_Main", "box_SetEntity_v2_81.Out", "box_MultipleOR_70.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetEntity_v2_101_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_101_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_57;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1963576470", "1963576470", "Swamp_C7_CTP_010_Main", "box_SetEntity_v2_101.Out", "box_MultipleOR_57.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_BroadcastMessage_103_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_34();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1754133429", "1754133429", "Swamp_C7_CTP_010_Main", "box_BroadcastMessage_103.Out", "box_ActivityEnd_34.EndNoSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndNoSave
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_62_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ContextualActionListener_42();
    l0 = self.box_MultipleOR_62;
    l1 = self.box_ContextualActionListener_42;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|440378148", "440378148", "Swamp_C7_CTP_010_Main", "box_MultipleOR_62.Out", "box_ContextualActionListener_42.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_24_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_9();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|290554445", "290554445", "Swamp_C7_CTP_010_Main", "box_MissionBlockLayer_24.Activated", "box_MissionBlockLayer_9.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_42_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_44();
    l0 = self.box_ContextualActionListener_42;
    l1 = self.box_Delay_v5_44;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1163620370", "1163620370", "Swamp_C7_CTP_010_Main", "box_ContextualActionListener_42.Disabled", "box_Delay_v5_44.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ContextualActionListener_42_Start()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_43();
    l0 = self.box_ContextualActionListener_42;
    l1 = self.box_Delay_v5_43;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1754670116", "1754670116", "Swamp_C7_CTP_010_Main", "box_ContextualActionListener_42.Start", "box_Delay_v5_43.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MissionBlockLayer_12_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_BasicSetups_79();
    l0 = self.box_Brick_Exp_Common_BasicSetups_79;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1008285666", "1008285666", "Swamp_C7_CTP_010_Main", "box_MissionBlockLayer_12.Activated", "box_Brick_Exp_Common_BasicSetups_79.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_SetEntity_v2_23_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_23_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_99();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|583139953", "583139953", "Swamp_C7_CTP_010_Main", "box_SetEntity_v2_23.Out", "box_SetEntity_v2_99.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_100_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_100_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_57;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1183722565", "1183722565", "Swamp_C7_CTP_010_Main", "box_SetEntity_v2_100.Out", "box_MultipleOR_57.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Exp_Common_BasicSetups_79_Out()
    local l0, l1;
    self:OnExit_box_Brick_Exp_Common_BasicSetups_79_Out();
    l0 = self.box_Brick_Exp_Common_BasicSetups_79;
    l1 = self.box_MultipleOR_70;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|290876288", "290876288", "Swamp_C7_CTP_010_Main", "box_Brick_Exp_Common_BasicSetups_79.Out", "box_MultipleOR_70.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_SetEntity_v2_54_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_54_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_101();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1826594311", "1826594311", "Swamp_C7_CTP_010_Main", "box_SetEntity_v2_54.Out", "box_SetEntity_v2_101.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_28_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_28_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_92();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|578620290", "578620290", "Swamp_C7_CTP_010_Main", "box_SetEntity_v2_28.Out", "box_SetEntity_v2_92.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_74_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_74_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_11();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1601205201", "1601205201", "Swamp_C7_CTP_010_Main", "box_SetInteger_v2_74.Out", "box_SetInteger_v2_11.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_114_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_20();
    l0 = self.box_IndexList_v2_114;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|942290142", "942290142", "Swamp_C7_CTP_010_Main", "box_IndexList_v2_114.Output", "box_MissionBlockLayer_20.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_114_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_2();
    l0 = self.box_IndexList_v2_114;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1818291925", "1818291925", "Swamp_C7_CTP_010_Main", "box_IndexList_v2_114.Output", "box_MissionBlockLayer_2.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_114_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_27();
    l0 = self.box_IndexList_v2_114;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|2103946601", "2103946601", "Swamp_C7_CTP_010_Main", "box_IndexList_v2_114.Output", "box_MissionBlockLayer_27.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_114_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_24();
    l0 = self.box_IndexList_v2_114;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|83496259", "83496259", "Swamp_C7_CTP_010_Main", "box_IndexList_v2_114.Output", "box_MissionBlockLayer_24.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_114_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_26();
    l0 = self.box_IndexList_v2_114;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|181879181", "181879181", "Swamp_C7_CTP_010_Main", "box_IndexList_v2_114.Output", "box_MissionBlockLayer_26.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_114_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_15();
    l0 = self.box_IndexList_v2_114;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|893948940", "893948940", "Swamp_C7_CTP_010_Main", "box_IndexList_v2_114.Output", "box_MissionBlockLayer_15.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_55_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_55_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_90();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|2044464841", "2044464841", "Swamp_C7_CTP_010_Main", "box_SetEntity_v2_55.Out", "box_SetEntity_v2_90.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_72_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_72_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_82();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1654484850", "1654484850", "Swamp_C7_CTP_010_Main", "box_SetInteger_v2_72.Out", "box_SetInteger_v2_82.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NarrativeFade_47_FadedOut()
    local l0, l1;
    l0 = self.box_NarrativeFade_47;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1266443699", "1266443699", "Swamp_C7_CTP_010_Main", "box_NarrativeFade_47.FadedOut", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GroupAddToGroup_v2_29_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_103();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1887282577", "1887282577", "Swamp_C7_CTP_010_Main", "box_GroupAddToGroup_v2_29.Out", "box_BroadcastMessage_103.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_MissionBlockLayer_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|35077856");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_20_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160311951953389",
        -- missionLayerId,
        [1] = "27160312890466208",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|42383381");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_19_Out,
    });
    params = {
        -- Entity,
        [0] = "2109476908218453521",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_43()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 90,
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|98764850");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_71_Out,
    });
    params = {
        -- A,
        [0] = self._sld_ExpeditionDifficultyLevel_box_GetExpeditionGameplayElements_75,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|99935501");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_92_Out,
    });
    params = {
        -- Entity,
        [0] = "2109477504105320367",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_98");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|110853549");
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
                [0] = self.f_box_OutputOrder_v2_98_Out_0,
                [1] = self.f_box_OutputOrder_v2_98_Out_1,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|149036685");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_15_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160311951953389",
        -- missionLayerId,
        [1] = "72196309164247255",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|211211405");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_14_Out,
    });
    params = {
        -- Fact,
        [0] = "Main_Initiallized",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|219588235");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_26_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160311951953389",
        -- missionLayerId,
        [1] = "63189109909500148",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|224417017");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_83_Out,
    });
    params = {
        -- Integer,
        [1] = 3,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_GetExpeditionGameplayElements_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetExpeditionGameplayElements.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetExpeditionGameplayElements_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|246783811");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetExpeditionGameplayElements_75_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_44()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 40,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|413942188");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_8_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160311951953389",
        -- missionLayerId,
        [1] = "45174723325202631",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|416386266");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_80_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160311951953389",
        -- missionLayerId,
        [1] = "36167511206694382",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|434214701");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_76_Out,
    });
    params = {
        -- Integer,
        [1] = 2,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|469240999");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_1_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160311951953389",
        -- missionLayerId,
        [1] = "27160324815702339",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_73()
    local params;
    params = {
        -- Index,
        [0] = Globals.Swamp_C7_CTP_010_Main.i_Difficulty,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_MainBeat_Pkg_46()
    local params;
    params = {
        -- CloseRangeDiscoveryShape_A,
        [0] = "2108328963609724780",
        -- CloseRangeDiscoveryShape_B,
        [1] = "2108329035026139041",
        -- CloseRangeDiscoveryShape_C,
        [2] = "2108328932307633991",
        -- CloseRangeDiscoveryShape_D,
        [3] = "2108329104477521844",
        -- CloseRangeDiscoveryShape_E,
        [4] = "2108205806292830607",
        -- CloseRangeDiscoveryShape_F,
        [5] = "2108329090483226547",
        -- PackagePositionID,
        [6] = self.i_PackagePositionID,
        -- PackageSpawner_Variable,
        [7] = Globals.Swamp_C7_CTP_010_Main.e_PackageSpawner,
        -- PkgPickedUpFactToStartCS,
        [8] = "package_pickedup",
        -- PlayMusicEvent,
        [9] = "645226521",
        -- SearchZoneMarker_A,
        [10] = "2108328963611821935",
        -- SearchZoneMarker_B,
        [11] = "2108329035024041887",
        -- SearchZoneMarker_C,
        [12] = "2108328932307633989",
        -- SearchZoneMarker_D,
        [13] = "2108329134496155590",
        -- SearchZoneMarker_E,
        [14] = "2108205722532579689",
        -- SearchZoneMarker_F,
        [15] = "2108329118706698168",
        -- StopMusicEvent,
        [16] = "3757372511",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|547772459");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_36_Out,
    });
    params = {
        -- Entity,
        [0] = "2108979845334567545",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_110()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_110");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|603502742");
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
                [0] = self.f_box_OutputOrder_v2_110_Out_0,
                [1] = self.f_box_OutputOrder_v2_110_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_99");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|610467469");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_99_Out,
    });
    params = {
        -- Entity,
        [0] = "2109477504107417523",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|621689585");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_90_Out,
    });
    params = {
        -- Entity,
        [0] = "2109477504105320367",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|636838692");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_2_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160311951953389",
        -- missionLayerId,
        [1] = "36167512145226681",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|722661975");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_77_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160311951953389",
        -- missionLayerId,
        [1] = "27160313834532947",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_88()
    local params;
    params = {
        -- Index,
        [0] = Globals.Swamp_C7_CTP_010_Main.i_ExtractionPOIID,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|817781195");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_27_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160311951953389",
        -- missionLayerId,
        [1] = "45174711399999330",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_MainBeat_Helicopter_v2_50()
    local params;
    params = {
        -- EnemyGroup,
        [0] = "#A21E7AC0",
        -- ForceDespawnTimer,
        [1] = 30,
        -- HelicopterSpawner_A,
        [3] = "2108328322413888154",
        -- HelicopterSpawner_B,
        [4] = "2108328706486306096",
        -- HelicopterSpawner_C,
        [5] = "2108328770952758920",
        -- PlayerSpawnPOIIndex,
        [6] = self.i_PlayerSpawnPOIIndex,
        -- STP_HelicopterLeave_A,
        [7] = "2108328566572713016",
        -- STP_HelicopterLeave_B,
        [8] = "2108328706486306089",
        -- STP_HelicopterLeave_C,
        [9] = "2108328770969536148",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1117934741");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_9_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160311951953389",
        -- missionLayerId,
        [1] = "54181922579949940",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1135990375");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_4_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160311951953389",
        -- missionLayerId,
        [1] = "36167524070450487",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1315520121");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_11_Out,
    });
    params = {
        -- Integer,
        [1] = 5,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_97");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1338930161");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_97_Out,
    });
    params = {
        -- Entity,
        [0] = "2109477504105320367",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1364374788");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_82_Out,
    });
    params = {
        -- Integer,
        [1] = 1,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1376165405");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_7_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160311951953389",
        -- missionLayerId,
        [1] = "63189121834698925",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1379968217");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_5_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160311951953389",
        -- missionLayerId,
        [1] = "72196321089447012",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_84()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1395326833");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_84_Out,
    });
    params = {
        -- Entity,
        [0] = "2108329035021944728",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1440568493");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_81_Out,
    });
    params = {
        -- Entity,
        [0] = "2108205722532579687",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_101");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1471251620");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_101_Out,
    });
    params = {
        -- Entity,
        [0] = "2109477504105320367",
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_103");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1496777858");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_103_Out,
    });
    params = {
        -- Message,
        [0] = "GetPackage",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1687351756");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_24_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160311951953389",
        -- missionLayerId,
        [1] = "54181910654753486",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1758931068");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1811155110");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "ExtractionPoint_B",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_42()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2109765148351674054",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1856333531");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "ExtractionPoint_A",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1874160764");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_12_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160311951953389",
        -- missionLayerId,
        [1] = "27160317720751236",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1881168567");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_23_Out,
    });
    params = {
        -- Entity,
        [0] = "2109477016429399581",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_100");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1898704142");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_100_Out,
    });
    params = {
        -- Entity,
        [0] = "2109477504107417523",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_BasicSetups_79()
    local params;
    params = {
        -- DebugMode,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1940626236");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_54_Out,
    });
    params = {
        -- Entity,
        [0] = "2108979845338761853",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1947346841");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_28_Out,
    });
    params = {
        -- Entity,
        [0] = "2109476907924852229",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|1959067124");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "ExtractionPoint_C",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|2018149735");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_74_Out,
    });
    params = {
        -- Integer,
        [1] = 1,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_114()
    local params;
    params = {
        -- Index,
        [0] = self.i_PackagePositionID,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|2067978888");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_55_Out,
    });
    params = {
        -- Entity,
        [0] = "2108979845345053313",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|2113839744");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_72_Out,
    });
    params = {
        -- Integer,
        [1] = 2,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_47()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Main.domino|@Swamp_C7_CTP_010_Main|2141597062");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GroupAddToGroup_v2_29_Out,
    });
    params = {
        -- FromGroup,
        [0] = "#ACE2D9DE",
        -- ToGroup,
        [1] = "#A21E7AC0",
    };
    return params;
end;

function export:OnExit_box_SetEntity_v2_19_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    Globals.Swamp_C7_CTP_010_Main.e_CS_GuardPackage = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_71_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    Globals.Swamp_C7_CTP_010_Main.i_Difficulty = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_92_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    Globals.Swamp_C7_CTP_010_Main.e_CS_GuardPOI = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_83_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.i_PlayerSpawnPOIIndex = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetExpeditionGameplayElements_75_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetExpeditionGameplayElements.lua")];
    self._sld_ExpeditionDifficultyLevel_box_GetExpeditionGameplayElements_75 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_76_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.Swamp_C7_CTP_010_Main.i_ExtractionPOIID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_36_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    Globals.Swamp_C7_CTP_010_Main.e_CS_GuardPackage = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_99_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    Globals.Swamp_C7_CTP_010_Main.e_CS_GuardPOI = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_90_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    Globals.Swamp_C7_CTP_010_Main.e_CS_GuardPOI = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_11_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.i_PackagePositionID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_97_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    Globals.Swamp_C7_CTP_010_Main.e_CS_GuardPOI = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_82_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.Swamp_C7_CTP_010_Main.i_ExtractionPOIID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_84_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    Globals.Swamp_C7_CTP_010_Main.e_PackageSpawner = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_81_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    Globals.Swamp_C7_CTP_010_Main.e_PackageSpawner = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_101_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    Globals.Swamp_C7_CTP_010_Main.e_CS_GuardPOI = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_23_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    Globals.Swamp_C7_CTP_010_Main.e_CS_GuardPackage = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_100_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    Globals.Swamp_C7_CTP_010_Main.e_CS_GuardPOI = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_Exp_Common_BasicSetups_79_Out()
    local l0;
    l0 = self.box_Brick_Exp_Common_BasicSetups_79;
    Globals.Swamp_C7_CTP_010_Main.i_Difficulty = l0:GetDataOutValue(0);
    self.i_PlayerSpawnPOIIndex = l0:GetDataOutValue(4);
    Globals.Swamp_C7_CTP_010_Main.i_ExtractionPOIID = l0:GetDataOutValue(1);
    self.i_PackagePositionID = l0:GetDataOutValue(2);
    Globals.Swamp_C7_CTP_010_Main.e_PackageSpawner = l0:GetDataOutValue(3);
end;

function export:OnExit_box_SetEntity_v2_54_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    Globals.Swamp_C7_CTP_010_Main.e_CS_GuardPackage = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_28_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    Globals.Swamp_C7_CTP_010_Main.e_CS_GuardPackage = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_74_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.i_PlayerSpawnPOIIndex = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_55_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    Globals.Swamp_C7_CTP_010_Main.e_CS_GuardPackage = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_72_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.i_PackagePositionID = l0:GetDataOutValue(0);
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
