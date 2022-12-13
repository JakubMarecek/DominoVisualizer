LUAC5� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/specialists/mis_440/mis_440_b10.domino
-- User graph: MIS_440_B10_MAIN
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Deliver_Vehicle_To_Position.Brick_Deliver_Vehicle_CustomWarning.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Follow_NpcVehicle.Brick_Follow_NPC_Vehicle_v6.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_TakeControl_Vehicle.Brick_TakeControl_Vehicle_Specific_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareEntity.lua");
        cboxRes:RegisterBox("Domino/System/Coop/CoopActivePlayers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPawnVehicleInfo.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInteractionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleDamageListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/VehicleModifier_v2.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_440/MIS_440_B10._MIS440_B10_DialogueManager.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[entityarchetypeslibrary/9015352231971880.ark.fcb]], "CEntityArchetypeRes");
        cboxRes:LoadResource([[3358431012.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_440/MIS_440_B10.MIS_440_B10_MAIN.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Deliver_Vehicle_To_Position.Brick_Deliver_Vehicle_CustomWarning.debug.lua")] = {
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
                name = "fWarningDistance",
                type = "float",
            },
            [10] = {
                name = "isTargetTrigger",
                type = "bool",
            },
            [11] = {
                name = "Objective",
                type = "oasis",
            },
            [12] = {
                name = "opt_FailReason",
                type = "oasis",
            },
            [13] = {
                name = "oWarningMsg",
                type = "oasis",
            },
        },
        dataInCount = 14,
        dataOut = {
            [0] = {
                name = "FailReason",
                type = "oasis",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Follow_NpcVehicle.Brick_Follow_NPC_Vehicle_v6.debug.lua")] = {
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
                name = "Detected",
                delayed = false,
            },
            [1] = {
                name = "Started",
                delayed = false,
            },
            [2] = {
                name = "Success",
                delayed = false,
            },
            [3] = {
                name = "Target_KilledDestroyed",
                delayed = false,
            },
            [4] = {
                name = "Target_TooFar",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "bRequiresObjective",
                type = "bool",
            },
            [1] = {
                name = "Destination",
                type = "entity",
            },
            [2] = {
                name = "fDistanceFail",
                type = "float",
            },
            [3] = {
                name = "fDistanceSuccess",
                type = "float",
            },
            [4] = {
                name = "fDistanceWarning",
                type = "float",
            },
            [5] = {
                name = "FollowTarget",
                type = "entity",
            },
            [6] = {
                name = "IsPersistentCharacter",
                type = "bool",
            },
            [7] = {
                name = "oObjective",
                type = "oasis",
            },
            [8] = {
                name = "opt_Detection_Group",
                type = "group",
            },
            [9] = {
                name = "opt_Target_MobileMarker",
                type = "entity",
            },
            [10] = {
                name = "oWarningMsg",
                type = "oasis",
            },
        },
        dataInCount = 11,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_TakeControl_Vehicle.Brick_TakeControl_Vehicle_Specific_v2.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Destroyed",
                delayed = false,
            },
            [1] = {
                name = "Started",
                delayed = false,
            },
            [2] = {
                name = "Success",
                delayed = true,
            },
            [3] = {
                name = "Unloaded",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "bCompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "bRequiresAllPlayers",
                type = "bool",
            },
            [2] = {
                name = "bRequiresObjective",
                type = "bool",
            },
            [3] = {
                name = "e_MobileObjectiveMarker",
                type = "entity",
            },
            [4] = {
                name = "e_Vehicle",
                type = "entity",
            },
            [5] = {
                name = "Objective",
                type = "oasis",
            },
            [6] = {
                name = "opt_FailReason",
                type = "oasis",
            },
            [7] = {
                name = "opt_MarkerBone",
                type = "string",
            },
        },
        dataInCount = 8,
        dataOut = {
            [0] = {
                name = "FailureReason",
                type = "oasis",
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")] = {
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
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/AI/CharacterLoadedIdListener_v2.lua")] = {
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
                name = "EntityUnloaded",
                delayed = true,
            },
            [3] = {
                name = "LoadedIdReceived",
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
                name = "CharacterId",
                type = "genericdb",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "EntityId",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/CompareEntity.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Equal",
                delayed = false,
            },
            [1] = {
                name = "NotEqual",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Entity1",
                type = "entity",
            },
            [1] = {
                name = "Entity2",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Result",
                type = "bool",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/Coop/CoopActivePlayers.lua")] = {
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
                name = "OnePlayer",
                delayed = false,
            },
            [1] = {
                name = "PlayerAdded",
                delayed = true,
            },
            [2] = {
                name = "PlayerRemoved",
                delayed = true,
            },
            [3] = {
                name = "TwoPlayers",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
            [0] = {
                name = "Player1",
                type = "entity",
            },
            [1] = {
                name = "Player2",
                type = "entity",
            },
            [2] = {
                name = "PlayerAddedOrRemoved",
                type = "entity",
            },
        },
        dataOutCount = 3,
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
    metadataTable[GetPathID("Domino/System/Gate_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Close",
            },
            [1] = {
                name = "In",
            },
            [2] = {
                name = "Open",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Closed",
                delayed = false,
            },
            [1] = {
                name = "Opened",
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
                name = "initStateOpen",
                type = "bool",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/GFHSystemModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "DisableGFHSystem",
            },
            [1] = {
                name = "EnableGFHSystem",
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
                name = "enableAfterBeat",
                type = "bool",
            },
            [1] = {
                name = "immediateDespawn",
                type = "bool",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/HealthModifier_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Damage",
            },
            [1] = {
                name = "Heal",
            },
            [2] = {
                name = "RemoveCritical",
            },
            [3] = {
                name = "Set",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Damaged",
                delayed = false,
            },
            [1] = {
                name = "Healed",
                delayed = false,
            },
            [2] = {
                name = "OnRemoveCritical",
                delayed = false,
            },
            [3] = {
                name = "OnSet",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "damageWithStim",
                type = "int",
            },
            [1] = {
                name = "origin",
                type = "entity",
            },
            [2] = {
                name = "pawns",
                type = "group",
            },
            [3] = {
                name = "value",
                type = "int",
            },
        },
        dataInCount = 4,
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
    metadataTable[GetPathID("Domino/System/ProximityRadiusListener_v3.lua")] = {
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
                name = "AllFar",
                delayed = true,
            },
            [1] = {
                name = "AllNear",
                delayed = true,
            },
            [2] = {
                name = "Disabled",
                delayed = false,
            },
            [3] = {
                name = "Enabled",
                delayed = false,
            },
            [4] = {
                name = "SomeoneFar",
                delayed = true,
            },
            [5] = {
                name = "SomeoneNear",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "Entities",
                type = "group",
            },
            [2] = {
                name = "farZone",
                type = "float",
            },
            [3] = {
                name = "id2",
                type = "entity",
            },
            [4] = {
                name = "nearZone",
                type = "float",
            },
            [5] = {
                name = "use2d",
                type = "bool",
            },
        },
        dataInCount = 6,
        dataOut = {
            [0] = {
                name = "currentEntity",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/ProximityTrigger_v3.lua")] = {
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
                name = "OnAllInside",
                delayed = true,
            },
            [5] = {
                name = "OnEmpty",
                delayed = true,
            },
            [6] = {
                name = "OnOccupied",
                delayed = true,
            },
            [7] = {
                name = "Use",
                delayed = true,
            },
        },
        controlOutCount = 8,
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
                name = "requiresPawnsActive",
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
    metadataTable[GetPathID("Domino/System/UI/DisplayCustomUIMsg_v5.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Display",
            },
            [1] = {
                name = "Hide",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnDisplay",
                delayed = false,
            },
            [1] = {
                name = "OnHide",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "MessageId",
                type = "oasis",
            },
            [1] = {
                name = "MessageType",
                type = "int",
            },
            [2] = {
                name = "pawns",
                type = "group",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/VehicleDamageListener_v2.lua")] = {
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
                name = "BoxDisabled",
                delayed = false,
            },
            [1] = {
                name = "Broken",
                delayed = true,
            },
            [2] = {
                name = "Destroyed",
                delayed = true,
            },
            [3] = {
                name = "Disabled",
                delayed = true,
            },
            [4] = {
                name = "Enabled",
                delayed = false,
            },
            [5] = {
                name = "MajorDamage",
                delayed = true,
            },
            [6] = {
                name = "MinorDamage",
                delayed = true,
            },
            [7] = {
                name = "Mint",
                delayed = true,
            },
            [8] = {
                name = "OnFire",
                delayed = true,
            },
            [9] = {
                name = "Perfect",
                delayed = true,
            },
            [10] = {
                name = "StateChange",
                delayed = true,
            },
        },
        controlOutCount = 11,
        dataIn = {
            [0] = {
                name = "Vehicle",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "StateID",
                type = "int",
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_440/MIS_440_B10._MIS440_B10_DialogueManager.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
            [1] = {
                name = "Start_007",
            },
            [2] = {
                name = "Start_008",
            },
            [3] = {
                name = "Start_013",
            },
            [4] = {
                name = "Start_016",
            },
        },
        controlInCount = 5,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "eNickRye",
                type = "entity",
            },
            [1] = {
                name = "eTarget",
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
    self._name = "MIS_440_B10_MAIN";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN";
    self.LocalPlayer = nil;
    self.PlayerGroup = nil;
    self.Persistant_MIS440 = "9015184054185563";
    self.eNickRye = nil;
    self.g = 0;
    self.eDeliverMarker = nil;
    self.e = nil;
    self.f = 0;
    self.b = false;
    self.t = "";
    self.eDeliverPlane = nil;
    self.bDestroyedVehicleNickRye = true;
    self.box_EntityStatusListener_73 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|17971022");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_73_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_73_Loaded,
    });
    self.box_Brick_TakeControl_Vehicle_Specific_v2_34 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_TakeControl_Vehicle.Brick_TakeControl_Vehicle_Specific_v2.debug.lua");
    l0 = self.box_Brick_TakeControl_Vehicle_Specific_v2_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_TakeControl_Vehicle_Specific_v2_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|35650640");
    l0:SetConnections({
        -- Destroyed,
        [0] = self.f_box_Brick_TakeControl_Vehicle_Specific_v2_34_Destroyed,
        -- Started,
        [1] = self.f_box_Brick_TakeControl_Vehicle_Specific_v2_34_Started,
        -- Success,
        [2] = self.f_box_Brick_TakeControl_Vehicle_Specific_v2_34_Success,
    });
    self.box_Brick_Follow_NPC_Vehicle_v6_66 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Follow_NpcVehicle.Brick_Follow_NPC_Vehicle_v6.debug.lua");
    l0 = self.box_Brick_Follow_NPC_Vehicle_v6_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Follow_NPC_Vehicle_v6_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|42776955");
    l0:SetConnections({
        -- Target_TooFar,
        [4] = self.f_box_Brick_Follow_NPC_Vehicle_v6_66_Target_TooFar,
    });
    self.box_SpawnAI_103 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_103");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|85167860");
    l0:SetConnections({
    });
    self.box_Brick_Deliver_Vehicle_CustomWarning_15 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Deliver_Vehicle_To_Position.Brick_Deliver_Vehicle_CustomWarning.debug.lua");
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Deliver_Vehicle_CustomWarning_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|106686100");
    l0:SetConnections({
        -- Failed,
        [1] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_15_Failed,
        -- Player_EnterVehicle,
        [2] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_15_Player_EnterVehicle,
        -- Player_ExitVehicle,
        [3] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_15_Player_ExitVehicle,
        -- Success,
        [5] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_15_Success,
    });
    self.box_Brick_Deliver_Vehicle_CustomWarning_13 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Deliver_Vehicle_To_Position.Brick_Deliver_Vehicle_CustomWarning.debug.lua");
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Deliver_Vehicle_CustomWarning_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|113151591");
    l0:SetConnections({
        -- Failed,
        [1] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_13_Failed,
        -- Player_EnterVehicle,
        [2] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_13_Player_EnterVehicle,
        -- Player_ExitVehicle,
        [3] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_13_Player_ExitVehicle,
        -- Success,
        [5] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_13_Success,
    });
    self.box_OnceOnly_v3_128 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_128;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_128");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|121809822");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_128_Out_0,
            },
            count = 1,
        },
    });
    self.box_Brick_Deliver_Vehicle_CustomWarning_65 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Deliver_Vehicle_To_Position.Brick_Deliver_Vehicle_CustomWarning.debug.lua");
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Deliver_Vehicle_CustomWarning_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|141862454");
    l0:SetConnections({
        -- Failed,
        [1] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_65_Failed,
        -- Player_EnterVehicle,
        [2] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_65_Player_EnterVehicle,
        -- Player_ExitVehicle,
        [3] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_65_Player_ExitVehicle,
        -- Success,
        [5] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_65_Success,
    });
    self.box_ActivityAcknowledgeGate_7 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|155919802");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_7_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_7_Reloaded,
    });
    self.box_Delay_v5_137 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_137;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_137");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|188933941");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_137_TimeElapsed,
    });
    self.box_Brick_Deliver_Vehicle_CustomWarning_27 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Deliver_Vehicle_To_Position.Brick_Deliver_Vehicle_CustomWarning.debug.lua");
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Deliver_Vehicle_CustomWarning_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|246667864");
    l0:SetConnections({
        -- Failed,
        [1] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_27_Failed,
        -- Player_EnterVehicle,
        [2] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_27_Player_EnterVehicle,
        -- Player_ExitVehicle,
        [3] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_27_Player_ExitVehicle,
        -- Success,
        [5] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_27_Success,
    });
    self.box_SpawnAI_12 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|296771596");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_80 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|342135475");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_EntityStatusListener_80_Disabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_80_Loaded,
    });
    self.box_EntityStatusListener_87 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|447598712");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_EntityStatusListener_87_Disabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_87_Loaded,
    });
    self.box_Brick_Deliver_Vehicle_CustomWarning_33 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Deliver_Vehicle_To_Position.Brick_Deliver_Vehicle_CustomWarning.debug.lua");
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Deliver_Vehicle_CustomWarning_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|454970132");
    l0:SetConnections({
        -- Failed,
        [1] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_33_Failed,
        -- Player_EnterVehicle,
        [2] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_33_Player_EnterVehicle,
        -- Player_ExitVehicle,
        [3] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_33_Player_ExitVehicle,
        -- Started,
        [4] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_33_Started,
        -- Success,
        [5] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_33_Success,
    });
    self.box_Brick_Deliver_Vehicle_CustomWarning_37 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Deliver_Vehicle_To_Position.Brick_Deliver_Vehicle_CustomWarning.debug.lua");
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Deliver_Vehicle_CustomWarning_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|471050762");
    l0:SetConnections({
        -- Failed,
        [1] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_37_Failed,
        -- Player_EnterVehicle,
        [2] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_37_Player_EnterVehicle,
        -- Player_ExitVehicle,
        [3] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_37_Player_ExitVehicle,
        -- Success,
        [5] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_37_Success,
    });
    self.box_Brick_Deliver_Vehicle_CustomWarning_90 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Deliver_Vehicle_To_Position.Brick_Deliver_Vehicle_CustomWarning.debug.lua");
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Deliver_Vehicle_CustomWarning_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|535104855");
    l0:SetConnections({
        -- Failed,
        [1] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_90_Failed,
        -- Player_EnterVehicle,
        [2] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_90_Player_EnterVehicle,
        -- Player_ExitVehicle,
        [3] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_90_Player_ExitVehicle,
        -- Success,
        [5] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_90_Success,
    });
    self.box_Gate_v3_129 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_129;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_129");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|543658444");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_129_Out,
    });
    self.box_VehicleListener_v3_38 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|548155381");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VehicleListener_v3_38_Disabled,
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_38_OnSit,
    });
    self.box_SpawnAI_19 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|595552774");
    l0:SetConnections({
    });
    self.box_Brick_Deliver_Vehicle_CustomWarning_28 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Deliver_Vehicle_To_Position.Brick_Deliver_Vehicle_CustomWarning.debug.lua");
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Deliver_Vehicle_CustomWarning_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|610463197");
    l0:SetConnections({
        -- Failed,
        [1] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_28_Failed,
        -- Player_EnterVehicle,
        [2] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_28_Player_EnterVehicle,
        -- Player_ExitVehicle,
        [3] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_28_Player_ExitVehicle,
        -- Success,
        [5] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_28_Success,
    });
    self.box_EntityStatusListener_130 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_130;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_130");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|709810038");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_130_Loaded,
    });
    self.box_VehicleDamageListener_v2_126 = cbox:CreateBox("Domino/System/VehicleDamageListener_v2.lua");
    l0 = self.box_VehicleDamageListener_v2_126;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleDamageListener_v2_126");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|714152459");
    l0:SetConnections({
        -- Destroyed,
        [2] = self.f_box_VehicleDamageListener_v2_126_Destroyed,
        -- Enabled,
        [4] = self.f_box_VehicleDamageListener_v2_126_Enabled,
    });
    self.box_VehicleDamageListener_v2_118 = cbox:CreateBox("Domino/System/VehicleDamageListener_v2.lua");
    l0 = self.box_VehicleDamageListener_v2_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleDamageListener_v2_118");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|732417839");
    l0:SetConnections({
        -- Destroyed,
        [2] = self.f_box_VehicleDamageListener_v2_118_Destroyed,
        -- Enabled,
        [4] = self.f_box_VehicleDamageListener_v2_118_Enabled,
    });
    self.box_ProximityRadiusListener_v3_85 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|736404281");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_85_AllFar,
    });
    self.box_EntityStatusListener_58 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|780382161");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_EntityStatusListener_58_Disabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_58_Loaded,
    });
    self.box_Brick_Deliver_Vehicle_CustomWarning_30 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Deliver_Vehicle_To_Position.Brick_Deliver_Vehicle_CustomWarning.debug.lua");
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Deliver_Vehicle_CustomWarning_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|839368041");
    l0:SetConnections({
        -- Failed,
        [1] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_30_Failed,
        -- Player_EnterVehicle,
        [2] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_30_Player_EnterVehicle,
        -- Player_ExitVehicle,
        [3] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_30_Player_ExitVehicle,
        -- Success,
        [5] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_30_Success,
    });
    self.box_Brick_Deliver_Vehicle_CustomWarning_41 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Deliver_Vehicle_To_Position.Brick_Deliver_Vehicle_CustomWarning.debug.lua");
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Deliver_Vehicle_CustomWarning_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|887842628");
    l0:SetConnections({
        -- Failed,
        [1] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_41_Failed,
        -- Player_EnterVehicle,
        [2] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_41_Player_EnterVehicle,
        -- Player_ExitVehicle,
        [3] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_41_Player_ExitVehicle,
        -- Success,
        [5] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_41_Success,
    });
    self.box_ProximityTrigger_v3_86 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|940101021");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_86_Enter,
    });
    self.box_MultipleOR_120 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_120");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|947624316");
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
        [0] = self.f_box_MultipleOR_120_Out,
    });
    self.box_DisplayCustomUIMsg_v5_83 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|990354563");
    l0:SetConnections({
    });
    self.box_Brick_Deliver_Vehicle_CustomWarning_48 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Deliver_Vehicle_To_Position.Brick_Deliver_Vehicle_CustomWarning.debug.lua");
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Deliver_Vehicle_CustomWarning_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1024561859");
    l0:SetConnections({
        -- Failed,
        [1] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_48_Failed,
        -- Player_EnterVehicle,
        [2] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_48_Player_EnterVehicle,
        -- Player_ExitVehicle,
        [3] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_48_Player_ExitVehicle,
        -- Success,
        [5] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_48_Success,
    });
    self.box_ActivityInitialized_6 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1136406819");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_6_Out,
    });
    self.box_SpawnAI_18 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1183714670");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_88 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1189341406");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_EntityStatusListener_88_Disabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_88_Loaded,
    });
    self.box_OnceOnly_v3_141 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_141;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_141");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1197030038");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_141_Out_0,
            },
            count = 1,
        },
    });
    self.box_Brick_Deliver_Vehicle_CustomWarning_24 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Deliver_Vehicle_To_Position.Brick_Deliver_Vehicle_CustomWarning.debug.lua");
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Deliver_Vehicle_CustomWarning_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1214883671");
    l0:SetConnections({
        -- Failed,
        [1] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_24_Failed,
        -- Player_EnterVehicle,
        [2] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_24_Player_EnterVehicle,
        -- Player_ExitVehicle,
        [3] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_24_Player_ExitVehicle,
        -- Success,
        [5] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_24_Success,
    });
    self.box_EntityStatusListener_79 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1237810594");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_EntityStatusListener_79_Disabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_79_Loaded,
    });
    self.box_OnceOnly_v3_138 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_138;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_138");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1284983575");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_138_Out_0,
            },
            count = 1,
        },
    });
    self.box_EntityStatusListener_102 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_102");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1286917185");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_EntityStatusListener_102_Disabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_102_Loaded,
    });
    self.box_SpawnAI_20 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1291630458");
    l0:SetConnections({
    });
    self.box_MultipleOR_121 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_121;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_121");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1359355758");
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
        [0] = self.f_box_MultipleOR_121_Out,
    });
    self.box_SoundModifier_v2_97 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_97");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1368141280");
    l0:SetConnections({
    });
    self.box_Delay_v5_142 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_142;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_142");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1386399865");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_142_TimeElapsed,
    });
    self.box_EntityStatusListener_107 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_107");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1388715802");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_EntityStatusListener_107_Disabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_107_Loaded,
    });
    self.box_EntityStatusListener_59 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1392766374");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_EntityStatusListener_59_Disabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_59_Loaded,
    });
    self.box_VehicleDamageListener_v2_122 = cbox:CreateBox("Domino/System/VehicleDamageListener_v2.lua");
    l0 = self.box_VehicleDamageListener_v2_122;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleDamageListener_v2_122");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1403681622");
    l0:SetConnections({
        -- Destroyed,
        [2] = self.f_box_VehicleDamageListener_v2_122_Destroyed,
        -- Enabled,
        [4] = self.f_box_VehicleDamageListener_v2_122_Enabled,
    });
    self.box_EntityStatusListener_56 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1468679465");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_EntityStatusListener_56_Disabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_56_Loaded,
    });
    self.box_SpawnAI_39 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1488858718");
    l0:SetConnections({
    });
    self.box_MultipleOR_113 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_113");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1495294681");
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
        [0] = self.f_box_MultipleOR_113_Out,
    });
    self.box_Brick_Deliver_Vehicle_CustomWarning_57 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Deliver_Vehicle_To_Position.Brick_Deliver_Vehicle_CustomWarning.debug.lua");
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Deliver_Vehicle_CustomWarning_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1495909160");
    l0:SetConnections({
        -- Failed,
        [1] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_57_Failed,
        -- Player_EnterVehicle,
        [2] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_57_Player_EnterVehicle,
        -- Player_ExitVehicle,
        [3] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_57_Player_ExitVehicle,
        -- Success,
        [5] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_57_Success,
    });
    self.box_UniversalInteractionModifier_v2_133 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_133;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_133");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1521442171");
    l0:SetConnections({
    });
    self.box_Brick_Deliver_Vehicle_CustomWarning_25 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Deliver_Vehicle_To_Position.Brick_Deliver_Vehicle_CustomWarning.debug.lua");
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Deliver_Vehicle_CustomWarning_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1546754740");
    l0:SetConnections({
        -- Failed,
        [1] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_25_Failed,
        -- Player_EnterVehicle,
        [2] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_25_Player_EnterVehicle,
        -- Player_ExitVehicle,
        [3] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_25_Player_ExitVehicle,
        -- Success,
        [5] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_25_Success,
    });
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1547726688");
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
    self.box_Brick_Deliver_Vehicle_CustomWarning_29 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Deliver_Vehicle_To_Position.Brick_Deliver_Vehicle_CustomWarning.debug.lua");
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Deliver_Vehicle_CustomWarning_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1567188808");
    l0:SetConnections({
        -- Failed,
        [1] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_29_Failed,
        -- Player_EnterVehicle,
        [2] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_29_Player_EnterVehicle,
        -- Player_ExitVehicle,
        [3] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_29_Player_ExitVehicle,
        -- Success,
        [5] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_29_Success,
    });
    self.box_Brick_Deliver_Vehicle_CustomWarning_17 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Deliver_Vehicle_To_Position.Brick_Deliver_Vehicle_CustomWarning.debug.lua");
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Deliver_Vehicle_CustomWarning_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1602903761");
    l0:SetConnections({
        -- Failed,
        [1] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_17_Failed,
        -- Player_EnterVehicle,
        [2] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_17_Player_EnterVehicle,
        -- Player_ExitVehicle,
        [3] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_17_Player_ExitVehicle,
        -- Success,
        [5] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_17_Success,
    });
    self.box_CharacterLoadedIdListener_v2_11 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1603969902");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_11_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_11_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_11_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_11_LoadedIdReceived,
    });
    self.box_NarrativeFade_111 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_111");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1648308627");
    l0:SetConnections({
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_111_FadedOut,
    });
    self.box_SpawnAI_14 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1666636382");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_114 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_114");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1680163278");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_114_Out_0,
            },
            count = 1,
        },
    });
    self.box_EntityStatusListener_51 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1699001862");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_EntityStatusListener_51_Disabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_51_Loaded,
    });
    self.box_SpawnAI_10 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1713197304");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_52 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1773608376");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_EntityStatusListener_52_Disabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_52_Loaded,
    });
    self.box_ProximityRadiusListener_v3_82 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1773611714");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_82_AllFar,
        -- AllNear,
        [1] = self.f_box_ProximityRadiusListener_v3_82_AllNear,
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_82_Disabled,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_82_Enabled,
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_82_SomeoneFar,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_82_SomeoneNear,
    });
    self.box_DisplayCustomUIMsg_v5_9 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1800668333");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_74 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1807159958");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_74_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_74_Loaded,
    });
    self.box_SpawnAI_22 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1858301609");
    l0:SetConnections({
    });
    self.box_CoopActivePlayers_124 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_124;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_124");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1863205842");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_124_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_124_PlayerAdded,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_124_TwoPlayers,
    });
    self.box_MultipleOR_123 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_123;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_123");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1865554677");
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
        [0] = self.f_box_MultipleOR_123_Out,
    });
    self.box_GunsForHireSystemModifier_91 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1951809566");
    l0:SetConnections({
    });
    self.box_Brick_Deliver_Vehicle_CustomWarning_35 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Deliver_Vehicle_To_Position.Brick_Deliver_Vehicle_CustomWarning.debug.lua");
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Deliver_Vehicle_CustomWarning_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1971597907");
    l0:SetConnections({
        -- Failed,
        [1] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_35_Failed,
        -- Player_EnterVehicle,
        [2] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_35_Player_EnterVehicle,
        -- Player_ExitVehicle,
        [3] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_35_Player_ExitVehicle,
        -- Success,
        [5] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_35_Success,
    });
    self.box_VehicleListener_v3_62 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|2018913680");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VehicleListener_v3_62_Enabled,
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_62_OnSit,
    });
    self.box__MIS440_B10_DialogueManager_50 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_440/MIS_440_B10._MIS440_B10_DialogueManager.debug.lua");
    l0 = self.box__MIS440_B10_DialogueManager_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__MIS440_B10_DialogueManager_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|2035329220");
    l0:SetConnections({
    });
    self.box_SpawnAI_32 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|2054325787");
    l0:SetConnections({
    });
    self.box_Brick_Deliver_Vehicle_CustomWarning_23 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Deliver_Vehicle_To_Position.Brick_Deliver_Vehicle_CustomWarning.debug.lua");
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Deliver_Vehicle_CustomWarning_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|2063108787");
    l0:SetConnections({
        -- Failed,
        [1] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_23_Failed,
        -- Player_EnterVehicle,
        [2] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_23_Player_EnterVehicle,
        -- Player_ExitVehicle,
        [3] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_23_Player_ExitVehicle,
        -- Success,
        [5] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_23_Success,
    });
    self.box_Brick_Deliver_Vehicle_CustomWarning_26 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Deliver_Vehicle_To_Position.Brick_Deliver_Vehicle_CustomWarning.debug.lua");
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Deliver_Vehicle_CustomWarning_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|2085773298");
    l0:SetConnections({
        -- Failed,
        [1] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_26_Failed,
        -- Player_EnterVehicle,
        [2] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_26_Player_EnterVehicle,
        -- Player_ExitVehicle,
        [3] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_26_Player_ExitVehicle,
        -- Success,
        [5] = self.f_box_Brick_Deliver_Vehicle_CustomWarning_26_Success,
    });
    self.box_ExitZoneWarningListener_v3_36 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|2114551862");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_36_FailingZoneEntered,
    });
    self.box_SpawnAI_31 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|2129200866");
    l0:SetConnections({
    });
    self.box_CoopActivePlayers_119 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_119");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|2136351742");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_119_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_119_PlayerAdded,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_119_TwoPlayers,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_2();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1042580060", "1042580060", "MIS_440_B10_MAIN", "In", "box_GetLocalPlayer_v2_2.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_99_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_60();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|279740643", "279740643", "MIS_440_B10_MAIN", "box_Simple_Node_99.Out", "box_OutputOrder_v2_60.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_105_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_77();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1117577128", "1117577128", "MIS_440_B10_MAIN", "box_Simple_Node_105.Out", "box_OutputOrder_v2_77.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box__MIS440_B10_DialogueManager_50();
    l0 = self.box__MIS440_B10_DialogueManager_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|777795776", "777795776", "MIS_440_B10_MAIN", "box_Simple_Node_105.Out", "box__MIS440_B10_DialogueManager_50.Start_007", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start_007
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_106_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box__MIS440_B10_DialogueManager_50();
    l0 = self.box__MIS440_B10_DialogueManager_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1635173582", "1635173582", "MIS_440_B10_MAIN", "box_Simple_Node_106.Out", "box__MIS440_B10_DialogueManager_50.Start_008", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start_008
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_98_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box__MIS440_B10_DialogueManager_50();
    l0 = self.box__MIS440_B10_DialogueManager_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1297348975", "1297348975", "MIS_440_B10_MAIN", "box_Simple_Node_98.Out", "box__MIS440_B10_DialogueManager_50.Start_013", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start_013
    l0:Exec(3, params);
