LUACg� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act2/mis_220/mis_220_b20.domino
-- User graph: MIS_220_B20
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.UIMode.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/BroadcastMessage.lua");
        cboxRes:RegisterBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
        cboxRes:RegisterBox("Domino/System/ColorRemapTextureModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/CompareEntity.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetPawnVehicleInfo.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/IsValueNil_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/NoWeaponMode_v3.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/OverrideEnvironment_v3.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/TimedSlowMotion_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayerSpeedModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetOasis.lua");
        cboxRes:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UI/OverrideDisabledLogicId.lua");
        cboxRes:RegisterBox("Domino/System/VehicleListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/VehicleModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/VisionModeModifier_v2.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/mis_220/MIS_220_MASTER.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[357605033.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1552573324.bnk]], "CSoundResource");
        cboxRes:LoadResource([[439384452.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/mis_220/mis_220_b20.MIS_220_B20.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.UIMode.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "CinematicMode",
            },
            [1] = {
                name = "NormalMode",
            },
            [2] = {
                name = "OutpostMode",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "OnCinematicMode",
                delayed = false,
            },
            [1] = {
                name = "OnNormalMode",
                delayed = false,
            },
            [2] = {
                name = "OnOutpostMode",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/ColorRemapTextureModifier_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Add",
            },
            [1] = {
                name = "Remove",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Added",
                delayed = false,
            },
            [1] = {
                name = "Removed",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "colorRemapSettings",
                type = "genericdb",
            },
            [1] = {
                name = "playerGroup",
                type = "group",
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
    metadataTable[GetPathID("Domino/System/NoWeaponMode_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Off",
            },
            [1] = {
                name = "On",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnEnter",
                delayed = false,
            },
            [1] = {
                name = "OnLeave",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "pawns",
                type = "group",
            },
            [1] = {
                name = "useAnims",
                type = "bool",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/OverrideEnvironment_v3.lua")] = {
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
                name = "adaptiveBloom",
                type = "string",
            },
            [1] = {
                name = "atmosphericScattering",
                type = "string",
            },
            [2] = {
                name = "characterVisibility",
                type = "string",
            },
            [3] = {
                name = "cloud",
                type = "string",
            },
            [4] = {
                name = "depthOfField",
                type = "string",
            },
            [5] = {
                name = "exposure",
                type = "string",
            },
            [6] = {
                name = "fog",
                type = "string",
            },
            [7] = {
                name = "lighting",
                type = "string",
            },
            [8] = {
                name = "motionBlur",
                type = "string",
            },
            [9] = {
                name = "ratio",
                type = "float",
            },
            [10] = {
                name = "shadow",
                type = "string",
            },
            [11] = {
                name = "sky",
                type = "string",
            },
            [12] = {
                name = "stormFactor",
                type = "float",
            },
            [13] = {
                name = "transitionTime",
                type = "float",
            },
            [14] = {
                name = "wind",
                type = "string",
            },
        },
        dataInCount = 15,
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
    metadataTable[GetPathID("Domino/System/Player/TimedSlowMotion_v2.lua")] = {
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
                name = "SlowMotionEnded",
                delayed = true,
            },
            [3] = {
                name = "SlowMotionStarted",
                delayed = true,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "AimSpeedMultiplier",
                type = "float",
            },
            [1] = {
                name = "AutoDisable",
                type = "bool",
            },
            [2] = {
                name = "BlendInTime",
                type = "float",
            },
            [3] = {
                name = "BlendOutTime",
                type = "float",
            },
            [4] = {
                name = "Duration",
                type = "float",
            },
            [5] = {
                name = "PreDelay",
                type = "float",
            },
            [6] = {
                name = "TimeFactor",
                type = "float",
            },
        },
        dataInCount = 7,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/PlayerSpeedModifier_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "ApplySpeedFactor",
            },
            [1] = {
                name = "ForceWalk",
            },
            [2] = {
                name = "Stop",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "ApplySpeedFactorOut",
                delayed = false,
            },
            [1] = {
                name = "Done",
                delayed = true,
            },
            [2] = {
                name = "ForceWalkOut",
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
                name = "blendTime",
                type = "float",
            },
            [1] = {
                name = "factor",
                type = "float",
            },
            [2] = {
                name = "Players",
                type = "group",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/SetOasis.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "FromDuniaOasis",
            },
            [1] = {
                name = "FromOasis",
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
                name = "Oasis",
                type = "oasis",
            },
            [1] = {
                name = "OasisFromEditor",
                type = "oasiseditor",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Target",
                type = "oasis",
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
    metadataTable[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "AreaMessage",
            },
            [1] = {
                name = "Cinematic",
            },
            [2] = {
                name = "Compass",
            },
            [3] = {
                name = "DetectionMeter",
            },
            [4] = {
                name = "EnergyGauge",
            },
            [5] = {
                name = "Health",
            },
            [6] = {
                name = "HelmetMask",
            },
            [7] = {
                name = "Hiring",
            },
            [8] = {
                name = "HudActivityStatus",
            },
            [9] = {
                name = "HudAutodriveStatus",
            },
            [10] = {
                name = "HudChallenge",
            },
            [11] = {
                name = "HudDiscovery",
            },
            [12] = {
                name = "HudGunsForHire",
            },
            [13] = {
                name = "HudHint",
            },
            [14] = {
                name = "HudLocationDiscovery",
            },
            [15] = {
                name = "HudNewCharacterDiscovery",
            },
            [16] = {
                name = "HudNotifGFH",
            },
            [17] = {
                name = "HudNotificationsQueue",
            },
            [18] = {
                name = "HudNotificationsQueueCenterMessage",
            },
            [19] = {
                name = "HudNotificationsQueueDiscovery",
            },
            [20] = {
                name = "HudNotificationsQueueGMS",
            },
            [21] = {
                name = "HudNotificationsQueuePlayerPoints",
            },
            [22] = {
                name = "HudNotificationsQueueWarning",
            },
            [23] = {
                name = "HudObjective",
            },
            [24] = {
                name = "HudObjectiveRewards",
            },
            [25] = {
                name = "HudOpenWorld",
            },
            [26] = {
                name = "HudOutpostSuccess",
            },
            [27] = {
                name = "HudPerkPoints",
            },
            [28] = {
                name = "HudSurvivalInstinct",
            },
            [29] = {
                name = "Interaction",
            },
            [30] = {
                name = "Looting",
            },
            [31] = {
                name = "MissionGiver",
            },
            [32] = {
                name = "ObjectiveProgress",
            },
            [33] = {
                name = "ObjectiveTracked",
            },
            [34] = {
                name = "PlayerBuffs",
            },
            [35] = {
                name = "RepairBar",
            },
            [36] = {
                name = "Reputation",
            },
            [37] = {
                name = "Reticle",
            },
            [38] = {
                name = "Tag",
            },
            [39] = {
                name = "TopCenterTimer",
            },
            [40] = {
                name = "TrackedMaterials",
            },
            [41] = {
                name = "Tutorial",
            },
        },
        controlInCount = 42,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "disableUI",
                type = "bool",
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
    metadataTable[GetPathID("Domino/System/VisionModeModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "StartBliss",
            },
            [1] = {
                name = "StartCustomIntoxication",
            },
            [2] = {
                name = "StartDrunk",
            },
            [3] = {
                name = "StartHigh",
            },
            [4] = {
                name = "StartScopolamine",
            },
            [5] = {
                name = "StartScopolamineHeavy",
            },
            [6] = {
                name = "StartScopolamineMedium",
            },
            [7] = {
                name = "StartSuppression",
            },
            [8] = {
                name = "Stop",
            },
        },
        controlInCount = 9,
        controlOut = {
            [0] = {
                name = "StartedBliss",
                delayed = false,
            },
            [1] = {
                name = "StartedCustomIntoxication",
                delayed = false,
            },
            [2] = {
                name = "StartedDrunk",
                delayed = false,
            },
            [3] = {
                name = "StartedHigh",
                delayed = false,
            },
            [4] = {
                name = "StartedScopolamine",
                delayed = false,
            },
            [5] = {
                name = "StartedScopolamineHeavy",
                delayed = false,
            },
            [6] = {
                name = "StartedScopolamineMedium",
                delayed = false,
            },
            [7] = {
                name = "StartedSuppression",
                delayed = false,
            },
            [8] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 9,
        dataIn = {
            [0] = {
                name = "intoxicationAmount",
                type = "float",
            },
            [1] = {
                name = "players",
                type = "group",
            },
            [2] = {
                name = "useAsPercent",
                type = "bool",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_220_B20";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20";
    self.goodTime = false;
    self.currentMinute = 0;
    self.currentHour = 0;
    self.Hour = 0;
    self.gPlayer = nil;
    self.eLocalPlayer = nil;
    self.o_OasisObject = {
        section = "",
        item = "",
        id = "",
    };
    self.box_MultipleOR_86 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|26688842");
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
        [0] = self.f_box_MultipleOR_86_Out,
    });
    self.box_TimedSlowMotion_v2_93 = cbox:CreateBox("Domino/System/Player/TimedSlowMotion_v2.lua");
    l0 = self.box_TimedSlowMotion_v2_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TimedSlowMotion_v2_93");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|29851763");
    l0:SetConnections({
        -- SlowMotionEnded,
        [2] = self.f_box_TimedSlowMotion_v2_93_SlowMotionEnded,
        -- SlowMotionStarted,
        [3] = self.f_box_TimedSlowMotion_v2_93_SlowMotionStarted,
    });
    self.box_NarrativeFade_9 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|90783578");
    l0:SetConnections({
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_9_FadedOut,
    });
    self.box_EntityStatusListener_64 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|181062273");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_64_Loaded,
    });
    self.box_Reach_GoTo_v3_100 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua");
    l0 = self.box_Reach_GoTo_v3_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v3_100");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|188034181");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_Reach_GoTo_v3_100_Success,
    });
    self.box_ExitZoneWarningListener_v3_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|355011305");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_1_FailingZoneEntered,
    });
    self.box_ActivityInitialized_57 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|421213986");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_57_Out,
    });
    self.box_MultipleOR_58 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|567381577");
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
        [0] = self.f_box_MultipleOR_58_Out,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_71 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|570435446");
    l0:SetConnections({
    });
    self.box_NoWeaponMode_v3_35 = cbox:CreateBox("Domino/System/NoWeaponMode_v3.lua");
    l0 = self.box_NoWeaponMode_v3_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NoWeaponMode_v3_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|592748955");
    l0:SetConnections({
    });
    self.box_UIMode_54 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.UIMode.debug.lua");
    l0 = self.box_UIMode_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UIMode_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|597683598");
    l0:SetConnections({
        -- OnNormalMode,
        [1] = self.f_box_UIMode_54_OnNormalMode,
    });
    self.box_EntityStatusListener_6 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|604390139");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_6_Loaded,
    });
    self.box_Reach_GoTo_v3_11 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua");
    l0 = self.box_Reach_GoTo_v3_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v3_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|617631415");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_Reach_GoTo_v3_11_Success,
    });
    self.box_Reach_GoTo_v3_95 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua");
    l0 = self.box_Reach_GoTo_v3_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v3_95");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|670197928");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_Reach_GoTo_v3_95_Success,
    });
    self.box_SoundModifier_v2_61 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|862914643");
    l0:SetConnections({
    });
    self.box_MultipleOR_60 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1035464770");
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
        [0] = self.f_box_MultipleOR_60_Out,
    });
    self.box_Music_Quest_v2_113 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_113");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1083123371");
    l0:SetConnections({
    });
    self.box_ActivityAcknowledgeGate_56 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1083309807");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_56_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_56_Reloaded,
    });
    self.box_OnceOnly_v3_87 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1225349046");
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
                [0] = self.f_box_OnceOnly_v3_87_Out_0,
            },
            count = 2,
        },
    });
    self.box_PlayerSpeedModifier_v3_13 = cbox:CreateBox("Domino/System/PlayerSpeedModifier_v3.lua");
    l0 = self.box_PlayerSpeedModifier_v3_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerSpeedModifier_v3_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1406793761");
    l0:SetConnections({
    });
    self.box_Reach_GoTo_v3_22 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua");
    l0 = self.box_Reach_GoTo_v3_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v3_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1427447986");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_Reach_GoTo_v3_22_Started,
        -- Success,
        [3] = self.f_box_Reach_GoTo_v3_22_Success,
    });
    self.box_VisionModeModifier_v2_50 = cbox:CreateBox("Domino/System/VisionModeModifier_v2.lua");
    l0 = self.box_VisionModeModifier_v2_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisionModeModifier_v2_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1499612102");
    l0:SetConnections({
        -- Stopped,
        [8] = self.f_box_VisionModeModifier_v2_50_Stopped,
    });
    self.box_Delay_v5_51 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1592667320");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_51_TimeElapsed,
    });
    self.box_VehicleListener_v3_91 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1649250084");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VehicleListener_v3_91_Enabled,
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_91_OnSit,
    });
    self.box_MultipleAND_v2_65 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1835761089");
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
        [0] = self.f_box_MultipleAND_v2_65_Out,
    });
    self.box_ColorRemapTextureModifier_v3_53 = cbox:CreateBox("Domino/System/ColorRemapTextureModifier_v3.lua");
    l0 = self.box_ColorRemapTextureModifier_v3_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ColorRemapTextureModifier_v3_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1844642462");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ColorRemapTextureModifier_v3_53_Added,
    });
    self.box_EntityStatusListener_63 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1894025332");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_63_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_63_Loaded,
    });
    self.box_UIMode_34 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.UIMode.debug.lua");
    l0 = self.box_UIMode_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UIMode_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1962707199");
    l0:SetConnections({
    });
    self.box_Reach_GoTo_v3_14 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua");
    l0 = self.box_Reach_GoTo_v3_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v3_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|2008106941");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_Reach_GoTo_v3_14_Success,
    });
    self.box_NarrativeFade_12 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|2030968426");
    l0:SetConnections({
    });
    self.box_SpawnAI_90 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|2114419501");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_55();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1126959612", "1126959612", "MIS_220_B20", "In", "box_OutputOrder_v2_55.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    
