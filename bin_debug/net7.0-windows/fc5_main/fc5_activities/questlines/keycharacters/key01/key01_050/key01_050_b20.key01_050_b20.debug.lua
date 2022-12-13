LUACg� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/keycharacters/key01/key01_050/key01_050_b20.domino
-- User graph: KEY01_050_B20
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Deliver_Vehicle_To_Position.Brick_Deliver_Vehicle_v5.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_TakeControl_Vehicle.Brick_TakeControl_Vehicle_Generic.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveTimerListener.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/BroadcastMessage.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/ForceExitVehicle_v2.lua");
        cboxRes:RegisterBox("Domino/System/GetPawnVehicleInfo.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/ForceInVehicle_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/InputPriorityModifier_v4.lua");
        cboxRes:RegisterBox("Domino/System/PostWWiseEventSetState.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundMusicTrigger.lua");
        cboxRes:RegisterBox("Domino/System/StimsEmitter_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/VehicleStateListener.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_050/KEY01_050_B20.Dialog_FUELTANKER.debug.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_050/KEY01_050_OMNI.DIALOG_FILLER.debug.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_050/KEY01_050_OMNI.DIALOG_SCARES.debug.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_050/KEY01_050_OMNI.DIALOG_TOOSLOW.debug.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_050/KEY01_050_OMNI.KEY01_050_EntitySetup.debug.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_050/KEY01_050_OMNI.KEY01_050_WARNINGZONE.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2102059229.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2536106506.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1455224898.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3287598536.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_050/KEY01_050_B20.KEY01_050_B20.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Deliver_Vehicle_To_Position.Brick_Deliver_Vehicle_v5.debug.lua")] = {
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
                name = "Failed",
                delayed = true,
            },
            [2] = {
                name = "Player_EnterVehicle",
                delayed = true,
            },
            [3] = {
                name = "Player_ExitVehicle",
                delayed = true,
            },
            [4] = {
                name = "Started",
                delayed = false,
            },
            [5] = {
                name = "Success",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "bCompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "bDisplayVehicleHealth",
                type = "bool",
            },
            [2] = {
                name = "bMustExitVehicle",
                type = "bool",
            },
            [3] = {
                name = "bRequiresObjective",
                type = "bool",
            },
            [4] = {
                name = "eTarget",
                type = "entity",
            },
            [5] = {
                name = "eTargetMarker",
                type = "entity",
            },
            [6] = {
                name = "eVehicle",
                type = "entity",
            },
            [7] = {
                name = "eVehicleMarker",
                type = "entity",
            },
            [8] = {
                name = "fDistanceFromTarget",
                type = "float",
            },
            [9] = {
                name = "isTargetTrigger",
                type = "bool",
            },
            [10] = {
                name = "Objective",
                type = "oasis",
            },
            [11] = {
                name = "opt_FailReason",
                type = "oasis",
            },
        },
        dataInCount = 12,
        dataOut = {
            [0] = {
                name = "FailReason",
                type = "oasis",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_TakeControl_Vehicle.Brick_TakeControl_Vehicle_Generic.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Started",
                delayed = false,
            },
            [1] = {
                name = "Success",
                delayed = true,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "aVehicleArchetype",
                type = "archetype",
            },
            [1] = {
                name = "bCompletePreviousObjective",
                type = "bool",
            },
            [2] = {
                name = "hasObjective",
                type = "bool",
            },
            [3] = {
                name = "o_Objective",
                type = "oasis",
            },
            [4] = {
                name = "sVehicleType",
                type = "string",
            },
        },
        dataInCount = 5,
        dataOut = {
            [0] = {
                name = "e_GenericVehicleID",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua")] = {
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
                name = "FailingZoneEntered",
                delayed = true,
            },
            [1] = {
                name = "WarningZoneEntered",
                delayed = true,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "bShowUI",
                type = "bool",
            },
            [1] = {
                name = "CoopFailRequiresAllPlayer",
                type = "bool",
            },
            [2] = {
                name = "FailingZoneTrigger",
                type = "entity",
            },
            [3] = {
                name = "WarningZoneTrigger",
                type = "entity",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "CurrentWarnedPlayer",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityObjectiveTimerListener.lua")] = {
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
                name = "OnTime",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "AutoDisable",
                type = "bool",
            },
            [1] = {
                name = "ObjectiveId",
                type = "oasis",
            },
            [2] = {
                name = "Time",
                type = "float",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/ActivityRetry.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Retry",
            },
        },
        controlInCount = 1,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "ReasonId",
                type = "oasis",
            },
            [1] = {
                name = "Reload",
                type = "bool",
            },
            [2] = {
                name = "ShowHud",
                type = "bool",
            },
        },
        dataInCount = 3,
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
                name = "vehiclesSpawned",
                type = "list",
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
    metadataTable[GetPathID("Domino/System/ForceExitVehicle_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "ForceExit",
            },
            [1] = {
                name = "TryExit",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "ForceExitted",
                delayed = false,
            },
            [1] = {
                name = "TryExitted",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "noFail",
                type = "bool",
            },
            [1] = {
                name = "pawns",
                type = "group",
            },
            [2] = {
                name = "vehicle",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/GetPawnVehicleInfo.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "InVehicle",
                delayed = false,
            },
            [1] = {
                name = "NotInVehicle",
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
                name = "pawn",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "archetypeId",
                type = "archetype",
            },
            [1] = {
                name = "seatType",
                type = "string",
            },
            [2] = {
                name = "vehicle",
                type = "entity",
            },
            [3] = {
                name = "vehicleType",
                type = "string",
            },
        },
        dataOutCount = 4,
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
    metadataTable[GetPathID("Domino/System/IsEntityLoaded_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "False",
                delayed = false,
            },
            [1] = {
                name = "True",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "entityId",
                type = "entity",
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
    metadataTable[GetPathID("Domino/System/PlayDialog_v6.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "CancelQueued",
            },
            [1] = {
                name = "PlayDialog",
            },
            [2] = {
                name = "Stop",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = true,
            },
            [1] = {
                name = "FinishedInterrupted",
                delayed = true,
            },
            [2] = {
                name = "QueueCancelled",
                delayed = false,
            },
            [3] = {
                name = "Queued",
                delayed = true,
            },
            [4] = {
                name = "Started",
                delayed = true,
            },
            [5] = {
                name = "StartedPriorityFailed",
                delayed = true,
            },
            [6] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 7,
        dataIn = {
            [0] = {
                name = "Group",
                type = "group",
            },
            [1] = {
                name = "RelevancyTime",
                type = "float",
            },
            [2] = {
                name = "ReplayIfInterrupted",
                type = "bool",
            },
            [3] = {
                name = "SoundId",
                type = "Sound",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Player/ForceInVehicle_v2.lua")] = {
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
                name = "pawns",
                type = "group",
            },
            [1] = {
                name = "SeatType",
                type = "int",
            },
            [2] = {
                name = "vehicleEntity",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Player/InputPriorityModifier_v4.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Release",
            },
            [1] = {
                name = "Set",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnRelease",
                delayed = false,
            },
            [1] = {
                name = "OnSet",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "InputPriority",
                type = "string",
            },
            [1] = {
                name = "pawns",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/PostWWiseEventSetState.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetState",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Set",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "SoundId",
                type = "Sound",
            },
            [1] = {
                name = "SoundType",
                type = "SoundType",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/ProximityTrigger_v2.lua")] = {
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
            [4] = {
                name = "OnEmpty",
                delayed = true,
            },
            [5] = {
                name = "OnOccupied",
                delayed = true,
            },
            [6] = {
                name = "Use",
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
                name = "colliderFilterId",
                type = "group",
            },
            [2] = {
                name = "listenToGroupSizeChange",
                type = "bool",
            },
            [3] = {
                name = "triggerId",
                type = "entity",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "colliderId",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/Random.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "Reset",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "None",
                delayed = false,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
            [2] = {
                name = "Output",
                dynamicType = 1,
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "AutoReset",
                type = "bool",
            },
            [1] = {
                name = "Probability",
                type = "float",
                dynamicType = 1,
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "OutputNb",
                type = "int",
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
    metadataTable[GetPathID("Domino/System/SoundMusicTrigger.lua")] = {
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
                name = "Skipped",
                delayed = false,
            },
            [1] = {
                name = "Started",
                delayed = false,
            },
            [2] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 3,
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
                name = "Priority",
                type = "int",
            },
            [3] = {
                name = "SoundType",
                type = "SoundType",
            },
            [4] = {
                name = "Stackable",
                type = "bool",
            },
            [5] = {
                name = "StartEvent",
                type = "Sound",
            },
            [6] = {
                name = "StopEvent",
                type = "Sound",
            },
            [7] = {
                name = "StopFadeOut",
                type = "float",
            },
            [8] = {
                name = "WaitUntilMusicEndMarker",
                type = "bool",
            },
            [9] = {
                name = "WaitUntilNotInVehicle",
                type = "bool",
            },
        },
        dataInCount = 10,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/StimsEmitter_v2.lua")] = {
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
                name = "StimsEmitter",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/VehicleStateListener.lua")] = {
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
                name = "OnVehicleFlipped",
                delayed = true,
            },
            [3] = {
                name = "OnVehicleFlippedUpright",
                delayed = true,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "vehicle",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_050/KEY01_050_B20.Dialog_FUELTANKER.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "ThroughTheFlames",
            },
        },
        controlInCount = 2,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "Kim",
                type = "entity",
            },
            [1] = {
                name = "Nick",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_050/KEY01_050_OMNI.DIALOG_FILLER.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "BreatheRight",
            },
            [1] = {
                name = "Breeched",
            },
            [2] = {
                name = "Contradiction",
            },
            [3] = {
                name = "DoingGreat",
            },
            [4] = {
                name = "Jinx",
            },
            [5] = {
                name = "JustCalmDown",
            },
            [6] = {
                name = "NickDizzy",
            },
            [7] = {
                name = "NotSoBad",
            },
            [8] = {
                name = "ReadingUp",
            },
            [9] = {
                name = "RoadTripGames",
            },
            [10] = {
                name = "SlowAndSteady",
            },
            [11] = {
                name = "Texas",
            },
            [12] = {
                name = "Tubin",
            },
        },
        controlInCount = 13,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Kim",
                type = "entity",
            },
            [1] = {
                name = "Nick",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_050/KEY01_050_OMNI.DIALOG_SCARES.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "AreYouShot",
            },
            [1] = {
                name = "DoingGreat",
            },
            [2] = {
                name = "In",
            },
            [3] = {
                name = "ItsOver",
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
                name = "Kim",
                type = "entity",
            },
            [1] = {
                name = "Nick",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_050/KEY01_050_OMNI.DIALOG_TOOSLOW.debug.lua")] = {
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
                name = "Kim",
                type = "entity",
            },
            [1] = {
                name = "MinSpeed",
                type = "float",
            },
            [2] = {
                name = "Nick",
                type = "entity",
            },
            [3] = {
                name = "Truck",
                type = "entity",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_050/KEY01_050_OMNI.KEY01_050_EntitySetup.debug.lua")] = {
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
                name = "Kim",
                type = "entity",
            },
            [1] = {
                name = "Nick",
                type = "entity",
            },
            [2] = {
                name = "Truck",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_050/KEY01_050_OMNI.KEY01_050_WARNINGZONE.debug.lua")] = {
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
                name = "Kim",
                type = "entity",
            },
            [1] = {
                name = "Nick",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "KEY01_050_B20";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20";
    self.gFriendlyPlayer = nil;
    self.eTruck = nil;
    self.eMarker = nil;
    self.eNickRye = nil;
    self.eKimRye = nil;
    self.isReload = false;
    self.box_ActivityObjectiveTimerListener_24 = cbox:CreateBox("Domino/System/Activity/ActivityObjectiveTimerListener.lua");
    l0 = self.box_ActivityObjectiveTimerListener_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveTimerListener_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|24058251");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveTimerListener_24_Enabled,
        -- OnTime,
        [2] = self.f_box_ActivityObjectiveTimerListener_24_OnTime,
    });
    self.box_DIALOG_SCARES_36 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_050/KEY01_050_OMNI.DIALOG_SCARES.debug.lua");
    l0 = self.box_DIALOG_SCARES_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DIALOG_SCARES_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|81479173");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_DIALOG_SCARES_36_Out,
    });
    self.box_VehicleStateListener_23 = cbox:CreateBox("Domino/System/VehicleStateListener.lua");
    l0 = self.box_VehicleStateListener_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleStateListener_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|108229851");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VehicleStateListener_23_Enabled,
        -- OnVehicleFlipped,
        [2] = self.f_box_VehicleStateListener_23_OnVehicleFlipped,
    });
    self.box_Brick_Deliver_Vehicle_v5_32 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Deliver_Vehicle_To_Position.Brick_Deliver_Vehicle_v5.debug.lua");
    l0 = self.box_Brick_Deliver_Vehicle_v5_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Deliver_Vehicle_v5_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|124661983");
    l0:SetConnections({
        -- Failed,
        [1] = self.f_box_Brick_Deliver_Vehicle_v5_32_Failed,
        -- Success,
        [5] = self.f_box_Brick_Deliver_Vehicle_v5_32_Success,
    });
    self.box_ProximityTrigger_v2_42 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|204227217");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_42_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_42_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_42_Leave,
    });
    self.box_KEY01_050_WARNINGZONE_25 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_050/KEY01_050_OMNI.KEY01_050_WARNINGZONE.debug.lua");
    l0 = self.box_KEY01_050_WARNINGZONE_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_KEY01_050_WARNINGZONE_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|290520758");
    l0:SetConnections({
    });
    self.box_Brick_Deliver_Vehicle_v5_34 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Deliver_Vehicle_To_Position.Brick_Deliver_Vehicle_v5.debug.lua");
    l0 = self.box_Brick_Deliver_Vehicle_v5_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Deliver_Vehicle_v5_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|298283149");
    l0:SetConnections({
        -- Failed,
        [1] = self.f_box_Brick_Deliver_Vehicle_v5_34_Failed,
        -- Success,
        [5] = self.f_box_Brick_Deliver_Vehicle_v5_34_Success,
    });
    self.box_Delay_v5_28 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|375632902");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_28_TimeElapsed,
    });
    self.box_DIALOG_FILLER_38 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_050/KEY01_050_OMNI.DIALOG_FILLER.debug.lua");
    l0 = self.box_DIALOG_FILLER_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DIALOG_FILLER_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|384680185");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_DIALOG_FILLER_38_Out,
    });
    self.box_NarrativeFade_52 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|481074539");
    l0:SetConnections({
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_52_FadedOut,
    });
    self.box_SpawnAI_8 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|563099421");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_8_Out,
    });
    self.box_ActivityAcknowledgeGate_2 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|577773226");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_2_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_2_Reloaded,
    });
    self.box_Delay_v5_47 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|599873414");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_47_TimeElapsed,
    });
    self.box_PostWWiseEventSetState_63 = cbox:CreateBox("Domino/System/PostWWiseEventSetState.lua");
    l0 = self.box_PostWWiseEventSetState_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostWWiseEventSetState_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|606057141");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_3 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|620567507");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_3_Loaded,
    });
    self.box_SoundMusicTriggerBox_64 = cbox:CreateBox("Domino/System/SoundMusicTrigger.lua");
    l0 = self.box_SoundMusicTriggerBox_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMusicTriggerBox_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|622620482");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundMusicTriggerBox_64_Started,
    });
    self.box_ExitZoneWarningListener_v3_22 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|646298608");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_22_FailingZoneEntered,
        -- WarningZoneEntered,
        [1] = self.f_box_ExitZoneWarningListener_v3_22_WarningZoneEntered,
    });
    self.box_ProximityTrigger_v2_50 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|751064603");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_50_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_50_Enter,
    });
    self.box_RemoveEntity_v2_83 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|781470184");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_83_Out,
    });
    self.box_ProximityTrigger_v2_1 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|813201369");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_1_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_1_Enter,
    });
    self.box_Brick_TakeControl_Vehicle_Generic_9 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_TakeControl_Vehicle.Brick_TakeControl_Vehicle_Generic.debug.lua");
    l0 = self.box_Brick_TakeControl_Vehicle_Generic_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_TakeControl_Vehicle_Generic_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|878666453");
    l0:SetConnections({
        -- Started,
        [0] = self.f_box_Brick_TakeControl_Vehicle_Generic_9_Started,
        -- Success,
        [1] = self.f_box_Brick_TakeControl_Vehicle_Generic_9_Success,
    });
    self.box_Brick_Deliver_Vehicle_v5_31 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Deliver_Vehicle_To_Position.Brick_Deliver_Vehicle_v5.debug.lua");
    l0 = self.box_Brick_Deliver_Vehicle_v5_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Deliver_Vehicle_v5_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|891931296");
    l0:SetConnections({
        -- Failed,
        [1] = self.f_box_Brick_Deliver_Vehicle_v5_31_Failed,
        -- Success,
        [5] = self.f_box_Brick_Deliver_Vehicle_v5_31_Success,
    });
    self.box_MultipleOR_12 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|917018789");
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
        [0] = self.f_box_MultipleOR_12_Out,
    });
    self.box_Random_37 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1054408774");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 5,
        },
        dataIn = {
            [1] = 5,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_37_Output_0,
                [1] = self.f_box_Random_37_Output_1,
                [2] = self.f_box_Random_37_Output_2,
                [3] = self.f_box_Random_37_Output_3,
                [4] = self.f_box_Random_37_Output_4,
            },
            count = 5,
        },
    });
    self.box_Delay_v5_41 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1150334603");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_41_TimeElapsed,
    });
    self.box_InputPriorityModifier_v4_45 = cbox:CreateBox("Domino/System/Player/InputPriorityModifier_v4.lua");
    l0 = self.box_InputPriorityModifier_v4_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InputPriorityModifier_v4_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1208121207");
    l0:SetConnections({
        -- OnRelease,
        [0] = self.f_box_InputPriorityModifier_v4_45_OnRelease,
    });
    self.box_ActivityInitialized_4 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1238759724");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_4_Out,
    });
    self.box_Brick_Deliver_Vehicle_v5_48 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Deliver_Vehicle_To_Position.Brick_Deliver_Vehicle_v5.debug.lua");
    l0 = self.box_Brick_Deliver_Vehicle_v5_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Deliver_Vehicle_v5_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1372165113");
    l0:SetConnections({
        -- Failed,
        [1] = self.f_box_Brick_Deliver_Vehicle_v5_48_Failed,
        -- Success,
        [5] = self.f_box_Brick_Deliver_Vehicle_v5_48_Success,
    });
    self.box_VehicleListener_v3_21 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1520920106");
    l0:SetConnections({
        -- OnStandUp,
        [7] = self.f_box_VehicleListener_v3_21_OnStandUp,
    });
    self.box_ProximityTrigger_v2_88 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1540078435");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_88_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_88_Enter,
    });
    self.box_DIALOG_TOOSLOW_19 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_050/KEY01_050_OMNI.DIALOG_TOOSLOW.debug.lua");
    l0 = self.box_DIALOG_TOOSLOW_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DIALOG_TOOSLOW_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1562398791");
    l0:SetConnections({
    });
    self.box_Delay_v5_7 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1703903727");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_7_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_7_TimeElapsed,
    });
    self.box_DIALOG_FILLER_35 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_050/KEY01_050_OMNI.DIALOG_FILLER.debug.lua");
    l0 = self.box_DIALOG_FILLER_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DIALOG_FILLER_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1708165434");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_90 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1753472817");
    l0:SetConnections({
    });
    self.box_MultipleOR_68 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1755989780");
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
        [0] = self.f_box_MultipleOR_68_Out,
    });
    self.box_Random_55 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1779766519");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 5,
        },
        dataIn = {
            [1] = 5,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_55_Output_0,
                [1] = self.f_box_Random_55_Output_1,
                [2] = self.f_box_Random_55_Output_2,
                [3] = self.f_box_Random_55_Output_3,
                [4] = self.f_box_Random_55_Output_4,
            },
            count = 5,
        },
    });
    self.box_EntityStatusListener_40 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1818526101");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_40_Loaded,
    });
    self.box_ProximityTrigger_v2_39 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1842100729");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_39_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_39_Enter,
    });
    self.box_InputPriorityModifier_v4_43 = cbox:CreateBox("Domino/System/Player/InputPriorityModifier_v4.lua");
    l0 = self.box_InputPriorityModifier_v4_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InputPriorityModifier_v4_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1848625726");
    l0:SetConnections({
        -- OnSet,
        [1] = self.f_box_InputPriorityModifier_v4_43_OnSet,
    });
    self.box_NarrativeFade_46 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1956259004");
    l0:SetConnections({
    });
    self.box_VehicleListener_v3_20 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1987430871");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VehicleListener_v3_20_Enabled,
        -- OnStandUp,
        [7] = self.f_box_VehicleListener_v3_20_OnStandUp,
    });
    self.box_KEY01_050_EntitySetup_18 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_050/KEY01_050_OMNI.KEY01_050_EntitySetup.debug.lua");
    l0 = self.box_KEY01_050_EntitySetup_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_KEY01_050_EntitySetup_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1993242725");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_KEY01_050_EntitySetup_18_Out,
    });
    self.box_PlayDialog_v6_89 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|2039727209");
    l0:SetConnections({
    });
    self.box_Brick_Deliver_Vehicle_v5_26 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Deliver_Vehicle_To_Position.Brick_Deliver_Vehicle_v5.debug.lua");
    l0 = self.box_Brick_Deliver_Vehicle_v5_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Deliver_Vehicle_v5_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|2047910898");
    l0:SetConnections({
        -- Failed,
        [1] = self.f_box_Brick_Deliver_Vehicle_v5_26_Failed,
        -- Success,
        [5] = self.f_box_Brick_Deliver_Vehicle_v5_26_Success,
    });
    self.box_MultipleOR_82 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|2072470415");
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
        [0] = self.f_box_MultipleOR_82_Out,
    });
    self.box_Dialog_FUELTANKER_27 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_050/KEY01_050_B20.Dialog_FUELTANKER.debug.lua");
    l0 = self.box_Dialog_FUELTANKER_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Dialog_FUELTANKER_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|2122052069");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_5();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|91137533", "91137533", "KEY01_050_B20", "In", "box_GetPlayerGroup_v2_5.FriendlyPlayers", self, l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    