end;

function export:f_box_Simple_Node_101_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box__MIS440_B10_DialogueManager_50();
    l0 = self.box__MIS440_B10_DialogueManager_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1822999299", "1822999299", "MIS_440_B10_MAIN", "box_Simple_Node_101.Out", "box__MIS440_B10_DialogueManager_50.Start_016", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start_016
    l0:Exec(4, params);
end;

function export:f_box_Simple_Node_54_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Deliver_Vehicle_CustomWarning_90();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_90;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1050250560", "1050250560", "MIS_440_B10_MAIN", "box_Simple_Node_54.Out", "box_Brick_Deliver_Vehicle_CustomWarning_90.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_112_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_GunsForHireSystemModifier_91();
    l0 = self.box_GunsForHireSystemModifier_91;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1321419431", "1321419431", "MIS_440_B10_MAIN", "box_Simple_Node_112.Out", "box_GunsForHireSystemModifier_91.EnableGFHSystem", clone:GetLuaBox(), l0:GetLuaBox());
    -- EnableGFHSystem
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_40_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_62();
    l0 = self.box_VehicleListener_v3_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1582204396", "1582204396", "MIS_440_B10_MAIN", "box_Simple_Node_40.Out", "box_VehicleListener_v3_62.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_68_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Follow_NPC_Vehicle_v6_66();
    l0 = self.box_Brick_Follow_NPC_Vehicle_v6_66;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|182330384", "182330384", "MIS_440_B10_MAIN", "box_Simple_Node_68.Out", "box_Brick_Follow_NPC_Vehicle_v6_66.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_89_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_62();
    l0 = self.box_VehicleListener_v3_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1130049138", "1130049138", "MIS_440_B10_MAIN", "box_Simple_Node_89.Out", "box_VehicleListener_v3_62.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_47_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleDamageListener_v2_126();
    l0 = self.box_VehicleDamageListener_v2_126;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1902875111", "1902875111", "MIS_440_B10_MAIN", "box_Simple_Node_47.Out", "box_VehicleDamageListener_v2_126.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ExitZoneWarningListener_v3_36();
    l0 = self.box_ExitZoneWarningListener_v3_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|2114900540", "2114900540", "MIS_440_B10_MAIN", "box_Simple_Node_47.Out", "box_ExitZoneWarningListener_v3_36.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_21_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_75();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1170750900", "1170750900", "MIS_440_B10_MAIN", "box_Simple_Node_21.Out", "box_Compare_Boolean_75.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_77_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_73();
    l0 = self.box_EntityStatusListener_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|431113767", "431113767", "MIS_440_B10_MAIN", "box_OutputOrder_v2_77.Out", "box_EntityStatusListener_73.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_77_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_74();
    l0 = self.box_EntityStatusListener_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|2050133101", "2050133101", "MIS_440_B10_MAIN", "box_OutputOrder_v2_77.Out", "box_EntityStatusListener_74.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_77_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_79();
    l0 = self.box_EntityStatusListener_79;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|550094826", "550094826", "MIS_440_B10_MAIN", "box_OutputOrder_v2_77.Out", "box_EntityStatusListener_79.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_77_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_80();
    l0 = self.box_EntityStatusListener_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|999849639", "999849639", "MIS_440_B10_MAIN", "box_OutputOrder_v2_77.Out", "box_EntityStatusListener_80.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_77_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_88();
    l0 = self.box_EntityStatusListener_88;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1966559310", "1966559310", "MIS_440_B10_MAIN", "box_OutputOrder_v2_77.Out", "box_EntityStatusListener_88.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_77_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_87();
    l0 = self.box_EntityStatusListener_87;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1729284612", "1729284612", "MIS_440_B10_MAIN", "box_OutputOrder_v2_77.Out", "box_EntityStatusListener_87.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_73_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_19();
    l0 = self.box_EntityStatusListener_73;
    l1 = self.box_SpawnAI_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1925608701", "1925608701", "MIS_440_B10_MAIN", "box_EntityStatusListener_73.Enabled", "box_SpawnAI_19.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_73_Loaded()
    local params, l0;
    params = self:OnEnter_box_EntityStatusListener_73();
    l0 = self.box_EntityStatusListener_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|974759277", "974759277", "MIS_440_B10_MAIN", "box_EntityStatusListener_73.Loaded", "box_EntityStatusListener_73.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_GetLocalPlayer_v2_2_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_2_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_1();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1639824886", "1639824886", "MIS_440_B10_MAIN", "box_GetLocalPlayer_v2_2.Out", "box_GetPlayerGroup_v2_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_96_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_94();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|451427714", "451427714", "MIS_440_B10_MAIN", "box_OutputOrder_v2_96.Out", "box_ActivityObjectiveMarkerModifier_v3_94.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_96_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_95();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|24166826", "24166826", "MIS_440_B10_MAIN", "box_OutputOrder_v2_96.Out", "box_EndActivityObjective_v2_95.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_96_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleDamageListener_v2_126();
    l0 = self.box_VehicleDamageListener_v2_126;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1001676587", "1001676587", "MIS_440_B10_MAIN", "box_OutputOrder_v2_96.Out", "box_VehicleDamageListener_v2_126.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Brick_TakeControl_Vehicle_Specific_v2_34_Destroyed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_21();
    l0 = self.box_Brick_TakeControl_Vehicle_Specific_v2_34;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1840849660", "1840849660", "MIS_440_B10_MAIN", "box_Brick_TakeControl_Vehicle_Specific_v2_34.Destroyed", "box_Simple_Node_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_TakeControl_Vehicle_Specific_v2_34_Started()
    local l0, l1;
    l0 = self.box_Brick_TakeControl_Vehicle_Specific_v2_34;
    l1 = self.box_OnceOnly_v3_138;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|381122399", "381122399", "MIS_440_B10_MAIN", "box_Brick_TakeControl_Vehicle_Specific_v2_34.Started", "box_OnceOnly_v3_138.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_TakeControl_Vehicle_Specific_v2_34_Success()
    local l0, l1;
    l0 = self.box_Brick_TakeControl_Vehicle_Specific_v2_34;
    l1 = self.box_OnceOnly_v3_141;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1939530460", "1939530460", "MIS_440_B10_MAIN", "box_Brick_TakeControl_Vehicle_Specific_v2_34.Success", "box_OnceOnly_v3_141.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Follow_NPC_Vehicle_v6_66_Target_TooFar()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_v2_67();
    l0 = self.box_Brick_Follow_NPC_Vehicle_v6_66;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|253657558", "253657558", "MIS_440_B10_MAIN", "box_Brick_Follow_NPC_Vehicle_v6_66.Target_TooFar", "box_ActivityRetry_v2_67.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_71_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_71_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_94();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1841381937", "1841381937", "MIS_440_B10_MAIN", "box_SetEntity_v2_71.Out", "box_ActivityObjectiveMarkerModifier_v3_94.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_53_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Deliver_Vehicle_CustomWarning_26();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|484103969", "484103969", "MIS_440_B10_MAIN", "box_OutputOrder_v2_53.Out", "box_Brick_Deliver_Vehicle_CustomWarning_26.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_53_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_105();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|349080181", "349080181", "MIS_440_B10_MAIN", "box_OutputOrder_v2_53.Out", "box_Simple_Node_105.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_135_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_128;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|689067365", "689067365", "MIS_440_B10_MAIN", "box_OutputOrder_v2_135.Out", "box_OnceOnly_v3_128.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_135_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_129();
    l0 = self.box_Gate_v3_129;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|142469164", "142469164", "MIS_440_B10_MAIN", "box_OutputOrder_v2_135.Out", "box_Gate_v3_129.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_15_Failed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_21();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_15;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1927917018", "1927917018", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_15.Failed", "box_Simple_Node_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_15_Player_EnterVehicle()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_40();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_15;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1488342123", "1488342123", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_15.Player_EnterVehicle", "box_Simple_Node_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_15_Player_ExitVehicle()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_89();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_15;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1440276540", "1440276540", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_15.Player_ExitVehicle", "box_Simple_Node_89.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_15_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Deliver_Vehicle_CustomWarning_23();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_15;
    l1 = self.box_Brick_Deliver_Vehicle_CustomWarning_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1181700681", "1181700681", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_15.Success", "box_Brick_Deliver_Vehicle_CustomWarning_23.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_13_Failed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_21();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_13;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|494125845", "494125845", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_13.Failed", "box_Simple_Node_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_13_Player_EnterVehicle()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_40();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_13;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|279747530", "279747530", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_13.Player_EnterVehicle", "box_Simple_Node_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_13_Player_ExitVehicle()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_89();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_13;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|2108811411", "2108811411", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_13.Player_ExitVehicle", "box_Simple_Node_89.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_13_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Deliver_Vehicle_CustomWarning_48();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_13;
    l1 = self.box_Brick_Deliver_Vehicle_CustomWarning_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1045474923", "1045474923", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_13.Success", "box_Brick_Deliver_Vehicle_CustomWarning_48.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_AddActivityObjective_v2_43_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_38();
    l0 = self.box_VehicleListener_v3_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|460669617", "460669617", "MIS_440_B10_MAIN", "box_AddActivityObjective_v2_43.Out", "box_VehicleListener_v3_38.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_128_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_134();
    l0 = self.box_OnceOnly_v3_128;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|511984853", "511984853", "MIS_440_B10_MAIN", "box_OnceOnly_v3_128.Out", "box_EndActivityObjective_v2_134.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_65_Failed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_21();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_65;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|2038949401", "2038949401", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_65.Failed", "box_Simple_Node_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_65_Player_EnterVehicle()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_40();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_65;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|598039936", "598039936", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_65.Player_EnterVehicle", "box_Simple_Node_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_65_Player_ExitVehicle()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_89();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_65;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|149183619", "149183619", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_65.Player_ExitVehicle", "box_Simple_Node_89.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_65_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Deliver_Vehicle_CustomWarning_15();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_65;
    l1 = self.box_Brick_Deliver_Vehicle_CustomWarning_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1415352486", "1415352486", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_65.Success", "box_Brick_Deliver_Vehicle_CustomWarning_15.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ActivityAcknowledgeGate_7_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_7;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|169106012", "169106012", "MIS_440_B10_MAIN", "box_ActivityAcknowledgeGate_7.Acknowledged", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_7_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_7;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1777814717", "1777814717", "MIS_440_B10_MAIN", "box_ActivityAcknowledgeGate_7.Reloaded", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_137_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_140();
    l0 = self.box_Delay_v5_137;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1769746437", "1769746437", "MIS_440_B10_MAIN", "box_Delay_v5_137.TimeElapsed", "box_ActivityEnd_140.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_134_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_136();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|2044193012", "2044193012", "MIS_440_B10_MAIN", "box_EndActivityObjective_v2_134.Out", "box_OutputOrder_v2_136.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_27_Failed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_21();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_27;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1001832278", "1001832278", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_27.Failed", "box_Simple_Node_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_27_Player_EnterVehicle()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_40();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_27;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1803711814", "1803711814", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_27.Player_EnterVehicle", "box_Simple_Node_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_27_Player_ExitVehicle()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_89();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_27;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|394717201", "394717201", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_27.Player_ExitVehicle", "box_Simple_Node_89.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_27_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Deliver_Vehicle_CustomWarning_30();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_27;
    l1 = self.box_Brick_Deliver_Vehicle_CustomWarning_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1090746877", "1090746877", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_27.Success", "box_Brick_Deliver_Vehicle_CustomWarning_30.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_94_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_TakeControl_Vehicle_Specific_v2_34();
    l0 = self.box_Brick_TakeControl_Vehicle_Specific_v2_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|131139978", "131139978", "MIS_440_B10_MAIN", "box_ActivityObjectiveMarkerModifier_v3_94.Enabled", "box_Brick_TakeControl_Vehicle_Specific_v2_34.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_EntityStatusListener_80_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_20();
    l0 = self.box_EntityStatusListener_80;
    l1 = self.box_SpawnAI_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|503247253", "503247253", "MIS_440_B10_MAIN", "box_EntityStatusListener_80.Disabled", "box_SpawnAI_20.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_80_Loaded()
    local params, l0;
    params = self:OnEnter_box_EntityStatusListener_80();
    l0 = self.box_EntityStatusListener_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1874607297", "1874607297", "MIS_440_B10_MAIN", "box_EntityStatusListener_80.Loaded", "box_EntityStatusListener_80.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_SetEntity_v2_117_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_117_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_CoopActivePlayers_124;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1212047533", "1212047533", "MIS_440_B10_MAIN", "box_SetEntity_v2_117.Out", "box_CoopActivePlayers_124.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_136_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_112();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1664469462", "1664469462", "MIS_440_B10_MAIN", "box_OutputOrder_v2_136.Out", "box_Simple_Node_112.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_136_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_111();
    l0 = self.box_NarrativeFade_111;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1015348768", "1015348768", "MIS_440_B10_MAIN", "box_OutputOrder_v2_136.Out", "box_NarrativeFade_111.FadeOut", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeOut
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_136_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_137();
    l0 = self.box_Delay_v5_137;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|287316863", "287316863", "MIS_440_B10_MAIN", "box_OutputOrder_v2_136.Out", "box_Delay_v5_137.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Compare_Entity_116_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_117();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|366017278", "366017278", "MIS_440_B10_MAIN", "box_Compare_Entity_116.Equal", "box_SetEntity_v2_117.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Deliver_Vehicle_CustomWarning_17();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|819712253", "819712253", "MIS_440_B10_MAIN", "box_OutputOrder_v2_3.Out", "box_Brick_Deliver_Vehicle_CustomWarning_17.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_99();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1034543743", "1034543743", "MIS_440_B10_MAIN", "box_OutputOrder_v2_3.Out", "box_Simple_Node_99.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_87_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_32();
    l0 = self.box_EntityStatusListener_87;
    l1 = self.box_SpawnAI_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|832930357", "832930357", "MIS_440_B10_MAIN", "box_EntityStatusListener_87.Disabled", "box_SpawnAI_32.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_87_Loaded()
    local params, l0;
    params = self:OnEnter_box_EntityStatusListener_87();
    l0 = self.box_EntityStatusListener_87;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|2075498494", "2075498494", "MIS_440_B10_MAIN", "box_EntityStatusListener_87.Loaded", "box_EntityStatusListener_87.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_33_Failed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_21();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_33;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1850832411", "1850832411", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_33.Failed", "box_Simple_Node_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_33_Player_EnterVehicle()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_129();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_33;
    l1 = self.box_Gate_v3_129;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1296134062", "1296134062", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_33.Player_EnterVehicle", "box_Gate_v3_129.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_33_Player_ExitVehicle()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_89();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_33;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1235561769", "1235561769", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_33.Player_ExitVehicle", "box_Simple_Node_89.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_33_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_104();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_33;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|404198706", "404198706", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_33.Started", "box_OutputOrder_v2_104.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_33_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_135();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_33;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|366361886", "366361886", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_33.Success", "box_OutputOrder_v2_135.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_37_Failed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_21();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_37;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|433031808", "433031808", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_37.Failed", "box_Simple_Node_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_37_Player_EnterVehicle()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_40();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_37;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1860861383", "1860861383", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_37.Player_EnterVehicle", "box_Simple_Node_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_37_Player_ExitVehicle()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_89();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_37;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|484644898", "484644898", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_37.Player_ExitVehicle", "box_Simple_Node_89.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_37_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Deliver_Vehicle_CustomWarning_41();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_37;
    l1 = self.box_Brick_Deliver_Vehicle_CustomWarning_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1380306233", "1380306233", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_37.Success", "box_Brick_Deliver_Vehicle_CustomWarning_41.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GetPawnVehicleInfo_70_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_70_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_84();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|518587083", "518587083", "MIS_440_B10_MAIN", "box_GetPawnVehicleInfo_70.InVehicle", "box_OutputOrder_v2_84.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_70_NotInVehicle()
    self:OnExit_box_GetPawnVehicleInfo_70_NotInVehicle();