end;

function export:f_box_Simple_Node_41_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ColorRemapTextureModifier_v3_53();
    l0 = self.box_ColorRemapTextureModifier_v3_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|927085679", "927085679", "MIS_220_B20", "box_Simple_Node_41.Out", "box_ColorRemapTextureModifier_v3_53.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
    params = self:OnEnter_box_NoWeaponMode_v3_35();
    l0 = self.box_NoWeaponMode_v3_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1997211067", "1997211067", "MIS_220_B20", "box_Simple_Node_41.Out", "box_NoWeaponMode_v3_35.Off", clone:GetLuaBox(), l0:GetLuaBox());
    -- Off
    l0:Exec(0, params);
    params = self:OnEnter_box_PlayerSpeedModifier_v3_13();
    l0 = self.box_PlayerSpeedModifier_v3_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1304882713", "1304882713", "MIS_220_B20", "box_Simple_Node_41.Out", "box_PlayerSpeedModifier_v3_13.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_Delay_v5_51();
    l0 = self.box_Delay_v5_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1374565966", "1374565966", "MIS_220_B20", "box_Simple_Node_41.Out", "box_Delay_v5_51.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_104_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Reach_GoTo_v3_11();
    l0 = self.box_Reach_GoTo_v3_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1623952986", "1623952986", "MIS_220_B20", "box_Simple_Node_104.Out", "box_Reach_GoTo_v3_11.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_Reach_GoTo_v3_95();
    l0 = self.box_Reach_GoTo_v3_95;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1483696918", "1483696918", "MIS_220_B20", "box_Simple_Node_104.Out", "box_Reach_GoTo_v3_95.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_Reach_GoTo_v3_100();
    l0 = self.box_Reach_GoTo_v3_100;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|769678766", "769678766", "MIS_220_B20", "box_Simple_Node_104.Out", "box_Reach_GoTo_v3_100.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_Reach_GoTo_v3_14();
    l0 = self.box_Reach_GoTo_v3_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|722663080", "722663080", "MIS_220_B20", "box_Simple_Node_104.Out", "box_Reach_GoTo_v3_14.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_92_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_86;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|660371391", "660371391", "MIS_220_B20", "box_Simple_Node_92.Out", "box_MultipleOR_86.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_86_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = self.box_MultipleOR_86;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|2047421800", "2047421800", "MIS_220_B20", "box_MultipleOR_86.Out", "box_OutputOrder_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_76_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_75();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1823353051", "1823353051", "MIS_220_B20", "box_OutputOrder_v2_76.Out", "box_AddActivityObjective_v2_75.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_76_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Reach_GoTo_v3_11();
    l0 = self.box_Reach_GoTo_v3_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|553810278", "553810278", "MIS_220_B20", "box_OutputOrder_v2_76.Out", "box_Reach_GoTo_v3_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_76_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_113();
    l0 = self.box_Music_Quest_v2_113;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|2104448173", "2104448173", "MIS_220_B20", "box_OutputOrder_v2_76.Out", "box_Music_Quest_v2_113.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_76_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_81();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|198539737", "198539737", "MIS_220_B20", "box_OutputOrder_v2_76.Out", "box_Simple_Node_81.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TimedSlowMotion_v2_93_SlowMotionEnded()
    local params, l0, l1;
    params = self:OnEnter_box_VisionModeModifier_v2_50();
    l0 = self.box_TimedSlowMotion_v2_93;
    l1 = self.box_VisionModeModifier_v2_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1872744088", "1872744088", "MIS_220_B20", "box_TimedSlowMotion_v2_93.SlowMotionEnded", "box_VisionModeModifier_v2_50.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(8, params);