end;

function export:f_box_Simple_Node_16_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_29();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|85370196", "85370196", "KEY01_050_B20", "box_Simple_Node_16.Out", "box_ActivityRetry_29.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_30_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleStateListener_23();
    l0 = self.box_VehicleStateListener_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|887413370", "887413370", "KEY01_050_B20", "box_Simple_Node_30.Out", "box_VehicleStateListener_23.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_ExitZoneWarningListener_v3_22();
    l0 = self.box_ExitZoneWarningListener_v3_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1020472596", "1020472596", "KEY01_050_B20", "box_Simple_Node_30.Out", "box_ExitZoneWarningListener_v3_22.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ActivityObjectiveTimerListener_24_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleListener_v3_20();
    l0 = self.box_ActivityObjectiveTimerListener_24;
    l1 = self.box_VehicleListener_v3_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|41077919", "41077919", "KEY01_050_B20", "box_ActivityObjectiveTimerListener_24.Enabled", "box_VehicleListener_v3_20.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ActivityObjectiveTimerListener_24_OnTime()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_16();
    l0 = self.box_ActivityObjectiveTimerListener_24;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|739323188", "739323188", "KEY01_050_B20", "box_ActivityObjectiveTimerListener_24.OnTime", "box_Simple_Node_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_DIALOG_SCARES_36_Out()
    local params, l0, l1;
    params = self:OnEnter_box_BroadcastMessage_56();
    l0 = self.box_DIALOG_SCARES_36;
    l1 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1982886876", "1982886876", "KEY01_050_B20", "box_DIALOG_SCARES_36.Out", "box_BroadcastMessage_56.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleStateListener_23_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveTimerListener_24();
    l0 = self.box_VehicleStateListener_23;
    l1 = self.box_ActivityObjectiveTimerListener_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1422931755", "1422931755", "KEY01_050_B20", "box_VehicleStateListener_23.Enabled", "box_ActivityObjectiveTimerListener_24.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_VehicleStateListener_23_OnVehicleFlipped()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_16();
    l0 = self.box_VehicleStateListener_23;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|7424685", "7424685", "KEY01_050_B20", "box_VehicleStateListener_23.OnVehicleFlipped", "box_Simple_Node_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_49_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_88();
    l0 = self.box_ProximityTrigger_v2_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|273217397", "273217397", "KEY01_050_B20", "box_OutputOrder_v2_49.Out", "box_ProximityTrigger_v2_88.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_49_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_30();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|484906522", "484906522", "KEY01_050_B20", "box_OutputOrder_v2_49.Out", "box_Simple_Node_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_49_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DIALOG_TOOSLOW_19();
    l0 = self.box_DIALOG_TOOSLOW_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|590380377", "590380377", "KEY01_050_B20", "box_OutputOrder_v2_49.Out", "box_DIALOG_TOOSLOW_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_49_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMusicTriggerBox_64();
    l0 = self.box_SoundMusicTriggerBox_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1571687902", "1571687902", "KEY01_050_B20", "box_OutputOrder_v2_49.Out", "box_SoundMusicTriggerBox_64.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_Brick_Deliver_Vehicle_v5_32_Failed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_16();
    l0 = self.box_Brick_Deliver_Vehicle_v5_32;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|348911875", "348911875", "KEY01_050_B20", "box_Brick_Deliver_Vehicle_v5_32.Failed", "box_Simple_Node_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_v5_32_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_61();
    l0 = self.box_Brick_Deliver_Vehicle_v5_32;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1913549422", "1913549422", "KEY01_050_B20", "box_Brick_Deliver_Vehicle_v5_32.Success", "box_OutputOrder_v2_61.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_42_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_1();
    l0 = self.box_ProximityTrigger_v2_42;
    l1 = self.box_ProximityTrigger_v2_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|544086871", "544086871", "KEY01_050_B20", "box_ProximityTrigger_v2_42.Enabled", "box_ProximityTrigger_v2_1.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_42_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Dialog_FUELTANKER_27();
    l0 = self.box_ProximityTrigger_v2_42;
    l1 = self.box_Dialog_FUELTANKER_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1884143871", "1884143871", "KEY01_050_B20", "box_ProximityTrigger_v2_42.Enter", "box_Dialog_FUELTANKER_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_42_Leave()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_53();
    l0 = self.box_ProximityTrigger_v2_42;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|438264560", "438264560", "KEY01_050_B20", "box_ProximityTrigger_v2_42.Leave", "box_OutputOrder_v2_53.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_51_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1004636084", "1004636084", "KEY01_050_B20", "box_OutputOrder_v2_51.Out", "box_MultipleOR_12.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_51_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_52();
    l0 = self.box_NarrativeFade_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1590827731", "1590827731", "KEY01_050_B20", "box_OutputOrder_v2_51.Out", "box_NarrativeFade_52.FadeOut", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeOut
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_61_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_50();
    l0 = self.box_ProximityTrigger_v2_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1062611502", "1062611502", "KEY01_050_B20", "box_OutputOrder_v2_61.Out", "box_ProximityTrigger_v2_50.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_61_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_60();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1636823704", "1636823704", "KEY01_050_B20", "box_OutputOrder_v2_61.Out", "box_BroadcastMessage_60.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_v5_34_Failed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_16();
    l0 = self.box_Brick_Deliver_Vehicle_v5_34;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|2005644048", "2005644048", "KEY01_050_B20", "box_Brick_Deliver_Vehicle_v5_34.Failed", "box_Simple_Node_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_v5_34_Success()
    local params, l0, l1;
    params = self:OnEnter_box_BroadcastMessage_6();
    l0 = self.box_Brick_Deliver_Vehicle_v5_34;
    l1 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1218059744", "1218059744", "KEY01_050_B20", "box_Brick_Deliver_Vehicle_v5_34.Success", "box_BroadcastMessage_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_53_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_54();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1111905454", "1111905454", "KEY01_050_B20", "box_OutputOrder_v2_53.Out", "box_StimsEmitter_v2_54.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_53_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_42();
    l0 = self.box_ProximityTrigger_v2_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|924806846", "924806846", "KEY01_050_B20", "box_OutputOrder_v2_53.Out", "box_ProximityTrigger_v2_42.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_ForceInVehicle_v2_10_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/ForceInVehicle_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_51();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|622570841", "622570841", "KEY01_050_B20", "box_ForceInVehicle_v2_10.Out", "box_OutputOrder_v2_51.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_28_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ForceInVehicle_v2_10();
    l0 = self.box_Delay_v5_28;
    l1 = Boxes[GetPathID("Domino/System/Player/ForceInVehicle_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1598150687", "1598150687", "KEY01_050_B20", "box_Delay_v5_28.TimeElapsed", "box_ForceInVehicle_v2_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_DIALOG_FILLER_38_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_47();
    l0 = self.box_DIALOG_FILLER_38;
    l1 = self.box_Delay_v5_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1775543626", "1775543626", "KEY01_050_B20", "box_DIALOG_FILLER_38.Out", "box_Delay_v5_47.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_NarrativeFade_52_FadedOut()
    local params, l0, l1;
    params = self:OnEnter_box_InputPriorityModifier_v4_43();
    l0 = self.box_NarrativeFade_52;
    l1 = self.box_InputPriorityModifier_v4_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1075523816", "1075523816", "KEY01_050_B20", "box_NarrativeFade_52.FadedOut", "box_InputPriorityModifier_v4_43.Set", l0:GetLuaBox(), l1:GetLuaBox());
    -- Set
    l1:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_67_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|679686402", "679686402", "KEY01_050_B20", "box_IsEntityLoaded_v3_67.False", "box_MultipleOR_68.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_67_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_17();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|129736751", "129736751", "KEY01_050_B20", "box_IsEntityLoaded_v3_67.True", "box_SetEntity_v2_17.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_40();
    l0 = self.box_SpawnAI_8;
    l1 = self.box_EntityStatusListener_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1278556940", "1278556940", "KEY01_050_B20", "box_SpawnAI_8.Out", "box_EntityStatusListener_40.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ActivityAcknowledgeGate_2_Acknowledged()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_87();
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|2006162491", "2006162491", "KEY01_050_B20", "box_ActivityAcknowledgeGate_2.Acknowledged", "box_OutputOrder_v2_87.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_2_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_MultipleOR_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1626017500", "1626017500", "KEY01_050_B20", "box_ActivityAcknowledgeGate_2.Reloaded", "box_MultipleOR_68.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_47_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Random_55();
    l0 = self.box_Delay_v5_47;
    l1 = self.box_Random_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|759285775", "759285775", "KEY01_050_B20", "box_Delay_v5_47.TimeElapsed", "box_Random_55.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_3_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_8();
    l0 = self.box_EntityStatusListener_3;
    l1 = self.box_SpawnAI_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1388182608", "1388182608", "KEY01_050_B20", "box_EntityStatusListener_3.Loaded", "box_SpawnAI_8.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SoundMusicTriggerBox_64_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PostWWiseEventSetState_63();
    l0 = self.box_SoundMusicTriggerBox_64;
    l1 = self.box_PostWWiseEventSetState_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|161662565", "161662565", "KEY01_050_B20", "box_SoundMusicTriggerBox_64.Started", "box_PostWWiseEventSetState_63.SetState", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetState
    l1:Exec(0, params);
end;

function export:f_box_ExitZoneWarningListener_v3_22_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_16();
    l0 = self.box_ExitZoneWarningListener_v3_22;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|521004625", "521004625", "KEY01_050_B20", "box_ExitZoneWarningListener_v3_22.FailingZoneEntered", "box_Simple_Node_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ExitZoneWarningListener_v3_22_WarningZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_KEY01_050_WARNINGZONE_25();
    l0 = self.box_ExitZoneWarningListener_v3_22;
    l1 = self.box_KEY01_050_WARNINGZONE_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|551865379", "551865379", "KEY01_050_B20", "box_ExitZoneWarningListener_v3_22.WarningZoneEntered", "box_KEY01_050_WARNINGZONE_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Deliver_Vehicle_v5_26();
    l0 = self.box_Brick_Deliver_Vehicle_v5_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|303063959", "303063959", "KEY01_050_B20", "box_OutputOrder_v2_13.Out", "box_Brick_Deliver_Vehicle_v5_26.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_37();
    l0 = self.box_Random_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1326217810", "1326217810", "KEY01_050_B20", "box_OutputOrder_v2_13.Out", "box_Random_37.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_13_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_57();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|481471834", "481471834", "KEY01_050_B20", "box_OutputOrder_v2_13.Out", "box_BroadcastMessage_57.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_80_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_80_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_ForceExitVehicle_v2_81();
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|75076644", "75076644", "KEY01_050_B20", "box_GetPawnVehicleInfo_80.InVehicle", "box_ForceExitVehicle_v2_81.ForceExit", clone:GetLuaBox(), l0:GetLuaBox());
    -- ForceExit
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_80_NotInVehicle()
    local l0;
    self:OnExit_box_GetPawnVehicleInfo_80_NotInVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|440732717", "440732717", "KEY01_050_B20", "box_GetPawnVehicleInfo_80.NotInVehicle", "box_MultipleOR_82.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPawnVehicleInfo_80_Out()
    self:OnExit_box_GetPawnVehicleInfo_80_Out();
end;

function export:f_box_ProximityTrigger_v2_50_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_42();
    l0 = self.box_ProximityTrigger_v2_50;
    l1 = self.box_ProximityTrigger_v2_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|213819666", "213819666", "KEY01_050_B20", "box_ProximityTrigger_v2_50.Enabled", "box_ProximityTrigger_v2_42.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_50_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_90();
    l0 = self.box_ProximityTrigger_v2_50;
    l1 = self.box_PlayDialog_v6_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1452883698", "1452883698", "KEY01_050_B20", "box_ProximityTrigger_v2_50.Enter", "box_PlayDialog_v6_90.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_RemoveEntity_v2_83_Out()
    local l0, l1;
    l0 = self.box_RemoveEntity_v2_83;
    l1 = self.box_MultipleOR_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1345393831", "1345393831", "KEY01_050_B20", "box_RemoveEntity_v2_83.Out", "box_MultipleOR_82.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_1_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_39();
    l0 = self.box_ProximityTrigger_v2_1;
    l1 = self.box_ProximityTrigger_v2_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|2116982133", "2116982133", "KEY01_050_B20", "box_ProximityTrigger_v2_1.Enabled", "box_ProximityTrigger_v2_39.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_1_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Dialog_FUELTANKER_27();
    l0 = self.box_ProximityTrigger_v2_1;
    l1 = self.box_Dialog_FUELTANKER_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|431711592", "431711592", "KEY01_050_B20", "box_ProximityTrigger_v2_1.Enter", "box_Dialog_FUELTANKER_27.ThroughTheFlames", l0:GetLuaBox(), l1:GetLuaBox());
    -- ThroughTheFlames
    l1:Exec(1, params);
end;

function export:f_box_Brick_TakeControl_Vehicle_Generic_9_Started()
    self:OnExit_box_Brick_TakeControl_Vehicle_Generic_9_Started();
end;

function export:f_box_Brick_TakeControl_Vehicle_Generic_9_Success()
    local params, l0, l1;
    self:OnExit_box_Brick_TakeControl_Vehicle_Generic_9_Success();
    params = self:OnEnter_box_KEY01_050_EntitySetup_18();
    l0 = self.box_Brick_TakeControl_Vehicle_Generic_9;
    l1 = self.box_KEY01_050_EntitySetup_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|964048762", "964048762", "KEY01_050_B20", "box_Brick_TakeControl_Vehicle_Generic_9.Success", "box_KEY01_050_EntitySetup_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Brick_Deliver_Vehicle_v5_31_Failed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_16();
    l0 = self.box_Brick_Deliver_Vehicle_v5_31;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1476616794", "1476616794", "KEY01_050_B20", "box_Brick_Deliver_Vehicle_v5_31.Failed", "box_Simple_Node_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_v5_31_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = self.box_Brick_Deliver_Vehicle_v5_31;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|271017268", "271017268", "KEY01_050_B20", "box_Brick_Deliver_Vehicle_v5_31.Success", "box_OutputOrder_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_12_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_12;
    l1 = self.box_ActivityInitialized_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|99376884", "99376884", "KEY01_050_B20", "box_MultipleOR_12.Out", "box_ActivityInitialized_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_GetPlayerGroup_v2_5_Out()
    local l0;
    self:OnExit_box_GetPlayerGroup_v2_5_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|658175250", "658175250", "KEY01_050_B20", "box_GetPlayerGroup_v2_5.Out", "box_ActivityAcknowledgeGate_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_Random_37_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_DIALOG_FILLER_38();
    l0 = self.box_Random_37;
    l1 = self.box_DIALOG_FILLER_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1932029820", "1932029820", "KEY01_050_B20", "box_Random_37.Output", "box_DIALOG_FILLER_38.Tubin", l0:GetLuaBox(), l1:GetLuaBox());
    -- Tubin
    l1:Exec(12, params);
end;

function export:f_box_Random_37_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_DIALOG_FILLER_38();
    l0 = self.box_Random_37;
    l1 = self.box_DIALOG_FILLER_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1641687368", "1641687368", "KEY01_050_B20", "box_Random_37.Output", "box_DIALOG_FILLER_38.RoadTripGames", l0:GetLuaBox(), l1:GetLuaBox());
    -- RoadTripGames
    l1:Exec(9, params);
end;

function export:f_box_Random_37_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_DIALOG_FILLER_38();
    l0 = self.box_Random_37;
    l1 = self.box_DIALOG_FILLER_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1208517578", "1208517578", "KEY01_050_B20", "box_Random_37.Output", "box_DIALOG_FILLER_38.BreatheRight", l0:GetLuaBox(), l1:GetLuaBox());
    -- BreatheRight
    l1:Exec(0, params);
end;

function export:f_box_Random_37_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_DIALOG_FILLER_38();
    l0 = self.box_Random_37;
    l1 = self.box_DIALOG_FILLER_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1957940820", "1957940820", "KEY01_050_B20", "box_Random_37.Output", "box_DIALOG_FILLER_38.NotSoBad", l0:GetLuaBox(), l1:GetLuaBox());
    -- NotSoBad
    l1:Exec(7, params);
end;

function export:f_box_Random_37_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_DIALOG_FILLER_38();
    l0 = self.box_Random_37;
    l1 = self.box_DIALOG_FILLER_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|986127385", "986127385", "KEY01_050_B20", "box_Random_37.Output", "box_DIALOG_FILLER_38.DoingGreat", l0:GetLuaBox(), l1:GetLuaBox());
    -- DoingGreat
    l1:Exec(3, params);
end;

function export:f_box_SetEntity_v2_14_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_14_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_66();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|571696230", "571696230", "KEY01_050_B20", "box_SetEntity_v2_14.Out", "box_SetEntity_v2_66.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_97_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_97_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPawnVehicleInfo_80();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1168312715", "1168312715", "KEY01_050_B20", "box_SetEntity_v2_97.Out", "box_GetPawnVehicleInfo_80.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_41_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_InputPriorityModifier_v4_45();
    l0 = self.box_Delay_v5_41;
    l1 = self.box_InputPriorityModifier_v4_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|577272948", "577272948", "KEY01_050_B20", "box_Delay_v5_41.TimeElapsed", "box_InputPriorityModifier_v4_45.Release", l0:GetLuaBox(), l1:GetLuaBox());
    -- Release
    l1:Exec(0, params);
end;

function export:f_box_InputPriorityModifier_v4_45_OnRelease()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_46();
    l0 = self.box_InputPriorityModifier_v4_45;
    l1 = self.box_NarrativeFade_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|2059702522", "2059702522", "KEY01_050_B20", "box_InputPriorityModifier_v4_45.OnRelease", "box_NarrativeFade_46.FadeIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeIn
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_87_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_67();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|457406687", "457406687", "KEY01_050_B20", "box_OutputOrder_v2_87.Out", "box_IsEntityLoaded_v3_67.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_TakeControl_Vehicle_Generic_9();
    l0 = self.box_ActivityInitialized_4;
    l1 = self.box_Brick_TakeControl_Vehicle_Generic_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1040975511", "1040975511", "KEY01_050_B20", "box_ActivityInitialized_4.Out", "box_Brick_TakeControl_Vehicle_Generic_9.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, params);
end;

function export:f_box_SetEntity_v2_17_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_17_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_65();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1013450582", "1013450582", "KEY01_050_B20", "box_SetEntity_v2_17.Out", "box_SetEntity_v2_65.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_v5_48_Failed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_16();
    l0 = self.box_Brick_Deliver_Vehicle_v5_48;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1139489484", "1139489484", "KEY01_050_B20", "box_Brick_Deliver_Vehicle_v5_48.Failed", "box_Simple_Node_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_v5_48_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_69();
    l0 = self.box_Brick_Deliver_Vehicle_v5_48;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1933192285", "1933192285", "KEY01_050_B20", "box_Brick_Deliver_Vehicle_v5_48.Success", "box_OutputOrder_v2_69.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_11_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_11_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1883656383", "1883656383", "KEY01_050_B20", "box_SetEntity_v2_11.Out", "box_MultipleOR_12.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_59_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_7();
    l0 = self.box_Delay_v5_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|828324062", "828324062", "KEY01_050_B20", "box_OutputOrder_v2_59.Out", "box_Delay_v5_7.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_59_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_58();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|606554894", "606554894", "KEY01_050_B20", "box_OutputOrder_v2_59.Out", "box_BroadcastMessage_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_66_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_66_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_97();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|404707607", "404707607", "KEY01_050_B20", "box_SetEntity_v2_66.Out", "box_SetEntity_v2_97.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_21_OnStandUp()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_16();
    l0 = self.box_VehicleListener_v3_21;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|622099322", "622099322", "KEY01_050_B20", "box_VehicleListener_v3_21.OnStandUp", "box_Simple_Node_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_88_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Deliver_Vehicle_v5_31();
    l0 = self.box_ProximityTrigger_v2_88;
    l1 = self.box_Brick_Deliver_Vehicle_v5_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|2019949086", "2019949086", "KEY01_050_B20", "box_ProximityTrigger_v2_88.Enabled", "box_Brick_Deliver_Vehicle_v5_31.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_88_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_89();
    l0 = self.box_ProximityTrigger_v2_88;
    l1 = self.box_PlayDialog_v6_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|452195363", "452195363", "KEY01_050_B20", "box_ProximityTrigger_v2_88.Enter", "box_PlayDialog_v6_89.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ForceExitVehicle_v2_81_ForceExitted()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_83();
    l0 = self.box_RemoveEntity_v2_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1830626462", "1830626462", "KEY01_050_B20", "box_ForceExitVehicle_v2_81.ForceExitted", "box_RemoveEntity_v2_83.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_7_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Deliver_Vehicle_v5_32();
    l0 = self.box_Delay_v5_7;
    l1 = self.box_Brick_Deliver_Vehicle_v5_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1651121420", "1651121420", "KEY01_050_B20", "box_Delay_v5_7.Started", "box_Brick_Deliver_Vehicle_v5_32.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_7_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_44();
    l0 = self.box_Delay_v5_7;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1678447491", "1678447491", "KEY01_050_B20", "box_Delay_v5_7.TimeElapsed", "box_ParticleSystem_v3_44.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_BroadcastMessage_6_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_15();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1520467556", "1520467556", "KEY01_050_B20", "box_BroadcastMessage_6.Out", "box_ActivityEnd_15.EndSoftSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndSoftSave
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_68_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_3();
    l0 = self.box_MultipleOR_68;
    l1 = self.box_EntityStatusListener_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|2118538069", "2118538069", "KEY01_050_B20", "box_MultipleOR_68.Out", "box_EntityStatusListener_3.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_69_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Deliver_Vehicle_v5_34();
    l0 = self.box_Brick_Deliver_Vehicle_v5_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1409295617", "1409295617", "KEY01_050_B20", "box_OutputOrder_v2_69.Out", "box_Brick_Deliver_Vehicle_v5_34.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_69_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_62();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1730745343", "1730745343", "KEY01_050_B20", "box_OutputOrder_v2_69.Out", "box_BroadcastMessage_62.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Random_55_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_DIALOG_FILLER_35();
    l0 = self.box_Random_55;
    l1 = self.box_DIALOG_FILLER_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|776841417", "776841417", "KEY01_050_B20", "box_Random_55.Output", "box_DIALOG_FILLER_35.SlowAndSteady", l0:GetLuaBox(), l1:GetLuaBox());
    -- SlowAndSteady
    l1:Exec(10, params);
end;

function export:f_box_Random_55_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_DIALOG_FILLER_35();
    l0 = self.box_Random_55;
    l1 = self.box_DIALOG_FILLER_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|104696411", "104696411", "KEY01_050_B20", "box_Random_55.Output", "box_DIALOG_FILLER_35.JustCalmDown", l0:GetLuaBox(), l1:GetLuaBox());
    -- JustCalmDown
    l1:Exec(5, params);
end;

function export:f_box_Random_55_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_DIALOG_FILLER_35();
    l0 = self.box_Random_55;
    l1 = self.box_DIALOG_FILLER_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|786335507", "786335507", "KEY01_050_B20", "box_Random_55.Output", "box_DIALOG_FILLER_35.Contradiction", l0:GetLuaBox(), l1:GetLuaBox());
    -- Contradiction
    l1:Exec(2, params);
end;

function export:f_box_Random_55_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_DIALOG_FILLER_35();
    l0 = self.box_Random_55;
    l1 = self.box_DIALOG_FILLER_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1303874466", "1303874466", "KEY01_050_B20", "box_Random_55.Output", "box_DIALOG_FILLER_35.NickDizzy", l0:GetLuaBox(), l1:GetLuaBox());
    -- NickDizzy
    l1:Exec(6, params);
end;

function export:f_box_Random_55_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_DIALOG_FILLER_35();
    l0 = self.box_Random_55;
    l1 = self.box_DIALOG_FILLER_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1802077503", "1802077503", "KEY01_050_B20", "box_Random_55.Output", "box_DIALOG_FILLER_35.ReadingUp", l0:GetLuaBox(), l1:GetLuaBox());
    -- ReadingUp
    l1:Exec(8, params);
end;

function export:f_box_EntityStatusListener_40_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_14();
    l0 = self.box_EntityStatusListener_40;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1805035383", "1805035383", "KEY01_050_B20", "box_EntityStatusListener_40.Loaded", "box_SetEntity_v2_14.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_39_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Deliver_Vehicle_v5_48();
    l0 = self.box_ProximityTrigger_v2_39;
    l1 = self.box_Brick_Deliver_Vehicle_v5_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1093633349", "1093633349", "KEY01_050_B20", "box_ProximityTrigger_v2_39.Enabled", "box_Brick_Deliver_Vehicle_v5_48.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_39_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_DIALOG_SCARES_36();
    l0 = self.box_ProximityTrigger_v2_39;
    l1 = self.box_DIALOG_SCARES_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1548856129", "1548856129", "KEY01_050_B20", "box_ProximityTrigger_v2_39.Enter", "box_DIALOG_SCARES_36.ItsOver", l0:GetLuaBox(), l1:GetLuaBox());
    -- ItsOver
    l1:Exec(3, params);
end;

function export:f_box_InputPriorityModifier_v4_43_OnSet()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_41();
    l0 = self.box_InputPriorityModifier_v4_43;
    l1 = self.box_Delay_v5_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|292189113", "292189113", "KEY01_050_B20", "box_InputPriorityModifier_v4_43.OnSet", "box_Delay_v5_41.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_StimsEmitter_v2_54_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_86();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|163676177", "163676177", "KEY01_050_B20", "box_StimsEmitter_v2_54.Enabled", "box_StimsEmitter_v2_86.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_20_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleListener_v3_21();
    l0 = self.box_VehicleListener_v3_20;
    l1 = self.box_VehicleListener_v3_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1098362002", "1098362002", "KEY01_050_B20", "box_VehicleListener_v3_20.Enabled", "box_VehicleListener_v3_21.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_VehicleListener_v3_20_OnStandUp()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_16();
    l0 = self.box_VehicleListener_v3_20;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1042317822", "1042317822", "KEY01_050_B20", "box_VehicleListener_v3_20.OnStandUp", "box_Simple_Node_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_KEY01_050_EntitySetup_18_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_49();
    l0 = self.box_KEY01_050_EntitySetup_18;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|399494117", "399494117", "KEY01_050_B20", "box_KEY01_050_EntitySetup_18.Out", "box_OutputOrder_v2_49.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_v5_26_Failed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_16();
    l0 = self.box_Brick_Deliver_Vehicle_v5_26;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1368161667", "1368161667", "KEY01_050_B20", "box_Brick_Deliver_Vehicle_v5_26.Failed", "box_Simple_Node_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_v5_26_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_59();
    l0 = self.box_Brick_Deliver_Vehicle_v5_26;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1667480328", "1667480328", "KEY01_050_B20", "box_Brick_Deliver_Vehicle_v5_26.Success", "box_OutputOrder_v2_59.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_82_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_28();
    l0 = self.box_MultipleOR_82;
    l1 = self.box_Delay_v5_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1385716768", "1385716768", "KEY01_050_B20", "box_MultipleOR_82.Out", "box_Delay_v5_28.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SetEntity_v2_65_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_65_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_11();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|213955055", "213955055", "KEY01_050_B20", "box_SetEntity_v2_65.Out", "box_SetEntity_v2_11.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|@Fail");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_16_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|@FailListeners");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_30_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveTimerListener_24()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "KEY01_050_B20",
            id = "541784",
        },
        -- Time,
        [2] = 0,
    };
    return params;
