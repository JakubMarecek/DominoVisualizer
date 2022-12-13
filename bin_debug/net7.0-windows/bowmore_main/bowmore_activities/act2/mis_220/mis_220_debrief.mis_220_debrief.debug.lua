LUAC1} -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act2/mis_220/mis_220_debrief.domino
-- User graph: MIS_220_DEBRIEF
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.UIMode.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/BroadcastMessage.lua");
        cboxRes:RegisterBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
        cboxRes:RegisterBox("Domino/System/ColorRemapTextureModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/GroupAddToGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/DynamicLightModifier.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/ExtinguishAllFires.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/GroupIter.lua");
        cboxRes:RegisterBox("Domino/System/IsValueNil_v3.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/OverrideEnvironment_v3.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/SendGSFGenericEvent.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/StartCelebration.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInteractionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/VehicleModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/mis_220/MIS_220_MASTER.Bonfire_Function.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/mis_220/MIS_220_MASTER.FogMoving_Function.debug.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/mis_220/MIS_220_MASTER.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[357605033.bnk]], "CSoundResource");
        cboxRes:LoadResource([[890316766.bnk]], "CSoundResource");
        cboxRes:LoadResource([[439384452.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/mis_220/mis_220_debrief.MIS_220_DEBRIEF.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/DynamicLightModifier.lua")] = {
        stateless = true,
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
                name = "dynamicLightId",
                type = "entity",
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
    metadataTable[GetPathID("Domino/System/ExtinguishAllFires.lua")] = {
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
    metadataTable[GetPathID("Domino/System/StartCelebration.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Ended",
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
                name = "Preset",
                type = "genericdb",
            },
            [1] = {
                name = "TextId",
                type = "oasis",
            },
        },
        dataInCount = 2,
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
    self._name = "MIS_220_DEBRIEF";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF";
    self.gPlayer = nil;
    self.eLocalPlayer = nil;
    self.LocalPlayer = nil;
    self.PlayerVehicle = nil;
    self.Hour = 0;
    self.goodTime = false;
    self.e_currentGroupTorch = nil;
    self.isFireLit = false;
    self.e_EndTorch = nil;
    self.box_UniversalInteractionModifier_v2_106 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_106");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|11012780");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_106_Enabled,
    });
    self.box_VisibilityModifier_80 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|31842166");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_80_Disabled,
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_80_Enabled,
    });
    self.box_SpawnAI_124 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_124;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_124");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|76117121");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_31 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|80945804");
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
        [0] = self.f_box_MultipleAND_v2_31_Out,
    });
    self.box_Reach_GoTo_v3_136 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua");
    l0 = self.box_Reach_GoTo_v3_136;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v3_136");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|123494420");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_Reach_GoTo_v3_136_Success,
    });
    self.box_EntityStatusListener_38 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|160751231");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_38_Loaded,
    });
    self.box_Delay_v5_115 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_115");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|173579105");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_115_TimeElapsed,
    });
    self.box_ProximityRadiusListener_v3_107 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_107");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|184374225");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_107_AllFar,
        -- AllNear,
        [1] = self.f_box_ProximityRadiusListener_v3_107_AllNear,
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_107_Disabled,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_107_Enabled,
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_107_SomeoneFar,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_107_SomeoneNear,
    });
    self.box_EntityStatusListener_81 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|200328744");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_81_Loaded,
    });
    self.box_EntityStatusListener_82 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|294528007");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_82_Loaded,
    });
    self.box_ActivityInitialized_4 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|311164593");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_4_Out,
    });
    self.box_EntityStatusListener_84 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|316047321");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_84_Loaded,
    });
    self.box_UniversalInteractionModifier_v2_113 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_113");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|449279929");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_113_Enabled,
    });
    self.box_MultipleAND_v2_9 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|462843910");
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
        [0] = self.f_box_MultipleAND_v2_9_Out,
    });
    self.box_MultipleOR_128 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_128;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_128");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|472594699");
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
        [0] = self.f_box_MultipleOR_128_Out,
    });
    self.box_UniversalInteractionModifier_v2_111 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_111");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|484959378");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_111_Enabled,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_41 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|490335131");
    l0:SetConnections({
    });
    self.box_ActivityAcknowledgeGate_14 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|495403129");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_14_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_14_Reloaded,
    });
    self.box_GunsForHireSystemModifier_46 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|551259906");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_GunsForHireSystemModifier_46_Enabled,
    });
    self.box_UniversalInteractionModifier_v2_23 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|552169237");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_23_Enabled,
    });
    self.box_MultipleOR_13 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|575239681");
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
    self.box_NarrativeFade_102 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_102");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|578242736");
    l0:SetConnections({
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_102_FadedOut,
    });
    self.box_EntityStatusListener_51 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|623462367");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_51_Loaded,
    });
    self.box_Reach_GoTo_v3_141 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua");
    l0 = self.box_Reach_GoTo_v3_141;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v3_141");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|623886411");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_Reach_GoTo_v3_141_Success,
    });
    self.box_VehicleListener_v3_131 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_131;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_131");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|651215873");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VehicleListener_v3_131_Enabled,
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_131_OnSit,
    });
    self.box_EntityStatusListener_50 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|731235178");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_50_Loaded,
    });
    self.box_StartCelebration_1 = cbox:CreateBox("Domino/System/StartCelebration.lua");
    l0 = self.box_StartCelebration_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartCelebration_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|801282156");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_43 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|835324370");
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
                [0] = self.f_box_OnceOnly_v3_43_Out_0,
            },
            count = 2,
        },
    });
    self.box_EntityStatusListener_83 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|846883102");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_83_Loaded,
    });
    self.box_Music_Quest_v2_67 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|867365722");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_127 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_127;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_127");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1022090936");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_127_Enabled,
    });
    self.box_EntityStatusListener_117 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_117");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1078353263");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_117_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_117_Loaded,
    });
    self.box_EntityStatusListener_97 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_97");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1084433275");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_97_Loaded,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_8 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1108537817");
    l0:SetConnections({
    });
    self.box_GroupIter_112 = cbox:CreateBox("Domino/System/GroupIter.lua");
    l0 = self.box_GroupIter_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupIter_112");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1130099179");
    l0:SetConnections({
        -- EndIter,
        [0] = self.f_box_GroupIter_112_EndIter,
        -- PawnIter,
        [1] = self.f_box_GroupIter_112_PawnIter,
        -- Started,
        [2] = self.f_box_GroupIter_112_Started,
        -- Stopped,
        [3] = self.f_box_GroupIter_112_Stopped,
    });
    self.box_Delay_v5_20 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1167837407");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_20_TimeElapsed,
    });
    self.box_UIMode_86 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.UIMode.debug.lua");
    l0 = self.box_UIMode_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UIMode_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1172887744");
    l0:SetConnections({
        -- OnCinematicMode,
        [0] = self.f_box_UIMode_86_OnCinematicMode,
    });
    self.box_SoundModifier_v2_48 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1210986962");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_68 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1235734198");
    l0:SetConnections({
    });
    self.box_FogMoving_Function_140 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/mis_220/MIS_220_MASTER.FogMoving_Function.debug.lua");
    l0 = self.box_FogMoving_Function_140;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FogMoving_Function_140");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1244131593");
    l0:SetConnections({
    });
    self.box_MultipleOR_142 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_142;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_142");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1303830098");
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
        [0] = self.f_box_MultipleOR_142_Out,
    });
    self.box_UIMode_21 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.UIMode.debug.lua");
    l0 = self.box_UIMode_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UIMode_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1316012260");
    l0:SetConnections({
        -- OnNormalMode,
        [1] = self.f_box_UIMode_21_OnNormalMode,
    });
    self.box_ColorRemapTextureModifier_v3_12 = cbox:CreateBox("Domino/System/ColorRemapTextureModifier_v3.lua");
    l0 = self.box_ColorRemapTextureModifier_v3_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ColorRemapTextureModifier_v3_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1337109451");
    l0:SetConnections({
        -- Removed,
        [1] = self.f_box_ColorRemapTextureModifier_v3_12_Removed,
    });
    self.box_EntityStatusListener_90 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1454088023");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_90_Loaded,
    });
    self.box_Reach_GoTo_v3_36 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua");
    l0 = self.box_Reach_GoTo_v3_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v3_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1502683257");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_Reach_GoTo_v3_36_Success,
    });
    self.box_EntityStatusListener_104 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_104");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1563606186");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_104_Loaded,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_66 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1588401137");
    l0:SetConnections({
    });
    self.box_GroupIter_96 = cbox:CreateBox("Domino/System/GroupIter.lua");
    l0 = self.box_GroupIter_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupIter_96");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1708538286");
    l0:SetConnections({
        -- EndIter,
        [0] = self.f_box_GroupIter_96_EndIter,
        -- PawnIter,
        [1] = self.f_box_GroupIter_96_PawnIter,
        -- Started,
        [2] = self.f_box_GroupIter_96_Started,
        -- Stopped,
        [3] = self.f_box_GroupIter_96_Stopped,
    });
    self.box_NarrativeFade_71 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1736409066");
    l0:SetConnections({
        -- FadedIn,
        [0] = self.f_box_NarrativeFade_71_FadedIn,
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_71_FadedOut,
    });
    self.box_GetPlayersVehicleID_132 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.GetPlayersVehicleID.debug.lua");
    l0 = self.box_GetPlayersVehicleID_132;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayersVehicleID_132");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1747409441");
    l0:SetConnections({
        -- NotInVehicle,
        [0] = self.f_box_GetPlayersVehicleID_132_NotInVehicle,
        -- OneVehicle,
        [1] = self.f_box_GetPlayersVehicleID_132_OneVehicle,
        -- TwoVehicles,
        [2] = self.f_box_GetPlayersVehicleID_132_TwoVehicles,
    });
    self.box_Bonfire_Function_42 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/mis_220/MIS_220_MASTER.Bonfire_Function.debug.lua");
    l0 = self.box_Bonfire_Function_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bonfire_Function_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1832701230");
    l0:SetConnections({
        -- Brick_Started,
        [0] = self.f_box_Bonfire_Function_42_Brick_Started,
        -- Success,
        [3] = self.f_box_Bonfire_Function_42_Success,
    });
    self.box_VisibilityModifier_69 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|2033759092");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_69_Disabled,
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_69_Enabled,
    });
    self.box_NarrativeFade_137 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_137;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_137");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|2085313907");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_78 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|2111373554");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_78_Disabled,
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_78_Enabled,
    });
    self.box_EntityStatusListener_49 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|2129778325");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_49_Loaded,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_17();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|444552297", "444552297", "MIS_220_DEBRIEF", "In", "box_OutputOrder_v2_17.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    
