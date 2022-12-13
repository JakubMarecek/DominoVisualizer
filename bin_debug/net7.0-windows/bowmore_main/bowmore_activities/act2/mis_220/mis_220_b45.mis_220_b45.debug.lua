LUACo� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act2/mis_220/mis_220_b45.domino
-- User graph: MIS_220_B45
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.GetPlayersVehicleID.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAIRequestGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/BroadcastMessage.lua");
        cboxRes:RegisterBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/GroupAddToGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GroupIter.lua");
        cboxRes:RegisterBox("Domino/System/IsValueNil_v3.lua");
        cboxRes:RegisterBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/PlaySequence_v8.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SendGSFGenericEvent.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cboxRes:RegisterBox("Domino/System/ShimmerModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableBreaker.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableListener.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInteractionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInterationListener.lua");
        cboxRes:RegisterBox("Domino/System/VehicleListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/VehicleModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/mis_220/MIS_220_MASTER.Bonfire_Function.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/mis_220/MIS_220_MASTER.FogMoving_Function.debug.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/mis_220/MIS_220_MASTER.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1583643488.bnk]], "CSoundResource");
        cboxRes:LoadResource([[357605033.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2286701320.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1968031834.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3851853982.bnk]], "CSoundResource");
        cboxRes:LoadResource([[439384452.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/mis_220/MIS_220_B45.MIS_220_B45.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua")] = {
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
                name = "PlayerDetected",
                delayed = false,
            },
            [2] = {
                name = "Started",
                delayed = false,
            },
            [3] = {
                name = "Success",
                delayed = false,
            },
            [4] = {
                name = "TimerExpired",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "bCompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "bIsTrigger",
                type = "bool",
            },
            [2] = {
                name = "bRequiresAllPlayer",
                type = "bool",
            },
            [3] = {
                name = "bRequiresObjective",
                type = "bool",
            },
            [4] = {
                name = "bUse2d_ProximityCheck",
                type = "bool",
            },
            [5] = {
                name = "bUseDetectionModifier",
                type = "bool",
            },
            [6] = {
                name = "eMarker",
                type = "entity",
            },
            [7] = {
                name = "eRadiusTarget",
                type = "entity",
            },
            [8] = {
                name = "eTrigger",
                type = "entity",
            },
            [9] = {
                name = "fDistanceFromTarget",
                type = "float",
            },
            [10] = {
                name = "fObjectiveTimer",
                type = "float",
            },
            [11] = {
                name = "gEnemyGroup",
                type = "group",
            },
            [12] = {
                name = "opt_Objective",
                type = "oasis",
            },
        },
        dataInCount = 13,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.GetPlayersVehicleID.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "NotInVehicle",
                delayed = false,
            },
            [1] = {
                name = "OneVehicle",
                delayed = false,
            },
            [2] = {
                name = "TwoVehicles",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
            [0] = {
                name = "Vehicle1",
                type = "entity",
            },
            [1] = {
                name = "Vehicle2",
                type = "entity",
            },
        },
        dataOutCount = 2,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "CIN_Skip",
            },
            [1] = {
                name = "Start",
            },
            [2] = {
                name = "Start_Reset_MIS_Attacked",
            },
            [3] = {
                name = "Stop",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Box_Skipped",
                delayed = false,
            },
            [1] = {
                name = "CIN_Skipped",
                delayed = false,
            },
            [2] = {
                name = "Started",
                delayed = false,
            },
            [3] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "EntityId",
                type = "entity",
            },
            [1] = {
                name = "FadeOutType",
                type = "int",
            },
            [2] = {
                name = "MUS_MIS_Step",
                type = "int",
            },
            [3] = {
                name = "Priority",
                type = "int",
            },
            [4] = {
                name = "SoundType",
                type = "SoundType",
            },
            [5] = {
                name = "Stackable",
                type = "bool",
            },
            [6] = {
                name = "StartEvent",
                type = "Sound",
            },
            [7] = {
                name = "StopEvent",
                type = "Sound",
            },
            [8] = {
                name = "StopFadeOut",
                type = "float",
            },
            [9] = {
                name = "WaitUntilMusicEndMarker",
                type = "bool",
            },
            [10] = {
                name = "WaitUntilNotInVehicle",
                type = "bool",
            },
        },
        dataInCount = 11,
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")] = {
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
            [0] = {
                name = "CharacterId",
                type = "genericdb",
            },
            [1] = {
                name = "Marker",
                type = "entity",
            },
            [2] = {
                name = "ObjectiveId",
                type = "oasis",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")] = {
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
                name = "CompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "ObjectiveId",
                type = "oasis",
            },
            [2] = {
                name = "TargetGroup",
                type = "group",
            },
            [3] = {
                name = "Time",
                type = "float",
            },
        },
        dataInCount = 4,
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
    metadataTable[GetPathID("Domino/System/CompareBoolean.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "A_and_B",
                delayed = false,
            },
            [1] = {
                name = "A_is_False",
                delayed = false,
            },
            [2] = {
                name = "A_is_True",
                delayed = false,
            },
            [3] = {
                name = "A_or_B",
                delayed = false,
            },
            [4] = {
                name = "A_xor_B",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "A",
                type = "bool",
            },
            [1] = {
                name = "B",
                type = "bool",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/GroupIter.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
            [1] = {
                name = "Stop",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "EndIter",
                delayed = true,
            },
            [1] = {
                name = "PawnIter",
                delayed = false,
            },
            [2] = {
                name = "Started",
                delayed = false,
            },
            [3] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "entities",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "entity",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/IsValueNil_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Animation",
            },
            [1] = {
                name = "Archetype",
            },
            [2] = {
                name = "Boolean",
            },
            [3] = {
                name = "Database",
            },
            [4] = {
                name = "Entity",
            },
            [5] = {
                name = "Float",
            },
            [6] = {
                name = "GenericDb",
            },
            [7] = {
                name = "Group",
            },
            [8] = {
                name = "Integer",
            },
            [9] = {
                name = "MissionBlock",
            },
            [10] = {
                name = "MissionBlockLayer",
            },
            [11] = {
                name = "Oasis",
            },
            [12] = {
                name = "Script",
            },
            [13] = {
                name = "Sound",
            },
            [14] = {
                name = "String",
            },
        },
        controlInCount = 15,
        controlOut = {
            [0] = {
                name = "No",
                delayed = false,
            },
            [1] = {
                name = "Yes",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "anim",
                type = "animation",
            },
            [1] = {
                name = "archetypeId",
                type = "archetype",
            },
            [2] = {
                name = "bool",
                type = "bool",
            },
            [3] = {
                name = "databaseId",
                type = "database",
            },
            [4] = {
                name = "ent",
                type = "entity",
            },
            [5] = {
                name = "float",
                type = "float",
            },
            [6] = {
                name = "genericDbId",
                type = "genericdb",
            },
            [7] = {
                name = "group",
                type = "group",
            },
            [8] = {
                name = "int",
                type = "int",
            },
            [9] = {
                name = "missionBlockId",
                type = "missionblock",
            },
            [10] = {
                name = "missionBlockLayerId",
                type = "missionblocklayer",
            },
            [11] = {
                name = "oasis",
                type = "oasis",
            },
            [12] = {
                name = "script",
                type = "boxclass",
            },
            [13] = {
                name = "sound",
                type = "Sound",
            },
            [14] = {
                name = "str",
                type = "string",
            },
        },
        dataInCount = 15,
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
    metadataTable[GetPathID("Domino/System/MultipleAND_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Condition",
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
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "AutoReset",
                type = "bool",
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
    metadataTable[GetPathID("Domino/System/ParticleSystem_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Clean",
            },
            [1] = {
                name = "Pause",
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
                name = "Cleaned",
                delayed = false,
            },
            [1] = {
                name = "Paused",
                delayed = false,
            },
            [2] = {
                name = "Started",
                delayed = false,
            },
            [3] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "TargetEntities",
                type = "group",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/RemoveEntity_v2.lua")] = {
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
                name = "Group",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/SendGSFGenericEvent.lua")] = {
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
                name = "entity",
                type = "entity",
            },
            [1] = {
                name = "eventName",
                type = "string",
            },
            [2] = {
                name = "param1",
                type = "string",
            },
            [3] = {
                name = "param2",
                type = "string",
            },
            [4] = {
                name = "param3",
                type = "string",
            },
            [5] = {
                name = "param4",
                type = "string",
            },
            [6] = {
                name = "param5",
                type = "string",
            },
        },
        dataInCount = 7,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/SetBoolean_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "False",
            },
            [1] = {
                name = "FromBool",
            },
            [2] = {
                name = "Toggle",
            },
            [3] = {
                name = "True",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Bool",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Target",
                type = "bool",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/ShimmerModifier_v2.lua")] = {
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
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "B",
                type = "float",
            },
            [1] = {
                name = "G",
                type = "float",
            },
            [2] = {
                name = "R",
                type = "float",
            },
            [3] = {
                name = "Speed",
                type = "float",
            },
            [4] = {
                name = "targets",
                type = "group",
            },
        },
        dataInCount = 5,
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
    metadataTable[GetPathID("Domino/System/SoundModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Play",
            },
            [1] = {
                name = "Stop",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = true,
            },
            [1] = {
                name = "Started",
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
                name = "SoundId",
                type = "Sound",
            },
            [2] = {
                name = "SoundType",
                type = "SoundType",
            },
            [3] = {
                name = "StopFadeOut",
                type = "float",
            },
            [4] = {
                name = "UseSubtitles",
                type = "bool",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/StaticBreakableBreaker.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Destroy",
            },
            [1] = {
                name = "Enable",
            },
            [2] = {
                name = "ForceState",
            },
            [3] = {
                name = "NextState",
            },
            [4] = {
                name = "SetDamageable",
            },
            [5] = {
                name = "SetUnDamageable",
            },
        },
        controlInCount = 6,
        controlOut = {
            [0] = {
                name = "DamageableChanged",
                delayed = false,
            },
            [1] = {
                name = "Destroyed",
                delayed = false,
            },
            [2] = {
                name = "Out",
                delayed = false,
            },
            [3] = {
                name = "StateChanged",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "entity",
                type = "entity",
            },
            [1] = {
                name = "forcedStateId",
                type = "int",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/StaticBreakableListener.lua")] = {
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
                name = "OnBreak",
                delayed = true,
            },
            [3] = {
                name = "OnBreakAll",
                delayed = true,
            },
            [4] = {
                name = "OnDamage",
                delayed = true,
            },
            [5] = {
                name = "OnHit",
                delayed = true,
            },
            [6] = {
                name = "OnStateChanged",
                delayed = true,
            },
        },
        controlOutCount = 7,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "entity",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "instigatorID",
                type = "entity",
            },
            [1] = {
                name = "stateID",
                type = "int",
            },
            [2] = {
                name = "targetID",
                type = "entity",
            },
        },
        dataOutCount = 3,
    };
    metadataTable[GetPathID("Domino/System/UniversalInteractionModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "Enable",
            },
            [2] = {
                name = "ForceInteraction",
            },
        },
        controlInCount = 3,
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
                name = "Interacted",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "disableOnUse",
                type = "bool",
            },
            [1] = {
                name = "displayId",
                type = "oasis",
            },
            [2] = {
                name = "interactor",
                type = "entity",
            },
            [3] = {
                name = "state",
                type = "bool",
            },
            [4] = {
                name = "usableEntity",
                type = "entity",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/UniversalInterationListener.lua")] = {
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
                name = "Interacted",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "usableEntityId",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "entityInteracted",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/VehicleListener_v3.lua")] = {
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
                name = "OnAllSitting",
                delayed = true,
            },
            [3] = {
                name = "OnAllStanding",
                delayed = true,
            },
            [4] = {
                name = "OnChangeSeat",
                delayed = true,
            },
            [5] = {
                name = "OnInteract",
                delayed = true,
            },
            [6] = {
                name = "OnSit",
                delayed = true,
            },
            [7] = {
                name = "OnStandUp",
                delayed = true,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "archetypeId",
                type = "archetype",
            },
            [1] = {
                name = "autoDisable",
                type = "bool",
            },
            [2] = {
                name = "pawns",
                type = "group",
            },
            [3] = {
                name = "SeatType",
                type = "int",
            },
            [4] = {
                name = "vehicle",
                type = "entity",
            },
            [5] = {
                name = "vehicleTypeFilter",
                type = "int",
            },
        },
        dataInCount = 6,
        dataOut = {
            [0] = {
                name = "activePawn",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/VisibilityModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetDisabled",
            },
            [1] = {
                name = "SetEnabled",
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
                name = "players",
                type = "group",
            },
            [1] = {
                name = "targets",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/mis_220/MIS_220_MASTER.Bonfire_Function.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "FireUp",
            },
            [1] = {
                name = "In",
            },
            [2] = {
                name = "In_Marker",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Brick_Started",
                delayed = false,
            },
            [1] = {
                name = "FireAlreadyLit",
                delayed = false,
            },
            [2] = {
                name = "Out_Marker",
                delayed = false,
            },
            [3] = {
                name = "Success",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "e_Bonfire",
                type = "entity",
            },
            [1] = {
                name = "e_Marker",
                type = "entity",
            },
            [2] = {
                name = "mBlock_ID",
                type = "missionblock",
            },
            [3] = {
                name = "mBlockLayer_ID",
                type = "missionblocklayer",
            },
            [4] = {
                name = "mBlockLayerStrat_ID",
                type = "missionblocklayer",
            },
            [5] = {
                name = "o_Objective",
                type = "oasis",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/mis_220/MIS_220_MASTER.FogMoving_Function.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Done",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "e_stratPoint_1",
                type = "entity",
            },
            [1] = {
                name = "e_stratPoint_2",
                type = "entity",
            },
            [2] = {
                name = "e_stratPoint_3",
                type = "entity",
            },
            [3] = {
                name = "e_StratPointStart",
                type = "entity",
            },
            [4] = {
                name = "f_BlendTime",
                type = "float",
            },
            [5] = {
                name = "g_torchGroup",
                type = "group",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_220_B45";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45";
    self.gPlayer = nil;
    self.eLocalPlayer = nil;
    self.b_interactDone = false;
    self.b_waterflow = false;
    self.b_broke = false;
    self.b_shaking = false;
    self.e_currentGroupTorch = nil;
    self.o_OasisObject = {
        section = "",
        item = "",
        id = "",
    };
    self.MetaSequenceID_Gate = 0;
    self.MetaSequenceID_BlockedGate = 0;
    self.box_OnceOnly_v3_9 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|9275248");
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
                [0] = self.f_box_OnceOnly_v3_9_Out_0,
            },
            count = 2,
        },
    });
    self.box_UniversalInteractionModifier_v2_87 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|68029917");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_87_Enabled,
    });
    self.box_OnceOnly_v3_12 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|121710699");
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
                [0] = self.f_box_OnceOnly_v3_12_Out_0,
            },
            count = 2,
        },
    });
    self.box_StartMetaSequence_92 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|204112036");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_92_Out,
    });
    self.box_EntityStatusListener_113 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_113");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|205640728");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_113_Loaded,
    });
    self.box_SpawnAI_16 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|230392278");
    l0:SetConnections({
    });
    self.box_CHEAT_SetEnvironmentTimeScale_8 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|261785965");
    l0:SetConnections({
    });
    self.box_Delay_v5_41 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|270048528");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_41_TimeElapsed,
    });
    self.box_EntityStatusListener_67 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|279239119");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_67_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_67_Loaded,
    });
    self.box_MultipleOR_95 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_95");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|305239185");
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
        [0] = self.f_box_MultipleOR_95_Out,
    });
    self.box_UniversalInteractionListener_30 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|363576584");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_30_Interacted,
    });
    self.box_GroupIter_121 = cbox:CreateBox("Domino/System/GroupIter.lua");
    l0 = self.box_GroupIter_121;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupIter_121");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|375338797");
    l0:SetConnections({
        -- EndIter,
        [0] = self.f_box_GroupIter_121_EndIter,
        -- PawnIter,
        [1] = self.f_box_GroupIter_121_PawnIter,
        -- Started,
        [2] = self.f_box_GroupIter_121_Started,
        -- Stopped,
        [3] = self.f_box_GroupIter_121_Stopped,
    });
    self.box_GroupIter_88 = cbox:CreateBox("Domino/System/GroupIter.lua");
    l0 = self.box_GroupIter_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupIter_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|388156912");
    l0:SetConnections({
        -- EndIter,
        [0] = self.f_box_GroupIter_88_EndIter,
        -- PawnIter,
        [1] = self.f_box_GroupIter_88_PawnIter,
        -- Started,
        [2] = self.f_box_GroupIter_88_Started,
        -- Stopped,
        [3] = self.f_box_GroupIter_88_Stopped,
    });
    self.box_Reach_GoTo_v3_69 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua");
    l0 = self.box_Reach_GoTo_v3_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v3_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|422599469");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_Reach_GoTo_v3_69_Success,
    });
    self.box_Delay_v5_117 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_117");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|437736385");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_117_TimeElapsed,
    });
    self.box_SoundModifier_v2_100 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_100");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|487241709");
    l0:SetConnections({
    });
    self.box_FogMoving_Function_91 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/mis_220/MIS_220_MASTER.FogMoving_Function.debug.lua");
    l0 = self.box_FogMoving_Function_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FogMoving_Function_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|489799970");
    l0:SetConnections({
    });
    self.box_MultipleOR_109 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_109");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|492243383");
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
        [0] = self.f_box_MultipleOR_109_Out,
    });
    self.box_SoundModifier_v2_63 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|514633580");
    l0:SetConnections({
    });
    self.box_Delay_v5_78 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|522922602");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_78_TimeElapsed,
    });
    self.box_MissionAckTriggerListener_5 = cbox:CreateBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
    l0 = self.box_MissionAckTriggerListener_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionAckTriggerListener_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|543682945");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_MissionAckTriggerListener_5_Enabled,
        -- Enter,
        [2] = self.f_box_MissionAckTriggerListener_5_Enter,
    });
    self.box_NarrativeFade_19 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|562007280");
    l0:SetConnections({
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_19_FadedOut,
    });
    self.box_UniversalInteractionModifier_v2_32 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|617770765");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_32_Disabled,
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_32_Enabled,
    });
    self.box_ShimmerModifier_v2_2 = cbox:CreateBox("Domino/System/ShimmerModifier_v2.lua");
    l0 = self.box_ShimmerModifier_v2_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|631210399");
    l0:SetConnections({
    });
    self.box_MultipleOR_110 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_110");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|632667564");
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
        [0] = self.f_box_MultipleOR_110_Out,
    });
    self.box_SpawnAIRequestGroup_v2_116 = cbox:CreateBox("Domino/System/AI/SpawnAIRequestGroup_v2.lua");
    l0 = self.box_SpawnAIRequestGroup_v2_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAIRequestGroup_v2_116");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|637657600");
    l0:SetConnections({
    });
    self.box_ShimmerModifier_v2_82 = cbox:CreateBox("Domino/System/ShimmerModifier_v2.lua");
    l0 = self.box_ShimmerModifier_v2_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|675020104");
    l0:SetConnections({
    });
    self.box_Delay_v5_115 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_115");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|746545800");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_115_TimeElapsed,
    });
    self.box_VisibilityModifier_114 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_114");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|786456607");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_114_Enabled,
    });
    self.box_GetPlayersVehicleID_124 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.GetPlayersVehicleID.debug.lua");
    l0 = self.box_GetPlayersVehicleID_124;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayersVehicleID_124");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|800137997");
    l0:SetConnections({
        -- NotInVehicle,
        [0] = self.f_box_GetPlayersVehicleID_124_NotInVehicle,
        -- OneVehicle,
        [1] = self.f_box_GetPlayersVehicleID_124_OneVehicle,
        -- TwoVehicles,
        [2] = self.f_box_GetPlayersVehicleID_124_TwoVehicles,
    });
    self.box_VisibilityModifier_111 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_111");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|801952168");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_35 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|810870156");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_EntityStatusListener_35_Disabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_35_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_35_Unloaded,
    });
    self.box_StaticBreakableListener_31 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|864615503");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_31_OnBreak,
    });
    self.box_MultipleOR_46 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|870494252");
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
        [0] = self.f_box_MultipleOR_46_Out,
    });
    self.box_MultipleOR_34 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1016444503");
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
        [0] = self.f_box_MultipleOR_34_Out,
    });
    self.box_UniversalInteractionModifier_v2_86 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1056693339");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_86_Enabled,
    });
    self.box_MultipleOR_62 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1076443641");
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
        [0] = self.f_box_MultipleOR_62_Out,
    });
    self.box_Music_Quest_v2_98 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_98");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1182278272");
    l0:SetConnections({
    });
    self.box_PlaySequence_v8_94 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_94");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1207920701");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 0,
        },
        controlOut = {
            [3] = 0,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlaySequence_v8_94_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_94_Skipped,
        -- Started,
        [4] = self.f_box_PlaySequence_v8_94_Started,
    });
    self.box_PlaySequence_v8_75 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1236329714");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 0,
        },
        controlOut = {
            [3] = 0,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlaySequence_v8_75_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_75_Skipped,
        -- Started,
        [4] = self.f_box_PlaySequence_v8_75_Started,
    });
    self.box_EntityStatusListener_7 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1275601854");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_7_Loaded,
    });
    self.box_ActivityAcknowledgeGate_27 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1291645712");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_27_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_27_Reloaded,
    });
    self.box_ShimmerModifier_v2_26 = cbox:CreateBox("Domino/System/ShimmerModifier_v2.lua");
    l0 = self.box_ShimmerModifier_v2_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1307698886");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ShimmerModifier_v2_26_Disabled,
        -- Enabled,
        [1] = self.f_box_ShimmerModifier_v2_26_Enabled,
    });
    self.box_MultipleAND_v2_66 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1321973052");
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
        [0] = self.f_box_MultipleAND_v2_66_Out,
    });
    self.box_NarrativeFade_17 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1344432455");
    l0:SetConnections({
    });
    self.box_StopMetaSequence_v5_93 = cbox:CreateBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
    l0 = self.box_StopMetaSequence_v5_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v5_93");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1388362660");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v5_93_Stopped,
    });
    self.box_MultipleOR_38 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1410656163");
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
        [0] = self.f_box_MultipleOR_38_Out,
    });
    self.box_MultipleOR_21 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1433636589");
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
        [0] = self.f_box_MultipleOR_21_Out,
    });
    self.box_Delay_v5_123 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_123;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_123");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1460652315");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_123_TimeElapsed,
    });
    self.box_StartMetaSequence_77 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1468588731");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_77_Out,
    });
    self.box_RemoveEntity_v2_112 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_112");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1469577511");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_96 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_96");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1609388626");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_96_Loaded,
    });
    self.box_OnceOnly_v3_97 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_97");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1653833819");
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
                [0] = self.f_box_OnceOnly_v3_97_Out_0,
            },
            count = 2,
        },
    });
    self.box_VehicleListener_v3_44 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1756290840");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VehicleListener_v3_44_Enabled,
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_44_OnSit,
    });
    self.box_Bonfire_Function_99 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/mis_220/MIS_220_MASTER.Bonfire_Function.debug.lua");
    l0 = self.box_Bonfire_Function_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bonfire_Function_99");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1792965250");
    l0:SetConnections({
        -- Brick_Started,
        [0] = self.f_box_Bonfire_Function_99_Brick_Started,
        -- Success,
        [3] = self.f_box_Bonfire_Function_99_Success,
    });
    self.box_MultipleOR_84 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1863853457");
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
        [0] = self.f_box_MultipleOR_84_Out,
    });
    self.box_FogMoving_Function_90 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/mis_220/MIS_220_MASTER.FogMoving_Function.debug.lua");
    l0 = self.box_FogMoving_Function_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FogMoving_Function_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1908528571");
    l0:SetConnections({
    });
    self.box_StopMetaSequence_v5_73 = cbox:CreateBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
    l0 = self.box_StopMetaSequence_v5_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v5_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1933905931");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v5_73_Stopped,
    });
    self.box_SoundModifier_v2_80 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1941596614");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_28 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1965450162");
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
        [0] = self.f_box_MultipleAND_v2_28_Out,
    });
    self.box_ActivityInitialized_25 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|2013544092");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_25_Out,
    });
    self.box_SoundModifier_v2_118 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_118");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|2041961112");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_23();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|2002845465", "2002845465", "MIS_220_B45", "In", "box_OutputOrder_v2_23.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    