end;

function export:OnEnter_box_DIALOG_SCARES_36()
    local params;
    params = {
        -- Kim,
        [0] = self.eKimRye,
        -- Nick,
        [1] = self.eNickRye,
    };
    return params;
end;

function export:OnEnter_box_VehicleStateListener_23()
    local params;
    params = {
        -- vehicle,
        [0] = self.eTruck,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|119605441");
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
                [0] = self.f_box_OutputOrder_v2_49_Out_0,
                [1] = self.f_box_OutputOrder_v2_49_Out_1,
                [2] = self.f_box_OutputOrder_v2_49_Out_2,
                [3] = self.f_box_OutputOrder_v2_49_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Deliver_Vehicle_v5_32()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bDisplayVehicleHealth,
        [1] = false,
        -- bMustExitVehicle,
        [2] = false,
        -- bRequiresObjective,
        [3] = true,
        -- eTarget,
        [4] = "2099528240019310625",
        -- eTargetMarker,
        [5] = "2099586955351216165",
        -- eVehicle,
        [6] = self.eTruck,
        -- eVehicleMarker,
        [7] = self.eMarker,
        -- fDistanceFromTarget,
        [8] = 20,
        -- isTargetTrigger,
        [9] = false,
        -- Objective,
        [10] = {
            section = "Objectives",
            item = "KEY01_050_B20",
            id = "541784",
        },
        -- opt_FailReason,
        [11] = {
            section = "BRICK_Deliver_Vehicle",
            item = "BRICK_Deliver_Fail",
            id = "432252",
        },
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_42()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2102336985122217852",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|234108156");
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
                [0] = self.f_box_OutputOrder_v2_51_Out_0,
                [1] = self.f_box_OutputOrder_v2_51_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_KEY01_050_WARNINGZONE_25()
    local params;
    params = {
        -- Kim,
        [0] = self.eKimRye,
        -- Nick,
        [1] = self.eNickRye,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|292083574");
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

function export:OnEnter_box_Brick_Deliver_Vehicle_v5_34()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bDisplayVehicleHealth,
        [1] = false,
        -- bMustExitVehicle,
        [2] = false,
        -- bRequiresObjective,
        [3] = true,
        -- eTarget,
        [4] = "2101242986036753448",
        -- eTargetMarker,
        [5] = "2101242986034656292",
        -- eVehicle,
        [6] = self.eTruck,
        -- eVehicleMarker,
        [7] = self.eMarker,
        -- fDistanceFromTarget,
        [8] = 25,
        -- isTargetTrigger,
        [9] = false,
        -- Objective,
        [10] = {
            section = "Objectives",
            item = "KEY01_050_B20",
            id = "541784",
        },
        -- opt_FailReason,
        [11] = {
            section = "BRICK_Deliver_Vehicle",
            item = "BRICK_Deliver_Fail",
            id = "432252",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|341377526");
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
                [0] = self.f_box_OutputOrder_v2_53_Out_0,
                [1] = self.f_box_OutputOrder_v2_53_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ForceInVehicle_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/ForceInVehicle_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceInVehicle_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|366410859");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ForceInVehicle_v2_10_Out,
    });
    params = {
        -- pawns,
        [0] = self.gFriendlyPlayer,
        -- SeatType,
        [1] = 1,
        -- vehicleEntity,
        [2] = "2099641121545140273",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_28()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_DIALOG_FILLER_38()
    local params;
    params = {
        -- Kim,
        [0] = self.eKimRye,
        -- Nick,
        [1] = self.eNickRye,
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_52()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|492725774");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|502149688");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "addtime",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|506601573");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2101274322296411456",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|544746365");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_67_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_67_True,
    });
    params = {
        -- entityId,
        [0] = "2104519269562753138",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_8()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2099641121532557349",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_47()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_PostWWiseEventSetState_63()
    local params;
    params = {
        -- SoundId,
        [0] = "2102059229",
        -- SoundType,
        [1] = 17,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_3()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2099641121532557349",
    };
    return params;
end;

function export:OnEnter_box_SoundMusicTriggerBox_64()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- Priority,
        [2] = 0,
        -- SoundType,
        [3] = 17,
        -- Stackable,
        [4] = false,
        -- StartEvent,
        [5] = "3287598536",
        -- StopEvent,
        [6] = "1455224898",
        -- StopFadeOut,
        [7] = 0.5,
        -- WaitUntilMusicEndMarker,
        [8] = false,
        -- WaitUntilNotInVehicle,
        [9] = false,
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_22()
    local params;
    params = {
        -- bShowUI,
        [0] = true,
        -- CoopFailRequiresAllPlayer,
        [1] = false,
        -- FailingZoneTrigger,
        [2] = "2101632993868163356",
        -- WarningZoneTrigger,
        [3] = "2101288369731432365",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|654435850");
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
                [0] = self.f_box_OutputOrder_v2_13_Out_0,
                [1] = self.f_box_OutputOrder_v2_13_Out_1,
                [2] = self.f_box_OutputOrder_v2_13_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|667440088");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_80_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_80_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_80_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_50()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104248839650187154",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    params = {
        -- Group,
        [0] = l0:GetDataOutValue(2),
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|785634211");
    l0:SetConnections({
    });
    params = {
        -- StimsEmitter,
        [0] = "2103760916689490243",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_1()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104247280614807432",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|878299173");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Brick_TakeControl_Vehicle_Generic_9()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [1] = false,
        -- hasObjective,
        [2] = false,
        -- o_Objective,
        [3] = {
            section = "BRICK_Steal_Vehicle",
            item = "BRICK_Steal_Vehicle_OBJ",
            id = "376562",
        },
        -- sVehicleType,
        [4] = "Wheeled",
    };
    return params;
end;

function export:OnEnter_box_Brick_Deliver_Vehicle_v5_31()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bDisplayVehicleHealth,
        [1] = false,
        -- bMustExitVehicle,
        [2] = false,
        -- bRequiresObjective,
        [3] = true,
        -- eTarget,
        [4] = "2104256446190338637",
        -- eTargetMarker,
        [5] = "2101242807548146714",
        -- eVehicle,
        [6] = self.eTruck,
        -- eVehicleMarker,
        [7] = self.eMarker,
        -- fDistanceFromTarget,
        [8] = 25,
        -- isTargetTrigger,
        [9] = true,
        -- Objective,
        [10] = {
            section = "Objectives",
            item = "KEY01_050_B20",
            id = "541784",
        },
        -- opt_FailReason,
        [11] = {
            section = "BRICK_Deliver_Vehicle",
            item = "BRICK_Deliver_Fail",
            id = "432252",
        },
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|931483337");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_5_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Random_37()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 5,
        },
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1072755529");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_14_Out,
    });
    params = {
        -- Entity,
        [0] = "2099641121543043119",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1142128244");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_97_Out,
    });
    params = {
        -- Entity,
        [0] = "2103884578063128898",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_41()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_InputPriorityModifier_v4_45()
    local params;
    params = {
        -- InputPriority,
        [0] = "cinema",
        -- pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1227934615");
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
                [0] = self.f_box_OutputOrder_v2_87_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1298804707");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_17_Out,
    });
    params = {
        -- Entity,
        [0] = "2099641121543043119",
    };
    return params;