end;

function export:f_box_GetPawnVehicleInfo_70_Out()
    self:OnExit_box_GetPawnVehicleInfo_70_Out();
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_90_Failed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_21();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_90;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1612059135", "1612059135", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_90.Failed", "box_Simple_Node_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_90_Player_EnterVehicle()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_40();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_90;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1639306152", "1639306152", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_90.Player_EnterVehicle", "box_Simple_Node_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_90_Player_ExitVehicle()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_89();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_90;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1088085431", "1088085431", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_90.Player_ExitVehicle", "box_Simple_Node_89.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_90_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Deliver_Vehicle_CustomWarning_27();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_90;
    l1 = self.box_Brick_Deliver_Vehicle_CustomWarning_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1333124867", "1333124867", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_90.Success", "box_Brick_Deliver_Vehicle_CustomWarning_27.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_129_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_40();
    l0 = self.box_Gate_v3_129;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1074541118", "1074541118", "MIS_440_B10_MAIN", "box_Gate_v3_129.Out", "box_Simple_Node_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_38_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_GetPawnVehicleInfo_70();
    l0 = self.box_VehicleListener_v3_38;
    l1 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1078167301", "1078167301", "MIS_440_B10_MAIN", "box_VehicleListener_v3_38.Disabled", "box_GetPawnVehicleInfo_70.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_38_OnSit()
    local params, l0;
    params = self:OnEnter_box_VehicleListener_v3_38();
    l0 = self.box_VehicleListener_v3_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|734082374", "734082374", "MIS_440_B10_MAIN", "box_VehicleListener_v3_38.OnSit", "box_VehicleListener_v3_38.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_109_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_97();
    l0 = self.box_SoundModifier_v2_97;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|129761191", "129761191", "MIS_440_B10_MAIN", "box_OutputOrder_v2_109.Out", "box_SoundModifier_v2_97.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_109_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_86();
    l0 = self.box_ProximityTrigger_v3_86;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|243359177", "243359177", "MIS_440_B10_MAIN", "box_OutputOrder_v2_109.Out", "box_ProximityTrigger_v3_86.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_28_Failed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_21();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_28;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|297295207", "297295207", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_28.Failed", "box_Simple_Node_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_28_Player_EnterVehicle()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_40();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_28;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1628479402", "1628479402", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_28.Player_EnterVehicle", "box_Simple_Node_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_28_Player_ExitVehicle()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_89();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_28;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1808116875", "1808116875", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_28.Player_ExitVehicle", "box_Simple_Node_89.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_28_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_63();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_28;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|2004262269", "2004262269", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_28.Success", "box_OutputOrder_v2_63.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_104_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_102();
    l0 = self.box_EntityStatusListener_102;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|2063290292", "2063290292", "MIS_440_B10_MAIN", "box_OutputOrder_v2_104.Out", "box_EntityStatusListener_102.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_104_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_107();
    l0 = self.box_EntityStatusListener_107;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|629824797", "629824797", "MIS_440_B10_MAIN", "box_OutputOrder_v2_104.Out", "box_EntityStatusListener_107.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_130_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_131();
    l0 = self.box_EntityStatusListener_130;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1869686360", "1869686360", "MIS_440_B10_MAIN", "box_EntityStatusListener_130.Loaded", "box_VehicleModifier_v2_131.SetAsUnusable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsUnusable
    l1:Exec(6, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleDamageListener_v2_126_Destroyed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_v2_127();
    l0 = self.box_VehicleDamageListener_v2_126;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1353243747", "1353243747", "MIS_440_B10_MAIN", "box_VehicleDamageListener_v2_126.Destroyed", "box_ActivityRetry_v2_127.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleDamageListener_v2_126_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_132();
    l0 = self.box_VehicleDamageListener_v2_126;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1101973282", "1101973282", "MIS_440_B10_MAIN", "box_VehicleDamageListener_v2_126.Enabled", "box_VehicleModifier_v2_132.SetAsUsable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsUsable
    l1:Exec(7, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleDamageListener_v2_118_Destroyed()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_61();
    l0 = self.box_VehicleDamageListener_v2_118;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1314785216", "1314785216", "MIS_440_B10_MAIN", "box_VehicleDamageListener_v2_118.Destroyed", "box_SetBoolean_v2_61.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleDamageListener_v2_118_Enabled()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_118;
    l1 = self.box_MultipleOR_113;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1876130225", "1876130225", "MIS_440_B10_MAIN", "box_VehicleDamageListener_v2_118.Enabled", "box_MultipleOR_113.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityRadiusListener_v3_85_AllFar()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_v2_69();
    l0 = self.box_ProximityRadiusListener_v3_85;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1903563603", "1903563603", "MIS_440_B10_MAIN", "box_ProximityRadiusListener_v3_85.AllFar", "box_ActivityRetry_v2_69.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_1_Out()
    local l0;
    self:OnExit_box_GetPlayerGroup_v2_1_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|888011018", "888011018", "MIS_440_B10_MAIN", "box_GetPlayerGroup_v2_1.Out", "box_ActivityAcknowledgeGate_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_EntityStatusListener_58_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_10();
    l0 = self.box_EntityStatusListener_58;
    l1 = self.box_SpawnAI_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1762183226", "1762183226", "MIS_440_B10_MAIN", "box_EntityStatusListener_58.Disabled", "box_SpawnAI_10.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_58_Loaded()
    local params, l0;
    params = self:OnEnter_box_EntityStatusListener_58();
    l0 = self.box_EntityStatusListener_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1895516474", "1895516474", "MIS_440_B10_MAIN", "box_EntityStatusListener_58.Loaded", "box_EntityStatusListener_58.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_AddActivityObjective_v2_93_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_71();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|138678676", "138678676", "MIS_440_B10_MAIN", "box_AddActivityObjective_v2_93.Out", "box_SetEntity_v2_71.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_30_Failed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_21();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_30;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1682874264", "1682874264", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_30.Failed", "box_Simple_Node_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_30_Player_EnterVehicle()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_40();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_30;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1792269331", "1792269331", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_30.Player_EnterVehicle", "box_Simple_Node_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_30_Player_ExitVehicle()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_89();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_30;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1558322053", "1558322053", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_30.Player_ExitVehicle", "box_Simple_Node_89.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_30_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Deliver_Vehicle_CustomWarning_29();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_30;
    l1 = self.box_Brick_Deliver_Vehicle_CustomWarning_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1693713319", "1693713319", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_30.Success", "box_Brick_Deliver_Vehicle_CustomWarning_29.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_100_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Deliver_Vehicle_CustomWarning_33();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1300317800", "1300317800", "MIS_440_B10_MAIN", "box_OutputOrder_v2_100.Out", "box_Brick_Deliver_Vehicle_CustomWarning_33.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_100_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_101();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|808124405", "808124405", "MIS_440_B10_MAIN", "box_OutputOrder_v2_100.Out", "box_Simple_Node_101.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_41_Failed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_21();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_41;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1550056313", "1550056313", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_41.Failed", "box_Simple_Node_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_41_Player_EnterVehicle()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_40();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_41;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|801096043", "801096043", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_41.Player_EnterVehicle", "box_Simple_Node_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_41_Player_ExitVehicle()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_89();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_41;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1022665666", "1022665666", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_41.Player_ExitVehicle", "box_Simple_Node_89.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_41_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_100();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_41;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|22253750", "22253750", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_41.Success", "box_OutputOrder_v2_100.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_86_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_109();
    l0 = self.box_ProximityTrigger_v3_86;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1840976661", "1840976661", "MIS_440_B10_MAIN", "box_ProximityTrigger_v3_86.Enter", "box_OutputOrder_v2_109.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_120_Out()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleDamageListener_v2_118();
    l0 = self.box_MultipleOR_120;
    l1 = self.box_VehicleDamageListener_v2_118;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|805787589", "805787589", "MIS_440_B10_MAIN", "box_MultipleOR_120.Out", "box_VehicleDamageListener_v2_118.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_48_Failed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_21();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_48;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|989648966", "989648966", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_48.Failed", "box_Simple_Node_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_48_Player_EnterVehicle()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_40();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_48;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1106617121", "1106617121", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_48.Player_EnterVehicle", "box_Simple_Node_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_48_Player_ExitVehicle()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_89();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_48;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|730362063", "730362063", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_48.Player_ExitVehicle", "box_Simple_Node_89.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_48_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Deliver_Vehicle_CustomWarning_25();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_48;
    l1 = self.box_Brick_Deliver_Vehicle_CustomWarning_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1130631354", "1130631354", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_48.Success", "box_Brick_Deliver_Vehicle_CustomWarning_25.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_81_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_68();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|75862788", "75862788", "MIS_440_B10_MAIN", "box_OutputOrder_v2_81.Out", "box_Simple_Node_68.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_81_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_82();
    l0 = self.box_ProximityRadiusListener_v3_82;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|96217997", "96217997", "MIS_440_B10_MAIN", "box_OutputOrder_v2_81.Out", "box_ProximityRadiusListener_v3_82.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_81_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_85();
    l0 = self.box_ProximityRadiusListener_v3_85;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|385586593", "385586593", "MIS_440_B10_MAIN", "box_OutputOrder_v2_81.Out", "box_ProximityRadiusListener_v3_85.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetBoolean_v2_61_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_61_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_121;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|288865162", "288865162", "MIS_440_B10_MAIN", "box_SetBoolean_v2_61.Out", "box_MultipleOR_121.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_125_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_113;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|2033594193", "2033594193", "MIS_440_B10_MAIN", "box_Simple_Node_125.Out", "box_MultipleOR_113.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_OutputOrder_v2_8_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Deliver_Vehicle_CustomWarning_65();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|502202199", "502202199", "MIS_440_B10_MAIN", "box_OutputOrder_v2_8.Out", "box_Brick_Deliver_Vehicle_CustomWarning_65.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_8_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_47();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|230171953", "230171953", "MIS_440_B10_MAIN", "box_OutputOrder_v2_8.Out", "box_Simple_Node_47.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_64();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|120636242", "120636242", "MIS_440_B10_MAIN", "box_OutputOrder_v2_8.Out", "box_Simple_Node_64.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_92();
    l0 = self.box_ActivityInitialized_6;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1069793872", "1069793872", "MIS_440_B10_MAIN", "box_ActivityInitialized_6.Out", "box_OutputOrder_v2_92.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_88_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_31();
    l0 = self.box_EntityStatusListener_88;
    l1 = self.box_SpawnAI_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|893959796", "893959796", "MIS_440_B10_MAIN", "box_EntityStatusListener_88.Disabled", "box_SpawnAI_31.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_88_Loaded()
    local params, l0;
    params = self:OnEnter_box_EntityStatusListener_88();
    l0 = self.box_EntityStatusListener_88;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|912069648", "912069648", "MIS_440_B10_MAIN", "box_EntityStatusListener_88.Loaded", "box_EntityStatusListener_88.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_141_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_139();
    l0 = self.box_OnceOnly_v3_141;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|2826410", "2826410", "MIS_440_B10_MAIN", "box_OnceOnly_v3_141.Out", "box_Simple_Node_139.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_24_Failed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_21();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_24;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|361324913", "361324913", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_24.Failed", "box_Simple_Node_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_24_Player_EnterVehicle()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_40();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_24;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|574103096", "574103096", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_24.Player_EnterVehicle", "box_Simple_Node_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_24_Player_ExitVehicle()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_89();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_24;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1494708586", "1494708586", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_24.Player_ExitVehicle", "box_Simple_Node_89.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_24_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_54();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_24;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|489137937", "489137937", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_24.Success", "box_Simple_Node_54.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_79_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_22();
    l0 = self.box_EntityStatusListener_79;
    l1 = self.box_SpawnAI_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1781820050", "1781820050", "MIS_440_B10_MAIN", "box_EntityStatusListener_79.Disabled", "box_SpawnAI_22.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_79_Loaded()
    local params, l0;
    params = self:OnEnter_box_EntityStatusListener_79();
    l0 = self.box_EntityStatusListener_79;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|251252121", "251252121", "MIS_440_B10_MAIN", "box_EntityStatusListener_79.Loaded", "box_EntityStatusListener_79.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_138_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_81();
    l0 = self.box_OnceOnly_v3_138;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|755834020", "755834020", "MIS_440_B10_MAIN", "box_OnceOnly_v3_138.Out", "box_OutputOrder_v2_81.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_102_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_103();
    l0 = self.box_EntityStatusListener_102;
    l1 = self.box_SpawnAI_103;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|818225977", "818225977", "MIS_440_B10_MAIN", "box_EntityStatusListener_102.Disabled", "box_SpawnAI_103.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_102_Loaded()
    local params, l0;
    params = self:OnEnter_box_EntityStatusListener_102();
    l0 = self.box_EntityStatusListener_102;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1836886985", "1836886985", "MIS_440_B10_MAIN", "box_EntityStatusListener_102.Loaded", "box_EntityStatusListener_102.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_121_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_21();
    l0 = self.box_MultipleOR_121;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|845791137", "845791137", "MIS_440_B10_MAIN", "box_MultipleOR_121.Out", "box_Simple_Node_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_142_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_9();
    l0 = self.box_Delay_v5_142;
    l1 = self.box_DisplayCustomUIMsg_v5_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|652432220", "652432220", "MIS_440_B10_MAIN", "box_Delay_v5_142.TimeElapsed", "box_DisplayCustomUIMsg_v5_9.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_107_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_86();
    l0 = self.box_EntityStatusListener_107;
    l1 = self.box_ProximityTrigger_v3_86;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|916623682", "916623682", "MIS_440_B10_MAIN", "box_EntityStatusListener_107.Disabled", "box_ProximityTrigger_v3_86.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_107_Loaded()
    local params, l0;
    params = self:OnEnter_box_EntityStatusListener_107();
    l0 = self.box_EntityStatusListener_107;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1270935841", "1270935841", "MIS_440_B10_MAIN", "box_EntityStatusListener_107.Loaded", "box_EntityStatusListener_107.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_EntityStatusListener_59_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_12();
    l0 = self.box_EntityStatusListener_59;
    l1 = self.box_SpawnAI_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|783446971", "783446971", "MIS_440_B10_MAIN", "box_EntityStatusListener_59.Disabled", "box_SpawnAI_12.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_59_Loaded()
    local params, l0;
    params = self:OnEnter_box_EntityStatusListener_59();
    l0 = self.box_EntityStatusListener_59;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|652062116", "652062116", "MIS_440_B10_MAIN", "box_EntityStatusListener_59.Loaded", "box_EntityStatusListener_59.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_VehicleDamageListener_v2_122_Destroyed()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_122;
    l1 = self.box_MultipleOR_121;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|396287410", "396287410", "MIS_440_B10_MAIN", "box_VehicleDamageListener_v2_122.Destroyed", "box_MultipleOR_121.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VehicleDamageListener_v2_122_Enabled()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_122;
    l1 = self.box_MultipleOR_113;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|728942283", "728942283", "MIS_440_B10_MAIN", "box_VehicleDamageListener_v2_122.Enabled", "box_MultipleOR_113.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_EntityStatusListener_56_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_11();
    l0 = self.box_EntityStatusListener_56;
    l1 = self.box_CharacterLoadedIdListener_v2_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|603994201", "603994201", "MIS_440_B10_MAIN", "box_EntityStatusListener_56.Disabled", "box_CharacterLoadedIdListener_v2_11.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_56_Loaded()
    local params, l0;
    params = self:OnEnter_box_EntityStatusListener_56();
    l0 = self.box_EntityStatusListener_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1565568758", "1565568758", "MIS_440_B10_MAIN", "box_EntityStatusListener_56.Loaded", "box_EntityStatusListener_56.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_113_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_113;
    l1 = self.box_OnceOnly_v3_114;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1601266447", "1601266447", "MIS_440_B10_MAIN", "box_MultipleOR_113.Out", "box_OnceOnly_v3_114.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_57_Failed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_21();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_57;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|2139138780", "2139138780", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_57.Failed", "box_Simple_Node_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_57_Player_EnterVehicle()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_40();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_57;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1716693823", "1716693823", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_57.Player_EnterVehicle", "box_Simple_Node_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_57_Player_ExitVehicle()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_89();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_57;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|204238542", "204238542", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_57.Player_ExitVehicle", "box_Simple_Node_89.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_57_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_108();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_57;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1543986850", "1543986850", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_57.Success", "box_OutputOrder_v2_108.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_25_Failed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_21();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_25;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|360208496", "360208496", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_25.Failed", "box_Simple_Node_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_25_Player_EnterVehicle()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_40();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_25;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|2022543657", "2022543657", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_25.Player_EnterVehicle", "box_Simple_Node_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_25_Player_ExitVehicle()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_89();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_25;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|288152947", "288152947", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_25.Player_ExitVehicle", "box_Simple_Node_89.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_25_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_53();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_25;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1070075823", "1070075823", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_25.Success", "box_OutputOrder_v2_53.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_4_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_4;
    l1 = self.box_ActivityInitialized_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|374477045", "374477045", "MIS_440_B10_MAIN", "box_MultipleOR_4.Out", "box_ActivityInitialized_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_29_Failed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_21();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_29;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|668110042", "668110042", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_29.Failed", "box_Simple_Node_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_29_Player_EnterVehicle()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_40();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_29;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|707123675", "707123675", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_29.Player_EnterVehicle", "box_Simple_Node_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_29_Player_ExitVehicle()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_89();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_29;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|5368950", "5368950", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_29.Player_ExitVehicle", "box_Simple_Node_89.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_29_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Deliver_Vehicle_CustomWarning_28();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_29;
    l1 = self.box_Brick_Deliver_Vehicle_CustomWarning_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|644602199", "644602199", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_29.Success", "box_Brick_Deliver_Vehicle_CustomWarning_28.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SetEntity_v2_115_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_115_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_CoopActivePlayers_119;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|87251017", "87251017", "MIS_440_B10_MAIN", "box_SetEntity_v2_115.Out", "box_CoopActivePlayers_119.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_17_Failed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_21();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_17;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|686046599", "686046599", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_17.Failed", "box_Simple_Node_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_17_Player_EnterVehicle()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_40();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_17;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|291190013", "291190013", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_17.Player_EnterVehicle", "box_Simple_Node_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_17_Player_ExitVehicle()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_89();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_17;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|808679164", "808679164", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_17.Player_ExitVehicle", "box_Simple_Node_89.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_17_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Deliver_Vehicle_CustomWarning_13();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_17;
    l1 = self.box_Brick_Deliver_Vehicle_CustomWarning_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|368202927", "368202927", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_17.Success", "box_Brick_Deliver_Vehicle_CustomWarning_13.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_CharacterLoadedIdListener_v2_11_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_v2_11_LoadedIdReceived();
    params = self:OnEnter_box_AddActivityObjective_v2_93();
    l0 = self.box_CharacterLoadedIdListener_v2_11;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1122495079", "1122495079", "MIS_440_B10_MAIN", "box_CharacterLoadedIdListener_v2_11.LoadedIdReceived", "box_AddActivityObjective_v2_93.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NarrativeFade_111_FadedOut()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_110();
    l0 = self.box_NarrativeFade_111;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1734341347", "1734341347", "MIS_440_B10_MAIN", "box_NarrativeFade_111.FadedOut", "box_HealthModifier_v2_110.RemoveCritical", l0:GetLuaBox(), l1:GetLuaBox());
    -- RemoveCritical
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_63_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Deliver_Vehicle_CustomWarning_35();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1058219157", "1058219157", "MIS_440_B10_MAIN", "box_OutputOrder_v2_63.Out", "box_Brick_Deliver_Vehicle_CustomWarning_35.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_63_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_98();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1144899613", "1144899613", "MIS_440_B10_MAIN", "box_OutputOrder_v2_63.Out", "box_Simple_Node_98.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_139_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_96();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|915623593", "915623593", "MIS_440_B10_MAIN", "box_Simple_Node_139.Out", "box_OutputOrder_v2_96.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_114_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_8();
    l0 = self.box_OnceOnly_v3_114;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|675132345", "675132345", "MIS_440_B10_MAIN", "box_OnceOnly_v3_114.Out", "box_OutputOrder_v2_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_51_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_14();
    l0 = self.box_EntityStatusListener_51;
    l1 = self.box_SpawnAI_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|418061327", "418061327", "MIS_440_B10_MAIN", "box_EntityStatusListener_51.Disabled", "box_SpawnAI_14.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_51_Loaded()
    local params, l0;
    params = self:OnEnter_box_EntityStatusListener_51();
    l0 = self.box_EntityStatusListener_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|890869219", "890869219", "MIS_440_B10_MAIN", "box_EntityStatusListener_51.Loaded", "box_EntityStatusListener_51.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_84_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_45();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1131272284", "1131272284", "MIS_440_B10_MAIN", "box_OutputOrder_v2_84.Out", "box_EndActivityObjective_v2_45.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_84_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_82();
    l0 = self.box_ProximityRadiusListener_v3_82;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|736236978", "736236978", "MIS_440_B10_MAIN", "box_OutputOrder_v2_84.Out", "box_ProximityRadiusListener_v3_82.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_EndActivityObjective_v2_95_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_43();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1782613501", "1782613501", "MIS_440_B10_MAIN", "box_EndActivityObjective_v2_95.Out", "box_AddActivityObjective_v2_43.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_52_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_39();
    l0 = self.box_EntityStatusListener_52;
    l1 = self.box_SpawnAI_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|905337736", "905337736", "MIS_440_B10_MAIN", "box_EntityStatusListener_52.Disabled", "box_SpawnAI_39.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_52_Loaded()
    local params, l0;
    params = self:OnEnter_box_EntityStatusListener_52();
    l0 = self.box_EntityStatusListener_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1204551401", "1204551401", "MIS_440_B10_MAIN", "box_EntityStatusListener_52.Loaded", "box_EntityStatusListener_52.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_82_AllFar()
    self:OnExit_box_ProximityRadiusListener_v3_82_AllFar();
end;

function export:f_box_ProximityRadiusListener_v3_82_AllNear()
    self:OnExit_box_ProximityRadiusListener_v3_82_AllNear();
end;

function export:f_box_ProximityRadiusListener_v3_82_SomeoneFar()
    local params, l0, l1;
    self:OnExit_box_ProximityRadiusListener_v3_82_SomeoneFar();
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_83();
    l0 = self.box_ProximityRadiusListener_v3_82;
    l1 = self.box_DisplayCustomUIMsg_v5_83;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|620969150", "620969150", "MIS_440_B10_MAIN", "box_ProximityRadiusListener_v3_82.SomeoneFar", "box_DisplayCustomUIMsg_v5_83.Display", l0:GetLuaBox(), l1:GetLuaBox());
    -- Display
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_82_SomeoneNear()
    local params, l0, l1;
    self:OnExit_box_ProximityRadiusListener_v3_82_SomeoneNear();
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_83();
    l0 = self.box_ProximityRadiusListener_v3_82;
    l1 = self.box_DisplayCustomUIMsg_v5_83;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1157691685", "1157691685", "MIS_440_B10_MAIN", "box_ProximityRadiusListener_v3_82.SomeoneNear", "box_DisplayCustomUIMsg_v5_83.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_46_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_16();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|790352810", "790352810", "MIS_440_B10_MAIN", "box_OutputOrder_v2_46.Out", "box_MissionBlockLayer_16.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_46_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__MIS440_B10_DialogueManager_50();
    l0 = self.box__MIS440_B10_DialogueManager_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1670522002", "1670522002", "MIS_440_B10_MAIN", "box_OutputOrder_v2_46.Out", "box__MIS440_B10_DialogueManager_50.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_EntityStatusListener_74_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_18();
    l0 = self.box_EntityStatusListener_74;
    l1 = self.box_SpawnAI_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|415151621", "415151621", "MIS_440_B10_MAIN", "box_EntityStatusListener_74.Enabled", "box_SpawnAI_18.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_74_Loaded()
    local params, l0;
    params = self:OnEnter_box_EntityStatusListener_74();
    l0 = self.box_EntityStatusListener_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1457229233", "1457229233", "MIS_440_B10_MAIN", "box_EntityStatusListener_74.Loaded", "box_EntityStatusListener_74.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_EndActivityObjective_v2_45_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_46();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1393253453", "1393253453", "MIS_440_B10_MAIN", "box_EndActivityObjective_v2_45.Out", "box_OutputOrder_v2_46.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_124_OnePlayer()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_125();
    l0 = self.box_CoopActivePlayers_124;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|517017561", "517017561", "MIS_440_B10_MAIN", "box_CoopActivePlayers_124.OnePlayer", "box_Simple_Node_125.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_124_PlayerAdded()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_124;
    l1 = self.box_MultipleOR_123;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|824551798", "824551798", "MIS_440_B10_MAIN", "box_CoopActivePlayers_124.PlayerAdded", "box_MultipleOR_123.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_CoopActivePlayers_124_TwoPlayers()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_124;
    l1 = self.box_MultipleOR_123;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1740152198", "1740152198", "MIS_440_B10_MAIN", "box_CoopActivePlayers_124.TwoPlayers", "box_MultipleOR_123.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_123_Out()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleDamageListener_v2_122();
    l0 = self.box_MultipleOR_123;
    l1 = self.box_VehicleDamageListener_v2_122;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|941925335", "941925335", "MIS_440_B10_MAIN", "box_MultipleOR_123.Out", "box_VehicleDamageListener_v2_122.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_60_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_58();
    l0 = self.box_EntityStatusListener_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|196787551", "196787551", "MIS_440_B10_MAIN", "box_OutputOrder_v2_60.Out", "box_EntityStatusListener_58.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_60_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_59();
    l0 = self.box_EntityStatusListener_59;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|274897355", "274897355", "MIS_440_B10_MAIN", "box_OutputOrder_v2_60.Out", "box_EntityStatusListener_59.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_60_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_51();
    l0 = self.box_EntityStatusListener_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|2023498083", "2023498083", "MIS_440_B10_MAIN", "box_OutputOrder_v2_60.Out", "box_EntityStatusListener_51.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_60_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_52();
    l0 = self.box_EntityStatusListener_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|744925286", "744925286", "MIS_440_B10_MAIN", "box_OutputOrder_v2_60.Out", "box_EntityStatusListener_52.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Compare_Entity_72_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_115();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1658603828", "1658603828", "MIS_440_B10_MAIN", "box_Compare_Entity_72.Equal", "box_SetEntity_v2_115.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_72_NotEqual()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_116();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|712259638", "712259638", "MIS_440_B10_MAIN", "box_Compare_Entity_72.NotEqual", "box_Compare_Entity_116.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_92_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_56();
    l0 = self.box_EntityStatusListener_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|982567401", "982567401", "MIS_440_B10_MAIN", "box_OutputOrder_v2_92.Out", "box_EntityStatusListener_56.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_92_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GunsForHireSystemModifier_91();
    l0 = self.box_GunsForHireSystemModifier_91;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1353511836", "1353511836", "MIS_440_B10_MAIN", "box_OutputOrder_v2_92.Out", "box_GunsForHireSystemModifier_91.DisableGFHSystem", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableGFHSystem
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_92_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_130();
    l0 = self.box_EntityStatusListener_130;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|946132280", "946132280", "MIS_440_B10_MAIN", "box_OutputOrder_v2_92.Out", "box_EntityStatusListener_130.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_35_Failed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_21();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_35;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1872846625", "1872846625", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_35.Failed", "box_Simple_Node_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_35_Player_EnterVehicle()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_40();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_35;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|712552866", "712552866", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_35.Player_EnterVehicle", "box_Simple_Node_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_35_Player_ExitVehicle()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_89();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_35;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|2006999225", "2006999225", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_35.Player_ExitVehicle", "box_Simple_Node_89.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_35_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Deliver_Vehicle_CustomWarning_37();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_35;
    l1 = self.box_Brick_Deliver_Vehicle_CustomWarning_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1519151841", "1519151841", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_35.Success", "box_Brick_Deliver_Vehicle_CustomWarning_37.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_VehicleListener_v3_62_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_9();
    l0 = self.box_VehicleListener_v3_62;
    l1 = self.box_DisplayCustomUIMsg_v5_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|881747945", "881747945", "MIS_440_B10_MAIN", "box_VehicleListener_v3_62.Enabled", "box_DisplayCustomUIMsg_v5_9.Display", l0:GetLuaBox(), l1:GetLuaBox());
    -- Display
    l1:Exec(0, params);
end;

function export:f_box_VehicleListener_v3_62_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_142();
    l0 = self.box_VehicleListener_v3_62;
    l1 = self.box_Delay_v5_142;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|406534184", "406534184", "MIS_440_B10_MAIN", "box_VehicleListener_v3_62.OnSit", "box_Delay_v5_142.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Compare_Boolean_75_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_v2_76();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|515359030", "515359030", "MIS_440_B10_MAIN", "box_Compare_Boolean_75.A_is_False", "box_ActivityRetry_v2_76.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_75_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_v2_5();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|498774007", "498774007", "MIS_440_B10_MAIN", "box_Compare_Boolean_75.A_is_True", "box_ActivityRetry_v2_5.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleModifier_v2_132_OnSetAsUsable()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_133();
    l0 = self.box_UniversalInteractionModifier_v2_133;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1117945725", "1117945725", "MIS_440_B10_MAIN", "box_VehicleModifier_v2_132.OnSetAsUsable", "box_UniversalInteractionModifier_v2_133.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_23_Failed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_21();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_23;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|246785965", "246785965", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_23.Failed", "box_Simple_Node_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_23_Player_EnterVehicle()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_40();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_23;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1231001604", "1231001604", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_23.Player_EnterVehicle", "box_Simple_Node_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_23_Player_ExitVehicle()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_89();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_23;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1042511840", "1042511840", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_23.Player_ExitVehicle", "box_Simple_Node_89.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_23_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_23;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|972559130", "972559130", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_23.Success", "box_OutputOrder_v2_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_16_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_72();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1154113271", "1154113271", "MIS_440_B10_MAIN", "box_MissionBlockLayer_16.Activated", "box_Compare_Entity_72.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_26_Failed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_21();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_26;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1204740751", "1204740751", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_26.Failed", "box_Simple_Node_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_26_Player_EnterVehicle()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_40();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_26;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|125764360", "125764360", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_26.Player_EnterVehicle", "box_Simple_Node_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_26_Player_ExitVehicle()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_89();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_26;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1698110599", "1698110599", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_26.Player_ExitVehicle", "box_Simple_Node_89.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_CustomWarning_26_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Deliver_Vehicle_CustomWarning_57();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_26;
    l1 = self.box_Brick_Deliver_Vehicle_CustomWarning_57;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1736765766", "1736765766", "MIS_440_B10_MAIN", "box_Brick_Deliver_Vehicle_CustomWarning_26.Success", "box_Brick_Deliver_Vehicle_CustomWarning_57.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_108_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Deliver_Vehicle_CustomWarning_24();
    l0 = self.box_Brick_Deliver_Vehicle_CustomWarning_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|360704460", "360704460", "MIS_440_B10_MAIN", "box_OutputOrder_v2_108.Out", "box_Brick_Deliver_Vehicle_CustomWarning_24.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_108_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_106();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|372956732", "372956732", "MIS_440_B10_MAIN", "box_OutputOrder_v2_108.Out", "box_Simple_Node_106.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ExitZoneWarningListener_v3_36_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_v2_44();
    l0 = self.box_ExitZoneWarningListener_v3_36;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|657131060", "657131060", "MIS_440_B10_MAIN", "box_ExitZoneWarningListener_v3_36.FailingZoneEntered", "box_ActivityRetry_v2_44.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_119_OnePlayer()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_119;
    l1 = self.box_MultipleOR_113;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|28960961", "28960961", "MIS_440_B10_MAIN", "box_CoopActivePlayers_119.OnePlayer", "box_MultipleOR_113.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CoopActivePlayers_119_PlayerAdded()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_119;
    l1 = self.box_MultipleOR_120;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|528387822", "528387822", "MIS_440_B10_MAIN", "box_CoopActivePlayers_119.PlayerAdded", "box_MultipleOR_120.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_CoopActivePlayers_119_TwoPlayers()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_119;
    l1 = self.box_MultipleOR_120;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|544768247", "544768247", "MIS_440_B10_MAIN", "box_CoopActivePlayers_119.TwoPlayers", "box_MultipleOR_120.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:OnEnter_box_Simple_Node_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_99");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|@003_Success");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_99_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_105()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_105");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|@006_Success");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_105_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_106()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_106");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|@008_Success");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_106_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_98");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|@013_Success");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_98_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_101");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|@016_Success");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_101_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|@ContinueNode_001");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_54_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_112()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_112");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|@GFH_Enable");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_112_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|@In_Vehicle");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_40_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|@NickRye_DistanceMonitor");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_68_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_89");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|@Out_Vehicle");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_89_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|@StopWarning");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_47_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|@test");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|@VehicleDestroyed");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_21_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|11957730");
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
                [0] = self.f_box_OutputOrder_v2_77_Out_0,
                [1] = self.f_box_OutputOrder_v2_77_Out_1,
                [2] = self.f_box_OutputOrder_v2_77_Out_2,
                [3] = self.f_box_OutputOrder_v2_77_Out_3,
                [4] = self.f_box_OutputOrder_v2_77_Out_4,
                [5] = self.f_box_OutputOrder_v2_77_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_73()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109016525699584425",
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|21472316");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_2_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_96");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|32271677");
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
                [0] = self.f_box_OutputOrder_v2_96_Out_0,
                [1] = self.f_box_OutputOrder_v2_96_Out_1,
                [2] = self.f_box_OutputOrder_v2_96_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_TakeControl_Vehicle_Specific_v2_34()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = true,
        -- bRequiresAllPlayers,
        [1] = false,
        -- bRequiresObjective,
        [2] = false,
        -- e_MobileObjectiveMarker,
        [3] = "2107644896648109389",
        -- e_Vehicle,
        [4] = self.eDeliverPlane,
        -- Objective,
        [5] = {
            section = "Objectives",
            item = "MIS_440_B10_OBJ2",
            id = "976499",
        },
        -- opt_FailReason,
        [6] = {
            section = "BRICK_Steal_Vehicle",
            item = "BRICK_Steal_Vehicle_FAIL",
            id = "376563",
        },
        -- opt_MarkerBone,
        [7] = "pilot_sitpoint",
    };
    return params;