end;

function export:f_box_Simple_Node_116_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_107();
    l0 = self.box_ProximityRadiusListener_v3_107;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|399333768", "399333768", "MIS_220_DEBRIEF", "box_Simple_Node_116.Out", "box_ProximityRadiusListener_v3_107.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_39_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_31();
    l0 = self.box_MultipleAND_v2_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|661917359", "661917359", "MIS_220_DEBRIEF", "box_Simple_Node_39.Out", "box_MultipleAND_v2_31.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
    params = self:OnEnter_box_OutputOrder_v2_76();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|338715516", "338715516", "MIS_220_DEBRIEF", "box_Simple_Node_39.Out", "box_OutputOrder_v2_76.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_30_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_19();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1419142836", "1419142836", "MIS_220_DEBRIEF", "box_Simple_Node_30.Out", "box_OutputOrder_v2_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_Delay_v5_115();
    l0 = self.box_Delay_v5_115;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1154886630", "1154886630", "MIS_220_DEBRIEF", "box_Simple_Node_30.Out", "box_Delay_v5_115.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_87_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_74();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1743623529", "1743623529", "MIS_220_DEBRIEF", "box_Simple_Node_87.Out", "box_OutputOrder_v2_74.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_Reach_GoTo_v3_36();
    l0 = self.box_Reach_GoTo_v3_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1002807787", "1002807787", "MIS_220_DEBRIEF", "box_Simple_Node_87.Out", "box_Reach_GoTo_v3_36.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_ProximityRadiusListener_v3_107();
    l0 = self.box_ProximityRadiusListener_v3_107;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|555720095", "555720095", "MIS_220_DEBRIEF", "box_Simple_Node_87.Out", "box_ProximityRadiusListener_v3_107.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_Reach_GoTo_v3_141();
    l0 = self.box_Reach_GoTo_v3_141;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|21500262", "21500262", "MIS_220_DEBRIEF", "box_Simple_Node_87.Out", "box_Reach_GoTo_v3_141.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_Bonfire_Function_42();
    l0 = self.box_Bonfire_Function_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1835435813", "1835435813", "MIS_220_DEBRIEF", "box_Simple_Node_87.Out", "box_Bonfire_Function_42.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
    params = self:OnEnter_box_Reach_GoTo_v3_136();
    l0 = self.box_Reach_GoTo_v3_136;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|100895004", "100895004", "MIS_220_DEBRIEF", "box_Simple_Node_87.Out", "box_Reach_GoTo_v3_136.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_53_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_128;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|922407260", "922407260", "MIS_220_DEBRIEF", "box_Simple_Node_53.Out", "box_MultipleOR_128.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UniversalInteractionModifier_v2_106_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_SendGSFGenericEvent_105();
    l0 = self.box_UniversalInteractionModifier_v2_106;
    l1 = Boxes[GetPathID("Domino/System/SendGSFGenericEvent.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|752666810", "752666810", "MIS_220_DEBRIEF", "box_UniversalInteractionModifier_v2_106.Enabled", "box_SendGSFGenericEvent_105.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_80_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_DynamicLightModifier_79();
    l0 = self.box_VisibilityModifier_80;
    l1 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|927573544", "927573544", "MIS_220_DEBRIEF", "box_VisibilityModifier_80.Disabled", "box_DynamicLightModifier_79.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_80_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_DynamicLightModifier_79();
    l0 = self.box_VisibilityModifier_80;
    l1 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|253193494", "253193494", "MIS_220_DEBRIEF", "box_VisibilityModifier_80.Enabled", "box_DynamicLightModifier_79.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_31_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = self.box_MultipleAND_v2_31;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1545637027", "1545637027", "MIS_220_DEBRIEF", "box_MultipleAND_v2_31.Out", "box_OutputOrder_v2_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_45_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_72();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|993729685", "993729685", "MIS_220_DEBRIEF", "box_ActivityObjectiveMarkerModifier_v3_45.Disabled", "box_ActivityObjectiveMarkerModifier_v3_72.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Reach_GoTo_v3_136_Success()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_129();
    l0 = self.box_Reach_GoTo_v3_136;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1552868148", "1552868148", "MIS_220_DEBRIEF", "box_Reach_GoTo_v3_136.Success", "box_ActivityObjectiveMarkerModifier_v3_129.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_145_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_138();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1203612763", "1203612763", "MIS_220_DEBRIEF", "box_ActivityObjectiveMarkerModifier_v3_145.Disabled", "box_ActivityObjectiveMarkerModifier_v3_138.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_143_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_142;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1156722011", "1156722011", "MIS_220_DEBRIEF", "box_ActivityObjectiveMarkerModifier_v3_143.Disabled", "box_MultipleOR_142.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_38_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_DynamicLightModifier_52();
    l0 = self.box_EntityStatusListener_38;
    l1 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|2092930448", "2092930448", "MIS_220_DEBRIEF", "box_EntityStatusListener_38.Loaded", "box_DynamicLightModifier_52.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_115_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_GroupIter_112();
    l0 = self.box_Delay_v5_115;
    l1 = self.box_GroupIter_112;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1702856252", "1702856252", "MIS_220_DEBRIEF", "box_Delay_v5_115.TimeElapsed", "box_GroupIter_112.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_107_AllFar()
    self:OnExit_box_ProximityRadiusListener_v3_107_AllFar();
end;

function export:f_box_ProximityRadiusListener_v3_107_AllNear()
    self:OnExit_box_ProximityRadiusListener_v3_107_AllNear();
end;

function export:f_box_ProximityRadiusListener_v3_107_SomeoneFar()
    self:OnExit_box_ProximityRadiusListener_v3_107_SomeoneFar();
end;

function export:f_box_ProximityRadiusListener_v3_107_SomeoneNear()
    local params, l0, l1;
    self:OnExit_box_ProximityRadiusListener_v3_107_SomeoneNear();
    params = self:OnEnter_box_Compare_Boolean_110();
    l0 = self.box_ProximityRadiusListener_v3_107;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|989838189", "989838189", "MIS_220_DEBRIEF", "box_ProximityRadiusListener_v3_107.SomeoneNear", "box_Compare_Boolean_110.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_81_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_69();
    l0 = self.box_EntityStatusListener_81;
    l1 = self.box_VisibilityModifier_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|2118296374", "2118296374", "MIS_220_DEBRIEF", "box_EntityStatusListener_81.Loaded", "box_VisibilityModifier_69.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_114_Out()
    self:OnExit_box_SetBoolean_v2_114_Out();
end;

function export:f_box_OutputOrder_v2_123_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_120();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|298914964", "298914964", "MIS_220_DEBRIEF", "box_OutputOrder_v2_123.Out", "box_MissionBlockLayer_120.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_123_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1433033168", "1433033168", "MIS_220_DEBRIEF", "box_OutputOrder_v2_123.Out", "box_OnceOnly_v3_43.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_123_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupIter_96();
    l0 = self.box_GroupIter_96;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1414172206", "1414172206", "MIS_220_DEBRIEF", "box_OutputOrder_v2_123.Out", "box_GroupIter_96.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_GetLocalPlayer_v2_15_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_15_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_40();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1847575159", "1847575159", "MIS_220_DEBRIEF", "box_GetLocalPlayer_v2_15.Out", "box_IsValueNil_v3_40.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_82_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_78();
    l0 = self.box_EntityStatusListener_82;
    l1 = self.box_VisibilityModifier_78;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|586902721", "586902721", "MIS_220_DEBRIEF", "box_EntityStatusListener_82.Loaded", "box_VisibilityModifier_78.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_ActivityInitialized_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_2();
    l0 = self.box_ActivityInitialized_4;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|546236733", "546236733", "MIS_220_DEBRIEF", "box_ActivityInitialized_4.Out", "box_GetPlayerGroup_v2_2.FriendlyPlayers", l0:GetLuaBox(), l1:GetLuaBox());
    -- FriendlyPlayers
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_84_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_80();
    l0 = self.box_EntityStatusListener_84;
    l1 = self.box_VisibilityModifier_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|109120402", "109120402", "MIS_220_DEBRIEF", "box_EntityStatusListener_84.Loaded", "box_VisibilityModifier_80.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_SendGSFGenericEvent_108_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SendGSFGenericEvent.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupAddToGroup_v2_109();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1938792480", "1938792480", "MIS_220_DEBRIEF", "box_SendGSFGenericEvent_108.Out", "box_GroupAddToGroup_v2_109.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_113_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_SendGSFGenericEvent_108();
    l0 = self.box_UniversalInteractionModifier_v2_113;
    l1 = Boxes[GetPathID("Domino/System/SendGSFGenericEvent.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1736533236", "1736533236", "MIS_220_DEBRIEF", "box_UniversalInteractionModifier_v2_113.Enabled", "box_SendGSFGenericEvent_108.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_BroadcastMessage_118();
    l0 = self.box_MultipleAND_v2_9;
    l1 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1217409692", "1217409692", "MIS_220_DEBRIEF", "box_MultipleAND_v2_9.Out", "box_BroadcastMessage_118.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_128_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_144();
    l0 = self.box_MultipleOR_128;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|768248915", "768248915", "MIS_220_DEBRIEF", "box_MultipleOR_128.Out", "box_OutputOrder_v2_144.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_110_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_106();
    l0 = self.box_UniversalInteractionModifier_v2_106;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|474870500", "474870500", "MIS_220_DEBRIEF", "box_Compare_Boolean_110.A_is_False", "box_UniversalInteractionModifier_v2_106.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UniversalInteractionModifier_v2_111_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_113();
    l0 = self.box_UniversalInteractionModifier_v2_111;
    l1 = self.box_UniversalInteractionModifier_v2_113;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|261196353", "261196353", "MIS_220_DEBRIEF", "box_UniversalInteractionModifier_v2_111.Enabled", "box_UniversalInteractionModifier_v2_113.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ActivityAcknowledgeGate_14_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_14;
    l1 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1909789333", "1909789333", "MIS_220_DEBRIEF", "box_ActivityAcknowledgeGate_14.Acknowledged", "box_MultipleOR_13.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_14_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_102();
    l0 = self.box_ActivityAcknowledgeGate_14;
    l1 = self.box_NarrativeFade_102;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1182200949", "1182200949", "MIS_220_DEBRIEF", "box_ActivityAcknowledgeGate_14.Reloaded", "box_NarrativeFade_102.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_GunsForHireSystemModifier_46_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_7();
    l0 = self.box_GunsForHireSystemModifier_46;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1729501388", "1729501388", "MIS_220_DEBRIEF", "box_GunsForHireSystemModifier_46.Enabled", "box_ActivityEnd_7.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_23_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_127();
    l0 = self.box_UniversalInteractionModifier_v2_23;
    l1 = self.box_UniversalInteractionModifier_v2_127;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|470147762", "470147762", "MIS_220_DEBRIEF", "box_UniversalInteractionModifier_v2_23.Enabled", "box_UniversalInteractionModifier_v2_127.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_13_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_13;
    l1 = self.box_ActivityInitialized_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|36351210", "36351210", "MIS_220_DEBRIEF", "box_MultipleOR_13.Out", "box_ActivityInitialized_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_NarrativeFade_102_FadedOut()
    local l0, l1;
    l0 = self.box_NarrativeFade_102;
    l1 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|465611527", "465611527", "MIS_220_DEBRIEF", "box_NarrativeFade_102.FadedOut", "box_MultipleOR_13.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EndActivityObjective_v2_100_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bonfire_Function_42();
    l0 = self.box_Bonfire_Function_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|2034188826", "2034188826", "MIS_220_DEBRIEF", "box_EndActivityObjective_v2_100.Out", "box_Bonfire_Function_42.In_Marker", clone:GetLuaBox(), l0:GetLuaBox());
    -- In_Marker
    l0:Exec(2, params);
end;

function export:f_box_BroadcastMessage_118_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_53();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1709179090", "1709179090", "MIS_220_DEBRIEF", "box_BroadcastMessage_118.Out", "box_Simple_Node_53.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_BroadcastMessage_11_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_GunsForHireSystemModifier_46();
    l0 = self.box_GunsForHireSystemModifier_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|541731187", "541731187", "MIS_220_DEBRIEF", "box_BroadcastMessage_11.Out", "box_GunsForHireSystemModifier_46.EnableGFHSystem", clone:GetLuaBox(), l0:GetLuaBox());
    -- EnableGFHSystem
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_51_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_DynamicLightModifier_101();
    l0 = self.box_EntityStatusListener_51;
    l1 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1851720188", "1851720188", "MIS_220_DEBRIEF", "box_EntityStatusListener_51.Loaded", "box_DynamicLightModifier_101.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Reach_GoTo_v3_141_Success()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_145();
    l0 = self.box_Reach_GoTo_v3_141;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|2025507927", "2025507927", "MIS_220_DEBRIEF", "box_Reach_GoTo_v3_141.Success", "box_ActivityObjectiveMarkerModifier_v3_145.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_138_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_27();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|907828111", "907828111", "MIS_220_DEBRIEF", "box_ActivityObjectiveMarkerModifier_v3_138.Disabled", "box_ActivityObjectiveMarkerModifier_v3_27.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_131_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_133();
    l0 = self.box_VehicleListener_v3_131;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|487305715", "487305715", "MIS_220_DEBRIEF", "box_VehicleListener_v3_131.Enabled", "box_AddActivityObjective_v2_133.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_131_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_134();
    l0 = self.box_VehicleListener_v3_131;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1290812433", "1290812433", "MIS_220_DEBRIEF", "box_VehicleListener_v3_131.OnSit", "box_EndActivityObjective_v2_134.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_125_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_125_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_9();
    l0 = self.box_MultipleAND_v2_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|317900066", "317900066", "MIS_220_DEBRIEF", "box_SetEntity_v2_125.Out", "box_MultipleAND_v2_9.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_76_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_69();
    l0 = self.box_VisibilityModifier_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1451332684", "1451332684", "MIS_220_DEBRIEF", "box_OutputOrder_v2_76.Out", "box_VisibilityModifier_69.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_76_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_78();
    l0 = self.box_VisibilityModifier_78;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|606365448", "606365448", "MIS_220_DEBRIEF", "box_OutputOrder_v2_76.Out", "box_VisibilityModifier_78.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_76_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_80();
    l0 = self.box_VisibilityModifier_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1549715606", "1549715606", "MIS_220_DEBRIEF", "box_OutputOrder_v2_76.Out", "box_VisibilityModifier_80.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_76_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_70();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1382561207", "1382561207", "MIS_220_DEBRIEF", "box_OutputOrder_v2_76.Out", "box_DynamicLightModifier_70.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_76_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_101();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1893177346", "1893177346", "MIS_220_DEBRIEF", "box_OutputOrder_v2_76.Out", "box_DynamicLightModifier_101.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_76_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_52();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|794953483", "794953483", "MIS_220_DEBRIEF", "box_OutputOrder_v2_76.Out", "box_DynamicLightModifier_52.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_76_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_85();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1970623695", "1970623695", "MIS_220_DEBRIEF", "box_OutputOrder_v2_76.Out", "box_DynamicLightModifier_85.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_76_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_32();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|146316320", "146316320", "MIS_220_DEBRIEF", "box_OutputOrder_v2_76.Out", "box_DynamicLightModifier_32.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetTimeOfDay_98_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_41();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|2042307059", "2042307059", "MIS_220_DEBRIEF", "box_SetTimeOfDay_98.Out", "box_CHEAT_SetEnvironmentTimeScale_41.SetTimeScale", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeScale
    l0:Exec(0, params);
end;

function export:f_box_EntityStatusListener_50_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_DynamicLightModifier_70();
    l0 = self.box_EntityStatusListener_50;
    l1 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1572820219", "1572820219", "MIS_220_DEBRIEF", "box_EntityStatusListener_50.Loaded", "box_DynamicLightModifier_70.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_144_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_GetPlayersVehicleID_132;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|220120736", "220120736", "MIS_220_DEBRIEF", "box_OutputOrder_v2_144.Out", "box_GetPlayersVehicleID_132.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_144_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_FogMoving_Function_140();
    l0 = self.box_FogMoving_Function_140;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|626774085", "626774085", "MIS_220_DEBRIEF", "box_OutputOrder_v2_144.Out", "box_FogMoving_Function_140.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_144_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_137();
    l0 = self.box_NarrativeFade_137;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|400552833", "400552833", "MIS_220_DEBRIEF", "box_OutputOrder_v2_144.Out", "box_NarrativeFade_137.FadeIn", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeIn
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_144_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_66();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_66;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|2018494546", "2018494546", "MIS_220_DEBRIEF", "box_OutputOrder_v2_144.Out", "box_CHEAT_SetEnvironmentTimeScale_66.SetTimeScale", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeScale
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_144_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_68();
    l0 = self.box_Music_Quest_v2_68;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|352105903", "352105903", "MIS_220_DEBRIEF", "box_OutputOrder_v2_144.Out", "box_Music_Quest_v2_68.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_129_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_138();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1016374200", "1016374200", "MIS_220_DEBRIEF", "box_ActivityObjectiveMarkerModifier_v3_129.Disabled", "box_ActivityObjectiveMarkerModifier_v3_138.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_25_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_31();
    l0 = self.box_MultipleAND_v2_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|2073965457", "2073965457", "MIS_220_DEBRIEF", "box_OutputOrder_v2_25.Out", "box_MultipleAND_v2_31.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_25_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_30();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1936654049", "1936654049", "MIS_220_DEBRIEF", "box_OutputOrder_v2_25.Out", "box_Simple_Node_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_25_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ColorRemapTextureModifier_v3_12();
    l0 = self.box_ColorRemapTextureModifier_v3_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|961626178", "961626178", "MIS_220_DEBRIEF", "box_OutputOrder_v2_25.Out", "box_ColorRemapTextureModifier_v3_12.Remove", clone:GetLuaBox(), l0:GetLuaBox());
    -- Remove
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_25_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_88();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|934600671", "934600671", "MIS_220_DEBRIEF", "box_OutputOrder_v2_25.Out", "box_ParticleSystem_v3_88.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_25_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_114();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1465126790", "1465126790", "MIS_220_DEBRIEF", "box_OutputOrder_v2_25.Out", "box_SetBoolean_v2_114.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_43_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetTimeOfDay_98();
    l0 = self.box_OnceOnly_v3_43;
    l1 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1926200641", "1926200641", "MIS_220_DEBRIEF", "box_OnceOnly_v3_43.Out", "box_SetTimeOfDay_98.SetTimeOfDay", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeOfDay
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_83_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_DynamicLightModifier_37();
    l0 = self.box_EntityStatusListener_83;
    l1 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|60414746", "60414746", "MIS_220_DEBRIEF", "box_EntityStatusListener_83.Loaded", "box_DynamicLightModifier_37.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_54_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_139();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1521840375", "1521840375", "MIS_220_DEBRIEF", "box_OutputOrder_v2_54.Out", "box_AddActivityObjective_v2_139.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_54_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_87();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|50943845", "50943845", "MIS_220_DEBRIEF", "box_OutputOrder_v2_54.Out", "box_Simple_Node_87.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_2_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_2_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_15();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|413033885", "413033885", "MIS_220_DEBRIEF", "box_GetPlayerGroup_v2_2.Out", "box_GetLocalPlayer_v2_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_127_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_SendGSFGenericEvent_24();
    l0 = self.box_UniversalInteractionModifier_v2_127;
    l1 = Boxes[GetPathID("Domino/System/SendGSFGenericEvent.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|702901514", "702901514", "MIS_220_DEBRIEF", "box_UniversalInteractionModifier_v2_127.Enabled", "box_SendGSFGenericEvent_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_121_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_97();
    l0 = self.box_EntityStatusListener_97;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1418956334", "1418956334", "MIS_220_DEBRIEF", "box_OutputOrder_v2_121.Out", "box_EntityStatusListener_97.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_121_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_117();
    l0 = self.box_EntityStatusListener_117;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1711701943", "1711701943", "MIS_220_DEBRIEF", "box_OutputOrder_v2_121.Out", "box_EntityStatusListener_117.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_117_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_124();
    l0 = self.box_EntityStatusListener_117;
    l1 = self.box_SpawnAI_124;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|162277822", "162277822", "MIS_220_DEBRIEF", "box_EntityStatusListener_117.Enabled", "box_SpawnAI_124.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_117_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_126();
    l0 = self.box_EntityStatusListener_117;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|385366345", "385366345", "MIS_220_DEBRIEF", "box_EntityStatusListener_117.Loaded", "box_VehicleModifier_v2_126.SetAsUsable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsUsable
    l1:Exec(7, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_97_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_125();
    l0 = self.box_EntityStatusListener_97;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1394595834", "1394595834", "MIS_220_DEBRIEF", "box_EntityStatusListener_97.Loaded", "box_SetEntity_v2_125.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_99_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_99_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_119();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|248536320", "248536320", "MIS_220_DEBRIEF", "box_SetEntity_v2_99.Out", "box_SetEntity_v2_119.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_72_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_27();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1490500184", "1490500184", "MIS_220_DEBRIEF", "box_ActivityObjectiveMarkerModifier_v3_72.Disabled", "box_ActivityObjectiveMarkerModifier_v3_27.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupIter_112_PawnIter()
    local params, l0, l1;
    self:OnExit_box_GroupIter_112_PawnIter();
    params = self:OnEnter_box_UniversalInteractionModifier_v2_111();
    l0 = self.box_GroupIter_112;
    l1 = self.box_UniversalInteractionModifier_v2_111;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1315467000", "1315467000", "MIS_220_DEBRIEF", "box_GroupIter_112.PawnIter", "box_UniversalInteractionModifier_v2_111.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_120_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_121();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1936997145", "1936997145", "MIS_220_DEBRIEF", "box_MissionBlockLayer_120.Activated", "box_OutputOrder_v2_121.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_20_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_20;
    l1 = self.box_UIMode_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1123002770", "1123002770", "MIS_220_DEBRIEF", "box_Delay_v5_20.TimeElapsed", "box_UIMode_21.NormalMode", l0:GetLuaBox(), l1:GetLuaBox());
    -- NormalMode
    l1:Exec(1, {
    });
end;

function export:f_box_EndActivityObjective_v2_134_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_143();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1232917036", "1232917036", "MIS_220_DEBRIEF", "box_EndActivityObjective_v2_134.Out", "box_ActivityObjectiveMarkerModifier_v3_143.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UIMode_86_OnCinematicMode()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_71();
    l0 = self.box_UIMode_86;
    l1 = self.box_NarrativeFade_71;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|156719267", "156719267", "MIS_220_DEBRIEF", "box_UIMode_86.OnCinematicMode", "box_NarrativeFade_71.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_142_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_54();
    l0 = self.box_MultipleOR_142;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|997210483", "997210483", "MIS_220_DEBRIEF", "box_MultipleOR_142.Out", "box_OutputOrder_v2_54.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UIMode_21_OnNormalMode()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_71();
    l0 = self.box_UIMode_21;
    l1 = self.box_NarrativeFade_71;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1283415103", "1283415103", "MIS_220_DEBRIEF", "box_UIMode_21.OnNormalMode", "box_NarrativeFade_71.FadeIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeIn
    l1:Exec(0, params);
end;

function export:f_box_ColorRemapTextureModifier_v3_12_Removed()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideEnvironment_v3_10();
    l0 = self.box_ColorRemapTextureModifier_v3_12;
    l1 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1800106365", "1800106365", "MIS_220_DEBRIEF", "box_ColorRemapTextureModifier_v3_12.Removed", "box_OverrideEnvironment_v3_10.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1901889505", "1901889505", "MIS_220_DEBRIEF", "box_OutputOrder_v2_17.Out", "box_ActivityAcknowledgeGate_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_17_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_16();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|398179709", "398179709", "MIS_220_DEBRIEF", "box_OutputOrder_v2_17.Out", "box_Print_v2_16.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_90_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_88();
    l0 = self.box_EntityStatusListener_90;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1688543576", "1688543576", "MIS_220_DEBRIEF", "box_EntityStatusListener_90.Loaded", "box_ParticleSystem_v3_88.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Reach_GoTo_v3_36_Success()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_45();
    l0 = self.box_Reach_GoTo_v3_36;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|834317324", "834317324", "MIS_220_DEBRIEF", "box_Reach_GoTo_v3_36.Success", "box_ActivityObjectiveMarkerModifier_v3_45.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_UIMode_86;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1933271751", "1933271751", "MIS_220_DEBRIEF", "box_OutputOrder_v2_19.Out", "box_UIMode_86.CinematicMode", clone:GetLuaBox(), l0:GetLuaBox());
    -- CinematicMode
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetTimeOfDay_77();
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|387580272", "387580272", "MIS_220_DEBRIEF", "box_OutputOrder_v2_5.Out", "box_SetTimeOfDay_77.SetTimeOfDay", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeOfDay
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StartCelebration_1();
    l0 = self.box_StartCelebration_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|527250834", "527250834", "MIS_220_DEBRIEF", "box_OutputOrder_v2_5.Out", "box_StartCelebration_1.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_5_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_48();
    l0 = self.box_SoundModifier_v2_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1735616854", "1735616854", "MIS_220_DEBRIEF", "box_OutputOrder_v2_5.Out", "box_SoundModifier_v2_48.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_5_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExtinguishAllFires_65();
    l0 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1354197977", "1354197977", "MIS_220_DEBRIEF", "box_OutputOrder_v2_5.Out", "box_ExtinguishAllFires_65.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_104_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_DynamicLightModifier_85();
    l0 = self.box_EntityStatusListener_104;
    l1 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|357680018", "357680018", "MIS_220_DEBRIEF", "box_EntityStatusListener_104.Loaded", "box_DynamicLightModifier_85.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_40_No()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_128;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1148025524", "1148025524", "MIS_220_DEBRIEF", "box_IsValueNil_v3_40.No", "box_MultipleOR_128.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsValueNil_v3_40_Yes()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_123();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1288058306", "1288058306", "MIS_220_DEBRIEF", "box_IsValueNil_v3_40.Yes", "box_OutputOrder_v2_123.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_119_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_119_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_9();
    l0 = self.box_MultipleAND_v2_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1655099145", "1655099145", "MIS_220_DEBRIEF", "box_SetEntity_v2_119.Out", "box_MultipleAND_v2_9.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_GroupIter_96_PawnIter()
    local params, l0, l1;
    self:OnExit_box_GroupIter_96_PawnIter();
    params = self:OnEnter_box_UniversalInteractionModifier_v2_23();
    l0 = self.box_GroupIter_96;
    l1 = self.box_UniversalInteractionModifier_v2_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|601907831", "601907831", "MIS_220_DEBRIEF", "box_GroupIter_96.PawnIter", "box_UniversalInteractionModifier_v2_23.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_VehicleModifier_v2_126_OnSetAsUsable()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_99();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1615769063", "1615769063", "MIS_220_DEBRIEF", "box_VehicleModifier_v2_126.OnSetAsUsable", "box_SetEntity_v2_99.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NarrativeFade_71_FadedIn()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_39();
    l0 = self.box_NarrativeFade_71;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|967343444", "967343444", "MIS_220_DEBRIEF", "box_NarrativeFade_71.FadedIn", "box_Simple_Node_39.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NarrativeFade_71_FadedOut()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = self.box_NarrativeFade_71;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|978888324", "978888324", "MIS_220_DEBRIEF", "box_NarrativeFade_71.FadedOut", "box_OutputOrder_v2_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_74_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_81();
    l0 = self.box_EntityStatusListener_81;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|364170207", "364170207", "MIS_220_DEBRIEF", "box_OutputOrder_v2_74.Out", "box_EntityStatusListener_81.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_74_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_82();
    l0 = self.box_EntityStatusListener_82;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1795796226", "1795796226", "MIS_220_DEBRIEF", "box_OutputOrder_v2_74.Out", "box_EntityStatusListener_82.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_74_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_84();
    l0 = self.box_EntityStatusListener_84;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1185069167", "1185069167", "MIS_220_DEBRIEF", "box_OutputOrder_v2_74.Out", "box_EntityStatusListener_84.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_74_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_50();
    l0 = self.box_EntityStatusListener_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|694999380", "694999380", "MIS_220_DEBRIEF", "box_OutputOrder_v2_74.Out", "box_EntityStatusListener_50.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_74_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_51();
    l0 = self.box_EntityStatusListener_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|465686367", "465686367", "MIS_220_DEBRIEF", "box_OutputOrder_v2_74.Out", "box_EntityStatusListener_51.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_74_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_38();
    l0 = self.box_EntityStatusListener_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|95819836", "95819836", "MIS_220_DEBRIEF", "box_OutputOrder_v2_74.Out", "box_EntityStatusListener_38.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_74_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_104();
    l0 = self.box_EntityStatusListener_104;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1407394566", "1407394566", "MIS_220_DEBRIEF", "box_OutputOrder_v2_74.Out", "box_EntityStatusListener_104.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_74_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_49();
    l0 = self.box_EntityStatusListener_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|353783232", "353783232", "MIS_220_DEBRIEF", "box_OutputOrder_v2_74.Out", "box_EntityStatusListener_49.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_74_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_83();
    l0 = self.box_EntityStatusListener_83;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|843294685", "843294685", "MIS_220_DEBRIEF", "box_OutputOrder_v2_74.Out", "box_EntityStatusListener_83.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPlayersVehicleID_132_NotInVehicle()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleListener_v3_131();
    l0 = self.box_GetPlayersVehicleID_132;
    l1 = self.box_VehicleListener_v3_131;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|983258422", "983258422", "MIS_220_DEBRIEF", "box_GetPlayersVehicleID_132.NotInVehicle", "box_VehicleListener_v3_131.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GetPlayersVehicleID_132_OneVehicle()
    local l0, l1;
    l0 = self.box_GetPlayersVehicleID_132;
    l1 = self.box_MultipleOR_142;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1751326775", "1751326775", "MIS_220_DEBRIEF", "box_GetPlayersVehicleID_132.OneVehicle", "box_MultipleOR_142.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPlayersVehicleID_132_TwoVehicles()
    local l0, l1;
    l0 = self.box_GetPlayersVehicleID_132;
    l1 = self.box_MultipleOR_142;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1265129637", "1265129637", "MIS_220_DEBRIEF", "box_GetPlayersVehicleID_132.TwoVehicles", "box_MultipleOR_142.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_11();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1782950501", "1782950501", "MIS_220_DEBRIEF", "box_OutputOrder_v2_3.Out", "box_BroadcastMessage_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_8();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|416079115", "416079115", "MIS_220_DEBRIEF", "box_OutputOrder_v2_3.Out", "box_CHEAT_SetEnvironmentTimeScale_8.SetTimeScale", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeScale
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_3_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_6();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|800284826", "800284826", "MIS_220_DEBRIEF", "box_OutputOrder_v2_3.Out", "box_Print_v2_6.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_67();
    l0 = self.box_Music_Quest_v2_67;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1954972961", "1954972961", "MIS_220_DEBRIEF", "box_OutputOrder_v2_3.Out", "box_Music_Quest_v2_67.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_3_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_116();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1975171837", "1975171837", "MIS_220_DEBRIEF", "box_OutputOrder_v2_3.Out", "box_Simple_Node_116.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Bonfire_Function_42_Brick_Started()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_90();
    l0 = self.box_Bonfire_Function_42;
    l1 = self.box_EntityStatusListener_90;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|325433497", "325433497", "MIS_220_DEBRIEF", "box_Bonfire_Function_42.Brick_Started", "box_EntityStatusListener_90.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Bonfire_Function_42_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_25();
    l0 = self.box_Bonfire_Function_42;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|282428866", "282428866", "MIS_220_DEBRIEF", "box_Bonfire_Function_42.Success", "box_OutputOrder_v2_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetTimeOfDay_77_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_20();
    l0 = self.box_Delay_v5_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1224347183", "1224347183", "MIS_220_DEBRIEF", "box_SetTimeOfDay_77.Out", "box_Delay_v5_20.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_AddActivityObjective_v2_139_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_129();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|80087517", "80087517", "MIS_220_DEBRIEF", "box_AddActivityObjective_v2_139.Out", "box_ActivityObjectiveMarkerModifier_v3_129.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_27_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_100();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1772296850", "1772296850", "MIS_220_DEBRIEF", "box_ActivityObjectiveMarkerModifier_v3_27.Disabled", "box_EndActivityObjective_v2_100.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_133_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_143();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|607610321", "607610321", "MIS_220_DEBRIEF", "box_AddActivityObjective_v2_133.Out", "box_ActivityObjectiveMarkerModifier_v3_143.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_69_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_DynamicLightModifier_26();
    l0 = self.box_VisibilityModifier_69;
    l1 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1990392317", "1990392317", "MIS_220_DEBRIEF", "box_VisibilityModifier_69.Disabled", "box_DynamicLightModifier_26.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_69_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_DynamicLightModifier_26();
    l0 = self.box_VisibilityModifier_69;
    l1 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|313600056", "313600056", "MIS_220_DEBRIEF", "box_VisibilityModifier_69.Enabled", "box_DynamicLightModifier_26.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_78_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_DynamicLightModifier_44();
    l0 = self.box_VisibilityModifier_78;
    l1 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1531766291", "1531766291", "MIS_220_DEBRIEF", "box_VisibilityModifier_78.Disabled", "box_DynamicLightModifier_44.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_78_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_DynamicLightModifier_44();
    l0 = self.box_VisibilityModifier_78;
    l1 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1576210707", "1576210707", "MIS_220_DEBRIEF", "box_VisibilityModifier_78.Enabled", "box_DynamicLightModifier_44.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_49_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_DynamicLightModifier_32();
    l0 = self.box_EntityStatusListener_49;
    l1 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|343666265", "343666265", "MIS_220_DEBRIEF", "box_EntityStatusListener_49.Loaded", "box_DynamicLightModifier_32.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_116()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_116");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|@cleanup");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_116_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|@fxEnd");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_39_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|@fxStart");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_30_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|@startUp");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_87_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|@VehicleSet");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_53_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_106()
    local params;
    params = {
        -- state,
        [3] = false,
        -- usableEntity,
        [4] = self.e_currentGroupTorch,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|14129826");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2109746549534785015",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_80()
    local params;
    params = {
        -- players,
        [0] = self.gPlayer,
        -- targets,
        [1] = "2109746540558974435",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_124()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108297009803831932",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_31()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|81480903");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_45_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2109997215591247492",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_220_B30_GOAL",
            id = "1030155",
        },
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|120182523");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2109746545332092399",
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v3_136()
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
        [7] = "2109997215591247492",
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

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_145()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_145");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|139427011");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_145_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2109997215591247492",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_220_B30_GOAL",
            id = "1030155",
        },
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_143()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_143");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|145132051");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_143_Disabled,
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

function export:OnEnter_box_EntityStatusListener_38()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109746545332092399",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_115()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_107()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = "#7E21C68B",
        -- farZone,
        [2] = 100,
        -- id2,
        [3] = self.eLocalPlayer,
        -- nearZone,
        [4] = 100,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_81()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109675146601041486",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_114()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_114");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|208035891");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_114_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|248868701");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2109675113310850632",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_123()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_123");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|276145922");
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
                [0] = self.f_box_OutputOrder_v2_123_Out_0,
                [1] = self.f_box_OutputOrder_v2_123_Out_1,
                [2] = self.f_box_OutputOrder_v2_123_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|278640752");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_15_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_82()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109675113310850632",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_84()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109746540558974435",
    };
    return params;