end;

function export:f_box_Simple_Node_36_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_28();
    l0 = self.box_MultipleAND_v2_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1967853319", "1967853319", "MIS_220_B45", "box_Simple_Node_36.Out", "box_MultipleAND_v2_28.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_Simple_Node_13_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bonfire_Function_99();
    l0 = self.box_Bonfire_Function_99;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1263117712", "1263117712", "MIS_220_B45", "box_Simple_Node_13.Out", "box_Bonfire_Function_99.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_72_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|580805160", "580805160", "MIS_220_B45", "box_Simple_Node_72.Out", "box_MultipleOR_38.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_9_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_GroupIter_121();
    l0 = self.box_OnceOnly_v3_9;
    l1 = self.box_GroupIter_121;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|229548935", "229548935", "MIS_220_B45", "box_OnceOnly_v3_9.Out", "box_GroupIter_121.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_UniversalInteractionModifier_v2_87_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_SendGSFGenericEvent_85();
    l0 = self.box_UniversalInteractionModifier_v2_87;
    l1 = Boxes[GetPathID("Domino/System/SendGSFGenericEvent.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|148944891", "148944891", "MIS_220_B45", "box_UniversalInteractionModifier_v2_87.Enabled", "box_SendGSFGenericEvent_85.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_12_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_12;
    l1 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1351319417", "1351319417", "MIS_220_B45", "box_OnceOnly_v3_12.Out", "box_MultipleOR_46.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_89_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_GetPlayersVehicleID_124;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|201087790", "201087790", "MIS_220_B45", "box_OutputOrder_v2_89.Out", "box_GetPlayersVehicleID_124.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_89_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_FogMoving_Function_90();
    l0 = self.box_FogMoving_Function_90;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|767692148", "767692148", "MIS_220_B45", "box_OutputOrder_v2_89.Out", "box_FogMoving_Function_90.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_89_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_13();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1475390938", "1475390938", "MIS_220_B45", "box_OutputOrder_v2_89.Out", "box_Simple_Node_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_81_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_31();
    l0 = self.box_StaticBreakableListener_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1731825585", "1731825585", "MIS_220_B45", "box_OutputOrder_v2_81.Out", "box_StaticBreakableListener_31.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_81_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_82();
    l0 = self.box_ShimmerModifier_v2_82;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|426817451", "426817451", "MIS_220_B45", "box_OutputOrder_v2_81.Out", "box_ShimmerModifier_v2_82.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_105_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_101();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1732056331", "1732056331", "MIS_220_B45", "box_OutputOrder_v2_105.Out", "box_EndActivityObjective_v2_101.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_105_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_FogMoving_Function_91();
    l0 = self.box_FogMoving_Function_91;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1733422441", "1733422441", "MIS_220_B45", "box_OutputOrder_v2_105.Out", "box_FogMoving_Function_91.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_StartMetaSequence_92_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_92_Out();
    params = self:OnEnter_box_PlaySequence_v8_94();
    l0 = self.box_StartMetaSequence_92;
    l1 = self.box_PlaySequence_v8_94;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|430621126", "430621126", "MIS_220_B45", "box_StartMetaSequence_92.Out", "box_PlaySequence_v8_94.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_113_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_111();
    l0 = self.box_EntityStatusListener_113;
    l1 = self.box_VisibilityModifier_111;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1482097635", "1482097635", "MIS_220_B45", "box_EntityStatusListener_113.Loaded", "box_VisibilityModifier_111.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_Compare_Boolean_74_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_StartMetaSequence_77;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1201612786", "1201612786", "MIS_220_B45", "box_Compare_Boolean_74.A_is_False", "box_StartMetaSequence_77.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_Compare_Boolean_74_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_43();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|214607780", "214607780", "MIS_220_B45", "box_Compare_Boolean_74.A_is_True", "box_Compare_Boolean_43.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_4_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|2022187858", "2022187858", "MIS_220_B45", "box_MissionBlockLayer_4.Activated", "box_OutputOrder_v2_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_37_No()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1575076837", "1575076837", "MIS_220_B45", "box_IsValueNil_v3_37.No", "box_MultipleOR_38.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsValueNil_v3_37_Yes()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_6();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1642569336", "1642569336", "MIS_220_B45", "box_IsValueNil_v3_37.Yes", "box_OutputOrder_v2_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_104_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_55();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|658428713", "658428713", "MIS_220_B45", "box_OutputOrder_v2_104.Out", "box_OutputOrder_v2_55.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_104_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_103();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|491307080", "491307080", "MIS_220_B45", "box_OutputOrder_v2_104.Out", "box_ParticleSystem_v3_103.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_58_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_58_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|168558272", "168558272", "MIS_220_B45", "box_SetBoolean_v2_58.Out", "box_OnceOnly_v3_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_41_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_51();
    l0 = self.box_Delay_v5_41;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1104009052", "1104009052", "MIS_220_B45", "box_Delay_v5_41.TimeElapsed", "box_SetBoolean_v2_51.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_67_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_16();
    l0 = self.box_EntityStatusListener_67;
    l1 = self.box_SpawnAI_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|888582753", "888582753", "MIS_220_B45", "box_EntityStatusListener_67.Enabled", "box_SpawnAI_16.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_67_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_18();
    l0 = self.box_EntityStatusListener_67;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1063490302", "1063490302", "MIS_220_B45", "box_EntityStatusListener_67.Loaded", "box_VehicleModifier_v2_18.SetAsUsable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsUsable
    l1:Exec(7, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_43_A_and_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_122();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1242859840", "1242859840", "MIS_220_B45", "box_Compare_Boolean_43.A_and_B", "box_OutputOrder_v2_122.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_95_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v5_93();
    l0 = self.box_MultipleOR_95;
    l1 = self.box_StopMetaSequence_v5_93;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1952237819", "1952237819", "MIS_220_B45", "box_MultipleOR_95.Out", "box_StopMetaSequence_v5_93.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:f_box_UniversalInteractionListener_30_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_33();
    l0 = self.box_UniversalInteractionListener_30;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|148250841", "148250841", "MIS_220_B45", "box_UniversalInteractionListener_30.Interacted", "box_OutputOrder_v2_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupIter_121_EndIter()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_58();
    l0 = self.box_GroupIter_121;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|242069059", "242069059", "MIS_220_B45", "box_GroupIter_121.EndIter", "box_SetBoolean_v2_58.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupIter_121_PawnIter()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableBreaker_120();
    l0 = self.box_GroupIter_121;
    l1 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1792842146", "1792842146", "MIS_220_B45", "box_GroupIter_121.PawnIter", "box_StaticBreakableBreaker_120.Destroy", l0:GetLuaBox(), l1:GetLuaBox());
    -- Destroy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupIter_88_PawnIter()
    local params, l0, l1;
    self:OnExit_box_GroupIter_88_PawnIter();
    params = self:OnEnter_box_UniversalInteractionModifier_v2_86();
    l0 = self.box_GroupIter_88;
    l1 = self.box_UniversalInteractionModifier_v2_86;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|393844336", "393844336", "MIS_220_B45", "box_GroupIter_88.PawnIter", "box_UniversalInteractionModifier_v2_86.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Reach_GoTo_v3_69_Success()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_79();
    l0 = self.box_Reach_GoTo_v3_69;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|500472057", "500472057", "MIS_220_B45", "box_Reach_GoTo_v3_69.Success", "box_EndActivityObjective_v2_79.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_117_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_119();
    l0 = self.box_Delay_v5_117;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1550623380", "1550623380", "MIS_220_B45", "box_Delay_v5_117.TimeElapsed", "box_OutputOrder_v2_119.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_79_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bonfire_Function_99();
    l0 = self.box_Bonfire_Function_99;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|2015221305", "2015221305", "MIS_220_B45", "box_EndActivityObjective_v2_79.Out", "box_Bonfire_Function_99.In_Marker", clone:GetLuaBox(), l0:GetLuaBox());
    -- In_Marker
    l0:Exec(2, params);
end;

function export:f_box_SendGSFGenericEvent_85_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SendGSFGenericEvent.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupAddToGroup_v2_102();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|135743131", "135743131", "MIS_220_B45", "box_SendGSFGenericEvent_85.Out", "box_GroupAddToGroup_v2_102.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_109_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_74();
    l0 = self.box_MultipleOR_109;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1142359839", "1142359839", "MIS_220_B45", "box_MultipleOR_109.Out", "box_Compare_Boolean_74.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_78_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_70();
    l0 = self.box_Delay_v5_78;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1544154880", "1544154880", "MIS_220_B45", "box_Delay_v5_78.TimeElapsed", "box_ActivityEnd_70.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionAckTriggerListener_5_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_107();
    l0 = self.box_MissionAckTriggerListener_5;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1126506196", "1126506196", "MIS_220_B45", "box_MissionAckTriggerListener_5.Enabled", "box_AddActivityObjective_v2_107.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionAckTriggerListener_5_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_11();
    l0 = self.box_MissionAckTriggerListener_5;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|687948861", "687948861", "MIS_220_B45", "box_MissionAckTriggerListener_5.Enter", "box_ActivityObjectiveMarkerModifier_v3_11.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_40_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_96();
    l0 = self.box_EntityStatusListener_96;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|160760483", "160760483", "MIS_220_B45", "box_EndActivityObjective_v2_40.Out", "box_EntityStatusListener_96.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_NarrativeFade_19_FadedOut()
    local l0, l1;
    l0 = self.box_NarrativeFade_19;
    l1 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|489535358", "489535358", "MIS_220_B45", "box_NarrativeFade_19.FadedOut", "box_MultipleOR_21.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UniversalInteractionModifier_v2_32_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ShimmerModifier_v2_26();
    l0 = self.box_UniversalInteractionModifier_v2_32;
    l1 = self.box_ShimmerModifier_v2_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1521049753", "1521049753", "MIS_220_B45", "box_UniversalInteractionModifier_v2_32.Disabled", "box_ShimmerModifier_v2_26.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_UniversalInteractionModifier_v2_32_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ShimmerModifier_v2_26();
    l0 = self.box_UniversalInteractionModifier_v2_32;
    l1 = self.box_ShimmerModifier_v2_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1190782548", "1190782548", "MIS_220_B45", "box_UniversalInteractionModifier_v2_32.Enabled", "box_ShimmerModifier_v2_26.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableBreaker_120_Destroyed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_2();
    l0 = self.box_ShimmerModifier_v2_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1182926109", "1182926109", "MIS_220_B45", "box_StaticBreakableBreaker_120.Destroyed", "box_ShimmerModifier_v2_2.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_110_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_75();
    l0 = self.box_MultipleOR_110;
    l1 = self.box_PlaySequence_v8_75;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|883134378", "883134378", "MIS_220_B45", "box_MultipleOR_110.Out", "box_PlaySequence_v8_75.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_GetLocalPlayer_v2_29_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_29_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_1();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|542462850", "542462850", "MIS_220_B45", "box_GetLocalPlayer_v2_29.Out", "box_OutputOrder_v2_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_122_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_123();
    l0 = self.box_Delay_v5_123;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|294476193", "294476193", "MIS_220_B45", "box_OutputOrder_v2_122.Out", "box_Delay_v5_123.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_122_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_75();
    l0 = self.box_PlaySequence_v8_75;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|514542607", "514542607", "MIS_220_B45", "box_OutputOrder_v2_122.Out", "box_PlaySequence_v8_75.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(5, params);
end;

function export:f_box_SetEntity_v2_65_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_65_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_68();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1376380388", "1376380388", "MIS_220_B45", "box_SetEntity_v2_65.Out", "box_SetEntity_v2_68.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetTimeOfDay_3_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_8();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1044103459", "1044103459", "MIS_220_B45", "box_SetTimeOfDay_3.Out", "box_CHEAT_SetEnvironmentTimeScale_8.SetTimeScale", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeScale
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_115_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_112();
    l0 = self.box_Delay_v5_115;
    l1 = self.box_RemoveEntity_v2_112;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1861809450", "1861809450", "MIS_220_B45", "box_Delay_v5_115.TimeElapsed", "box_RemoveEntity_v2_112.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_67();
    l0 = self.box_EntityStatusListener_67;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1142385325", "1142385325", "MIS_220_B45", "box_OutputOrder_v2_15.Out", "box_EntityStatusListener_67.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_7();
    l0 = self.box_EntityStatusListener_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1775379347", "1775379347", "MIS_220_B45", "box_OutputOrder_v2_15.Out", "box_EntityStatusListener_7.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_VisibilityModifier_114_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_115();
    l0 = self.box_VisibilityModifier_114;
    l1 = self.box_Delay_v5_115;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1784363101", "1784363101", "MIS_220_B45", "box_VisibilityModifier_114.Enabled", "box_Delay_v5_115.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_GetPlayersVehicleID_124_NotInVehicle()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleListener_v3_44();
    l0 = self.box_GetPlayersVehicleID_124;
    l1 = self.box_VehicleListener_v3_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1407188665", "1407188665", "MIS_220_B45", "box_GetPlayersVehicleID_124.NotInVehicle", "box_VehicleListener_v3_44.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GetPlayersVehicleID_124_OneVehicle()
    local l0, l1;
    l0 = self.box_GetPlayersVehicleID_124;
    l1 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|547940018", "547940018", "MIS_220_B45", "box_GetPlayersVehicleID_124.OneVehicle", "box_MultipleOR_62.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPlayersVehicleID_124_TwoVehicles()
    local l0, l1;
    l0 = self.box_GetPlayersVehicleID_124;
    l1 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1613616712", "1613616712", "MIS_220_B45", "box_GetPlayersVehicleID_124.TwoVehicles", "box_MultipleOR_62.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_EntityStatusListener_35_Disabled()
    local l0, l1;
    l0 = self.box_EntityStatusListener_35;
    l1 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1656919800", "1656919800", "MIS_220_B45", "box_EntityStatusListener_35.Disabled", "box_MultipleOR_34.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_35_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_32();
    l0 = self.box_EntityStatusListener_35;
    l1 = self.box_UniversalInteractionModifier_v2_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|349399355", "349399355", "MIS_220_B45", "box_EntityStatusListener_35.Loaded", "box_UniversalInteractionModifier_v2_32.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_35_Unloaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_35;
    l1 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1959912235", "1959912235", "MIS_220_B45", "box_EntityStatusListener_35.Unloaded", "box_MultipleOR_34.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EndActivityObjective_v2_10_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Reach_GoTo_v3_69();
    l0 = self.box_Reach_GoTo_v3_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|2015528212", "2015528212", "MIS_220_B45", "box_EndActivityObjective_v2_10.Out", "box_Reach_GoTo_v3_69.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_31_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_31;
    l1 = self.box_OnceOnly_v3_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|2121808569", "2121808569", "MIS_220_B45", "box_StaticBreakableListener_31.OnBreak", "box_OnceOnly_v3_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_64_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_89();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|305998130", "305998130", "MIS_220_B45", "box_OutputOrder_v2_64.Out", "box_OutputOrder_v2_89.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_64_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_17();
    l0 = self.box_NarrativeFade_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|28506175", "28506175", "MIS_220_B45", "box_OutputOrder_v2_64.Out", "box_NarrativeFade_17.FadeIn", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeIn
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_64_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_98();
    l0 = self.box_Music_Quest_v2_98;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|487518453", "487518453", "MIS_220_B45", "box_OutputOrder_v2_64.Out", "box_Music_Quest_v2_98.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_46_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_46;
    l1 = self.box_MultipleOR_109;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1262771311", "1262771311", "MIS_220_B45", "box_MultipleOR_46.Out", "box_MultipleOR_109.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_BroadcastMessage_14_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_72();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|799980209", "799980209", "MIS_220_B45", "box_BroadcastMessage_14.Out", "box_Simple_Node_72.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_11_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_10();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1058902703", "1058902703", "MIS_220_B45", "box_ActivityObjectiveMarkerModifier_v3_11.Disabled", "box_EndActivityObjective_v2_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_52_Out()
    self:OnExit_box_SetBoolean_v2_52_Out();
end;

function export:f_box_MultipleOR_34_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_32();
    l0 = self.box_MultipleOR_34;
    l1 = self.box_UniversalInteractionModifier_v2_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1003134332", "1003134332", "MIS_220_B45", "box_MultipleOR_34.Out", "box_UniversalInteractionModifier_v2_32.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_EndActivityObjective_v2_53_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_71();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1015573655", "1015573655", "MIS_220_B45", "box_EndActivityObjective_v2_53.Out", "box_ActivityObjectiveMarkerModifier_v3_71.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_86_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_87();
    l0 = self.box_UniversalInteractionModifier_v2_86;
    l1 = self.box_UniversalInteractionModifier_v2_87;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|247755558", "247755558", "MIS_220_B45", "box_UniversalInteractionModifier_v2_86.Enabled", "box_UniversalInteractionModifier_v2_87.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_62_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionAckTriggerListener_5();
    l0 = self.box_MultipleOR_62;
    l1 = self.box_MissionAckTriggerListener_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|460171952", "460171952", "MIS_220_B45", "box_MultipleOR_62.Out", "box_MissionAckTriggerListener_5.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SetEntity_v2_68_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_68_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_66();
    l0 = self.box_MultipleAND_v2_66;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1512284906", "1512284906", "MIS_220_B45", "box_SetEntity_v2_68.Out", "box_MultipleAND_v2_66.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_PlaySequence_v8_94_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_94;
    l1 = self.box_MultipleOR_95;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1840703925", "1840703925", "MIS_220_B45", "box_PlaySequence_v8_94.Finished", "box_MultipleOR_95.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_94_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_94;
    l1 = self.box_MultipleOR_95;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|155454440", "155454440", "MIS_220_B45", "box_PlaySequence_v8_94.Skipped", "box_MultipleOR_95.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlaySequence_v8_94_Started()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_114();
    l0 = self.box_PlaySequence_v8_94;
    l1 = self.box_VisibilityModifier_114;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|914997487", "914997487", "MIS_220_B45", "box_PlaySequence_v8_94.Started", "box_VisibilityModifier_114.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_75_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_75;
    l1 = self.box_MultipleOR_84;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1786587294", "1786587294", "MIS_220_B45", "box_PlaySequence_v8_75.Finished", "box_MultipleOR_84.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_75_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_75;
    l1 = self.box_MultipleOR_84;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1642998793", "1642998793", "MIS_220_B45", "box_PlaySequence_v8_75.Skipped", "box_MultipleOR_84.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlaySequence_v8_75_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_48();
    l0 = self.box_PlaySequence_v8_75;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1394300973", "1394300973", "MIS_220_B45", "box_PlaySequence_v8_75.Started", "box_OutputOrder_v2_48.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_47_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_28();
    l0 = self.box_MultipleAND_v2_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|96698371", "96698371", "MIS_220_B45", "box_ActivityObjectiveMarkerModifier_v3_47.Disabled", "box_MultipleAND_v2_28.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_AddActivityObjective_v2_45_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_47();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1180496888", "1180496888", "MIS_220_B45", "box_AddActivityObjective_v2_45.Out", "box_ActivityObjectiveMarkerModifier_v3_47.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_7_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_20();
    l0 = self.box_EntityStatusListener_7;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|723162048", "723162048", "MIS_220_B45", "box_EntityStatusListener_7.Loaded", "box_SetEntity_v2_20.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_27_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_27;
    l1 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|279316916", "279316916", "MIS_220_B45", "box_ActivityAcknowledgeGate_27.Acknowledged", "box_MultipleOR_21.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_27_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_19();
    l0 = self.box_ActivityAcknowledgeGate_27;
    l1 = self.box_NarrativeFade_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1311598635", "1311598635", "MIS_220_B45", "box_ActivityAcknowledgeGate_27.Reloaded", "box_NarrativeFade_19.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_ShimmerModifier_v2_26_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionListener_30();
    l0 = self.box_ShimmerModifier_v2_26;
    l1 = self.box_UniversalInteractionListener_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1230707301", "1230707301", "MIS_220_B45", "box_ShimmerModifier_v2_26.Disabled", "box_UniversalInteractionListener_30.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ShimmerModifier_v2_26_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionListener_30();
    l0 = self.box_ShimmerModifier_v2_26;
    l1 = self.box_UniversalInteractionListener_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|855995680", "855995680", "MIS_220_B45", "box_ShimmerModifier_v2_26.Enabled", "box_UniversalInteractionListener_30.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleAND_v2_66_Out()
    local params, l0, l1;
    params = self:OnEnter_box_BroadcastMessage_14();
    l0 = self.box_MultipleAND_v2_66;
    l1 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1655194425", "1655194425", "MIS_220_B45", "box_MultipleAND_v2_66.Out", "box_BroadcastMessage_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StopMetaSequence_v5_93_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_47();
    l0 = self.box_StopMetaSequence_v5_93;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|927223512", "927223512", "MIS_220_B45", "box_StopMetaSequence_v5_93.Stopped", "box_ActivityObjectiveMarkerModifier_v3_47.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_38_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_64();
    l0 = self.box_MultipleOR_38;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1514215511", "1514215511", "MIS_220_B45", "box_MultipleOR_38.Out", "box_OutputOrder_v2_64.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_21_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_21;
    l1 = self.box_ActivityInitialized_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|351318032", "351318032", "MIS_220_B45", "box_MultipleOR_21.Out", "box_ActivityInitialized_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Delay_v5_123_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_BroadcastMessage_59();
    l0 = self.box_Delay_v5_123;
    l1 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|662096881", "662096881", "MIS_220_B45", "box_Delay_v5_123.TimeElapsed", "box_BroadcastMessage_59.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_33_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_41();
    l0 = self.box_Delay_v5_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|115610594", "115610594", "MIS_220_B45", "box_OutputOrder_v2_33.Out", "box_Delay_v5_41.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_33_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_35();
    l0 = self.box_EntityStatusListener_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1269414107", "1269414107", "MIS_220_B45", "box_OutputOrder_v2_33.Out", "box_EntityStatusListener_35.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_33_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_49();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|837512879", "837512879", "MIS_220_B45", "box_OutputOrder_v2_33.Out", "box_Print_v2_49.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_33_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_100();
    l0 = self.box_SoundModifier_v2_100;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|623146227", "623146227", "MIS_220_B45", "box_OutputOrder_v2_33.Out", "box_SoundModifier_v2_100.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_StartMetaSequence_77_Out()
    local l0, l1;
    self:OnExit_box_StartMetaSequence_77_Out();
    l0 = self.box_StartMetaSequence_77;
    l1 = self.box_MultipleOR_110;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1051823601", "1051823601", "MIS_220_B45", "box_StartMetaSequence_77.Out", "box_MultipleOR_110.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_106_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_103();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1902505948", "1902505948", "MIS_220_B45", "box_OutputOrder_v2_106.Out", "box_ParticleSystem_v3_103.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_106_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_105();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|2052610488", "2052610488", "MIS_220_B45", "box_OutputOrder_v2_106.Out", "box_OutputOrder_v2_105.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_106_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_117();
    l0 = self.box_Delay_v5_117;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|2117099916", "2117099916", "MIS_220_B45", "box_OutputOrder_v2_106.Out", "box_Delay_v5_117.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_106_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_36();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|528374532", "528374532", "MIS_220_B45", "box_OutputOrder_v2_106.Out", "box_Simple_Node_36.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_96_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_96;
    l1 = self.box_StartMetaSequence_92;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|972275530", "972275530", "MIS_220_B45", "box_EntityStatusListener_96.Loaded", "box_StartMetaSequence_92.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_GetPlayerGroup_v2_22_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_22_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_29();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|386609549", "386609549", "MIS_220_B45", "box_GetPlayerGroup_v2_22.Out", "box_GetLocalPlayer_v2_29.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_97_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_63();
    l0 = self.box_OnceOnly_v3_97;
    l1 = self.box_SoundModifier_v2_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1485550245", "1485550245", "MIS_220_B45", "box_OnceOnly_v3_97.Out", "box_SoundModifier_v2_63.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_119_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAIRequestGroup_v2_116();
    l0 = self.box_SpawnAIRequestGroup_v2_116;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1315102460", "1315102460", "MIS_220_B45", "box_OutputOrder_v2_119.Out", "box_SpawnAIRequestGroup_v2_116.SpawnByPercentage", clone:GetLuaBox(), l0:GetLuaBox());
    -- SpawnByPercentage
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_119_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_118();
    l0 = self.box_SoundModifier_v2_118;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1906456040", "1906456040", "MIS_220_B45", "box_OutputOrder_v2_119.Out", "box_SoundModifier_v2_118.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_51_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_51_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1492271049", "1492271049", "MIS_220_B45", "box_SetBoolean_v2_51.Out", "box_MultipleOR_46.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_6_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_4();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|464625458", "464625458", "MIS_220_B45", "box_OutputOrder_v2_6.Out", "box_MissionBlockLayer_4.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_6_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupIter_88();
    l0 = self.box_GroupIter_88;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1701629162", "1701629162", "MIS_220_B45", "box_OutputOrder_v2_6.Out", "box_GroupIter_88.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_113();
    l0 = self.box_EntityStatusListener_113;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1848224694", "1848224694", "MIS_220_B45", "box_OutputOrder_v2_6.Out", "box_EntityStatusListener_113.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_AddActivityObjective_v2_61_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_71();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1859976955", "1859976955", "MIS_220_B45", "box_AddActivityObjective_v2_61.Out", "box_ActivityObjectiveMarkerModifier_v3_71.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_44_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_61();
    l0 = self.box_VehicleListener_v3_44;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|191783709", "191783709", "MIS_220_B45", "box_VehicleListener_v3_44.Enabled", "box_AddActivityObjective_v2_61.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_44_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_53();
    l0 = self.box_VehicleListener_v3_44;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|95476206", "95476206", "MIS_220_B45", "box_VehicleListener_v3_44.OnSit", "box_EndActivityObjective_v2_53.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_55_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_35();
    l0 = self.box_EntityStatusListener_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|864527538", "864527538", "MIS_220_B45", "box_OutputOrder_v2_55.Out", "box_EntityStatusListener_35.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_55_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_81();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|434444577", "434444577", "MIS_220_B45", "box_OutputOrder_v2_55.Out", "box_OutputOrder_v2_81.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Bonfire_Function_99_Brick_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_104();
    l0 = self.box_Bonfire_Function_99;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|784868247", "784868247", "MIS_220_B45", "box_Bonfire_Function_99.Brick_Started", "box_OutputOrder_v2_104.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Bonfire_Function_99_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_106();
    l0 = self.box_Bonfire_Function_99;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|385319441", "385319441", "MIS_220_B45", "box_Bonfire_Function_99.Success", "box_OutputOrder_v2_106.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_48_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_97;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1191311007", "1191311007", "MIS_220_B45", "box_OutputOrder_v2_48.Out", "box_OnceOnly_v3_97.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_48_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_83();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|744815927", "744815927", "MIS_220_B45", "box_OutputOrder_v2_48.Out", "box_ParticleSystem_v3_83.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_BroadcastMessage_59_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_42();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|2075904662", "2075904662", "MIS_220_B45", "box_BroadcastMessage_59.Out", "box_OutputOrder_v2_42.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_71_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|2071825327", "2071825327", "MIS_220_B45", "box_ActivityObjectiveMarkerModifier_v3_71.Disabled", "box_MultipleOR_62.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_84_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v5_73();
    l0 = self.box_MultipleOR_84;
    l1 = self.box_StopMetaSequence_v5_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|987350256", "987350256", "MIS_220_B45", "box_MultipleOR_84.Out", "box_StopMetaSequence_v5_73.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_23_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1140855360", "1140855360", "MIS_220_B45", "box_OutputOrder_v2_23.Out", "box_ActivityAcknowledgeGate_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_23_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_24();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1937195311", "1937195311", "MIS_220_B45", "box_OutputOrder_v2_23.Out", "box_Print_v2_24.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_42_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_40();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|307707421", "307707421", "MIS_220_B45", "box_OutputOrder_v2_42.Out", "box_EndActivityObjective_v2_40.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_42_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_52();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|755710224", "755710224", "MIS_220_B45", "box_OutputOrder_v2_42.Out", "box_SetBoolean_v2_52.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_42_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_80();
    l0 = self.box_SoundModifier_v2_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|850463684", "850463684", "MIS_220_B45", "box_OutputOrder_v2_42.Out", "box_SoundModifier_v2_80.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_42_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_63();
    l0 = self.box_SoundModifier_v2_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|792365347", "792365347", "MIS_220_B45", "box_OutputOrder_v2_42.Out", "box_SoundModifier_v2_63.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_42_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_83();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|824771901", "824771901", "MIS_220_B45", "box_OutputOrder_v2_42.Out", "box_ParticleSystem_v3_83.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StopMetaSequence_v5_73_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_108();
    l0 = self.box_StopMetaSequence_v5_73;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|719153239", "719153239", "MIS_220_B45", "box_StopMetaSequence_v5_73.Stopped", "box_Compare_Boolean_108.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_28_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_78();
    l0 = self.box_MultipleAND_v2_28;
    l1 = self.box_Delay_v5_78;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|771246534", "771246534", "MIS_220_B45", "box_MultipleAND_v2_28.Out", "box_Delay_v5_78.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ActivityInitialized_25_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_22();
    l0 = self.box_ActivityInitialized_25;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|392794276", "392794276", "MIS_220_B45", "box_ActivityInitialized_25.Out", "box_GetPlayerGroup_v2_22.FriendlyPlayers", l0:GetLuaBox(), l1:GetLuaBox());
    -- FriendlyPlayers
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_107_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_11();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1224889118", "1224889118", "MIS_220_B45", "box_AddActivityObjective_v2_107.Out", "box_ActivityObjectiveMarkerModifier_v3_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_20_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_20_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_66();
    l0 = self.box_MultipleAND_v2_66;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1733027523", "1733027523", "MIS_220_B45", "box_SetEntity_v2_20.Out", "box_MultipleAND_v2_66.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_VehicleModifier_v2_18_OnSetAsUsable()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_65();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|609158458", "609158458", "MIS_220_B45", "box_VehicleModifier_v2_18.OnSetAsUsable", "box_SetEntity_v2_65.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_101_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_45();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|963090591", "963090591", "MIS_220_B45", "box_EndActivityObjective_v2_101.Out", "box_AddActivityObjective_v2_45.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_37();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|402145738", "402145738", "MIS_220_B45", "box_OutputOrder_v2_1.Out", "box_IsValueNil_v3_37.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetTimeOfDay_3();
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1345078675", "1345078675", "MIS_220_B45", "box_OutputOrder_v2_1.Out", "box_SetTimeOfDay_3.SetTimeOfDay", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeOfDay
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_108_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_110;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|312796948", "312796948", "MIS_220_B45", "box_Compare_Boolean_108.A_is_False", "box_MultipleOR_110.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_108_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_109;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1973246926", "1973246926", "MIS_220_B45", "box_Compare_Boolean_108.A_is_True", "box_MultipleOR_109.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:OnEnter_box_Simple_Node_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|@beat_end");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_36_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|@startUp");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_13_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|@VehicleSet");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_72_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_87()
    local params;
    params = {
        -- state,
        [3] = true,
        -- usableEntity,
        [4] = self.e_currentGroupTorch,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_89");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|154744725");
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
                [0] = self.f_box_OutputOrder_v2_89_Out_0,
                [1] = self.f_box_OutputOrder_v2_89_Out_1,
                [2] = self.f_box_OutputOrder_v2_89_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|188506823");
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
        [8] = "VALVE OPENED",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|190769729");
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
                [0] = self.f_box_OutputOrder_v2_81_Out_0,
                [1] = self.f_box_OutputOrder_v2_81_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_105()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_105");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|191000475");
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
                [0] = self.f_box_OutputOrder_v2_105_Out_0,
                [1] = self.f_box_OutputOrder_v2_105_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_113()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109980639540296891",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|221011293");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_74_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_74_A_is_True,
    });
    params = {
        -- A,
        [0] = self.b_broke,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|225903852");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_4_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "234325898228052615",
        -- missionLayerId,
        [1] = "279361894503832461",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_16()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109140881865973050",
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|234213904");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_37_No,
        -- Yes,
        [1] = self.f_box_IsValueNil_v3_37_Yes,
    });
    params = {
        -- ent,
        [4] = Globals.MIS_220_MASTER.e_globalMarkerID,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_104");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|239272676");
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
                [0] = self.f_box_OutputOrder_v2_104_Out_0,
                [1] = self.f_box_OutputOrder_v2_104_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|260837555");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_58_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_8()
    local params;
    params = {
        -- timeScale,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_41()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_67()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109140881874361664",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|281993103");
    l0:SetConnections({
        -- A_and_B,
        [0] = self.f_box_Compare_Boolean_43_A_and_B,
    });
    params = {
        -- A,
        [0] = self.b_waterflow,
        -- B,
        [1] = self.b_broke,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_30()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- usableEntityId,
        [1] = "2109126473148286443",
    };
    return params;