end;

function export:OnEnter_box_Brick_Follow_NPC_Vehicle_v6_66()
    local params;
    params = {
        -- bRequiresObjective,
        [0] = false,
        -- Destination,
        [1] = "2109015863731436081",
        -- fDistanceFail,
        [2] = 100,
        -- fDistanceSuccess,
        [3] = 25,
        -- fDistanceWarning,
        [4] = 75,
        -- FollowTarget,
        [5] = self.eNickRye,
        -- IsPersistentCharacter,
        [6] = true,
        -- oObjective,
        [7] = {
            section = "LD Gameplay Bricks",
            item = "BRICK_Follow_Target",
            id = "373014",
        },
        -- opt_Detection_Group,
        [8] = "#991E38B9",
        -- oWarningMsg,
        [10] = {
            section = "Objectives",
            item = "MIS_440_B10_WARN3.1",
            id = "1021712",
        },
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|63596708");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_71_Out,
    });
    params = {
        -- Entity,
        [0] = "2108144223766187517",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|64947932");
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

function export:OnEnter_box_OutputOrder_v2_135()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_135");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|81562893");
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
                [0] = self.f_box_OutputOrder_v2_135_Out_0,
                [1] = self.f_box_OutputOrder_v2_135_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_103()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109483776682785125",
    };
    return params;