end;

function export:OnEnter_box_SendGSFGenericEvent_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SendGSFGenericEvent.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SendGSFGenericEvent_108");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|347233406");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SendGSFGenericEvent_108_Out,
    });
    params = {
        -- entity,
        [0] = self.e_EndTorch,
        -- eventName,
        [1] = "mis_220_firebeacons_off",
    };
    return params;
end;

function export:OnEnter_box_SendGSFGenericEvent_105()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SendGSFGenericEvent.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SendGSFGenericEvent_105");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|350269332");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = self.e_currentGroupTorch,
        -- eventName,
        [1] = "mis_220_firebeacons_off",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_113()
    local params;
    params = {
        -- state,
        [3] = true,
        -- usableEntity,
        [4] = self.e_EndTorch,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_9()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_110()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_110");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|483741713");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_110_A_is_False,
    });
    params = {
        -- A,
        [0] = self.isFireLit,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_111()
    local params;
    params = {
        -- state,
        [3] = false,
        -- usableEntity,
        [4] = self.e_EndTorch,
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

function export:OnEnter_box_GunsForHireSystemModifier_46()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = true,
        -- immediateDespawn,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_23()
    local params;
    params = {
        -- state,
        [3] = false,
        -- usableEntity,
        [4] = self.e_currentGroupTorch,
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_102()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_100");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|581735151");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_100_Out,
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

function export:OnEnter_box_BroadcastMessage_118()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_118");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|583860262");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_118_Out,
    });
    params = {
        -- Message,
        [0] = "mis_220_vehicle_set",
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|617067778");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_11_Out,
    });
    params = {
        -- Message,
        [0] = "MIS_220_COMPLETED",
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
        [2] = "2109746544564534763",
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v3_141()
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
        [7] = "2108059304970947353",
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

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_138()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_138");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|650287119");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_138_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2108059304970947353",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_220_B30_GOAL",
            id = "1030155",
        },
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_131()
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