end;

function export:OnEnter_box_Brick_Deliver_Vehicle_v5_48()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bDisplayVehicleHealth,
        [1] = false,
        -- bMustExitVehicle,
        [2] = false,
        -- bRequiresObjective,
        [3] = true,
        -- eTarget,
        [4] = "2101271540319444384",
        -- eTargetMarker,
        [5] = "2101271540315250076",
        -- eVehicle,
        [6] = self.eTruck,
        -- eVehicleMarker,
        [7] = self.eMarker,
        -- fDistanceFromTarget,
        [8] = 20,
        -- isTargetTrigger,
        [9] = false,
        -- Objective,
        [10] = {
            section = "Objectives",
            item = "KEY01_050_B20",
            id = "541784",
        },
        -- opt_FailReason,
        [11] = {
            section = "BRICK_Deliver_Vehicle",
            item = "BRICK_Deliver_Fail",
            id = "432252",
        },
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1411338803");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_11_Out,
    });
    params = {
        -- Entity,
        [0] = "2104519269566947444",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1434751853");
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
                [0] = self.f_box_OutputOrder_v2_59_Out_0,
                [1] = self.f_box_OutputOrder_v2_59_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1441560187");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_66_Out,
    });
    params = {
        -- Entity,
        [0] = "2103677762106616400",
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1486948551");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "addtime",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_21()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = self.eNickRye,
        -- vehicle,
        [4] = self.eTruck,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_88()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103762002066304062",
    };
    return params;
