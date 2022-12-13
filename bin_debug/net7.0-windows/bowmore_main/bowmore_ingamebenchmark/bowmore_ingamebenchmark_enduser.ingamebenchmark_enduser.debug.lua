LUACo -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_ingamebenchmark/bowmore_ingamebenchmark_enduser.domino
-- User graph: InGameBenchmark_EndUser
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
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp_V2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAIRequestGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetInGameBenchmark.lua");
        cboxRes:RegisterBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/PlaySequence_v8.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PawnCameraModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/PlayersVisibilityModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/PostFx_v3.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/VehicleModifier_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_InGameBenchmark/Bowmore_InGameBenchmark_EndUser.InGameBenchmark_EndUser.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp_V2.debug.lua")] = {
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
            [0] = {
                name = "KeepBlackBars",
                type = "bool",
            },
            [1] = {
                name = "KeepGFHDisabled",
                type = "bool",
            },
            [2] = {
                name = "KeepGodMode",
                type = "bool",
            },
            [3] = {
                name = "KeepHUDMode",
                type = "bool",
            },
            [4] = {
                name = "KeepWeaponHolstered",
                type = "bool",
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
    metadataTable[GetPathID("Domino/System/AI/SpawnAIRequestGroup_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cancel",
            },
            [1] = {
                name = "SpawnByCount",
            },
            [2] = {
                name = "SpawnByPercentage",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "AtLeastOneRequestSucceeded",
                delayed = false,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
            [2] = {
                name = "RequestsFailed",
                delayed = false,
            },
            [3] = {
                name = "RequestSpawned",
                delayed = true,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "RequestGroupName",
                type = "string",
            },
            [1] = {
                name = "SpawnerCount",
                type = "int",
            },
            [2] = {
                name = "SpawnerPercentage",
                type = "int",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/CHEAT_SetEnvironmentTimeScale.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetTimeScale",
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
                name = "timeScale",
                type = "float",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/EntityStatusListener.lua")] = {
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
                name = "Loaded",
                delayed = true,
            },
            [3] = {
                name = "Unloaded",
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
                name = "checkNow",
                type = "bool",
            },
            [2] = {
                name = "entityId",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/GetInGameBenchmark.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "InBenchmark",
                delayed = false,
            },
            [1] = {
                name = "NotInBenchmark",
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
    metadataTable[GetPathID("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua")] = {
        stateless = false,
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
            [3] = {
                name = "Enable",
            },
        },
        controlInCount = 4,
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
            [3] = {
                name = "Enabled",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "missionBlockId",
                type = "missionblock",
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
    metadataTable[GetPathID("Domino/System/Narrative/PlaySequence_v8.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Pause",
            },
            [1] = {
                name = "Play",
            },
            [2] = {
                name = "PlayFromStart",
            },
            [3] = {
                name = "Skip",
            },
            [4] = {
                name = "SPIn",
                dynamicType = 2,
            },
            [5] = {
                name = "Stop",
            },
        },
        controlInCount = 6,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = true,
            },
            [1] = {
                name = "Paused",
                delayed = true,
            },
            [2] = {
                name = "Skipped",
                delayed = true,
            },
            [3] = {
                name = "SPOut",
                dynamicType = 2,
                delayed = false,
            },
            [4] = {
                name = "Started",
                delayed = true,
            },
            [5] = {
                name = "Stopped",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "cleanupArrows",
                type = "bool",
            },
            [1] = {
                name = "IsSkippable",
                type = "bool",
            },
            [2] = {
                name = "MetaSequenceID",
                type = "int",
            },
            [3] = {
                name = "SceneEntity",
                type = "entity",
            },
            [4] = {
                name = "SequenceFile",
                type = "sequence",
            },
            [5] = {
                name = "ShouldRemovePostFx",
                type = "bool",
            },
            [6] = {
                name = "SkipPostFx",
                type = "string",
            },
        },
        dataInCount = 7,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Narrative/StartMetaSequence.lua")] = {
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
            [0] = {
                name = "ID",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/Narrative/StopMetaSequence_v5.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Interrupt",
            },
            [1] = {
                name = "Stop",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Interrupted",
                delayed = true,
            },
            [1] = {
                name = "Stopped",
                delayed = true,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "ID",
                type = "int",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")] = {
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
                name = "LocalPlayer",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/Player/PawnCameraModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "DisableCloseUp",
            },
            [1] = {
                name = "DisableExtremeZoom",
            },
            [2] = {
                name = "EnableCloseUp",
            },
            [3] = {
                name = "EnableExtremeZoom",
            },
        },
        controlInCount = 4,
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
                name = "ExtremeZoomDisabled",
                delayed = false,
            },
            [3] = {
                name = "ExtremeZoomEnabled",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "Pawns",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Player/PlayersVisibilityModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetAllInvisible",
            },
            [1] = {
                name = "SetAllVisible",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnSetAllInvisible",
                delayed = false,
            },
            [1] = {
                name = "OnSetAllVisible",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "ExcludeLocalPlayer",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Player/PostFx_v3.lua")] = {
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
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Pawns",
                type = "group",
            },
            [1] = {
                name = "PostFxName",
                type = "string",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/SetTimeOfDay.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "IncrementTimeOfDay",
            },
            [1] = {
                name = "SetTimeOfDay",
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
                name = "Hour",
                type = "int",
            },
            [1] = {
                name = "Minute",
                type = "int",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/VehicleModifier_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetAlternativeSuspensionDisabled",
            },
            [1] = {
                name = "SetAlternativeSuspensionEnabled",
            },
            [2] = {
                name = "SetAsAnimated",
            },
            [3] = {
                name = "SetAsDestructable",
            },
            [4] = {
                name = "SetAsIndestructable",
            },
            [5] = {
                name = "SetAsNotAnimated",
            },
            [6] = {
                name = "SetAsUnusable",
            },
            [7] = {
                name = "SetAsUsable",
            },
            [8] = {
                name = "SetBrakesReleased",
            },
            [9] = {
                name = "SetCommandeerDisabled",
            },
            [10] = {
                name = "SetCommandeerEnabled",
            },
            [11] = {
                name = "SetEngineBroken",
            },
            [12] = {
                name = "SetEngineDisabled",
            },
            [13] = {
                name = "SetEngineMajorDamage",
            },
            [14] = {
                name = "SetEngineMinorDamage",
            },
            [15] = {
                name = "SetExitDisabled",
            },
            [16] = {
                name = "SetExitEnabled",
            },
            [17] = {
                name = "SetExplosion",
            },
            [18] = {
                name = "SetInputDisabled",
            },
            [19] = {
                name = "SetInputEnabled",
            },
        },
        controlInCount = 20,
        controlOut = {
            [0] = {
                name = "OnSetAlternativeSuspensionDisabled",
                delayed = false,
            },
            [1] = {
                name = "OnSetAlternativeSuspensionEnabled",
                delayed = false,
            },
            [2] = {
                name = "OnSetAsAnimated",
                delayed = false,
            },
            [3] = {
                name = "OnSetAsDestructible",
                delayed = false,
            },
            [4] = {
                name = "OnSetAsIndestructible",
                delayed = false,
            },
            [5] = {
                name = "OnSetAsNotAnimated",
                delayed = false,
            },
            [6] = {
                name = "OnSetAsUnusable",
                delayed = false,
            },
            [7] = {
                name = "OnSetAsUsable",
                delayed = false,
            },
            [8] = {
                name = "OnSetBrakesReleased",
                delayed = false,
            },
            [9] = {
                name = "OnSetCommandeerDisabled",
                delayed = false,
            },
            [10] = {
                name = "OnSetCommandeerEnabled",
                delayed = false,
            },
            [11] = {
                name = "OnSetEngineBroken",
                delayed = false,
            },
            [12] = {
                name = "OnSetEngineDisabled",
                delayed = false,
            },
            [13] = {
                name = "OnSetEngineMajorDamage",
                delayed = false,
            },
            [14] = {
                name = "OnSetEngineMinorDamage",
                delayed = false,
            },
            [15] = {
                name = "OnSetExitDisabled",
                delayed = false,
            },
            [16] = {
                name = "OnSetExitEnabled",
                delayed = false,
            },
            [17] = {
                name = "OnSetExplosion",
                delayed = false,
            },
            [18] = {
                name = "OnSetInputDisabled",
                delayed = false,
            },
            [19] = {
                name = "OnSetInputEnabled",
                delayed = false,
            },
        },
        controlOutCount = 20,
        dataIn = {
            [0] = {
                name = "targets",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "InGameBenchmark_EndUser";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser";
    self.MetaSequenceID = 0;
    self.player = nil;
    self.box_PawnCameraModifier_17 = cbox:CreateBox("Domino/System/Player/PawnCameraModifier.lua");
    l0 = self.box_PawnCameraModifier_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnCameraModifier_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|14680230");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PawnCameraModifier_17_Disabled,
    });
    self.box_StopMetaSequence_v5_10 = cbox:CreateBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
    l0 = self.box_StopMetaSequence_v5_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v5_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|51805725");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v5_10_Stopped,
    });
    self.box_StartMetaSequence_20 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|93475503");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_20_Out,
    });
    self.box_SpawnAI_33 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|177917948");
    l0:SetConnections({
    });
    self.box_PlaySequence_v8_21 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|303464404");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 0,
        },
        controlOut = {
            [3] = 10,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlaySequence_v8_21_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_21_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "StartPoint",
                },
                [1] = {
                    string = "DogOutside",
                    value = self.f_box_PlaySequence_v8_21_SPOut__DogOutside_,
                },
                [2] = {
                    string = "DogBackdoor",
                    value = self.f_box_PlaySequence_v8_21_SPOut__DogBackdoor_,
                },
                [3] = {
                    string = "forest",
                    value = self.f_box_PlaySequence_v8_21_SPOut__forest_,
                },
                [4] = {
                    string = "VehicleExplosion",
                    value = self.f_box_PlaySequence_v8_21_SPOut__VehicleExplosion_,
                },
                [5] = {
                    string = "StimTrigger",
                },
                [6] = {
                    string = "FadeOut",
                    value = self.f_box_PlaySequence_v8_21_SPOut__FadeOut_,
                },
                [7] = {
                    string = "EndPoint",
                    value = self.f_box_PlaySequence_v8_21_SPOut__EndPoint_,
                },
                [8] = {
                    string = "pre_gunparty",
                },
                [9] = {
                    string = "GunParty",
                },
            },
            count = 10,
        },
        -- Stopped,
        [5] = self.f_box_PlaySequence_v8_21_Stopped,
    });
    self.box_SpawnAI_12 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|482521059");
    l0:SetConnections({
    });
    self.box_PawnCameraModifier_16 = cbox:CreateBox("Domino/System/Player/PawnCameraModifier.lua");
    l0 = self.box_PawnCameraModifier_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnCameraModifier_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|534351292");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PawnCameraModifier_16_Enabled,
    });
    self.box_PostFx_v3_31 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|541524213");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PostFx_v3_31_Disabled,
    });
    self.box_EntityStatusListener_44 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|597861193");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_44_Loaded,
    });
    self.box_MultipleOR_13 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|610759297");
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
        [0] = self.f_box_MultipleOR_13_Out,
    });
    self.box_ActivityAcknowledgeGate_4 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|623016559");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_4_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_4_Reloaded,
    });
    self.box_ActivityInitialized_3 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|919340231");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_3_Out,
    });
    self.box_SpawnAIRequestGroup_v2_37 = cbox:CreateBox("Domino/System/AI/SpawnAIRequestGroup_v2.lua");
    l0 = self.box_SpawnAIRequestGroup_v2_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAIRequestGroup_v2_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|989929264");
    l0:SetConnections({
    });
    self.box_MultipleOR_23 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|993003606");
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
        [0] = self.f_box_MultipleOR_23_Out,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_41 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1227866528");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_41_Out,
    });
    self.box_PostFx_v3_24 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1243721300");
    l0:SetConnections({
    });
    self.box_NarrativeSceneCleanUp_V2_1 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp_V2.debug.lua");
    l0 = self.box_NarrativeSceneCleanUp_V2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneCleanUp_V2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1352809527");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_NarrativeSceneCleanUp_V2_1_Out,
    });
    self.box_PlayersVisibilityModifier_39 = cbox:CreateBox("Domino/System/Player/PlayersVisibilityModifier.lua");
    l0 = self.box_PlayersVisibilityModifier_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayersVisibilityModifier_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1408809925");
    l0:SetConnections({
        -- OnSetAllInvisible,
        [0] = self.f_box_PlayersVisibilityModifier_39_OnSetAllInvisible,
    });
    self.box_MultipleOR_19 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1666433107");
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
    self.box_ActivityInitialized_22 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1827197555");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_22_Out,
    });
    self.box_MultipleOR_18 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1870926028");
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
    self.box_BaseMissionBlock_v2_38 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1949501090");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_BaseMissionBlock_v2_38_Disabled,
    });
    self.box_PostFx_v3_55 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|2071067400");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|7692408", "7692408", "InGameBenchmark_EndUser", "In", "box_OutputOrder_v2_15.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_25_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_12();
    l0 = self.box_SpawnAI_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1497563817", "1497563817", "InGameBenchmark_EndUser", "box_Simple_Node_25.Out", "box_SpawnAI_12.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_32_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_33();
    l0 = self.box_SpawnAI_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|2047760827", "2047760827", "InGameBenchmark_EndUser", "box_Simple_Node_32.Out", "box_SpawnAI_33.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_58_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostFx_v3_55();
    l0 = self.box_PostFx_v3_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|39030134", "39030134", "InGameBenchmark_EndUser", "box_Simple_Node_58.Out", "box_PostFx_v3_55.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_42_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostFx_v3_24();
    l0 = self.box_PostFx_v3_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|632121859", "632121859", "InGameBenchmark_EndUser", "box_Simple_Node_42.Out", "box_PostFx_v3_24.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_36_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAIRequestGroup_v2_37();
    l0 = self.box_SpawnAIRequestGroup_v2_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1713722959", "1713722959", "InGameBenchmark_EndUser", "box_Simple_Node_36.Out", "box_SpawnAIRequestGroup_v2_37.SpawnByPercentage", clone:GetLuaBox(), l0:GetLuaBox());
    -- SpawnByPercentage
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_52_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_21();
    l0 = self.box_PlaySequence_v8_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|999055065", "999055065", "InGameBenchmark_EndUser", "box_Simple_Node_52.Out", "box_PlaySequence_v8_21.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_43_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleModifier_v2_29();
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|730494623", "730494623", "InGameBenchmark_EndUser", "box_Simple_Node_43.Out", "box_VehicleModifier_v2_29.SetExplosion", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetExplosion
    l0:Exec(17, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PawnCameraModifier_17_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneCleanUp_V2_1();
    l0 = self.box_PawnCameraModifier_17;
    l1 = self.box_NarrativeSceneCleanUp_V2_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1895544690", "1895544690", "InGameBenchmark_EndUser", "box_PawnCameraModifier_17.Disabled", "box_NarrativeSceneCleanUp_V2_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_StopMetaSequence_v5_10_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_PawnCameraModifier_17();
    l0 = self.box_StopMetaSequence_v5_10;
    l1 = self.box_PawnCameraModifier_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1801367091", "1801367091", "InGameBenchmark_EndUser", "box_StopMetaSequence_v5_10.Stopped", "box_PawnCameraModifier_17.DisableCloseUp", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisableCloseUp
    l1:Exec(0, params);
end;

function export:f_box_StartMetaSequence_20_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_20_Out();
    params = self:OnEnter_box_PlayersVisibilityModifier_39();
    l0 = self.box_StartMetaSequence_20;
    l1 = self.box_PlayersVisibilityModifier_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1139536366", "1139536366", "InGameBenchmark_EndUser", "box_StartMetaSequence_20.Out", "box_PlayersVisibilityModifier_39.SetAllInvisible", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAllInvisible
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_56_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_58();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|237797815", "237797815", "InGameBenchmark_EndUser", "box_OutputOrder_v2_56.Out", "box_Simple_Node_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_56_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_52();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1495434039", "1495434039", "InGameBenchmark_EndUser", "box_OutputOrder_v2_56.Out", "box_Simple_Node_52.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetInGameBenchmark_7_InBenchmark()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetInGameBenchmark.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|100597922", "100597922", "InGameBenchmark_EndUser", "box_GetInGameBenchmark_7.InBenchmark", "box_MultipleOR_13.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetInGameBenchmark_7_NotInBenchmark()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetInGameBenchmark.lua")];
    local clone = l0;
    l0 = self.box_ActivityInitialized_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1619926215", "1619926215", "InGameBenchmark_EndUser", "box_GetInGameBenchmark_7.NotInBenchmark", "box_ActivityInitialized_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_GetLocalPlayer_v2_9_Out()
    local l0;
    self:OnExit_box_GetLocalPlayer_v2_9_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    l0 = self.box_StartMetaSequence_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1104130622", "1104130622", "InGameBenchmark_EndUser", "box_GetLocalPlayer_v2_9.Out", "box_StartMetaSequence_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_PlaySequence_v8_21_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_21;
    l1 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1005098386", "1005098386", "InGameBenchmark_EndUser", "box_PlaySequence_v8_21.Finished", "box_MultipleOR_19.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_21_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_21;
    l1 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1134080084", "1134080084", "InGameBenchmark_EndUser", "box_PlaySequence_v8_21.Skipped", "box_MultipleOR_19.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlaySequence_v8_21_SPOut__DogBackdoor_()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_25();
    l0 = self.box_PlaySequence_v8_21;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1740093658", "1740093658", "InGameBenchmark_EndUser", "box_PlaySequence_v8_21.SPOut", "box_Simple_Node_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_21_SPOut__DogOutside_()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_32();
    l0 = self.box_PlaySequence_v8_21;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1434411937", "1434411937", "InGameBenchmark_EndUser", "box_PlaySequence_v8_21.SPOut", "box_Simple_Node_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_21_SPOut__EndPoint_()
    local params, l0;
    params = self:OnEnter_box_PlaySequence_v8_21();
    l0 = self.box_PlaySequence_v8_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1808279313", "1808279313", "InGameBenchmark_EndUser", "box_PlaySequence_v8_21.SPOut", "box_PlaySequence_v8_21.Stop", l0:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(5, params);
end;

function export:f_box_PlaySequence_v8_21_SPOut__FadeOut_()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_42();
    l0 = self.box_PlaySequence_v8_21;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|882364407", "882364407", "InGameBenchmark_EndUser", "box_PlaySequence_v8_21.SPOut", "box_Simple_Node_42.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_21_SPOut__forest_()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_36();
    l0 = self.box_PlaySequence_v8_21;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|940796809", "940796809", "InGameBenchmark_EndUser", "box_PlaySequence_v8_21.SPOut", "box_Simple_Node_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_21_SPOut__VehicleExplosion_()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_43();
    l0 = self.box_PlaySequence_v8_21;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1511832519", "1511832519", "InGameBenchmark_EndUser", "box_PlaySequence_v8_21.SPOut", "box_Simple_Node_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_21_Stopped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_21;
    l1 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1328274658", "1328274658", "InGameBenchmark_EndUser", "box_PlaySequence_v8_21.Stopped", "box_MultipleOR_19.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MissionBlockLayer_46_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_47();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1277371964", "1277371964", "InGameBenchmark_EndUser", "box_MissionBlockLayer_46.Activated", "box_MissionBlockLayer_47.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetInGameBenchmark_14_InBenchmark()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetInGameBenchmark.lua")];
    local clone = l0;
    l0 = self.box_ActivityInitialized_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1351130204", "1351130204", "InGameBenchmark_EndUser", "box_GetInGameBenchmark_14.InBenchmark", "box_ActivityInitialized_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_GetInGameBenchmark_14_NotInBenchmark()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetInGameBenchmark.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1454655666", "1454655666", "InGameBenchmark_EndUser", "box_GetInGameBenchmark_14.NotInBenchmark", "box_MultipleOR_23.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_45_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_34();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1173366063", "1173366063", "InGameBenchmark_EndUser", "box_OutputOrder_v2_45.Out", "box_MissionBlockLayer_34.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_45_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_6();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|2125304035", "2125304035", "InGameBenchmark_EndUser", "box_OutputOrder_v2_45.Out", "box_Simple_Node_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PawnCameraModifier_16_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_30();
    l0 = self.box_PawnCameraModifier_16;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1500780203", "1500780203", "InGameBenchmark_EndUser", "box_PawnCameraModifier_16.Enabled", "box_OutputOrder_v2_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PostFx_v3_31_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_2();
    l0 = self.box_PostFx_v3_31;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1358531046", "1358531046", "InGameBenchmark_EndUser", "box_PostFx_v3_31.Disabled", "box_ActivityEnd_2.EndNoSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndNoSave
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_34_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_BaseMissionBlock_v2_38();
    l0 = self.box_BaseMissionBlock_v2_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1620571851", "1620571851", "InGameBenchmark_EndUser", "box_MissionBlockLayer_34.Disabled", "box_BaseMissionBlock_v2_38.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
end;

function export:f_box_EntityStatusListener_44_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_49();
    l0 = self.box_EntityStatusListener_44;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|2061899605", "2061899605", "InGameBenchmark_EndUser", "box_EntityStatusListener_44.Loaded", "box_Print_v2_49.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_13_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetTimeOfDay_40();
    l0 = self.box_MultipleOR_13;
    l1 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|916313543", "916313543", "InGameBenchmark_EndUser", "box_MultipleOR_13.Out", "box_SetTimeOfDay_40.SetTimeOfDay", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeOfDay
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_4_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1769796795", "1769796795", "InGameBenchmark_EndUser", "box_ActivityAcknowledgeGate_4.Acknowledged", "box_MultipleOR_18.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_4_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1575038510", "1575038510", "InGameBenchmark_EndUser", "box_ActivityAcknowledgeGate_4.Reloaded", "box_MultipleOR_18.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Print_v2_50_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_44();
    l0 = self.box_EntityStatusListener_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1261586695", "1261586695", "InGameBenchmark_EndUser", "box_Print_v2_50.PrintedToScreen", "box_EntityStatusListener_44.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_5();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|747879778", "747879778", "InGameBenchmark_EndUser", "box_OutputOrder_v2_15.Out", "box_Print_v2_5.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1166192760", "1166192760", "InGameBenchmark_EndUser", "box_OutputOrder_v2_15.Out", "box_ActivityAcknowledgeGate_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_ActivityInitialized_3_Out()
    local l0, l1;
    l0 = self.box_ActivityInitialized_3;
    l1 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1002342592", "1002342592", "InGameBenchmark_EndUser", "box_ActivityInitialized_3.Out", "box_MultipleOR_13.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_23_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_56();
    l0 = self.box_MultipleOR_23;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1758598871", "1758598871", "InGameBenchmark_EndUser", "box_MultipleOR_23.Out", "box_OutputOrder_v2_56.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_30_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_45();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|472080323", "472080323", "InGameBenchmark_EndUser", "box_OutputOrder_v2_30.Out", "box_OutputOrder_v2_45.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_30_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_42();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|346737800", "346737800", "InGameBenchmark_EndUser", "box_OutputOrder_v2_30.Out", "box_Simple_Node_42.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_30_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_50();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1941564049", "1941564049", "InGameBenchmark_EndUser", "box_OutputOrder_v2_30.Out", "box_Print_v2_50.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_6_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_46();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1685043312", "1685043312", "InGameBenchmark_EndUser", "box_Simple_Node_6.Out", "box_MissionBlockLayer_46.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_41_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetLocalPlayer_v2_9();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_41;
    l1 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|614928543", "614928543", "InGameBenchmark_EndUser", "box_CHEAT_SetEnvironmentTimeScale_41.Out", "box_GetLocalPlayer_v2_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NarrativeSceneCleanUp_V2_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_31();
    l0 = self.box_NarrativeSceneCleanUp_V2_1;
    l1 = self.box_PostFx_v3_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1656737587", "1656737587", "InGameBenchmark_EndUser", "box_NarrativeSceneCleanUp_V2_1.Out", "box_PostFx_v3_31.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_PlayersVisibilityModifier_39_OnSetAllInvisible()
    local params, l0, l1;
    params = self:OnEnter_box_PawnCameraModifier_16();
    l0 = self.box_PlayersVisibilityModifier_39;
    l1 = self.box_PawnCameraModifier_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|427541176", "427541176", "InGameBenchmark_EndUser", "box_PlayersVisibilityModifier_39.OnSetAllInvisible", "box_PawnCameraModifier_16.EnableCloseUp", l0:GetLuaBox(), l1:GetLuaBox());
    -- EnableCloseUp
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_19_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v5_10();
    l0 = self.box_MultipleOR_19;
    l1 = self.box_StopMetaSequence_v5_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1763945564", "1763945564", "InGameBenchmark_EndUser", "box_MultipleOR_19.Out", "box_StopMetaSequence_v5_10.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:f_box_ActivityInitialized_22_Out()
    local l0, l1;
    l0 = self.box_ActivityInitialized_22;
    l1 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1658512443", "1658512443", "InGameBenchmark_EndUser", "box_ActivityInitialized_22.Out", "box_MultipleOR_23.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_18_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetInGameBenchmark_7();
    l0 = self.box_MultipleOR_18;
    l1 = Boxes[GetPathID("Domino/System/GetInGameBenchmark.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1842316408", "1842316408", "InGameBenchmark_EndUser", "box_MultipleOR_18.Out", "box_GetInGameBenchmark_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_BaseMissionBlock_v2_38_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_26();
    l0 = self.box_BaseMissionBlock_v2_38;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|2119519562", "2119519562", "InGameBenchmark_EndUser", "box_BaseMissionBlock_v2_38.Disabled", "box_MissionBlockLayer_26.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Print_v2_49_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetInGameBenchmark_14();
    l0 = Boxes[GetPathID("Domino/System/GetInGameBenchmark.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|881798987", "881798987", "InGameBenchmark_EndUser", "box_Print_v2_49.PrintedToScreen", "box_GetInGameBenchmark_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetTimeOfDay_40_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_41();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|45030395", "45030395", "InGameBenchmark_EndUser", "box_SetTimeOfDay_40.Out", "box_CHEAT_SetEnvironmentTimeScale_41.SetTimeScale", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeScale
    l0:Exec(0, params);
end;

function export:OnEnter_box_Simple_Node_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|@Dog backdoor");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_25_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|@DogOutside");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_32_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|@FadeOff");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_58_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|@FadeOUT");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_42_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|@Forest AI");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_36_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|@Play sequence");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_52_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|@Tanker explosion");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_43_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PawnCameraModifier_17()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v5_10()
    local params;
    params = {
        -- ID,
        [0] = self.MetaSequenceID,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|78102355");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160301524909633",
        -- missionLayerId,
        [1] = "27160304192268019",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_33()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109660796603616004",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|204795882");
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
                [0] = self.f_box_OutputOrder_v2_56_Out_0,
                [1] = self.f_box_OutputOrder_v2_56_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|224791024");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_GetInGameBenchmark_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetInGameBenchmark.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetInGameBenchmark_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|244918889");
    l0:SetConnections({
        -- InBenchmark,
        [0] = self.f_box_GetInGameBenchmark_7_InBenchmark,
        -- NotInBenchmark,
        [1] = self.f_box_GetInGameBenchmark_7_NotInBenchmark,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|263597541");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_9_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_21()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2108459556922209111",
        -- SequenceFile,
        [4] = "sequences/pc_benchmark.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|310967720");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_46_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160301524909633",
        -- missionLayerId,
        [1] = "36167519046972287",
    };
    return params;
end;

function export:OnEnter_box_GetInGameBenchmark_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetInGameBenchmark.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetInGameBenchmark_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|342431059");
    l0:SetConnections({
        -- InBenchmark,
        [0] = self.f_box_GetInGameBenchmark_14_InBenchmark,
        -- NotInBenchmark,
        [1] = self.f_box_GetInGameBenchmark_14_NotInBenchmark,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|343346776");
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
                [0] = self.f_box_OutputOrder_v2_45_Out_0,
                [1] = self.f_box_OutputOrder_v2_45_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_12()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109842378966709735",
    };
    return params;
end;

function export:OnEnter_box_PawnCameraModifier_16()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_31()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "blackscreennowfx",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|590272187");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_34_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160289579932548",
        -- missionLayerId,
        [1] = "27160304459674297",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_44()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108322094400938614",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|599384739");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160301243844443",
        -- missionLayerId,
        [1] = "36167500498585436",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|674401111");
    l0:SetConnections({
        -- PrintedToScreen,
        [3] = self.f_box_Print_v2_50_PrintedToScreen,
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Homebase loading started",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|841971912");
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
                [0] = self.f_box_OutputOrder_v2_15_Out_0,
                [2] = self.f_box_OutputOrder_v2_15_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAIRequestGroup_v2_37()
    local params;
    params = {
        -- RequestGroupName,
        [0] = "forest",
        -- SpawnerPercentage,
        [2] = 100,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1022166451");
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
                [0] = self.f_box_OutputOrder_v2_30_Out_0,
                [1] = self.f_box_OutputOrder_v2_30_Out_1,
                [2] = self.f_box_OutputOrder_v2_30_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1031431722");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_6_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1094024645");
    l0:SetConnections({
    });
    params = {
        -- targets,
        [0] = "2109883741296923688",
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_41()
    local params;
    params = {
        -- timeScale,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_24()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "blackscreennowfx",
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneCleanUp_V2_1()
    local params;
    params = {
        -- KeepBlackBars,
        [0] = false,
        -- KeepGFHDisabled,
        [1] = false,
        -- KeepGodMode,
        [2] = false,
        -- KeepHUDMode,
        [3] = false,
        -- KeepWeaponHolstered,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayersVisibilityModifier_39()
    local params;
    params = {
        -- ExcludeLocalPlayer,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_BaseMissionBlock_v2_38()
    local params;
    params = {
        -- missionBlockId,
        [0] = "27160289445994511",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1997325267");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "PC_Benchmark",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|2025716534");
    l0:SetConnections({
        -- PrintedToScreen,
        [3] = self.f_box_Print_v2_49_PrintedToScreen,
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Homebase loaded",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_55()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "blackscreennowfx",
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_InGameBenchmark\\Bowmore_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|2124861098");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_40_Out,
    });
    params = {
        -- Hour,
        [0] = 17,
        -- Minute,
        [1] = 20,
    };
    return params;
end;

function export:OnExit_box_StartMetaSequence_20_Out()
    local l0;
    l0 = self.box_StartMetaSequence_20;
    self.MetaSequenceID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_9_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.player = l0:GetDataOutValue(0);
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