end;

function export:OnEnter_box_GroupIter_121()
    local params;
    params = {
        -- entities,
        [0] = "#1A11FFD9",
    };
    return params;
end;

function export:OnEnter_box_GroupIter_88()
    local params;
    params = {
        -- entities,
        [0] = "#77978AA0",
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v3_69()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = true,
        -- bIsTrigger,
        [1] = true,
        -- bRequiresAllPlayer,
        [2] = false,
        -- bRequiresObjective,
        [3] = true,
        -- bUse2d_ProximityCheck,
        [4] = true,
        -- bUseDetectionModifier,
        [5] = false,
        -- eMarker,
        [6] = "2109112016890239085",
        -- eTrigger,
        [8] = "2109163875273308231",
        -- fDistanceFromTarget,
        [9] = 5,
        -- fObjectiveTimer,
        [10] = 0,
        -- opt_Objective,
        [12] = {
            section = "Objectives",
            item = "MIS_220_B45_GOAL",
            id = "1030154",
        },
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_117()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|462619359");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_79_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_220_B45_GOAL",
            id = "1030154",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_100()
    local params;
    params = {
        -- Pawns,
        [0] = "2109675415959245805",
        -- SoundId,
        [1] = "3851853982",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SendGSFGenericEvent_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SendGSFGenericEvent.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SendGSFGenericEvent_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|488801903");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SendGSFGenericEvent_85_Out,
    });
    params = {
        -- entity,
        [0] = self.e_currentGroupTorch,
        -- eventName,
        [1] = "mis_220_torches_ON",
    };
    return params;