end;

function export:f_box_TimedSlowMotion_v2_93_SlowMotionStarted()
    local params, l0, l1;
    params = self:OnEnter_box_VisionModeModifier_v2_50();
    l0 = self.box_TimedSlowMotion_v2_93;
    l1 = self.box_VisionModeModifier_v2_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|689982943", "689982943", "MIS_220_B20", "box_TimedSlowMotion_v2_93.SlowMotionStarted", "box_VisionModeModifier_v2_50.StartDrunk", l0:GetLuaBox(), l1:GetLuaBox());
    -- StartDrunk
    l1:Exec(2, params);
end;

function export:f_box_IsValueNil_v3_67_No()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_87;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|219408762", "219408762", "MIS_220_B20", "box_IsValueNil_v3_67.No", "box_OnceOnly_v3_87.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsValueNil_v3_67_Yes()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_66();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1568505088", "1568505088", "MIS_220_B20", "box_IsValueNil_v3_67.Yes", "box_OutputOrder_v2_66.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_99_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_77();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|165613066", "165613066", "MIS_220_B20", "box_ActivityObjectiveMarkerModifier_v3_99.Disabled", "box_ActivityObjectiveMarkerModifier_v3_77.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_33_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_36();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|846553247", "846553247", "MIS_220_B20", "box_OutputOrder_v2_33.Out", "box_OverrideDisabledLogicId_36.Tutorial", clone:GetLuaBox(), l0:GetLuaBox());
    -- Tutorial
    l0:Exec(41, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_33_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_61();
    l0 = self.box_SoundModifier_v2_61;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1935682270", "1935682270", "MIS_220_B20", "box_OutputOrder_v2_33.Out", "box_SoundModifier_v2_61.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_33_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_19();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|96351145", "96351145", "MIS_220_B20", "box_OutputOrder_v2_33.Out", "box_Print_v2_19.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_33_Out_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_UIMode_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1899312802", "1899312802", "MIS_220_B20", "box_OutputOrder_v2_33.Out", "box_UIMode_34.CinematicMode", clone:GetLuaBox(), l0:GetLuaBox());
    -- CinematicMode
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_33_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NoWeaponMode_v3_35();
    l0 = self.box_NoWeaponMode_v3_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1900595189", "1900595189", "MIS_220_B20", "box_OutputOrder_v2_33.Out", "box_NoWeaponMode_v3_35.On", clone:GetLuaBox(), l0:GetLuaBox());
    -- On
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_33_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerSpeedModifier_v3_13();
    l0 = self.box_PlayerSpeedModifier_v3_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|422343554", "422343554", "MIS_220_B20", "box_OutputOrder_v2_33.Out", "box_PlayerSpeedModifier_v3_13.ApplySpeedFactor", clone:GetLuaBox(), l0:GetLuaBox());
    -- ApplySpeedFactor
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_33_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TimedSlowMotion_v2_93();
    l0 = self.box_TimedSlowMotion_v2_93;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1984231235", "1984231235", "MIS_220_B20", "box_OutputOrder_v2_33.Out", "box_TimedSlowMotion_v2_93.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_NarrativeFade_9_FadedOut()
    local l0, l1;
    l0 = self.box_NarrativeFade_9;
    l1 = self.box_MultipleOR_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|382203671", "382203671", "MIS_220_B20", "box_NarrativeFade_9.FadedOut", "box_MultipleOR_58.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_BroadcastMessage_62_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_92();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|834005127", "834005127", "MIS_220_B20", "box_BroadcastMessage_62.Out", "box_Simple_Node_92.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleModifier_v2_18_OnSetAsUsable()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_47();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1239698140", "1239698140", "MIS_220_B20", "box_VehicleModifier_v2_18.OnSetAsUsable", "box_SetEntity_v2_47.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_84_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_88();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1220419873", "1220419873", "MIS_220_B20", "box_EndActivityObjective_v2_84.Out", "box_ActivityObjectiveMarkerModifier_v3_88.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_64_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_40();
    l0 = self.box_EntityStatusListener_64;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1647170561", "1647170561", "MIS_220_B20", "box_EntityStatusListener_64.Loaded", "box_SetEntity_v2_40.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Reach_GoTo_v3_100_Success()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_77();
    l0 = self.box_Reach_GoTo_v3_100;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1013464781", "1013464781", "MIS_220_B20", "box_Reach_GoTo_v3_100.Success", "box_ActivityObjectiveMarkerModifier_v3_77.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetOasis_102_Out()
    local params, l0;
    self:OnExit_box_SetOasis_102_Out();
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_76();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|896375465", "896375465", "MIS_220_B20", "box_SetOasis_102.Out", "box_OutputOrder_v2_76.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_82_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_73();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|598780077", "598780077", "MIS_220_B20", "box_OutputOrder_v2_82.Out", "box_ActivityObjectiveMarkerModifier_v3_73.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_82_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_59();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|359972974", "359972974", "MIS_220_B20", "box_OutputOrder_v2_82.Out", "box_BroadcastMessage_59.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_114_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPawnVehicleInfo_85();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|773249628", "773249628", "MIS_220_B20", "box_OutputOrder_v2_114.Out", "box_GetPawnVehicleInfo_85.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ExitZoneWarningListener_v3_1_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_v2_8();
    l0 = self.box_ExitZoneWarningListener_v3_1;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1112019020", "1112019020", "MIS_220_B20", "box_ExitZoneWarningListener_v3_1.FailingZoneEntered", "box_ActivityRetry_v2_8.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_68_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_68_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_65();
    l0 = self.box_MultipleAND_v2_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|45546046", "45546046", "MIS_220_B20", "box_SetEntity_v2_68.Out", "box_MultipleAND_v2_65.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_ActivityInitialized_57_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_2();
    l0 = self.box_ActivityInitialized_57;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1025459101", "1025459101", "MIS_220_B20", "box_ActivityInitialized_57.Out", "box_GetPlayerGroup_v2_2.FriendlyPlayers", l0:GetLuaBox(), l1:GetLuaBox());
    -- FriendlyPlayers
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_98_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Reach_GoTo_v3_100();
    l0 = self.box_Reach_GoTo_v3_100;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|913664272", "913664272", "MIS_220_B20", "box_OutputOrder_v2_98.Out", "box_Reach_GoTo_v3_100.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_98_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_99();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1709335587", "1709335587", "MIS_220_B20", "box_OutputOrder_v2_98.Out", "box_ActivityObjectiveMarkerModifier_v3_99.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetLocalPlayer_v2_4_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_4_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1971876058", "1971876058", "MIS_220_B20", "box_GetLocalPlayer_v2_4.Out", "box_OutputOrder_v2_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_58_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_58;
    l1 = self.box_ActivityInitialized_57;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|657314202", "657314202", "MIS_220_B20", "box_MultipleOR_58.Out", "box_ActivityInitialized_57.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_UIMode_54_OnNormalMode()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_7();
    l0 = self.box_UIMode_54;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|2002999768", "2002999768", "MIS_220_B20", "box_UIMode_54.OnNormalMode", "box_ActivityEnd_7.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_97_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_99();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|574365485", "574365485", "MIS_220_B20", "box_ActivityObjectiveMarkerModifier_v3_97.Disabled", "box_ActivityObjectiveMarkerModifier_v3_99.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_6_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_1();
    l0 = self.box_EntityStatusListener_6;
    l1 = self.box_ExitZoneWarningListener_v3_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|2112898826", "2112898826", "MIS_220_B20", "box_EntityStatusListener_6.Loaded", "box_ExitZoneWarningListener_v3_1.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Reach_GoTo_v3_11_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_96();
    l0 = self.box_Reach_GoTo_v3_11;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1293164184", "1293164184", "MIS_220_B20", "box_Reach_GoTo_v3_11.Success", "box_OutputOrder_v2_96.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Reach_GoTo_v3_95_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_79();
    l0 = self.box_Reach_GoTo_v3_95;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1492046534", "1492046534", "MIS_220_B20", "box_Reach_GoTo_v3_95.Success", "box_OutputOrder_v2_79.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetTimeOfDay_70_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_71();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_71;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1976239308", "1976239308", "MIS_220_B20", "box_SetTimeOfDay_70.Out", "box_CHEAT_SetEnvironmentTimeScale_71.SetTimeScale", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeScale
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_67();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|558868082", "558868082", "MIS_220_B20", "box_OutputOrder_v2_3.Out", "box_IsValueNil_v3_67.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_6();
    l0 = self.box_EntityStatusListener_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1168944784", "1168944784", "MIS_220_B20", "box_OutputOrder_v2_3.Out", "box_EntityStatusListener_6.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_3_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetTimeOfDay_70();
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1594284645", "1594284645", "MIS_220_B20", "box_OutputOrder_v2_3.Out", "box_SetTimeOfDay_70.SetTimeOfDay", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeOfDay
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_2_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_2_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_4();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1003816655", "1003816655", "MIS_220_B20", "box_GetPlayerGroup_v2_2.Out", "box_GetLocalPlayer_v2_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_60_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetOasis_102();
    l0 = self.box_MultipleOR_60;
    l1 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1486554459", "1486554459", "MIS_220_B20", "box_MultipleOR_60.Out", "box_SetOasis_102.FromOasis", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromOasis
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_56_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_56;
    l1 = self.box_MultipleOR_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|402671617", "402671617", "MIS_220_B20", "box_ActivityAcknowledgeGate_56.Acknowledged", "box_MultipleOR_58.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_56_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_9();
    l0 = self.box_ActivityAcknowledgeGate_56;
    l1 = self.box_NarrativeFade_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|615581583", "615581583", "MIS_220_B20", "box_ActivityAcknowledgeGate_56.Reloaded", "box_NarrativeFade_9.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_AddActivityObjective_v2_75_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_74();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1430601107", "1430601107", "MIS_220_B20", "box_AddActivityObjective_v2_75.Out", "box_ActivityObjectiveMarkerModifier_v3_74.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_87_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_87;
    l1 = self.box_MultipleOR_86;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1866747056", "1866747056", "MIS_220_B20", "box_OnceOnly_v3_87.Out", "box_MultipleOR_86.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_BroadcastMessage_59_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_83();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1087566350", "1087566350", "MIS_220_B20", "box_BroadcastMessage_59.Out", "box_EndActivityObjective_v2_83.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_48_Equal()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1348297096", "1348297096", "MIS_220_B20", "box_Compare_Entity_48.Equal", "box_MultipleOR_60.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Entity_48_NotEqual()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|2084933198", "2084933198", "MIS_220_B20", "box_Compare_Entity_48.NotEqual", "box_MultipleOR_60.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_77_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_103();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1069806444", "1069806444", "MIS_220_B20", "box_ActivityObjectiveMarkerModifier_v3_77.Disabled", "box_OutputOrder_v2_103.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_89_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_88();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|105497196", "105497196", "MIS_220_B20", "box_AddActivityObjective_v2_89.Out", "box_ActivityObjectiveMarkerModifier_v3_88.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_55_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1078068386", "1078068386", "MIS_220_B20", "box_OutputOrder_v2_55.Out", "box_ActivityAcknowledgeGate_56.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_55_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_5();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|795595054", "795595054", "MIS_220_B20", "box_OutputOrder_v2_55.Out", "box_Print_v2_5.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Reach_GoTo_v3_22_Started()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_73();
    l0 = self.box_Reach_GoTo_v3_22;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1740272085", "1740272085", "MIS_220_B20", "box_Reach_GoTo_v3_22.Started", "box_ActivityObjectiveMarkerModifier_v3_73.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Reach_GoTo_v3_22_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_82();
    l0 = self.box_Reach_GoTo_v3_22;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|292339605", "292339605", "MIS_220_B20", "box_Reach_GoTo_v3_22.Success", "box_OutputOrder_v2_82.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_96_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Reach_GoTo_v3_95();
    l0 = self.box_Reach_GoTo_v3_95;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1237277285", "1237277285", "MIS_220_B20", "box_OutputOrder_v2_96.Out", "box_Reach_GoTo_v3_95.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_96_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_74();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1611118154", "1611118154", "MIS_220_B20", "box_OutputOrder_v2_96.Out", "box_ActivityObjectiveMarkerModifier_v3_74.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VisionModeModifier_v2_50_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_41();
    l0 = self.box_VisionModeModifier_v2_50;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|657886639", "657886639", "MIS_220_B20", "box_VisionModeModifier_v2_50.Stopped", "box_Simple_Node_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_114();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|171878838", "171878838", "MIS_220_B20", "box_OutputOrder_v2_15.Out", "box_OutputOrder_v2_114.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_12();
    l0 = self.box_NarrativeFade_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1328873552", "1328873552", "MIS_220_B20", "box_OutputOrder_v2_15.Out", "box_NarrativeFade_12.FadeIn", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeIn
    l0:Exec(0, params);
end;

function export:f_box_SetEntity_v2_40_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_40_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_65();
    l0 = self.box_MultipleAND_v2_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|728497900", "728497900", "MIS_220_B20", "box_SetEntity_v2_40.Out", "box_MultipleAND_v2_65.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_Delay_v5_51_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_51;
    l1 = self.box_UIMode_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|255973910", "255973910", "MIS_220_B20", "box_Delay_v5_51.TimeElapsed", "box_UIMode_54.NormalMode", l0:GetLuaBox(), l1:GetLuaBox());
    -- NormalMode
    l1:Exec(1, {
    });
end;

function export:f_box_VehicleListener_v3_91_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_89();
    l0 = self.box_VehicleListener_v3_91;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|160136063", "160136063", "MIS_220_B20", "box_VehicleListener_v3_91.Enabled", "box_AddActivityObjective_v2_89.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_91_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_84();
    l0 = self.box_VehicleListener_v3_91;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1354399398", "1354399398", "MIS_220_B20", "box_VehicleListener_v3_91.OnSit", "box_EndActivityObjective_v2_84.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_47_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_47_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_68();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|523328365", "523328365", "MIS_220_B20", "box_SetEntity_v2_47.Out", "box_SetEntity_v2_68.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_83_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_33();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|612446284", "612446284", "MIS_220_B20", "box_EndActivityObjective_v2_83.Out", "box_OutputOrder_v2_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_103_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Reach_GoTo_v3_22();
    l0 = self.box_Reach_GoTo_v3_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|323655368", "323655368", "MIS_220_B20", "box_OutputOrder_v2_103.Out", "box_Reach_GoTo_v3_22.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_103_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_69();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1362194330", "1362194330", "MIS_220_B20", "box_OutputOrder_v2_103.Out", "box_BroadcastMessage_69.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_103_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_104();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|2076651212", "2076651212", "MIS_220_B20", "box_OutputOrder_v2_103.Out", "box_Simple_Node_104.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_74_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_97();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1734957312", "1734957312", "MIS_220_B20", "box_ActivityObjectiveMarkerModifier_v3_74.Disabled", "box_ActivityObjectiveMarkerModifier_v3_97.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_65_Out()
    local params, l0, l1;
    params = self:OnEnter_box_BroadcastMessage_62();
    l0 = self.box_MultipleAND_v2_65;
    l1 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1140731117", "1140731117", "MIS_220_B20", "box_MultipleAND_v2_65.Out", "box_BroadcastMessage_62.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ColorRemapTextureModifier_v3_53_Added()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideEnvironment_v3_52();
    l0 = self.box_ColorRemapTextureModifier_v3_53;
    l1 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|678994037", "678994037", "MIS_220_B20", "box_ColorRemapTextureModifier_v3_53.Added", "box_OverrideEnvironment_v3_52.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_66_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_63();
    l0 = self.box_EntityStatusListener_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|455380379", "455380379", "MIS_220_B20", "box_OutputOrder_v2_66.Out", "box_EntityStatusListener_63.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_66_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_64();
    l0 = self.box_EntityStatusListener_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1440981988", "1440981988", "MIS_220_B20", "box_OutputOrder_v2_66.Out", "box_EntityStatusListener_64.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_63_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_90();
    l0 = self.box_EntityStatusListener_63;
    l1 = self.box_SpawnAI_90;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|580610104", "580610104", "MIS_220_B20", "box_EntityStatusListener_63.Enabled", "box_SpawnAI_90.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_63_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_18();
    l0 = self.box_EntityStatusListener_63;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|223893394", "223893394", "MIS_220_B20", "box_EntityStatusListener_63.Loaded", "box_VehicleModifier_v2_18.SetAsUsable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsUsable
    l1:Exec(7, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_88_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|666008204", "666008204", "MIS_220_B20", "box_ActivityObjectiveMarkerModifier_v3_88.Disabled", "box_MultipleOR_60.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Reach_GoTo_v3_14_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_98();
    l0 = self.box_Reach_GoTo_v3_14;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1798376899", "1798376899", "MIS_220_B20", "box_Reach_GoTo_v3_14.Success", "box_OutputOrder_v2_98.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_79_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Reach_GoTo_v3_14();
    l0 = self.box_Reach_GoTo_v3_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|296972601", "296972601", "MIS_220_B20", "box_OutputOrder_v2_79.Out", "box_Reach_GoTo_v3_14.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_79_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_97();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|590340640", "590340640", "MIS_220_B20", "box_OutputOrder_v2_79.Out", "box_ActivityObjectiveMarkerModifier_v3_97.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_85_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_85_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_48();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1027022728", "1027022728", "MIS_220_B20", "box_GetPawnVehicleInfo_85.InVehicle", "box_Compare_Entity_48.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_85_NotInVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_85_NotInVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_91();
    l0 = self.box_VehicleListener_v3_91;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1431826419", "1431826419", "MIS_220_B20", "box_GetPawnVehicleInfo_85.NotInVehicle", "box_VehicleListener_v3_91.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPawnVehicleInfo_85_Out()
    self:OnExit_box_GetPawnVehicleInfo_85_Out();
end;

function export:OnEnter_box_Simple_Node_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|@enterDone");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_41_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|@StartUp");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_104");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|@Success");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_104_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|@VehicleSet");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_92_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|27241295");
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
                [0] = self.f_box_OutputOrder_v2_76_Out_0,
                [1] = self.f_box_OutputOrder_v2_76_Out_1,
                [2] = self.f_box_OutputOrder_v2_76_Out_2,
                [3] = self.f_box_OutputOrder_v2_76_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TimedSlowMotion_v2_93()
    local params;
    params = {
        -- AimSpeedMultiplier,
        [0] = 1,
        -- AutoDisable,
        [1] = true,
        -- BlendInTime,
        [2] = 2,
        -- BlendOutTime,
        [3] = 2,
        -- Duration,
        [4] = 3,
        -- PreDelay,
        [5] = 0,
        -- TimeFactor,
        [6] = 0.25,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|43684270");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_67_No,
        -- Yes,
        [1] = self.f_box_IsValueNil_v3_67_Yes,
    });
    params = {
        -- ent,
        [4] = Globals.MIS_220_MASTER.e_globalMarkerID,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_99");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|46473587");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_99_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2107477229167467780",
        -- ObjectiveId,
        [2] = self.o_OasisObject,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|81704484");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 7,
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
                [4] = self.f_box_OutputOrder_v2_33_Out_4,
                [5] = self.f_box_OutputOrder_v2_33_Out_5,
                [6] = self.f_box_OutputOrder_v2_33_Out_6,
            },
            count = 7,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_9()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|111928495");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_62_Out,
    });
    params = {
        -- Message,
        [0] = "mis_220_vehicle_set",
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|117289622");
    l0:SetConnections({
        -- OnSetAsUsable,
        [7] = self.f_box_VehicleModifier_v2_18_OnSetAsUsable,
    });
    params = {
        -- targets,
        [0] = "2107467334756092152",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_84()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|124667502");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_84_Out,
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

function export:OnEnter_box_EntityStatusListener_64()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108905734807802001",
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v3_100()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bIsTrigger,
        [1] = false,
        -- bRequiresAllPlayer,
        [2] = false,
        -- bRequiresObjective,
        [3] = false,
        -- bUse2d_ProximityCheck,
        [4] = true,
        -- bUseDetectionModifier,
        [5] = false,
        -- eRadiusTarget,
        [7] = "2109457729964742728",
        -- fDistanceFromTarget,
        [9] = 20,
        -- fObjectiveTimer,
        [10] = 0,
        -- opt_Objective,
        [12] = {
            section = "LD Gameplay Bricks",
            item = "BRICK_GoTo",
            id = "373019",
        },
    };
    return params;
end;

function export:OnEnter_box_SetOasis_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetOasis_102");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|265378440");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetOasis_102_Out,
    });
    params = {
        -- Oasis,
        [0] = {
            section = "Objectives",
            item = "MIS_220_B30_GOAL",
            id = "1030155",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|329974534");
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
                [0] = self.f_box_OutputOrder_v2_82_Out_0,
                [1] = self.f_box_OutputOrder_v2_82_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_114()
    local params, l0;
    DrawTextToScreen("Comment: jrenoux: second output is temp to avoid a music bug", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'OutputOrder_v2')-- Comment: jrenoux: second output is temp to avoid a music bug");
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_114");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|354093591");
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
                [0] = self.f_box_OutputOrder_v2_114_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_1()
    local params;
    params = {
        -- bShowUI,
        [0] = true,
        -- CoopFailRequiresAllPlayer,
        [1] = false,
        -- FailingZoneTrigger,
        [2] = "2109843836214711752",
        -- WarningZoneTrigger,
        [3] = "2109843775837705635",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|397873826");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_68_Out,
    });
    params = {
        -- Entity,
        [0] = "2108505168808021868",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_98");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|519758191");
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