end;

function export:OnEnter_box_Brick_Deliver_Vehicle_CustomWarning_15()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bDisplayVehicleHealth,
        [1] = true,
        -- bMustExitVehicle,
        [2] = false,
        -- bRequiresObjective,
        [3] = true,
        -- eTarget,
        [4] = "2107643608503969877",
        -- eTargetMarker,
        [5] = "2107643608501872719",
        -- eVehicle,
        [6] = self.eDeliverPlane,
        -- eVehicleMarker,
        [7] = self.eDeliverMarker,
        -- fDistanceFromTarget,
        [8] = 5,
        -- fWarningDistance,
        [9] = 5,
        -- isTargetTrigger,
        [10] = true,
        -- Objective,
        [11] = {
            section = "Objectives",
            item = "MIS_440_B10_OBJ",
            id = "961093",
        },
        -- opt_FailReason,
        [12] = {
            section = "BRICK_Deliver_Vehicle",
            item = "BRICK_Deliver_VehicleHealth",
            id = "432250",
        },
        -- oWarningMsg,
        [13] = {
            section = "Objectives",
            item = "MIS_440_WARN_Exit",
            id = "1021709",
        },
    };
    return params;
end;

function export:OnEnter_box_Brick_Deliver_Vehicle_CustomWarning_13()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bDisplayVehicleHealth,
        [1] = true,
        -- bMustExitVehicle,
        [2] = false,
        -- bRequiresObjective,
        [3] = true,
        -- eTarget,
        [4] = "2107647247517843850",
        -- eTargetMarker,
        [5] = "2107647247515746692",
        -- eVehicle,
        [6] = self.eDeliverPlane,
        -- eVehicleMarker,
        [7] = self.eDeliverMarker,
        -- fDistanceFromTarget,
        [8] = 5,
        -- fWarningDistance,
        [9] = 5,
        -- isTargetTrigger,
        [10] = true,
        -- Objective,
        [11] = {
            section = "Objectives",
            item = "MIS_440_B10_OBJ",
            id = "961093",
        },
        -- opt_FailReason,
        [12] = {
            section = "BRICK_Deliver_Vehicle",
            item = "BRICK_Deliver_VehicleHealth",
            id = "432250",
        },
        -- oWarningMsg,
        [13] = {
            section = "MIS_440",
            item = "MIS_440_WARN_Exit",
            id = "1021709",
        },
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|115479131");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_43_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_440_B11_OBJ2",
            id = "1029668",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_Brick_Deliver_Vehicle_CustomWarning_65()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bDisplayVehicleHealth,
        [1] = true,
        -- bMustExitVehicle,
        [2] = false,
        -- bRequiresObjective,
        [3] = true,
        -- eTarget,
        [4] = "2107643602531280970",
        -- eTargetMarker,
        [5] = "2107643602529183812",
        -- eVehicle,
        [6] = self.eDeliverPlane,
        -- eVehicleMarker,
        [7] = self.eDeliverMarker,
        -- fDistanceFromTarget,
        [8] = 5,
        -- fWarningDistance,
        [9] = 5,
        -- isTargetTrigger,
        [10] = true,
        -- Objective,
        [11] = {
            section = "Objectives",
            item = "MIS_440_B10_OBJ",
            id = "961093",
        },
        -- opt_FailReason,
        [12] = {
            section = "BRICK_Deliver_Vehicle",
            item = "BRICK_Deliver_VehicleHealth",
            id = "432250",
        },
        -- oWarningMsg,
        [13] = {
            section = "Objectives",
            item = "MIS_440_WARN_Exit",
            id = "1021709",
        },
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_137()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_134()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_134");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|242843115");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_134_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_440_B10_OBJ",
            id = "961093",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_Brick_Deliver_Vehicle_CustomWarning_27()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bDisplayVehicleHealth,
        [1] = true,
        -- bMustExitVehicle,
        [2] = false,
        -- bRequiresObjective,
        [3] = true,
        -- eTarget,
        [4] = "2107647306814816706",
        -- eTargetMarker,
        [5] = "2107647306812719548",
        -- eVehicle,
        [6] = self.eDeliverPlane,
        -- eVehicleMarker,
        [7] = self.eDeliverMarker,
        -- fDistanceFromTarget,
        [8] = 5,
        -- fWarningDistance,
        [9] = 5,
        -- isTargetTrigger,
        [10] = true,
        -- Objective,
        [11] = {
            section = "Objectives",
            item = "MIS_440_B10_OBJ",
            id = "961093",
        },
        -- opt_FailReason,
        [12] = {
            section = "BRICK_Deliver_Vehicle",
            item = "BRICK_Deliver_VehicleHealth",
            id = "432250",
        },
        -- oWarningMsg,
        [13] = {
            section = "MIS_440",
            item = "MIS_440_WARN_Exit",
            id = "1021709",
        },
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_12()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109015997882055294",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_94");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|341485981");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_94_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2107644896648109389",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_440_B10_OBJ2",
            id = "976499",
        },
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_80()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109016667171361605",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_117()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_117");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|346307173");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_117_Out,
    });
    params = {
        -- Entity,
        [0] = "2109302843191084836",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_136()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_136");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|370255463");
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
                [0] = self.f_box_OutputOrder_v2_136_Out_0,
                [1] = self.f_box_OutputOrder_v2_136_Out_1,
                [2] = self.f_box_OutputOrder_v2_136_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_116()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_116");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|389148901");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_116_Equal,
    });
    params = {
        -- Entity1,
        [0] = self.eDeliverPlane,
        -- Entity2,
        [1] = "2109182128716552410",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|400556216");
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
                [0] = self.f_box_OutputOrder_v2_3_Out_0,
                [1] = self.f_box_OutputOrder_v2_3_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_87()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109458397714719929",
    };
    return params;