function export:OnEnter_box_ActivityEnd_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|661869778");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_125()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_125");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|666139963");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_125_Out,
    });
    params = {
        -- Entity,
        [0] = "2108905783451242661",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|680804756");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 8,
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
                [4] = self.f_box_OutputOrder_v2_76_Out_4,
                [5] = self.f_box_OutputOrder_v2_76_Out_5,
                [6] = self.f_box_OutputOrder_v2_76_Out_6,
                [7] = self.f_box_OutputOrder_v2_76_Out_7,
            },
            count = 8,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_98");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|686929176");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_98_Out,
    });
    params = {
        -- Hour,
        [0] = 23,
        -- Minute,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|692464099");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2109746540558974435",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|723826903");
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
        [8] = "MIS_220_DEBRIEF script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_50()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109746542830190055",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_144()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_144");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|754975418");
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
                [0] = self.f_box_OutputOrder_v2_144_Out_0,
                [1] = self.f_box_OutputOrder_v2_144_Out_1,
                [2] = self.f_box_OutputOrder_v2_144_Out_2,
                [3] = self.f_box_OutputOrder_v2_144_Out_3,
                [4] = self.f_box_OutputOrder_v2_144_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_129()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_129");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|765112231");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_129_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2109997215591247492",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_220_B30_GOAL",
            id = "1030155",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|798599607");
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
                [0] = self.f_box_OutputOrder_v2_25_Out_0,
                [1] = self.f_box_OutputOrder_v2_25_Out_1,
                [2] = self.f_box_OutputOrder_v2_25_Out_2,
                [3] = self.f_box_OutputOrder_v2_25_Out_3,
                [4] = self.f_box_OutputOrder_v2_25_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StartCelebration_1()
    local params;
    params = {
        -- Preset,
        [0] = "9015208488001815",
    };
    return params;