function export:OnEnter_box_GetLocalPlayer_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|530987830");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_4_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_71()
    local params;
    params = {
        -- timeScale,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_NoWeaponMode_v3_35()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- useAnims,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_97");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|600863961");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_97_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2109457732995127372",
        -- ObjectiveId,
        [2] = self.o_OasisObject,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_6()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109843836214711752",
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v3_11()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bIsTrigger,
        [1] = false,
        -- bRequiresAllPlayer,
        [2] = false,
        -- bRequiresObjective,
        [3] = false,
        -- bUse2d_ProximityCheck,
        [4] = true,
        -- bUseDetectionModifier,
        [5] = false,
        -- eRadiusTarget,
        [7] = "2108131516029604717",
        -- fDistanceFromTarget,
        [9] = 20,
        -- fObjectiveTimer,
        [10] = 0,
        -- opt_Objective,
        [12] = {
            section = "LD Gameplay Bricks",
            item = "BRICK_GoTo",
            id = "373019",
        },
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|661869778");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v3_95()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bIsTrigger,
        [1] = false,
        -- bRequiresAllPlayer,
        [2] = false,
        -- bRequiresObjective,
        [3] = false,
        -- bUse2d_ProximityCheck,
        [4] = true,
        -- bUseDetectionModifier,
        [5] = false,
        -- eRadiusTarget,
        [7] = "2109457732995127372",
        -- fDistanceFromTarget,
        [9] = 20,
        -- fObjectiveTimer,
        [10] = 0,
        -- opt_Objective,
        [12] = {
            section = "LD Gameplay Bricks",
            item = "BRICK_GoTo",
            id = "373019",
        },
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|747105871");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_70_Out,
    });
    params = {
        -- Hour,
        [0] = 23,
        -- Minute,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_61()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "1552573324",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|892693528");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2107477264215072012",
        -- ObjectiveId,
        [2] = self.o_OasisObject,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|910239973");
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
                [0] = self.f_box_OutputOrder_v2_3_Out_0,
                [1] = self.f_box_OutputOrder_v2_3_Out_1,
                [2] = self.f_box_OutputOrder_v2_3_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|963974866");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "CHAIN_REACTION START_B20",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1015956612");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_2_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OverrideDisabledLogicId_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideDisabledLogicId_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1039600027");
    l0:SetConnections({
    });
    params = {
        -- disableUI,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_113()
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

function export:OnEnter_box_AddActivityObjective_v2_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1141427304");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_75_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = self.o_OasisObject,
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1273877254");
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
        [8] = "INIT",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1304579411");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_59_Out,
    });
    params = {
        -- Message,
        [0] = "MIS_220_B20_COMPLETED",
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1318647571");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_48_Equal,
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_48_NotEqual,
    });
    params = {
        -- Entity1,
        [0] = self._sld_vehicle_box_GetPawnVehicleInfo_85,
        -- Entity2,
        [1] = Globals.MIS_220_MASTER.e_globalVehicleID,
    };
    return params;