end;

function export:OnEnter_box_Brick_Deliver_Vehicle_CustomWarning_33()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bDisplayVehicleHealth,
        [1] = true,
        -- bMustExitVehicle,
        [2] = false,
        -- bRequiresObjective,
        [3] = true,
        -- eTarget,
        [4] = "2107647673468220875",
        -- eTargetMarker,
        [5] = "2107647673466123717",
        -- eVehicle,
        [6] = self.eDeliverPlane,
        -- eVehicleMarker,
        [7] = self.eDeliverMarker,
        -- fDistanceFromTarget,
        [8] = 5,
        -- fWarningDistance,
        [9] = 5,
        -- isTargetTrigger,
        [10] = true,
        -- Objective,
        [11] = {
            section = "Objectives",
            item = "MIS_440_B10_OBJ",
            id = "961093",
        },
        -- opt_FailReason,
        [12] = {
            section = "BRICK_Deliver_Vehicle",
            item = "BRICK_Deliver_VehicleHealth",
            id = "432250",
        },
        -- oWarningMsg,
        [13] = {
            section = "MIS_440",
            item = "MIS_440_WARN_Exit",
            id = "1021709",
        },
    };
    return params;
end;

function export:OnEnter_box_Brick_Deliver_Vehicle_CustomWarning_37()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bDisplayVehicleHealth,
        [1] = true,
        -- bMustExitVehicle,
        [2] = false,
        -- bRequiresObjective,
        [3] = true,
        -- eTarget,
        [4] = "2109471181127039407",
        -- eTargetMarker,
        [5] = "2109471181122845099",
        -- eVehicle,
        [6] = self.eDeliverPlane,
        -- eVehicleMarker,
        [7] = self.eDeliverMarker,
        -- fDistanceFromTarget,
        [8] = 5,
        -- fWarningDistance,
        [9] = 5,
        -- isTargetTrigger,
        [10] = true,
        -- Objective,
        [11] = {
            section = "Objectives",
            item = "MIS_440_B10_OBJ",
            id = "961093",
        },
        -- opt_FailReason,
        [12] = {
            section = "BRICK_Deliver_Vehicle",
            item = "BRICK_Deliver_VehicleHealth",
            id = "432250",
        },
        -- oWarningMsg,
        [13] = {
            section = "MIS_440",
            item = "MIS_440_WARN_Exit",
            id = "1021709",
        },
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|505857500");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|514341313");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_70_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_70_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_70_Out,
    });
    params = {
        -- pawn,
        [0] = self.eNickRye,
    };
    return params;