end;

function export:OnEnter_box_OverrideEnvironment_v3_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideEnvironment_v3_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|807504245");
    l0:SetConnections({
    });
    params = {
        -- fog,
        [6] = "FCZ_Default:Overgrown.Overgrown_Boatride_Fog",
        -- ratio,
        [9] = 1,
        -- transitionTime,
        [13] = 1,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_83()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109746551757766139",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_67()
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
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|893129767");
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
                [0] = self.f_box_OutputOrder_v2_54_Out_0,
                [1] = self.f_box_OutputOrder_v2_54_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1008711218");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_2_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_127()
    local params;
    params = {
        -- state,
        [3] = true,
        -- usableEntity,
        [4] = self.e_currentGroupTorch,
    };
    return params;
end;

function export:OnEnter_box_ExtinguishAllFires_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExtinguishAllFires_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1037776412");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_121()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_121");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1054114941");
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
                [0] = self.f_box_OutputOrder_v2_121_Out_0,
                [1] = self.f_box_OutputOrder_v2_121_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_117()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108297009812220546",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_97()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108905783451242661",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_99");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1085400429");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_99_Out,
    });
    params = {
        -- Entity,
        [0] = "2108297009812220546",
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_8()
    local params;
    params = {
        -- timeScale,
        [0] = 1,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1109162075");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_72_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2108059304970947353",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_220_B30_GOAL",
            id = "1030155",
        },
    };
    return params;