end;

function export:OnEnter_box_OverrideEnvironment_v3_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideEnvironment_v3_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1367182225");
    l0:SetConnections({
    });
    params = {
        -- fog,
        [6] = "FCZ_Default:Overgrown.Overgrown_Boatride_Fog",
        -- ratio,
        [9] = 1,
        -- transitionTime,
        [13] = 5,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1371930809");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Mission Generic Messages",
            item = "MSG_MISSION_EXITMISSIONZONE_FAILED",
            id = "869998",
        },
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayerSpeedModifier_v3_13()
    local params;
    params = {
        -- blendTime,
        [0] = 0,
        -- factor,
        [1] = 0.3,
        -- Players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1410263297");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_77_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2109457729964742728",
        -- ObjectiveId,
        [2] = self.o_OasisObject,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_89");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1415494163");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_89_Out,
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

function export:OnEnter_box_OutputOrder_v2_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1416457731");
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

function export:OnEnter_box_Reach_GoTo_v3_22()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bIsTrigger,
        [1] = false,
        -- bRequiresAllPlayer,
        [2] = false,
        -- bRequiresObjective,
        [3] = false,
        -- bUse2d_ProximityCheck,
        [4] = true,
        -- bUseDetectionModifier,
        [5] = false,
        -- eRadiusTarget,
        [7] = "2107477264215072012",
        -- fDistanceFromTarget,
        [9] = 20,
        -- fObjectiveTimer,
        [10] = 0,
        -- opt_Objective,
        [12] = {
            section = "LD Gameplay Bricks",
            item = "BRICK_GoTo",
            id = "373019",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_96");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1442726835");
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
                [0] = self.f_box_OutputOrder_v2_96_Out_0,
                [1] = self.f_box_OutputOrder_v2_96_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VisionModeModifier_v2_50()
    local params;
    params = {
        -- intoxicationAmount,
        [0] = 75,
        -- players,
        [1] = "#ED455357",
        -- useAsPercent,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1548834557");
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

function export:OnEnter_box_SetEntity_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1549903285");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_40_Out,
    });
    params = {
        -- Entity,
        [0] = "2108905734807802001",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_51()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_91()
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

function export:OnEnter_box_SetEntity_v2_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1670296660");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_47_Out,
    });
    params = {
        -- Entity,
        [0] = "2107467334756092152",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1698513804");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_83_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "LD Gameplay Bricks",
            item = "BRICK_GoTo",
            id = "373019",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_103");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1700611087");
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
                [0] = self.f_box_OutputOrder_v2_103_Out_0,
                [1] = self.f_box_OutputOrder_v2_103_Out_1,
                [2] = self.f_box_OutputOrder_v2_103_Out_2,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1794000029");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_74_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2108131516029604717",
        -- ObjectiveId,
        [2] = self.o_OasisObject,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_65()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_ColorRemapTextureModifier_v3_53()
    local params;
    params = {
        -- colorRemapSettings,
        [0] = "9015348460973545",
        -- playerGroup,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1858563397");
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
                [0] = self.f_box_OutputOrder_v2_66_Out_0,
                [1] = self.f_box_OutputOrder_v2_66_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_63()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2107467334756092152",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1941614815");
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
        [8] = "MIS_220_B20 script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|1945619922");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_88_Disabled,
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