end;

function export:OnEnter_box_ForceExitVehicle_v2_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceExitVehicle_v2_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1562197529");
    l0:SetConnections({
        -- ForceExitted,
        [0] = self.f_box_ForceExitVehicle_v2_81_ForceExitted,
    });
    params = {
        -- noFail,
        [0] = true,
        -- pawns,
        [1] = "#ED455357",
        -- vehicle,
        [2] = self._sld_vehicle_box_GetPawnVehicleInfo_80,
    };
    return params;
end;

function export:OnEnter_box_DIALOG_TOOSLOW_19()
    local params;
    params = {
        -- Kim,
        [0] = self.eKimRye,
        -- MinSpeed,
        [1] = 40,
        -- Nick,
        [2] = self.eNickRye,
        -- Truck,
        [3] = self.eTruck,
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1608890845");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "addtime",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_7()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_DIALOG_FILLER_35()
    local params;
    params = {
        -- Kim,
        [0] = self.eKimRye,
        -- Nick,
        [1] = self.eNickRye,
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1751097381");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_6_Out,
    });
    params = {
        -- Message,
        [0] = "addtime",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_90()
    local params;
    params = {
        -- Group,
        [0] = self.eNickRye,
        -- RelevancyTime,
        [1] = 0,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2536106506",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1760667508");
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
                [0] = self.f_box_OutputOrder_v2_69_Out_0,
                [1] = self.f_box_OutputOrder_v2_69_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Random_55()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 5,
        },
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1802537942");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "jinx",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_40()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2099641121545140273",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_39()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104247709180401879",
    };
    return params;