end;

function export:OnEnter_box_GroupIter_112()
    local params;
    params = {
        -- entities,
        [0] = "#7E21C68B",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_120()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_120");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1163326696");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_120_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "45174707429096659",
        -- missionLayerId,
        [1] = "72196305193421755",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_20()
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1168736936");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_134_Out,
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

function export:OnEnter_box_ParticleSystem_v3_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1186759874");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109997510348058268",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_48()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "890316766",
        -- SoundType,
        [2] = 20,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_68()
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

function export:OnEnter_box_SendGSFGenericEvent_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SendGSFGenericEvent.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SendGSFGenericEvent_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1243879417");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = self.e_currentGroupTorch,
        -- eventName,
        [1] = "mis_220_torches_ON",
    };
    return params;
end;

function export:OnEnter_box_FogMoving_Function_140()
    local params;
    params = {
        -- e_stratPoint_1,
        [0] = "2109473436700007743",
        -- e_stratPoint_2,
        [1] = "2109502174011608706",
        -- e_stratPoint_3,
        [2] = "2109502177411092102",
        -- e_StratPointStart,
        [3] = "2109502156525555313",
        -- f_BlendTime,
        [4] = 10,
        -- g_torchGroup,
        [5] = "#0926F61D",
    };
    return params;
end;