end;

function export:OnEnter_box_Brick_Deliver_Vehicle_CustomWarning_90()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bDisplayVehicleHealth,
        [1] = true,
        -- bMustExitVehicle,
        [2] = false,
        -- bRequiresObjective,
        [3] = true,
        -- eTarget,
        [4] = "2109084123237755572",
        -- eTargetMarker,
        [5] = "2109084123235658416",
        -- eVehicle,
        [6] = self.eDeliverPlane,
        -- eVehicleMarker,
        [7] = self.eDeliverMarker,
        -- fDistanceFromTarget,
        [8] = 5,
        -- fWarningDistance,
        [9] = 5,
        -- isTargetTrigger,
        [10] = true,
        -- Objective,
        [11] = {
            section = "Objectives",
            item = "MIS_440_B10_OBJ",
            id = "961093",
        },
        -- opt_FailReason,
        [12] = {
            section = "BRICK_Deliver_Vehicle",
            item = "BRICK_Deliver_VehicleHealth",
            id = "432250",
        },
        -- oWarningMsg,
        [13] = {
            section = "MIS_440",
            item = "MIS_440_WARN_Exit",
            id = "1021709",
        },
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_129()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_38()
    local params;
    params = {
        -- archetypeId,
        [0] = "9015352231971880",
        -- autoDisable,
        [1] = false,
        -- pawns,
        [2] = self.eNickRye,
        -- vehicleTypeFilter,
        [5] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_109()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_109");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|548917228");
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
                [0] = self.f_box_OutputOrder_v2_109_Out_0,
                [1] = self.f_box_OutputOrder_v2_109_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_19()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109016525699584425",
    };
    return params;
end;

function export:OnEnter_box_Brick_Deliver_Vehicle_CustomWarning_28()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bDisplayVehicleHealth,
        [1] = true,
        -- bMustExitVehicle,
        [2] = false,
        -- bRequiresObjective,
        [3] = true,
        -- eTarget,
        [4] = "2107647375836283364",
        -- eTargetMarker,
        [5] = "2107647375836283358",
        -- eVehicle,
        [6] = self.eDeliverPlane,
        -- eVehicleMarker,
        [7] = self.eDeliverMarker,
        -- fDistanceFromTarget,
        [8] = 5,
        -- fWarningDistance,
        [9] = 5,
        -- isTargetTrigger,
        [10] = true,
        -- Objective,
        [11] = {
            section = "Objectives",
            item = "MIS_440_B10_OBJ",
            id = "961093",
        },
        -- opt_FailReason,
        [12] = {
            section = "BRICK_Deliver_Vehicle",
            item = "BRICK_Deliver_VehicleHealth",
            id = "432250",
        },
        -- oWarningMsg,
        [13] = {
            section = "MIS_440",
            item = "MIS_440_WARN_Exit",
            id = "1021709",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_104");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|632850831");
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

function export:OnEnter_box_EntityStatusListener_130()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109182128716552410",
    };
    return params;
end;

function export:OnEnter_box_VehicleDamageListener_v2_126()
    local params;
    params = {
        -- Vehicle,
        [0] = "2108144223766187517",
    };
    return params;
end;

function export:OnEnter_box_VehicleDamageListener_v2_118()
    local params;
    params = {
        -- Vehicle,
        [0] = "2109182128716552410",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_85()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.PlayerGroup,
        -- farZone,
        [2] = 120,
        -- id2,
        [3] = self.eDeliverPlane,
        -- nearZone,
        [4] = 119,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|778630715");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_1_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_58()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = false,
        -- entityId,
        [2] = "2109016006713162417",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_93");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|834036477");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_93_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_440_B10_OBJ2",
            id = "976499",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_Brick_Deliver_Vehicle_CustomWarning_30()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bDisplayVehicleHealth,
        [1] = true,
        -- bMustExitVehicle,
        [2] = false,
        -- bRequiresObjective,
        [3] = true,
        -- eTarget,
        [4] = "2107647309492879821",
        -- eTargetMarker,
        [5] = "2107647309490782663",
        -- eVehicle,
        [6] = self.eDeliverPlane,
        -- eVehicleMarker,
        [7] = self.eDeliverMarker,
        -- fDistanceFromTarget,
        [8] = 5,
        -- fWarningDistance,
        [9] = 5,
        -- isTargetTrigger,
        [10] = true,
        -- Objective,
        [11] = {
            section = "Objectives",
            item = "MIS_440_B10_OBJ",
            id = "961093",
        },
        -- opt_FailReason,
        [12] = {
            section = "BRICK_Deliver_Vehicle",
            item = "BRICK_Deliver_VehicleHealth",
            id = "432250",
        },
        -- oWarningMsg,
        [13] = {
            section = "MIS_440",
            item = "MIS_440_WARN_Exit",
            id = "1021709",
        },
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_110()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_110");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|847248526");
    l0:SetConnections({
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = "#ED455357",
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_100");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|881161763");
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
                [0] = self.f_box_OutputOrder_v2_100_Out_0,
                [1] = self.f_box_OutputOrder_v2_100_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Deliver_Vehicle_CustomWarning_41()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bDisplayVehicleHealth,
        [1] = true,
        -- bMustExitVehicle,
        [2] = false,
        -- bRequiresObjective,
        [3] = true,
        -- eTarget,
        [4] = "2109471189203171768",
        -- eTargetMarker,
        [5] = "2109471189198977460",
        -- eVehicle,
        [6] = self.eDeliverPlane,
        -- eVehicleMarker,
        [7] = self.eDeliverMarker,
        -- fDistanceFromTarget,
        [8] = 5,
        -- fWarningDistance,
        [9] = 5,
        -- isTargetTrigger,
        [10] = true,
        -- Objective,
        [11] = {
            section = "Objectives",
            item = "MIS_440_B10_OBJ",
            id = "961093",
        },
        -- opt_FailReason,
        [12] = {
            section = "BRICK_Deliver_Vehicle",
            item = "BRICK_Deliver_VehicleHealth",
            id = "432250",
        },
        -- oWarningMsg,
        [13] = {
            section = "MIS_440",
            item = "MIS_440_WARN_Exit",
            id = "1021709",
        },
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|938642898");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "MIS_440",
            item = "MIS_440_FAIL",
            id = "1021711",
        },
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_86()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109844481611173955",
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v5_83()
    local params, l0;
    l0 = self.box_ProximityRadiusListener_v3_82;
    params = {
        -- MessageId,
        [0] = {
            section = "BRICK_Steal_Vehicle",
            item = "BRICK_Steal_Vehicle_WARNING",
            id = "592198",
        },
        -- MessageType,
        [1] = 1,
        -- pawns,
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_Brick_Deliver_Vehicle_CustomWarning_48()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bDisplayVehicleHealth,
        [1] = true,
        -- bMustExitVehicle,
        [2] = false,
        -- bRequiresObjective,
        [3] = true,
        -- eTarget,
        [4] = "2108904302243253572",
        -- eTargetMarker,
        [5] = "2108904302241156416",
        -- eVehicle,
        [6] = self.eDeliverPlane,
        -- eVehicleMarker,
        [7] = self.eDeliverMarker,
        -- fDistanceFromTarget,
        [8] = 5,
        -- fWarningDistance,
        [9] = 5,
        -- isTargetTrigger,
        [10] = true,
        -- Objective,
        [11] = {
            section = "Objectives",
            item = "MIS_440_B10_OBJ",
            id = "961093",
        },
        -- opt_FailReason,
        [12] = {
            section = "BRICK_Deliver_Vehicle",
            item = "BRICK_Deliver_VehicleHealth",
            id = "432250",
        },
        -- oWarningMsg,
        [13] = {
            section = "MIS_440",
            item = "MIS_440_WARN_Exit",
            id = "1021709",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1036649728");
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
                [0] = self.f_box_OutputOrder_v2_81_Out_0,
                [1] = self.f_box_OutputOrder_v2_81_Out_1,
                [2] = self.f_box_OutputOrder_v2_81_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1039327269");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_61_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_125()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_125");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1060983475");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_125_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1108629990");
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
                [0] = self.f_box_OutputOrder_v2_8_Out_0,
                [1] = self.f_box_OutputOrder_v2_8_Out_1,
                [2] = self.f_box_OutputOrder_v2_8_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_131()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_131");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1165957163");
    l0:SetConnections({
    });
    params = {
        -- targets,
        [0] = "2109182128716552410",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_18()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109457845230509616",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_88()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109458397704234159",
    };
    return params;
end;