end;

function export:OnEnter_box_InputPriorityModifier_v4_43()
    local params;
    params = {
        -- InputPriority,
        [0] = "cinema",
        -- pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1854959945");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "addtime",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|1944298109");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_54_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2103707893942477441",
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_46()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_20()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = self.eKimRye,
        -- vehicle,
        [4] = self.eTruck,
    };
    return params;
end;

function export:OnEnter_box_KEY01_050_EntitySetup_18()
    local params;
    params = {
        -- Kim,
        [0] = self.eNickRye,
        -- Nick,
        [1] = self.eKimRye,
        -- Truck,
        [2] = self.eTruck,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_89()
    local params;
    params = {
        -- Group,
        [0] = self.eNickRye,
        -- RelevancyTime,
        [1] = 0,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2536106506",
    };
    return params;
end;

function export:OnEnter_box_Brick_Deliver_Vehicle_v5_26()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bDisplayVehicleHealth,
        [1] = false,
        -- bMustExitVehicle,
        [2] = false,
        -- bRequiresObjective,
        [3] = true,
        -- eTarget,
        [4] = "2101232767950971371",
        -- eTargetMarker,
        [5] = "2101232767959359983",
        -- eVehicle,
        [6] = self.eTruck,
        -- eVehicleMarker,
        [7] = self.eMarker,
        -- fDistanceFromTarget,
        [8] = 25,
        -- isTargetTrigger,
        [9] = false,
        -- Objective,
        [10] = {
            section = "Objectives",
            item = "KEY01_050_B20",
            id = "541784",
        },
        -- opt_FailReason,
        [11] = {
            section = "BRICK_Deliver_Vehicle",
            item = "BRICK_Deliver_Fail",
            id = "432252",
        },
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_B20.domino|@KEY01_050_B20|2101102714");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_65_Out,
    });
    params = {
        -- Entity,
        [0] = "2104519269562753138",
    };
    return params;