function export:OnEnter_box_ColorRemapTextureModifier_v3_12()
    local params;
    params = {
        -- colorRemapSettings,
        [0] = "9015348460973545",
        -- playerGroup,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1359449724");
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
                [0] = self.f_box_OutputOrder_v2_17_Out_0,
                [1] = self.f_box_OutputOrder_v2_17_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_90()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109997510348058268",
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v3_36()
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
        [7] = "2109997206539939451",
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

function export:OnEnter_box_DynamicLightModifier_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1512749323");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2109746551757766139",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1514115714");
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
                [0] = self.f_box_OutputOrder_v2_19_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1555704787");
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
                [0] = self.f_box_OutputOrder_v2_5_Out_0,
                [1] = self.f_box_OutputOrder_v2_5_Out_1,
                [2] = self.f_box_OutputOrder_v2_5_Out_2,
                [3] = self.f_box_OutputOrder_v2_5_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_104()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109746547542490611",
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_66()
    local params;
    params = {
        -- timeScale,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1643411561");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2109746547542490611",
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1664958203");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_40_No,
        -- Yes,
        [1] = self.f_box_IsValueNil_v3_40_Yes,
    });
    params = {
        -- ent,
        [4] = Globals.MIS_220_MASTER.e_globalMarkerID,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_119()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_119");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1684897728");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_119_Out,
    });
    params = {
        -- Entity,
        [0] = "2108309155855995892",
    };
    return params;