function export:OnEnter_box_Reach_GoTo_v3_14()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bIsTrigger,
        [1] = false,
        -- bRequiresAllPlayer,
        [2] = false,
        -- bRequiresObjective,
        [3] = false,
        -- bUse2d_ProximityCheck,
        [4] = true,
        -- bUseDetectionModifier,
        [5] = false,
        -- eRadiusTarget,
        [7] = "2107477229167467780",
        -- fDistanceFromTarget,
        [9] = 20,
        -- fObjectiveTimer,
        [10] = 0,
        -- opt_Objective,
        [12] = {
            section = "LD Gameplay Bricks",
            item = "BRICK_GoTo",
            id = "373019",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|2025300211");
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
                [0] = self.f_box_OutputOrder_v2_79_Out_0,
                [1] = self.f_box_OutputOrder_v2_79_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_12()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_90()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107467334749800690",
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_b20.domino|@MIS_220_B20|2118107818");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_85_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_85_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_85_Out,
    });
    params = {
    };
    return params;
end;

function export:OnExit_box_SetOasis_102_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.o_OasisObject = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_68_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    Globals.MIS_220_MASTER.e_globalMarkerID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_4_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.eLocalPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_2_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_40_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    Globals.MIS_220_MASTER.e_SmokeOnWater = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_47_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    Globals.MIS_220_MASTER.e_globalVehicleID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPawnVehicleInfo_85_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicle_box_GetPawnVehicleInfo_85 = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_85_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicle_box_GetPawnVehicleInfo_85 = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_85_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicle_box_GetPawnVehicleInfo_85 = l0:GetDataOutValue(2);
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