end;

function export:OnEnter_box_Dialog_FUELTANKER_27()
    local params;
    params = {
        -- Kim,
        [0] = self.eKimRye,
        -- Nick,
        [1] = self.eNickRye,
    };
    return params;
end;

function export:OnExit_box_GetPawnVehicleInfo_80_InVehicle()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicle_box_GetPawnVehicleInfo_80 = l0:GetDataOutValue(2);
    l1 = self.box_RemoveEntity_v2_83;
    l1:GetLuaBox().Group = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_80_NotInVehicle()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicle_box_GetPawnVehicleInfo_80 = l0:GetDataOutValue(2);
    l1 = self.box_RemoveEntity_v2_83;
    l1:GetLuaBox().Group = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_80_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicle_box_GetPawnVehicleInfo_80 = l0:GetDataOutValue(2);
    l1 = self.box_RemoveEntity_v2_83;
    l1:GetLuaBox().Group = l0:GetDataOutValue(2);
end;

function export:OnExit_box_Brick_TakeControl_Vehicle_Generic_9_Started()
    local l0;
    l0 = self.box_Brick_TakeControl_Vehicle_Generic_9;
    self.eTruck = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_TakeControl_Vehicle_Generic_9_Success()
    local l0;
    l0 = self.box_Brick_TakeControl_Vehicle_Generic_9;
    self.eTruck = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_5_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gFriendlyPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_14_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eMarker = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_97_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eKimRye = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_17_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eMarker = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_11_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eKimRye = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_66_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eNickRye = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_65_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eNickRye = l0:GetDataOutValue(0);
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