end;

function export:OnEnter_box_GroupIter_96()
    local params;
    params = {
        -- entities,
        [0] = "#9999EB8C",
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_126()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_126");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1734173274");
    l0:SetConnections({
        -- OnSetAsUsable,
        [7] = self.f_box_VehicleModifier_v2_126_OnSetAsUsable,
    });
    params = {
        -- targets,
        [0] = "2108297009812220546",
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_71()
    local params;
    params = {
        -- PostFX,
        [1] = "BloomToWhite_MIS220",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1741125926");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 9,
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
                [0] = self.f_box_OutputOrder_v2_74_Out_0,
                [1] = self.f_box_OutputOrder_v2_74_Out_1,
                [2] = self.f_box_OutputOrder_v2_74_Out_2,
                [3] = self.f_box_OutputOrder_v2_74_Out_3,
                [4] = self.f_box_OutputOrder_v2_74_Out_4,
                [5] = self.f_box_OutputOrder_v2_74_Out_5,
                [6] = self.f_box_OutputOrder_v2_74_Out_6,
                [7] = self.f_box_OutputOrder_v2_74_Out_7,
                [8] = self.f_box_OutputOrder_v2_74_Out_8,
            },
            count = 9,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1752910849");
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
                [0] = self.f_box_OutputOrder_v2_3_Out_0,
                [1] = self.f_box_OutputOrder_v2_3_Out_1,
                [2] = self.f_box_OutputOrder_v2_3_Out_2,
                [3] = self.f_box_OutputOrder_v2_3_Out_3,
                [4] = self.f_box_OutputOrder_v2_3_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1806562585");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2109675146601041486",
    };
    return params;
end;

function export:OnEnter_box_Bonfire_Function_42()
    local params;
    params = {
        -- e_Bonfire,
        [0] = "2108516084404479822",
        -- e_Marker,
        [1] = "2108146560656231160",
        -- mBlock_ID,
        [2] = "27160297364546482",
        -- mBlockLayerStrat_ID,
        [4] = "54181916622289934",
        -- o_Objective,
        [5] = {
            section = "Objectives",
            item = "MIS_220_Fire",
            id = "1010870",
        },
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1833248999");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_77_Out,
    });
    params = {
        -- Hour,
        [0] = 8,
        -- Minute,
        [1] = 34,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_139()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_139");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1856680529");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_139_Out,
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

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1873418893");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_27_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2109997206539939451",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_220_B30_GOAL",
            id = "1030155",
        },
    };
    return params;
end;

function export:OnEnter_box_Print_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1955859000");
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

function export:OnEnter_box_AddActivityObjective_v2_133()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_133");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|1991578789");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_133_Out,
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

function export:OnEnter_box_DynamicLightModifier_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_101");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|2024184078");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2109746544564534763",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_69()
    local params;
    params = {
        -- players,
        [0] = self.gPlayer,
        -- targets,
        [1] = "2109675146601041486",
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_137()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_78()
    local params;
    params = {
        -- players,
        [0] = self.gPlayer,
        -- targets,
        [1] = "2109675113310850632",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_49()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109746549534785015",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|2130514715");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2109746542830190055",
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_109()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_109");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\mis_220_debrief.domino|@MIS_220_DEBRIEF|2138673550");
    l0:SetConnections({
    });
    params = {
        -- FromGroup,
        [0] = self.e_EndTorch,
        -- ToGroup,
        [1] = "#C38F63CE",
    };
    return params;
end;

function export:OnExit_box_ProximityRadiusListener_v3_107_AllFar()
    local l0;
    l0 = self.box_ProximityRadiusListener_v3_107;
    self.e_currentGroupTorch = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_107_AllNear()
    local l0;
    l0 = self.box_ProximityRadiusListener_v3_107;
    self.e_currentGroupTorch = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_107_SomeoneFar()
    local l0;
    l0 = self.box_ProximityRadiusListener_v3_107;
    self.e_currentGroupTorch = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_107_SomeoneNear()
    local l0;
    l0 = self.box_ProximityRadiusListener_v3_107;
    self.e_currentGroupTorch = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_114_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.isFireLit = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_15_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.eLocalPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_125_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    Globals.MIS_220_MASTER.e_SmokeOnWater = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_2_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_99_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    Globals.MIS_220_MASTER.e_globalVehicleID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupIter_112_PawnIter()
    local l0;
    l0 = self.box_GroupIter_112;
    self.e_EndTorch = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_119_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    Globals.MIS_220_MASTER.e_globalMarkerID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupIter_96_PawnIter()
    local l0;
    l0 = self.box_GroupIter_96;
    self.e_currentGroupTorch = l0:GetDataOutValue(0);
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