end;

function export:OnEnter_box_FogMoving_Function_91()
    local params;
    params = {
        -- e_stratPoint_1,
        [0] = "2109483997225568128",
        -- e_stratPoint_2,
        [1] = nil,
        -- e_stratPoint_3,
        [2] = nil,
        -- e_StratPointStart,
        [3] = "2109501678813197602",
        -- f_BlendTime,
        [4] = 8,
        -- g_torchGroup,
        [5] = "#9999EB8C",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_63()
    local params;
    params = {
        -- Pawns,
        [0] = "2109221668019784564",
        -- SoundId,
        [1] = "1968031834",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_78()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_MissionAckTriggerListener_5()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- triggerId,
        [1] = "2109859320886729407",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|546687311");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_40_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_220_B45_OBJ",
            id = "1016460",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_19()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_32()
    local params;
    params = {
        -- displayId,
        [1] = {
            section = "OBJECTIVES",
            item = "MIS_200_Interaction_Pull",
            id = "1036057",
        },
        -- usableEntity,
        [4] = "2109126473148286443",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_120()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_120");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|623185226");
    l0:SetConnections({
        -- Destroyed,
        [1] = self.f_box_StaticBreakableBreaker_120_Destroyed,
    });
    l0 = self.box_GroupIter_121;
    params = {
        -- entity,
        [0] = l0:GetDataOutValue(0),
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_2()
    local params;
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "#1A11FFD9",
    };
    return params;
end;

function export:OnEnter_box_SpawnAIRequestGroup_v2_116()
    local params;
    params = {
        -- RequestGroupName,
        [0] = "wolf_reinforcement",
        -- SpawnerPercentage,
        [2] = 100,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_103");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|648934623");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109859694668435234",
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|665086288");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_29_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_82()
    local params;
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "#1A11FFD9",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_122()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_122");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|678059027");
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
                [0] = self.f_box_OutputOrder_v2_122_Out_0,
                [1] = self.f_box_OutputOrder_v2_122_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_102");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|684571171");
    l0:SetConnections({
    });
    params = {
        -- FromGroup,
        [0] = self.e_currentGroupTorch,
        -- ToGroup,
        [1] = "#C38F63CE",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|691617025");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_65_Out,
    });
    params = {
        -- Entity,
        [0] = "2109140881874361664",
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|701578426");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_3_Out,
    });
    params = {
        -- Hour,
        [0] = 23,
        -- Minute,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_115()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|751879296");
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
                [0] = self.f_box_OutputOrder_v2_15_Out_0,
                [1] = self.f_box_OutputOrder_v2_15_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_114()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109980639540296891",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_111()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109980639540296891",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_35()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109126473148286443",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|849719614");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_10_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_220_B30_GOAL",
            id = "1030155",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_31()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- entity,
        [1] = "#1A11FFD9",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|869599229");
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
                [0] = self.f_box_OutputOrder_v2_64_Out_0,
                [1] = self.f_box_OutputOrder_v2_64_Out_1,
                [2] = self.f_box_OutputOrder_v2_64_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|924278456");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_14_Out,
    });
    params = {
        -- Message,
        [0] = "mis_220_vehicle_set",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|984973797");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_11_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2109859327117368002",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_220_B30_GOAL",
            id = "1030155",
        },
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|991661111");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_52_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1053841895");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_53_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_220_BOAT",
            id = "1018011",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_86()
    local params;
    params = {
        -- state,
        [3] = false,
        -- usableEntity,
        [4] = self.e_currentGroupTorch,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1097802618");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_68_Out,
    });
    params = {
        -- Entity,
        [0] = "2109140881865973047",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_98()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 1,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "357605033",
        -- StopEvent,
        [7] = "439384452",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = false,
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_94()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID_Gate,
        -- SceneEntity,
        [3] = "2109565253502137219",
        -- SequenceFile,
        [4] = "Sequences/bowmore_main/mis_220/m220_neweden_gateopening.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_75()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID_BlockedGate,
        -- SceneEntity,
        [3] = "2109882939574618138",
        -- SequenceFile,
        [4] = "Sequences/bowmore_main/mis_220/m22_neweden_blockedwaterwheel.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1252499108");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_47_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2108146357838564070",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_220_B45_OBJ",
            id = "1016460",
        },
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1265410215");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_45_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_220_B45_OBJ",
            id = "1016460",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_7()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109140881863875891",
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_26()
    local params;
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2109126473148286443",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_66()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_17()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v5_93()
    local params;
    params = {
        -- ID,
        [0] = self.MetaSequenceID_Gate,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_123()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1468344601");
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
                [0] = self.f_box_OutputOrder_v2_33_Out_0,
                [1] = self.f_box_OutputOrder_v2_33_Out_1,
                [2] = self.f_box_OutputOrder_v2_33_Out_2,
                [3] = self.f_box_OutputOrder_v2_33_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_112()
    local params;
    params = {
        -- Group,
        [0] = "2109980636426026167",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_106()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_106");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1483349911");
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
                [0] = self.f_box_OutputOrder_v2_106_Out_0,
                [1] = self.f_box_OutputOrder_v2_106_Out_1,
                [2] = self.f_box_OutputOrder_v2_106_Out_2,
                [3] = self.f_box_OutputOrder_v2_106_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_96()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109565253502137219",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1623642427");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_22_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1628940220");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_119()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_119");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1666474351");
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
                [0] = self.f_box_OutputOrder_v2_119_Out_0,
                [1] = self.f_box_OutputOrder_v2_119_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1702272251");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_51_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1702940261");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109471493552421214",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1733324057");
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
                [0] = self.f_box_OutputOrder_v2_6_Out_0,
                [2] = self.f_box_OutputOrder_v2_6_Out_2,
                [3] = self.f_box_OutputOrder_v2_6_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1745521185");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_61_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_220_BOAT",
            id = "1018011",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_44()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#ED455357",
        -- vehicle,
        [4] = Globals.MIS_220_MASTER.e_globalVehicleID,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1785323265");
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
                [0] = self.f_box_OutputOrder_v2_55_Out_0,
                [1] = self.f_box_OutputOrder_v2_55_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Bonfire_Function_99()
    local params;
    params = {
        -- e_Bonfire,
        [0] = "2109498591713168187",
        -- e_Marker,
        [1] = "2109498623403232068",
        -- mBlock_ID,
        [2] = "27160297364546482",
        -- mBlockLayer_ID,
        [3] = "27160319117234234",
        -- mBlockLayerStrat_ID,
        [4] = "36167518371982829",
        -- o_Objective,
        [5] = {
            section = "Objectives",
            item = "MIS_220_B41_OBJ",
            id = "1030300",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1797738798");
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

function export:OnEnter_box_BroadcastMessage_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1816671658");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_59_Out,
    });
    params = {
        -- Message,
        [0] = "MIS_220_WHEEL_2",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1841183576");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_71_Disabled,
    });
    params = {
        -- Marker,
        [1] = Globals.MIS_220_MASTER.e_globalMarkerID,
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_220_BOAT",
            id = "1018011",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1874840753");
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

function export:OnEnter_box_OutputOrder_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|1903361408");
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
                [0] = self.f_box_OutputOrder_v2_42_Out_0,
                [1] = self.f_box_OutputOrder_v2_42_Out_1,
                [3] = self.f_box_OutputOrder_v2_42_Out_3,
                [4] = self.f_box_OutputOrder_v2_42_Out_4,
                [5] = self.f_box_OutputOrder_v2_42_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_FogMoving_Function_90()
    local params;
    params = {
        -- e_stratPoint_1,
        [0] = "2109473436700007743",
        -- e_stratPoint_2,
        [1] = "2109483997225568128",
        -- e_stratPoint_3,
        [2] = nil,
        -- e_StratPointStart,
        [3] = "2109473378894110011",
        -- f_BlendTime,
        [4] = 10,
        -- g_torchGroup,
        [5] = "#EE9EDB1A",
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v5_73()
    local params;
    params = {
        -- ID,
        [0] = self.MetaSequenceID_BlockedGate,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_80()
    local params;
    params = {
        -- Pawns,
        [0] = "2109221675512908664",
        -- SoundId,
        [1] = "1583643488",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_28()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_107");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|2020847515");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_107_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_220_B30_GOAL",
            id = "1030155",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|2022690695");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 3,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "MIS_220_B40 script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_118()
    local params;
    params = {
        -- Pawns,
        [0] = "2109984587624001233",
        -- SoundId,
        [1] = "2286701320",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|2072386885");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_20_Out,
    });
    params = {
        -- Entity,
        [0] = "2109140881863875891",
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|2081896384");
    l0:SetConnections({
        -- OnSetAsUsable,
        [7] = self.f_box_VehicleModifier_v2_18_OnSetAsUsable,
    });
    params = {
        -- targets,
        [0] = "2109140881874361664",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_101");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|2091916833");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_101_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_220_B41_OBJ",
            id = "1030300",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|2130473348");
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

function export:OnEnter_box_Compare_Boolean_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_108");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_B45.domino|@MIS_220_B45|2132002036");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_108_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_108_A_is_True,
    });
    params = {
        -- A,
        [0] = self.b_broke,
    };
    return params;
end;

function export:OnExit_box_StartMetaSequence_92_Out()
    local l0;
    l0 = self.box_StartMetaSequence_92;
    self.MetaSequenceID_Gate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_58_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.b_broke = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupIter_88_PawnIter()
    local l0;
    l0 = self.box_GroupIter_88;
    self.e_currentGroupTorch = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_29_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.eLocalPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_65_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    Globals.MIS_220_MASTER.e_globalVehicleID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_52_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.b_interactDone = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_68_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    Globals.MIS_220_MASTER.e_globalMarkerID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_77_Out()
    local l0;
    l0 = self.box_StartMetaSequence_77;
    self.MetaSequenceID_BlockedGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_22_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_51_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.b_waterflow = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_20_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    Globals.MIS_220_MASTER.e_SmokeOnWater = l0:GetDataOutValue(0);
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