function export:OnEnter_box_Brick_Deliver_Vehicle_CustomWarning_24()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bDisplayVehicleHealth,
        [1] = true,
        -- bMustExitVehicle,
        [2] = false,
        -- bRequiresObjective,
        [3] = true,
        -- eTarget,
        [4] = "2107647304172405175",
        -- eTargetMarker,
        [5] = "2107647304172405169",
        -- eVehicle,
        [6] = self.eDeliverPlane,
        -- eVehicleMarker,
        [7] = self.eDeliverMarker,
        -- fDistanceFromTarget,
        [8] = 5,
        -- fWarningDistance,
        [9] = 5,
        -- isTargetTrigger,
        [10] = true,
        -- Objective,
        [11] = {
            section = "Objectives",
            item = "MIS_440_B10_OBJ",
            id = "961093",
        },
        -- opt_FailReason,
        [12] = {
            section = "BRICK_Deliver_Vehicle",
            item = "BRICK_Deliver_VehicleHealth",
            id = "432250",
        },
        -- oWarningMsg,
        [13] = {
            section = "MIS_440",
            item = "MIS_440_WARN_Exit",
            id = "1021709",
        },
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_79()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109016376579494542",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_102()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109483776682785125",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_20()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109016667171361605",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_127()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_127");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1308697695");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "BRICK_Deliver_Vehicle",
            item = "BRICK_Deliver_Fail",
            id = "432252",
        },
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1323241968");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "MIS_440_FAIL_NICK",
            id = "1021777",
        },
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_97()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "3358431012",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1383163490");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "BRICK_Deliver_Vehicle",
            item = "BRICK_Deliver_Fail",
            id = "432252",
        },
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_142()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_107()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109844481611173955",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_59()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109015997882055294",
    };
    return params;
end;

function export:OnEnter_box_VehicleDamageListener_v2_122()
    local params;
    params = {
        -- Vehicle,
        [0] = "2108144223766187517",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_140()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_140");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1410186024");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_56()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108144223766187517",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_39()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109067374670949628",
    };
    return params;
end;

function export:OnEnter_box_Brick_Deliver_Vehicle_CustomWarning_57()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bDisplayVehicleHealth,
        [1] = true,
        -- bMustExitVehicle,
        [2] = false,
        -- bRequiresObjective,
        [3] = true,
        -- eTarget,
        [4] = "2107647258064421291",
        -- eTargetMarker,
        [5] = "2107647258062324133",
        -- eVehicle,
        [6] = self.eDeliverPlane,
        -- eVehicleMarker,
        [7] = self.eDeliverMarker,
        -- fDistanceFromTarget,
        [8] = 5,
        -- fWarningDistance,
        [9] = 5,
        -- isTargetTrigger,
        [10] = true,
        -- Objective,
        [11] = {
            section = "Objectives",
            item = "MIS_440_B10_OBJ",
            id = "961093",
        },
        -- opt_FailReason,
        [12] = {
            section = "BRICK_Deliver_Vehicle",
            item = "BRICK_Deliver_VehicleHealth",
            id = "432250",
        },
        -- oWarningMsg,
        [13] = {
            section = "MIS_440",
            item = "MIS_440_WARN_Exit",
            id = "1021709",
        },
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_133()
    local params;
    params = {
        -- usableEntity,
        [4] = "2109182128716552410",
    };
    return params;
end;

function export:OnEnter_box_Brick_Deliver_Vehicle_CustomWarning_25()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bDisplayVehicleHealth,
        [1] = true,
        -- bMustExitVehicle,
        [2] = false,
        -- bRequiresObjective,
        [3] = true,
        -- eTarget,
        [4] = "2107647251926057365",
        -- eTargetMarker,
        [5] = "2107647251923960207",
        -- eVehicle,
        [6] = self.eDeliverPlane,
        -- eVehicleMarker,
        [7] = self.eDeliverMarker,
        -- fDistanceFromTarget,
        [8] = 5,
        -- fWarningDistance,
        [9] = 5,
        -- isTargetTrigger,
        [10] = true,
        -- Objective,
        [11] = {
            section = "Objectives",
            item = "MIS_440_B10_OBJ",
            id = "961093",
        },
        -- opt_FailReason,
        [12] = {
            section = "BRICK_Deliver_Vehicle",
            item = "BRICK_Deliver_VehicleHealth",
            id = "432250",
        },
        -- oWarningMsg,
        [13] = {
            section = "MIS_440",
            item = "MIS_440_WARN_Exit",
            id = "1021709",
        },
    };
    return params;
end;

function export:OnEnter_box_Brick_Deliver_Vehicle_CustomWarning_29()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bDisplayVehicleHealth,
        [1] = true,
        -- bMustExitVehicle,
        [2] = false,
        -- bRequiresObjective,
        [3] = true,
        -- eTarget,
        [4] = "2107647327075402200",
        -- eTargetMarker,
        [5] = "2107647327073305042",
        -- eVehicle,
        [6] = self.eDeliverPlane,
        -- eVehicleMarker,
        [7] = self.eDeliverMarker,
        -- fDistanceFromTarget,
        [8] = 5,
        -- fWarningDistance,
        [9] = 5,
        -- isTargetTrigger,
        [10] = true,
        -- Objective,
        [11] = {
            section = "Objectives",
            item = "MIS_440_B10_OBJ",
            id = "961093",
        },
        -- opt_FailReason,
        [12] = {
            section = "BRICK_Deliver_Vehicle",
            item = "BRICK_Deliver_VehicleHealth",
            id = "432250",
        },
        -- oWarningMsg,
        [13] = {
            section = "MIS_440",
            item = "MIS_440_WARN_Exit",
            id = "1021709",
        },
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_115()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_115");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1570676309");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_115_Out,
    });
    params = {
        -- Entity,
        [0] = "2107633292202240035",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1590088884");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "BRICK_Deliver_Vehicle",
            item = "BRICK_Deliver_VehicleDestroyed",
            id = "432249",
        },
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_Brick_Deliver_Vehicle_CustomWarning_17()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bDisplayVehicleHealth,
        [1] = true,
        -- bMustExitVehicle,
        [2] = false,
        -- bRequiresObjective,
        [3] = true,
        -- eTarget,
        [4] = "2107643725309044848",
        -- eTargetMarker,
        [5] = "2107643725306947690",
        -- eVehicle,
        [6] = self.eDeliverPlane,
        -- eVehicleMarker,
        [7] = self.eDeliverMarker,
        -- fDistanceFromTarget,
        [8] = 5,
        -- fWarningDistance,
        [9] = 5,
        -- isTargetTrigger,
        [10] = true,
        -- Objective,
        [11] = {
            section = "Objectives",
            item = "MIS_440_B10_OBJ",
            id = "961093",
        },
        -- opt_FailReason,
        [12] = {
            section = "BRICK_Deliver_Vehicle",
            item = "BRICK_Deliver_VehicleHealth",
            id = "432250",
        },
        -- oWarningMsg,
        [13] = {
            section = "MIS_440",
            item = "MIS_440_WARN_Exit",
            id = "1021709",
        },
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_11()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015184054185563",
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_111()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1664646948");
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

function export:OnEnter_box_SpawnAI_14()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109016004815239832",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_139()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_139");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1669566498");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_139_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_51()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109016004815239832",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_10()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109016006713162417",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_84()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1737700075");
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
                [0] = self.f_box_OutputOrder_v2_84_Out_0,
                [1] = self.f_box_OutputOrder_v2_84_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_95");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1744014264");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_95_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_440_B10_OBJ2",
            id = "976499",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_52()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109067374670949628",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_82()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.PlayerGroup,
        -- farZone,
        [2] = 90,
        -- id2,
        [3] = self.eDeliverPlane,
        -- nearZone,
        [4] = 89,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1778413235");
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
                [0] = self.f_box_OutputOrder_v2_46_Out_0,
                [1] = self.f_box_OutputOrder_v2_46_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v5_9()
    local params;
    params = {
        -- MessageId,
        [0] = {
            section = "Objectives",
            item = "MIS_440_B11_WARN2.1",
            id = "1029669",
        },
        -- MessageType,
        [1] = 1,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_74()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109457845230509616",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1819337334");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_45_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_440_B11_OBJ2",
            id = "1029668",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_22()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109016376579494542",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1925115161");
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
                [0] = self.f_box_OutputOrder_v2_60_Out_0,
                [1] = self.f_box_OutputOrder_v2_60_Out_1,
                [2] = self.f_box_OutputOrder_v2_60_Out_2,
                [3] = self.f_box_OutputOrder_v2_60_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1933867895");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_72_Equal,
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_72_NotEqual,
    });
    params = {
        -- Entity1,
        [0] = self.eDeliverPlane,
        -- Entity2,
        [1] = "2108144223766187517",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|1940367083");
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
                [0] = self.f_box_OutputOrder_v2_92_Out_0,
                [1] = self.f_box_OutputOrder_v2_92_Out_1,
                [2] = self.f_box_OutputOrder_v2_92_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_91()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = true,
        -- immediateDespawn,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_Brick_Deliver_Vehicle_CustomWarning_35()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bDisplayVehicleHealth,
        [1] = true,
        -- bMustExitVehicle,
        [2] = false,
        -- bRequiresObjective,
        [3] = true,
        -- eTarget,
        [4] = "2107647664930715072",
        -- eTargetMarker,
        [5] = "2107647664928617914",
        -- eVehicle,
        [6] = self.eDeliverPlane,
        -- eVehicleMarker,
        [7] = self.eDeliverMarker,
        -- fDistanceFromTarget,
        [8] = 5,
        -- fWarningDistance,
        [9] = 5,
        -- isTargetTrigger,
        [10] = true,
        -- Objective,
        [11] = {
            section = "Objectives",
            item = "MIS_440_B10_OBJ",
            id = "961093",
        },
        -- opt_FailReason,
        [12] = {
            section = "BRICK_Deliver_Vehicle",
            item = "BRICK_Deliver_VehicleHealth",
            id = "432250",
        },
        -- oWarningMsg,
        [13] = {
            section = "MIS_440",
            item = "MIS_440_WARN_Exit",
            id = "1021709",
        },
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_62()
    local params;
    params = {
        -- autoDisable,
        [1] = false,
        -- pawns,
        [2] = self.eNickRye,
        -- vehicle,
        [4] = self.eDeliverPlane,
        -- vehicleTypeFilter,
        [5] = 1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|2030167660");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_75_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_75_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bDestroyedVehicleNickRye,
    };
    return params;
end;

function export:OnEnter_box__MIS440_B10_DialogueManager_50()
    local params;
    params = {
        -- eNickRye,
        [0] = self.eNickRye,
        -- eTarget,
        [1] = "2108144223766187517",
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_132()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_132");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|2039280724");
    l0:SetConnections({
        -- OnSetAsUsable,
        [7] = self.f_box_VehicleModifier_v2_132_OnSetAsUsable,
    });
    params = {
        -- targets,
        [0] = "2109182128716552410",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_32()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109458397714719929",
    };
    return params;
end;

function export:OnEnter_box_Brick_Deliver_Vehicle_CustomWarning_23()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bDisplayVehicleHealth,
        [1] = true,
        -- bMustExitVehicle,
        [2] = false,
        -- bRequiresObjective,
        [3] = true,
        -- eTarget,
        [4] = "2107643611637114976",
        -- eTargetMarker,
        [5] = "2107643611635017818",
        -- eVehicle,
        [6] = self.eDeliverPlane,
        -- eVehicleMarker,
        [7] = self.eDeliverMarker,
        -- fDistanceFromTarget,
        [8] = 5,
        -- fWarningDistance,
        [9] = 5,
        -- isTargetTrigger,
        [10] = true,
        -- Objective,
        [11] = {
            section = "Objectives",
            item = "MIS_440_B10_OBJ",
            id = "961093",
        },
        -- opt_FailReason,
        [12] = {
            section = "BRICK_Deliver_Vehicle",
            item = "BRICK_Deliver_VehicleHealth",
            id = "432250",
        },
        -- oWarningMsg,
        [13] = {
            section = "Objectives",
            item = "MIS_440_WARN_Exit",
            id = "1021709",
        },
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|2070321799");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_16_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "36167497834103739",
        -- missionLayerId,
        [1] = "27160300318551903",
    };
    return params;
end;

function export:OnEnter_box_Brick_Deliver_Vehicle_CustomWarning_26()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bDisplayVehicleHealth,
        [1] = true,
        -- bMustExitVehicle,
        [2] = false,
        -- bRequiresObjective,
        [3] = true,
        -- eTarget,
        [4] = "2107647255008870816",
        -- eTargetMarker,
        [5] = "2107647255006773658",
        -- eVehicle,
        [6] = self.eDeliverPlane,
        -- eVehicleMarker,
        [7] = self.eDeliverMarker,
        -- fDistanceFromTarget,
        [8] = 5,
        -- fWarningDistance,
        [9] = 5,
        -- isTargetTrigger,
        [10] = true,
        -- Objective,
        [11] = {
            section = "Objectives",
            item = "MIS_440_B10_OBJ",
            id = "961093",
        },
        -- opt_FailReason,
        [12] = {
            section = "BRICK_Deliver_Vehicle",
            item = "BRICK_Deliver_VehicleHealth",
            id = "432250",
        },
        -- oWarningMsg,
        [13] = {
            section = "MIS_440",
            item = "MIS_440_WARN_Exit",
            id = "1021709",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_108");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_440\\MIS_440_B10.domino|@MIS_440_B10_MAIN|2089032070");
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
                [0] = self.f_box_OutputOrder_v2_108_Out_0,
                [1] = self.f_box_OutputOrder_v2_108_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_36()
    local params;
    params = {
        -- bShowUI,
        [0] = true,
        -- CoopFailRequiresAllPlayer,
        [1] = false,
        -- FailingZoneTrigger,
        [2] = "2108545925266830388",
        -- WarningZoneTrigger,
        [3] = "2108545483325597566",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_31()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109458397704234159",
    };
    return params;
end;

function export:OnExit_box_GetLocalPlayer_v2_2_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.LocalPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_71_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eDeliverPlane = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_117_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eDeliverMarker = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPawnVehicleInfo_70_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.eDeliverPlane = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_70_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.eDeliverPlane = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_70_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.eDeliverPlane = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPlayerGroup_v2_1_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.PlayerGroup = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_61_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bDestroyedVehicleNickRye = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_115_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eDeliverMarker = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_v2_11_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_v2_11;
    self.eNickRye = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_82_AllFar()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_82;
    l1 = self.box_DisplayCustomUIMsg_v5_83;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_82_AllNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_82;
    l1 = self.box_DisplayCustomUIMsg_v5_83;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_82_SomeoneFar()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_82;
    l1 = self.box_DisplayCustomUIMsg_v5_83;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_82_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_82;
    l1 = self.box_DisplayCustomUIMsg_v5_83;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(0);
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
