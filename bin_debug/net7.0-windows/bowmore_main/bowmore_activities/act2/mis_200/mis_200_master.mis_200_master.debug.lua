LUACH -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act2/mis_200/mis_200_master.domino
-- User graph: MIS_200_MASTER
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.UIMode.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityState_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/GetPreconditionState_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/PreconditionListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/BroadcastMessage.lua");
        cboxRes:RegisterBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
        cboxRes:RegisterBox("Domino/System/ColorRemapTextureModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/CompareStrings.lua");
        cboxRes:RegisterBox("Domino/System/Coop/CoopActivePlayers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/DynamicLightModifier.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/FastTravelModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPawnVehicleInfo.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/GroupIter.lua");
        cboxRes:RegisterBox("Domino/System/IndexList_v2.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/LeashOverride.lua");
        cboxRes:RegisterBox("Domino/System/MessageListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
        cboxRes:RegisterBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/OverrideEnvironment_v3.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PersistentParticlesModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayerSpeedModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SlowMotionHACK.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        cboxRes:RegisterBox("Domino/System/TeleportPawns.lua");
        cboxRes:RegisterBox("Domino/System/TimeOfDayListener.lua");
        cboxRes:RegisterBox("Domino/System/UI/OverrideDisabledLogicId.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInteractionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/VisionModeModifier_v2.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_200/MIS_200.MarkerManager.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_200/MIS_200.MIS_200_FatherShootArrow.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_200/MIS_200.MIS_200_LightManager.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_200/MIS_200_MASTER.MIS_200_MASTER_FATHERVOINTRO.debug.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_200/MIS_200_MASTER.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[998189918.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1706655975.bnk]], "CSoundResource");
        cboxRes:LoadResource([[newparticles/9015339594649231.part]], "CParticlesSystemParamResource");
        cboxRes:LoadResource([[2165306694.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2816472133.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2056065039.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4185086185.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3763027159.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2484538944.bnk]], "CSoundResource");
        cboxRes:LoadResource([[334702187.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3550768923.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1785160047.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2843291011.bnk]], "CSoundResource");
        cboxRes:LoadResource([[837989421.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3720478540.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3876794090.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3122646079.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3431493264.bnk]], "CSoundResource");
        cboxRes:LoadResource([[219778360.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4149810940.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.MIS_200_MASTER = nil;
    Globals.MIS_200_MASTER = {
        isPlayerInsideIsland = false,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_200/MIS_200_MASTER.MIS_200_MASTER.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Active",
                delayed = false,
            },
            [1] = {
                name = "Canceled",
                delayed = false,
            },
            [2] = {
                name = "Completed",
                delayed = false,
            },
            [3] = {
                name = "Failed",
                delayed = false,
            },
            [4] = {
                name = "Inactive",
                delayed = false,
            },
            [5] = {
                name = "Out",
                delayed = false,
            },
            [6] = {
                name = "Unavailable",
                delayed = false,
            },
        },
        controlOutCount = 7,
        dataIn = {
            [0] = {
                name = "activityDescriptorID",
                type = "genericdb",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "NotValid",
                delayed = false,
            },
            [1] = {
                name = "Valid",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "PreconditionId",
                type = "database",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/PreconditionListener_v2.lua")] = {
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
                name = "PreconditionMet",
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
                name = "PreconditionId",
                type = "database",
            },
            [2] = {
                name = "TestOnEnable",
                type = "bool",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/CompareStrings.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "A_contains_B",
                delayed = false,
            },
            [1] = {
                name = "A_eq_B",
                delayed = false,
            },
            [2] = {
                name = "A_ncontains_B",
                delayed = false,
            },
            [3] = {
                name = "A_neq_B",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "A",
                type = "string",
            },
            [1] = {
                name = "B",
                type = "string",
            },
            [2] = {
                name = "IgnoreCase",
                type = "bool",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/FastTravelModifier_v2.lua")] = {
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
        },
        dataInCount = 0,
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
    metadataTable[GetPathID("Domino/System/LeashOverride.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "DisableDefaultLeash",
            },
            [1] = {
                name = "EnableDefaultLeash",
            },
            [2] = {
                name = "RemoveCustomLeash",
            },
            [3] = {
                name = "UseCustomLeash",
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
                name = "LeashCreated",
                delayed = false,
            },
            [3] = {
                name = "LeashRemoved",
                delayed = false,
            },
            [4] = {
                name = "OnLeashBroken",
                delayed = true,
            },
            [5] = {
                name = "OnLeashFinalWarning",
                delayed = true,
            },
            [6] = {
                name = "OnLeashWarning",
                delayed = true,
            },
        },
        controlOutCount = 7,
        dataIn = {
            [0] = {
                name = "CustomLeashDistance",
                type = "float",
            },
            [1] = {
                name = "CustomLeashFinalWarningDistance",
                type = "float",
            },
            [2] = {
                name = "CustomLeashWarningDistance",
                type = "float",
            },
            [3] = {
                name = "WarningText",
                type = "oasis",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "PlayerToTeleport",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/MessageListener_v3.lua")] = {
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
                name = "Received",
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
                name = "message",
                type = "string",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/Player/PersistentParticlesModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "StartParticles",
            },
            [1] = {
                name = "StopParticles",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnStartParticles",
                delayed = false,
            },
            [1] = {
                name = "OnStopParticles",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "fadeDuration",
                type = "float",
            },
            [1] = {
                name = "particleSystem",
                type = "particle",
            },
            [2] = {
                name = "players",
                type = "group",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Player/RequestPhoneCall_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cancel",
            },
            [1] = {
                name = "In",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Canceled",
                delayed = true,
            },
            [1] = {
                name = "Completed",
                delayed = true,
            },
            [2] = {
                name = "Failed",
                delayed = true,
            },
            [3] = {
                name = "Out",
                delayed = false,
            },
            [4] = {
                name = "Pending",
                delayed = true,
            },
            [5] = {
                name = "Started",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "CustomRingInSound",
                type = "Sound",
            },
            [1] = {
                name = "CustomRingOutSound",
                type = "Sound",
            },
            [2] = {
                name = "Delay",
                type = "float",
            },
            [3] = {
                name = "NoDeadair",
                type = "bool",
            },
            [4] = {
                name = "Pawns",
                type = "group",
            },
            [5] = {
                name = "SoundId",
                type = "Sound",
            },
        },
        dataInCount = 6,
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
    metadataTable[GetPathID("Domino/System/SlowMotionHACK.lua")] = {
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
                name = "Input",
                type = "float",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/Switch.lua")] = {
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
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "OutputNb",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/TeleportPawns.lua")] = {
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
            [0] = {
                name = "ClientDestinationEntity",
                type = "entity",
            },
            [1] = {
                name = "Destination",
                type = "entity",
            },
            [2] = {
                name = "LoadingScreen",
                type = "bool",
            },
            [3] = {
                name = "LoadSynch",
                type = "bool",
            },
            [4] = {
                name = "Pawns",
                type = "group",
            },
            [5] = {
                name = "UseBlackScreen",
                type = "bool",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/TimeOfDayListener.lua")] = {
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
                name = "HourChanged",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "HourOfTheDay",
                type = "int",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_200/MIS_200.MarkerManager.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "In",
            },
            [2] = {
                name = "UpdateB10",
            },
            [3] = {
                name = "UpdateB20",
            },
            [4] = {
                name = "UpdateB30",
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_200/MIS_200.MIS_200_FatherShootArrow.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "ArrowShot",
                delayed = false,
            },
            [1] = {
                name = "End",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "eFatherID",
                type = "entity",
            },
            [1] = {
                name = "eFatherSpawner",
                type = "entity",
            },
            [2] = {
                name = "eShootSTP",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_200/MIS_200.MIS_200_LightManager.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "PreconditionNotValid",
            },
            [1] = {
                name = "PreconditionValid",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Done",
                delayed = false,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "b_Fire",
                type = "bool",
            },
            [1] = {
                name = "e_EndPos",
                type = "entity",
            },
            [2] = {
                name = "e_FinalFire",
                type = "entity",
            },
            [3] = {
                name = "e_LastLight",
                type = "entity",
            },
            [4] = {
                name = "e_StartPos",
                type = "entity",
            },
            [5] = {
                name = "g_LightGroup",
                type = "group",
            },
            [6] = {
                name = "MB_ID",
                type = "missionblock",
            },
            [7] = {
                name = "MB_Layer_ID",
                type = "missionblocklayer",
            },
            [8] = {
                name = "s_MessageListen",
                type = "string",
            },
        },
        dataInCount = 9,
        dataOut = {
            [0] = {
                name = "b_Fire_Out",
                type = "bool",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_200/MIS_200_MASTER.MIS_200_MASTER_FATHERVOINTRO.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "StartVO",
            },
            [1] = {
                name = "StopVO",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "VOFinished",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "VOID",
                type = "Sound",
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
    self._name = "MIS_200_MASTER";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER";
    self.Hour_2 = 0;
    self.PlayerGroup = nil;
    self.currentMinute = 0;
    self.LocalPlayer = nil;
    self.iCurrentProgress = 0;
    self.b_TimeStop = false;
    self.currentHour = 13;
    self.goodTime = false;
    self.iProgressID = 0;
    self.Hour = 0;
    self.goodTime_2 = false;
    self.isPlayerInsideIsland = false;
    self.DialogOutputNumber = 0;
    self.PlayerVehicle = nil;
    self.B50_Done = false;
    self.box_MultipleOR_75 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|13333313");
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
        [0] = self.f_box_MultipleOR_75_Out,
    });
    self.box_MultipleOR_51 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|55873609");
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
        [0] = self.f_box_MultipleOR_51_Out,
    });
    self.box_PreconditionListener_v2_202 = cbox:CreateBox("Domino/System/AI/PreconditionListener_v2.lua");
    l0 = self.box_PreconditionListener_v2_202;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_v2_202");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|85391702");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_v2_202_PreconditionMet,
    });
    self.box_GunsForHireSystemModifier_293 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_293;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_293");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|105004177");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_211 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_211;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_211");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|115925253");
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
                [0] = self.f_box_OnceOnly_v3_211_Out_0,
            },
            count = 2,
        },
    });
    self.box_SlowMotionHACK_131 = cbox:CreateBox("Domino/System/SlowMotionHACK.lua");
    l0 = self.box_SlowMotionHACK_131;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SlowMotionHACK_131");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|115952542");
    l0:SetConnections({
    });
    self.box_PlayerSpeedModifier_v3_32 = cbox:CreateBox("Domino/System/PlayerSpeedModifier_v3.lua");
    l0 = self.box_PlayerSpeedModifier_v3_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerSpeedModifier_v3_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|126859242");
    l0:SetConnections({
    });
    self.box_VehicleListener_v3_270 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_270;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_270");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|127166467");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VehicleListener_v3_270_Disabled,
        -- OnAllStanding,
        [3] = self.f_box_VehicleListener_v3_270_OnAllStanding,
    });
    self.box_Gate_v3_272 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_272;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_272");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|129036389");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_272_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_272_Out,
    });
    self.box_LeashOverride_322 = cbox:CreateBox("Domino/System/LeashOverride.lua");
    l0 = self.box_LeashOverride_322;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LeashOverride_322");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|137885452");
    l0:SetConnections({
    });
    self.box_GroupIter_219 = cbox:CreateBox("Domino/System/GroupIter.lua");
    l0 = self.box_GroupIter_219;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupIter_219");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|169290141");
    l0:SetConnections({
        -- EndIter,
        [0] = self.f_box_GroupIter_219_EndIter,
        -- PawnIter,
        [1] = self.f_box_GroupIter_219_PawnIter,
        -- Started,
        [2] = self.f_box_GroupIter_219_Started,
        -- Stopped,
        [3] = self.f_box_GroupIter_219_Stopped,
    });
    self.box_MultipleAND_v2_292 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_292;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_292");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|204469355");
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
        [0] = self.f_box_MultipleAND_v2_292_Out,
    });
    self.box_MultipleOR_65 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|216407625");
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
        [0] = self.f_box_MultipleOR_65_Out,
    });
    self.box_MIS_200_MASTER_FATHERVOINTRO_155 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_200/MIS_200_MASTER.MIS_200_MASTER_FATHERVOINTRO.debug.lua");
    l0 = self.box_MIS_200_MASTER_FATHERVOINTRO_155;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_200_MASTER_FATHERVOINTRO_155");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|227917540");
    l0:SetConnections({
        -- VOFinished,
        [0] = self.f_box_MIS_200_MASTER_FATHERVOINTRO_155_VOFinished,
    });
    self.box_GroupIter_249 = cbox:CreateBox("Domino/System/GroupIter.lua");
    l0 = self.box_GroupIter_249;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupIter_249");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|237931834");
    l0:SetConnections({
        -- EndIter,
        [0] = self.f_box_GroupIter_249_EndIter,
        -- PawnIter,
        [1] = self.f_box_GroupIter_249_PawnIter,
        -- Started,
        [2] = self.f_box_GroupIter_249_Started,
        -- Stopped,
        [3] = self.f_box_GroupIter_249_Stopped,
    });
    self.box_OnceOnly_v3_2 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|263622899");
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
                [0] = self.f_box_OnceOnly_v3_2_Out_0,
            },
            count = 2,
        },
    });
    self.box_RequestPhoneCall_v2_290 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_290;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_290");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|266549192");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_290_Completed,
    });
    self.box_OnceOnly_v3_152 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_152;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_152");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|294821178");
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
                [0] = self.f_box_OnceOnly_v3_152_Out_0,
            },
            count = 2,
        },
    });
    self.box_MessageListener_v3_146 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_146;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_146");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|298538911");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_146_Received,
    });
    self.box_OnceOnly_v3_223 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_223;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_223");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|333392741");
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
                [0] = self.f_box_OnceOnly_v3_223_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_195 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_195;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_195");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|388233980");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_195_TimeElapsed,
    });
    self.box_MessageListener_v3_312 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_312;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_312");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|402496018");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_312_Received,
    });
    self.box_PreconditionListener_v2_186 = cbox:CreateBox("Domino/System/AI/PreconditionListener_v2.lua");
    l0 = self.box_PreconditionListener_v2_186;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_v2_186");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|405319363");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_v2_186_PreconditionMet,
    });
    self.box_Gate_v3_291 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_291;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_291");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|410715374");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_291_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_291_Out,
    });
    self.box_MIS_200_MASTER_FATHERVOINTRO_173 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_200/MIS_200_MASTER.MIS_200_MASTER_FATHERVOINTRO.debug.lua");
    l0 = self.box_MIS_200_MASTER_FATHERVOINTRO_173;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_200_MASTER_FATHERVOINTRO_173");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|443384913");
    l0:SetConnections({
        -- VOFinished,
        [0] = self.f_box_MIS_200_MASTER_FATHERVOINTRO_173_VOFinished,
    });
    self.box_MultipleOR_73 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|455138287");
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
        [0] = self.f_box_MultipleOR_73_Out,
    });
    self.box_PreconditionListener_v2_255 = cbox:CreateBox("Domino/System/AI/PreconditionListener_v2.lua");
    l0 = self.box_PreconditionListener_v2_255;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_v2_255");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|467383054");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_v2_255_PreconditionMet,
    });
    self.box_Delay_v5_15 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|486812779");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_15_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_15_TimeElapsed,
    });
    self.box_RequestPhoneCall_v2_12 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|490331141");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_12_Completed,
    });
    self.box_MultipleOR_314 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_314;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_314");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|492462491");
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
        [0] = self.f_box_MultipleOR_314_Out,
    });
    self.box_MultipleOR_278 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_278;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_278");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|503000761");
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
        [0] = self.f_box_MultipleOR_278_Out,
    });
    self.box_MultipleOR_261 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_261;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_261");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|516484170");
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
        [0] = self.f_box_MultipleOR_261_Out,
    });
    self.box_PreconditionListener_v2_182 = cbox:CreateBox("Domino/System/AI/PreconditionListener_v2.lua");
    l0 = self.box_PreconditionListener_v2_182;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_v2_182");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|524685253");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_v2_182_PreconditionMet,
    });
    self.box_MessageListener_v3_313 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_313;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_313");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|585416222");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_313_Received,
    });
    self.box_ActivityInitialized_28 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|600527071");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_28_Out,
    });
    self.box_MultipleAND_v2_286 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_286;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_286");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|613234532");
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
        [0] = self.f_box_MultipleAND_v2_286_Out,
    });
    self.box_Gate_v3_285 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_285;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_285");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|615235157");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_285_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_285_Out,
    });
    self.box_MIS_200_MASTER_FATHERVOINTRO_172 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_200/MIS_200_MASTER.MIS_200_MASTER_FATHERVOINTRO.debug.lua");
    l0 = self.box_MIS_200_MASTER_FATHERVOINTRO_172;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_200_MASTER_FATHERVOINTRO_172");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|626137004");
    l0:SetConnections({
        -- VOFinished,
        [0] = self.f_box_MIS_200_MASTER_FATHERVOINTRO_172_VOFinished,
    });
    self.box_IndexList_v2_89 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_89");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|626214556");
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
        -- Output,
        [0] = {
            connections = {
                [0] = self.f_box_IndexList_v2_89_Output_0,
                [1] = self.f_box_IndexList_v2_89_Output_1,
                [2] = self.f_box_IndexList_v2_89_Output_2,
                [3] = self.f_box_IndexList_v2_89_Output_3,
                [4] = self.f_box_IndexList_v2_89_Output_4,
                [5] = self.f_box_IndexList_v2_89_Output_5,
                [6] = self.f_box_IndexList_v2_89_Output_6,
                [7] = self.f_box_IndexList_v2_89_Output_7,
            },
            count = 8,
        },
    });
    self.box_MIS_200_FatherShootArrow_150 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_200/MIS_200.MIS_200_FatherShootArrow.debug.lua");
    l0 = self.box_MIS_200_FatherShootArrow_150;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_200_FatherShootArrow_150");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|637032481");
    l0:SetConnections({
        -- ArrowShot,
        [0] = self.f_box_MIS_200_FatherShootArrow_150_ArrowShot,
    });
    self.box_MessageListener_v3_53 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|646622351");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_53_Received,
    });
    self.box_Delay_v5_228 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_228;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_228");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|673709166");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_228_TimeElapsed,
    });
    self.box_GroupIter_213 = cbox:CreateBox("Domino/System/GroupIter.lua");
    l0 = self.box_GroupIter_213;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupIter_213");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|714987401");
    l0:SetConnections({
        -- EndIter,
        [0] = self.f_box_GroupIter_213_EndIter,
        -- PawnIter,
        [1] = self.f_box_GroupIter_213_PawnIter,
        -- Started,
        [2] = self.f_box_GroupIter_213_Started,
        -- Stopped,
        [3] = self.f_box_GroupIter_213_Stopped,
    });
    self.box_MIS_200_MASTER_FATHERVOINTRO_153 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_200/MIS_200_MASTER.MIS_200_MASTER_FATHERVOINTRO.debug.lua");
    l0 = self.box_MIS_200_MASTER_FATHERVOINTRO_153;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_200_MASTER_FATHERVOINTRO_153");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|723135900");
    l0:SetConnections({
        -- VOFinished,
        [0] = self.f_box_MIS_200_MASTER_FATHERVOINTRO_153_VOFinished,
    });
    self.box_MultipleOR_189 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_189;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_189");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|737599504");
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
        [0] = self.f_box_MultipleOR_189_Out,
    });
    self.box_MultipleOR_311 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_311;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_311");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|748270605");
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
        [0] = self.f_box_MultipleOR_311_Out,
    });
    self.box_SlowMotionHACK_43 = cbox:CreateBox("Domino/System/SlowMotionHACK.lua");
    l0 = self.box_SlowMotionHACK_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SlowMotionHACK_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|766701784");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SlowMotionHACK_43_Out,
    });
    self.box_UIMode_122 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.UIMode.debug.lua");
    l0 = self.box_UIMode_122;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UIMode_122");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|767897035");
    l0:SetConnections({
        -- OnCinematicMode,
        [0] = self.f_box_UIMode_122_OnCinematicMode,
    });
    self.box_Gate_v3_274 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_274;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_274");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|768634226");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_274_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_274_Out,
    });
    self.box_MessageListener_v3_284 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_284;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_284");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|772419367");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_284_Received,
    });
    self.box_PreconditionListener_v2_86 = cbox:CreateBox("Domino/System/AI/PreconditionListener_v2.lua");
    l0 = self.box_PreconditionListener_v2_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_v2_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|786125725");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_v2_86_PreconditionMet,
    });
    self.box_PersistentParticlesModifier_58 = cbox:CreateBox("Domino/System/Player/PersistentParticlesModifier.lua");
    l0 = self.box_PersistentParticlesModifier_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PersistentParticlesModifier_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|799273647");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_252 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_252;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_252");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|801045064");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_62 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|820840439");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_62_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_62_Unloaded,
    });
    self.box_LeashOverride_324 = cbox:CreateBox("Domino/System/LeashOverride.lua");
    l0 = self.box_LeashOverride_324;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LeashOverride_324");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|827374802");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_LeashOverride_324_Disabled,
        -- Enabled,
        [1] = self.f_box_LeashOverride_324_Enabled,
        -- LeashCreated,
        [2] = self.f_box_LeashOverride_324_LeashCreated,
        -- LeashRemoved,
        [3] = self.f_box_LeashOverride_324_LeashRemoved,
        -- OnLeashBroken,
        [4] = self.f_box_LeashOverride_324_OnLeashBroken,
        -- OnLeashFinalWarning,
        [5] = self.f_box_LeashOverride_324_OnLeashFinalWarning,
        -- OnLeashWarning,
        [6] = self.f_box_LeashOverride_324_OnLeashWarning,
    });
    self.box_MIS_200_MASTER_FATHERVOINTRO_154 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_200/MIS_200_MASTER.MIS_200_MASTER_FATHERVOINTRO.debug.lua");
    l0 = self.box_MIS_200_MASTER_FATHERVOINTRO_154;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_200_MASTER_FATHERVOINTRO_154");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|829993781");
    l0:SetConnections({
        -- VOFinished,
        [0] = self.f_box_MIS_200_MASTER_FATHERVOINTRO_154_VOFinished,
    });
    self.box_MIS_200_MASTER_FATHERVOINTRO_159 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_200/MIS_200_MASTER.MIS_200_MASTER_FATHERVOINTRO.debug.lua");
    l0 = self.box_MIS_200_MASTER_FATHERVOINTRO_159;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_200_MASTER_FATHERVOINTRO_159");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|844007534");
    l0:SetConnections({
        -- VOFinished,
        [0] = self.f_box_MIS_200_MASTER_FATHERVOINTRO_159_VOFinished,
    });
    self.box_UIMode_47 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.UIMode.debug.lua");
    l0 = self.box_UIMode_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UIMode_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|870222269");
    l0:SetConnections({
        -- OnCinematicMode,
        [0] = self.f_box_UIMode_47_OnCinematicMode,
    });
    self.box_MIS_200_FatherShootArrow_148 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_200/MIS_200.MIS_200_FatherShootArrow.debug.lua");
    l0 = self.box_MIS_200_FatherShootArrow_148;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_200_FatherShootArrow_148");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|882640237");
    l0:SetConnections({
        -- ArrowShot,
        [0] = self.f_box_MIS_200_FatherShootArrow_148_ArrowShot,
    });
    self.box_MIS_200_LightManager_11 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_200/MIS_200.MIS_200_LightManager.debug.lua");
    l0 = self.box_MIS_200_LightManager_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_200_LightManager_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|897963880");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_MIS_200_LightManager_11_Out,
    });
    self.box_ProximityRadiusListener_v3_8 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|936759192");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_8_SomeoneNear,
    });
    self.box_MultipleOR_308 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_308;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_308");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|938504903");
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
        [0] = self.f_box_MultipleOR_308_Out,
    });
    self.box_TimeOfDayListener_83 = cbox:CreateBox("Domino/System/TimeOfDayListener.lua");
    l0 = self.box_TimeOfDayListener_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TimeOfDayListener_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|944213496");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_TimeOfDayListener_83_Disabled,
        -- Enabled,
        [1] = self.f_box_TimeOfDayListener_83_Enabled,
        -- HourChanged,
        [2] = self.f_box_TimeOfDayListener_83_HourChanged,
    });
    self.box_CoopActivePlayers_54 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|959246724");
    l0:SetConnections({
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_54_PlayerAdded,
    });
    self.box_RequestPhoneCall_v2_289 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_289;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_289");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|970495506");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_289_Completed,
    });
    self.box_Gate_v3_273 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_273;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_273");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|970542610");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_273_Out,
    });
    self.box_MissionAckTriggerListener_59 = cbox:CreateBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
    l0 = self.box_MissionAckTriggerListener_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionAckTriggerListener_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|972818822");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_MissionAckTriggerListener_59_Enter,
    });
    self.box_SoundModifier_v2_39 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|973376448");
    l0:SetConnections({
    });
    self.box_RequestPhoneCall_v2_25 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|977776236");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_25_Completed,
    });
    self.box_UniversalInteractionModifier_v2_206 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_206;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_206");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|984862533");
    l0:SetConnections({
    });
    self.box_Delay_v5_72 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1041996450");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_72_TimeElapsed,
    });
    self.box_OnceOnly_v3_222 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_222;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_222");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1068347466");
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
                [0] = self.f_box_OnceOnly_v3_222_Out_0,
            },
            count = 2,
        },
    });
    self.box_MessageListener_v3_277 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_277;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_277");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1083884542");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_277_Received,
    });
    self.box_PlayerSpeedModifier_v3_63 = cbox:CreateBox("Domino/System/PlayerSpeedModifier_v3.lua");
    l0 = self.box_PlayerSpeedModifier_v3_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerSpeedModifier_v3_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1103765244");
    l0:SetConnections({
    });
    self.box_MIS_200_MASTER_FATHERVOINTRO_158 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_200/MIS_200_MASTER.MIS_200_MASTER_FATHERVOINTRO.debug.lua");
    l0 = self.box_MIS_200_MASTER_FATHERVOINTRO_158;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_200_MASTER_FATHERVOINTRO_158");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1103919323");
    l0:SetConnections({
        -- VOFinished,
        [0] = self.f_box_MIS_200_MASTER_FATHERVOINTRO_158_VOFinished,
    });
    self.box_MessageListener_v3_275 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_275;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_275");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1106408352");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_275_Received,
    });
    self.box_MessageListener_v3_283 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_283;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_283");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1134344484");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_283_Received,
    });
    self.box_MarkerManager_10 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_200/MIS_200.MarkerManager.debug.lua");
    l0 = self.box_MarkerManager_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MarkerManager_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1154164914");
    l0:SetConnections({
    });
    self.box_MultipleOR_268 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_268;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_268");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1167970884");
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
        [0] = self.f_box_MultipleOR_268_Out,
    });
    self.box_RequestPhoneCall_v2_287 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_287;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_287");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1169821916");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_287_Completed,
    });
    self.box_MultipleOR_38 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1172864286");
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
    self.box_UIMode_78 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.UIMode.debug.lua");
    l0 = self.box_UIMode_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UIMode_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1181404642");
    l0:SetConnections({
        -- OnNormalMode,
        [1] = self.f_box_UIMode_78_OnNormalMode,
    });
    self.box_BaseMissionBlock_v2_299 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_299;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_299");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1184179840");
    l0:SetConnections({
        -- Enabled,
        [3] = self.f_box_BaseMissionBlock_v2_299_Enabled,
    });
    self.box_UniversalInteractionModifier_v2_250 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_250;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_250");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1196128476");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_101 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_101");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1198194053");
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
        [0] = self.f_box_MultipleAND_v2_101_Out,
    });
    self.box_TimeOfDayListener_42 = cbox:CreateBox("Domino/System/TimeOfDayListener.lua");
    l0 = self.box_TimeOfDayListener_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TimeOfDayListener_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1211779060");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_TimeOfDayListener_42_Disabled,
        -- Enabled,
        [1] = self.f_box_TimeOfDayListener_42_Enabled,
        -- HourChanged,
        [2] = self.f_box_TimeOfDayListener_42_HourChanged,
    });
    self.box_Music_Quest_v2_271 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_271;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_271");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1216506829");
    l0:SetConnections({
    });
    self.box_BaseMissionBlock_v2_91 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1233500187");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_BaseMissionBlock_v2_91_Deactivated,
        -- Enabled,
        [3] = self.f_box_BaseMissionBlock_v2_91_Enabled,
    });
    self.box_Delay_v5_82 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1245333244");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_82_TimeElapsed,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_106 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_106");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1252312442");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_106_Out,
    });
    self.box_GroupIter_210 = cbox:CreateBox("Domino/System/GroupIter.lua");
    l0 = self.box_GroupIter_210;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupIter_210");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1273153046");
    l0:SetConnections({
        -- EndIter,
        [0] = self.f_box_GroupIter_210_EndIter,
        -- PawnIter,
        [1] = self.f_box_GroupIter_210_PawnIter,
        -- Started,
        [2] = self.f_box_GroupIter_210_Started,
        -- Stopped,
        [3] = self.f_box_GroupIter_210_Stopped,
    });
    self.box_UniversalInteractionModifier_v2_247 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_247;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_247");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1279947076");
    l0:SetConnections({
    });
    self.box_ExitZoneWarningListener_v3_114 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_114");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1282939439");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_114_FailingZoneEntered,
    });
    self.box_MultipleOR_18 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1304322083");
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
    self.box_Delay_v5_87 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1351501049");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_87_TimeElapsed,
    });
    self.box_GroupIter_216 = cbox:CreateBox("Domino/System/GroupIter.lua");
    l0 = self.box_GroupIter_216;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupIter_216");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1377420387");
    l0:SetConnections({
        -- EndIter,
        [0] = self.f_box_GroupIter_216_EndIter,
        -- PawnIter,
        [1] = self.f_box_GroupIter_216_PawnIter,
        -- Started,
        [2] = self.f_box_GroupIter_216_Started,
        -- Stopped,
        [3] = self.f_box_GroupIter_216_Stopped,
    });
    self.box_MultipleOR_327 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_327;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_327");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1381276252");
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
        [0] = self.f_box_MultipleOR_327_Out,
    });
    self.box_MultipleOR_260 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_260;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_260");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1395473211");
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
        [0] = self.f_box_MultipleOR_260_Out,
    });
    self.box_OnceOnly_v3_100 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_100");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1403868796");
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
                [0] = self.f_box_OnceOnly_v3_100_Out_0,
            },
            count = 2,
        },
    });
    self.box_Gate_v3_115 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_115");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1420999866");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_115_Out,
    });
    self.box_PreconditionListener_v2_257 = cbox:CreateBox("Domino/System/AI/PreconditionListener_v2.lua");
    l0 = self.box_PreconditionListener_v2_257;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_v2_257");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1421252005");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_v2_257_PreconditionMet,
    });
    self.box_ColorRemapTextureModifier_v3_96 = cbox:CreateBox("Domino/System/ColorRemapTextureModifier_v3.lua");
    l0 = self.box_ColorRemapTextureModifier_v3_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ColorRemapTextureModifier_v3_96");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1437591529");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_218 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_218;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_218");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1456938528");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_281 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_281;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_281");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1461196671");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_320 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_320;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_320");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1466345914");
    l0:SetConnections({
    });
    self.box_Delay_v5_128 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_128;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_128");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1466441230");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_128_TimeElapsed,
    });
    self.box_MultipleOR_193 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_193;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_193");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1477847905");
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
        [0] = self.f_box_MultipleOR_193_Out,
    });
    self.box_GroupIter_251 = cbox:CreateBox("Domino/System/GroupIter.lua");
    l0 = self.box_GroupIter_251;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupIter_251");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1492182693");
    l0:SetConnections({
        -- EndIter,
        [0] = self.f_box_GroupIter_251_EndIter,
        -- PawnIter,
        [1] = self.f_box_GroupIter_251_PawnIter,
        -- Started,
        [2] = self.f_box_GroupIter_251_Started,
        -- Stopped,
        [3] = self.f_box_GroupIter_251_Stopped,
    });
    self.box_MessageListener_v3_147 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_147;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_147");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1492546785");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_147_Received,
    });
    self.box_MultipleOR_56 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1496722361");
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
        [0] = self.f_box_MultipleOR_56_Out,
    });
    self.box_MultipleAND_v2_267 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_267;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_267");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1497992817");
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
        [0] = self.f_box_MultipleAND_v2_267_Out,
    });
    self.box_MessageListener_v3_52 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1506746182");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_52_Received,
    });
    self.box_Music_Quest_v2_269 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_269;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_269");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1516026906");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_221 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_221;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_221");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1518557043");
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
                [0] = self.f_box_OnceOnly_v3_221_Out_0,
            },
            count = 2,
        },
    });
    self.box_MIS_200_MASTER_FATHERVOINTRO_175 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_200/MIS_200_MASTER.MIS_200_MASTER_FATHERVOINTRO.debug.lua");
    l0 = self.box_MIS_200_MASTER_FATHERVOINTRO_175;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_200_MASTER_FATHERVOINTRO_175");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1534220895");
    l0:SetConnections({
        -- VOFinished,
        [0] = self.f_box_MIS_200_MASTER_FATHERVOINTRO_175_VOFinished,
    });
    self.box_MultipleOR_104 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_104");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1562387597");
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
        [0] = self.f_box_MultipleOR_104_Out,
    });
    self.box_VisionModeModifier_v2_116 = cbox:CreateBox("Domino/System/VisionModeModifier_v2.lua");
    l0 = self.box_VisionModeModifier_v2_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisionModeModifier_v2_116");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1594398930");
    l0:SetConnections({
        -- StartedDrunk,
        [2] = self.f_box_VisionModeModifier_v2_116_StartedDrunk,
        -- Stopped,
        [8] = self.f_box_VisionModeModifier_v2_116_Stopped,
    });
    self.box_UniversalInteractionModifier_v2_212 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_212;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_212");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1603363596");
    l0:SetConnections({
    });
    self.box_ActivityAcknowledgeGate_7 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1629726738");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_7_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_7_Reloaded,
    });
    self.box_MIS_200_FatherShootArrow_141 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_200/MIS_200.MIS_200_FatherShootArrow.debug.lua");
    l0 = self.box_MIS_200_FatherShootArrow_141;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_200_FatherShootArrow_141");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1655219710");
    l0:SetConnections({
        -- ArrowShot,
        [0] = self.f_box_MIS_200_FatherShootArrow_141_ArrowShot,
    });
    self.box_GunsForHireSystemModifier_298 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_298;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_298");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1681612794");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_298_Disabled,
    });
    self.box_MultipleAND_v2_232 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_232;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_232");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1695317800");
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
        [0] = self.f_box_MultipleAND_v2_232_Out,
    });
    self.box_MultipleOR_90 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1705386890");
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
        [0] = self.f_box_MultipleOR_90_Out,
    });
    self.box_OnceOnly_v3_259 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_259;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_259");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1709010178");
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
                [0] = self.f_box_OnceOnly_v3_259_Out_0,
            },
            count = 2,
        },
    });
    self.box_Switch_151 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_151;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_151");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1719402161");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 8,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- None,
        [0] = self.f_box_Switch_151_None,
        -- Out,
        [1] = self.f_box_Switch_151_Out,
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Switch_151_Output_0,
                [1] = self.f_box_Switch_151_Output_1,
                [2] = self.f_box_Switch_151_Output_2,
                [3] = self.f_box_Switch_151_Output_3,
                [4] = self.f_box_Switch_151_Output_4,
                [5] = self.f_box_Switch_151_Output_5,
                [6] = self.f_box_Switch_151_Output_6,
                [7] = self.f_box_Switch_151_Output_7,
            },
            count = 8,
        },
    });
    self.box_MIS_200_LightManager_44 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_200/MIS_200.MIS_200_LightManager.debug.lua");
    l0 = self.box_MIS_200_LightManager_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_200_LightManager_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1737605710");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_MIS_200_LightManager_44_Out,
    });
    self.box_MultipleOR_315 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_315;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_315");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1755527906");
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
        [0] = self.f_box_MultipleOR_315_Out,
    });
    self.box_TeleportPawns_321 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_321;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_321");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1823218389");
    l0:SetConnections({
    });
    self.box_Delay_v5_27 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1842507780");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_27_TimeElapsed,
    });
    self.box_Delay_v5_107 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_107");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1901598964");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_107_TimeElapsed,
    });
    self.box_RequestPhoneCall_v2_288 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_288;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_288");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1916970895");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_61 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1971997397");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_280 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_280;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_280");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1976853064");
    l0:SetConnections({
    });
    self.box_UIMode_102 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.UIMode.debug.lua");
    l0 = self.box_UIMode_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UIMode_102");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1977717733");
    l0:SetConnections({
        -- OnNormalMode,
        [1] = self.f_box_UIMode_102_OnNormalMode,
    });
    self.box_PreconditionListener_v2_85 = cbox:CreateBox("Domino/System/AI/PreconditionListener_v2.lua");
    l0 = self.box_PreconditionListener_v2_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_v2_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2002052677");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_v2_85_PreconditionMet,
    });
    self.box_PreconditionListener_v2_117 = cbox:CreateBox("Domino/System/AI/PreconditionListener_v2.lua");
    l0 = self.box_PreconditionListener_v2_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_v2_117");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2003115090");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_v2_117_PreconditionMet,
    });
    self.box_MultipleOR_30 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2012750186");
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
    self.box_Delay_v5_194 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_194;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_194");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2013620229");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_194_TimeElapsed,
    });
    self.box_UniversalInteractionModifier_v2_215 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_215;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_215");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2022594496");
    l0:SetConnections({
    });
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2036871865");
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
        [0] = self.f_box_MultipleOR_5_Out,
    });
    self.box_Gate_v3_57 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2037258169");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_57_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_57_Out,
    });
    self.box_MessageListener_v3_149 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_149;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_149");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2054047998");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_149_Received,
    });
    self.box_SoundModifier_v2_282 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_282;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_282");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2058738911");
    l0:SetConnections({
    });
    self.box_MultipleOR_217 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_217;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_217");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2064008082");
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
        [0] = self.f_box_MultipleOR_217_Out,
    });
    self.box_MultipleOR_174 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_174;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_174");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2068680601");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 8,
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
        [0] = self.f_box_MultipleOR_174_Out,
    });
    self.box_GroupIter_200 = cbox:CreateBox("Domino/System/GroupIter.lua");
    l0 = self.box_GroupIter_200;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupIter_200");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2070699306");
    l0:SetConnections({
        -- EndIter,
        [0] = self.f_box_GroupIter_200_EndIter,
        -- PawnIter,
        [1] = self.f_box_GroupIter_200_PawnIter,
        -- Started,
        [2] = self.f_box_GroupIter_200_Started,
        -- Stopped,
        [3] = self.f_box_GroupIter_200_Stopped,
    });
    self.box_MultipleOR_113 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_113");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2126923363");
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
        [0] = self.f_box_MultipleOR_113_Out,
    });
    self.box_MIS_200_LightManager_129 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_200/MIS_200.MIS_200_LightManager.debug.lua");
    l0 = self.box_MIS_200_LightManager_129;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_200_LightManager_129");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2130915195");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_MIS_200_LightManager_129_Out,
    });
    self.box_VisionModeModifier_v2_70 = cbox:CreateBox("Domino/System/VisionModeModifier_v2.lua");
    l0 = self.box_VisionModeModifier_v2_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisionModeModifier_v2_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2135060711");
    l0:SetConnections({
        -- StartedDrunk,
        [2] = self.f_box_VisionModeModifier_v2_70_StartedDrunk,
        -- Stopped,
        [8] = self.f_box_VisionModeModifier_v2_70_Stopped,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_21();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1852896673", "1852896673", "MIS_200_MASTER", "In", "box_OutputOrder_v2_21.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_138_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MarkerManager_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1811637482", "1811637482", "MIS_200_MASTER", "box_Simple_Node_138.Out", "box_MarkerManager_10.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, {
    });
end;

function export:f_box_Simple_Node_192_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_189;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1692457005", "1692457005", "MIS_200_MASTER", "box_Simple_Node_192.Out", "box_MultipleOR_189.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_134_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_BaseMissionBlock_v2_91();
    l0 = self.box_BaseMissionBlock_v2_91;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1209447019", "1209447019", "MIS_200_MASTER", "box_Simple_Node_134.Out", "box_BaseMissionBlock_v2_91.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
    params = self:OnEnter_box_FastTravelModifier_v2_225();
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1607547130", "1607547130", "MIS_200_MASTER", "box_Simple_Node_134.Out", "box_FastTravelModifier_v2_225.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_36();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2017010886", "2017010886", "MIS_200_MASTER", "box_Simple_Node_134.Out", "box_OutputOrder_v2_36.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_164();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|210861671", "210861671", "MIS_200_MASTER", "box_Simple_Node_134.Out", "box_OutputOrder_v2_164.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_137_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_68();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1381227276", "1381227276", "MIS_200_MASTER", "box_Simple_Node_137.Out", "box_OutputOrder_v2_68.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_136_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_270();
    l0 = self.box_VehicleListener_v3_270;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|645533888", "645533888", "MIS_200_MASTER", "box_Simple_Node_136.Out", "box_VehicleListener_v3_270.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_OutputOrder_v2_304();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1244626856", "1244626856", "MIS_200_MASTER", "box_Simple_Node_136.Out", "box_OutputOrder_v2_304.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_SoundModifier_v2_320();
    l0 = self.box_SoundModifier_v2_320;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1493717515", "1493717515", "MIS_200_MASTER", "box_Simple_Node_136.Out", "box_SoundModifier_v2_320.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
    params = self:OnEnter_box_BaseMissionBlock_v2_91();
    l0 = self.box_BaseMissionBlock_v2_91;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1131129918", "1131129918", "MIS_200_MASTER", "box_Simple_Node_136.Out", "box_BaseMissionBlock_v2_91.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    params = self:OnEnter_box_Switch_151();
    l0 = self.box_Switch_151;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1605816678", "1605816678", "MIS_200_MASTER", "box_Simple_Node_136.Out", "box_Switch_151.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, params);
    params = self:OnEnter_box_OverrideEnvironment_v3_99();
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|367196468", "367196468", "MIS_200_MASTER", "box_Simple_Node_136.Out", "box_OverrideEnvironment_v3_99.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_Gate_v3_115();
    l0 = self.box_Gate_v3_115;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1497257315", "1497257315", "MIS_200_MASTER", "box_Simple_Node_136.Out", "box_Gate_v3_115.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
    params = self:OnEnter_box_OutputOrder_v2_310();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1466417105", "1466417105", "MIS_200_MASTER", "box_Simple_Node_136.Out", "box_OutputOrder_v2_310.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_MultipleAND_v2_286();
    l0 = self.box_MultipleAND_v2_286;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|817623625", "817623625", "MIS_200_MASTER", "box_Simple_Node_136.Out", "box_MultipleAND_v2_286.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, params);
    params = self:OnEnter_box_OutputOrder_v2_171();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1216489468", "1216489468", "MIS_200_MASTER", "box_Simple_Node_136.Out", "box_OutputOrder_v2_171.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_Compare_Boolean_325();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1260901565", "1260901565", "MIS_200_MASTER", "box_Simple_Node_136.Out", "box_Compare_Boolean_325.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_160_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_308;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2128188868", "2128188868", "MIS_200_MASTER", "box_Simple_Node_160.Out", "box_MultipleOR_308.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    params = self:OnEnter_box_MultipleAND_v2_101();
    l0 = self.box_MultipleAND_v2_101;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|78974669", "78974669", "MIS_200_MASTER", "box_Simple_Node_160.Out", "box_MultipleAND_v2_101.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_279_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_278;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|387973409", "387973409", "MIS_200_MASTER", "box_Simple_Node_279.Out", "box_MultipleOR_278.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_300_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_115();
    l0 = self.box_Gate_v3_115;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2086663556", "2086663556", "MIS_200_MASTER", "box_Simple_Node_300.Out", "box_Gate_v3_115.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_135_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1719363519", "1719363519", "MIS_200_MASTER", "box_Simple_Node_135.Out", "box_MultipleOR_38.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_140_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_60();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|412451125", "412451125", "MIS_200_MASTER", "box_Simple_Node_140.Out", "box_OutputOrder_v2_60.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_139_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_309();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|573984847", "573984847", "MIS_200_MASTER", "box_Simple_Node_139.Out", "box_OutputOrder_v2_309.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_144();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|603255359", "603255359", "MIS_200_MASTER", "box_Simple_Node_139.Out", "box_OutputOrder_v2_144.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_GetActivityState_v2_112();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1742585915", "1742585915", "MIS_200_MASTER", "box_Simple_Node_139.Out", "box_GetActivityState_v2_112.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_PreconditionListener_v2_186();
    l0 = self.box_PreconditionListener_v2_186;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|585458696", "585458696", "MIS_200_MASTER", "box_Simple_Node_139.Out", "box_PreconditionListener_v2_186.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_133_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_108();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2055850885", "2055850885", "MIS_200_MASTER", "box_Simple_Node_133.Out", "box_OutputOrder_v2_108.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_197_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MarkerManager_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1094418435", "1094418435", "MIS_200_MASTER", "box_Simple_Node_197.Out", "box_MarkerManager_10.UpdateB10", clone:GetLuaBox(), l0:GetLuaBox());
    -- UpdateB10
    l0:Exec(2, {
    });
end;

function export:f_box_Simple_Node_198_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MarkerManager_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1110835345", "1110835345", "MIS_200_MASTER", "box_Simple_Node_198.Out", "box_MarkerManager_10.UpdateB20", clone:GetLuaBox(), l0:GetLuaBox());
    -- UpdateB20
    l0:Exec(3, {
    });
end;

function export:f_box_Simple_Node_199_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MarkerManager_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1396658134", "1396658134", "MIS_200_MASTER", "box_Simple_Node_199.Out", "box_MarkerManager_10.UpdateB30", clone:GetLuaBox(), l0:GetLuaBox());
    -- UpdateB30
    l0:Exec(4, {
    });
end;

function export:f_box_MultipleOR_75_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_24();
    l0 = self.box_MultipleOR_75;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1050483178", "1050483178", "MIS_200_MASTER", "box_MultipleOR_75.Out", "box_Compare_Boolean_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_v2_196_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_101();
    l0 = self.box_MultipleAND_v2_101;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2029614920", "2029614920", "MIS_200_MASTER", "box_GetPreconditionState_v2_196.NotValid", "box_MultipleAND_v2_101.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_234_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_232();
    l0 = self.box_MultipleAND_v2_232;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1241737876", "1241737876", "MIS_200_MASTER", "box_OutputOrder_v2_234.Out", "box_MultipleAND_v2_232.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_234_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_227();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|512818963", "512818963", "MIS_200_MASTER", "box_OutputOrder_v2_234.Out", "box_ParticleSystem_v3_227.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_234_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_280();
    l0 = self.box_SoundModifier_v2_280;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1191026884", "1191026884", "MIS_200_MASTER", "box_OutputOrder_v2_234.Out", "box_SoundModifier_v2_280.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_51_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_13();
    l0 = self.box_MultipleOR_51;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1953734566", "1953734566", "MIS_200_MASTER", "box_MultipleOR_51.Out", "box_Compare_Integers_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_183_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_185();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2010061365", "2010061365", "MIS_200_MASTER", "box_ActivityObjectiveMarkerModifier_v3_183.Disabled", "box_ActivityObjectiveMarkerModifier_v3_185.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PreconditionListener_v2_202_PreconditionMet()
    local params, l0, l1;
    params = self:OnEnter_box_BroadcastMessage_318();
    l0 = self.box_PreconditionListener_v2_202;
    l1 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1888614846", "1888614846", "MIS_200_MASTER", "box_PreconditionListener_v2_202.PreconditionMet", "box_BroadcastMessage_318.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_211_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_211;
    l1 = self.box_MarkerManager_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|371865149", "371865149", "MIS_200_MASTER", "box_OnceOnly_v3_211.Out", "box_MarkerManager_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, {
    });
end;

function export:f_box_GetPreconditionState_v2_242_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_253();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1625829759", "1625829759", "MIS_200_MASTER", "box_GetPreconditionState_v2_242.NotValid", "box_OutputOrder_v2_253.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_v2_191_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_101();
    l0 = self.box_MultipleAND_v2_101;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|809332179", "809332179", "MIS_200_MASTER", "box_GetPreconditionState_v2_191.NotValid", "box_MultipleAND_v2_101.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_VehicleListener_v3_270_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_267();
    l0 = self.box_VehicleListener_v3_270;
    l1 = self.box_MultipleAND_v2_267;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1069664352", "1069664352", "MIS_200_MASTER", "box_VehicleListener_v3_270.Disabled", "box_MultipleAND_v2_267.Reset", l0:GetLuaBox(), l1:GetLuaBox());
    -- Reset
    l1:Exec(1, params);
end;

function export:f_box_VehicleListener_v3_270_OnAllStanding()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_270;
    l1 = self.box_MultipleOR_268;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|108601609", "108601609", "MIS_200_MASTER", "box_VehicleListener_v3_270.OnAllStanding", "box_MultipleOR_268.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPreconditionState_v2_109_NotValid()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_217;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1106208400", "1106208400", "MIS_200_MASTER", "box_GetPreconditionState_v2_109.NotValid", "box_MultipleOR_217.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPreconditionState_v2_109_Valid()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1150897822", "1150897822", "MIS_200_MASTER", "box_GetPreconditionState_v2_109.Valid", "box_MultipleOR_73.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Gate_v3_272_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_274();
    l0 = self.box_Gate_v3_272;
    l1 = self.box_Gate_v3_274;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|433431370", "433431370", "MIS_200_MASTER", "box_Gate_v3_272.Closed", "box_Gate_v3_274.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_272_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_287();
    l0 = self.box_Gate_v3_272;
    l1 = self.box_RequestPhoneCall_v2_287;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1679586335", "1679586335", "MIS_200_MASTER", "box_Gate_v3_272.Out", "box_RequestPhoneCall_v2_287.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_GroupIter_219_PawnIter()
    local params, l0, l1;
    self:OnExit_box_GroupIter_219_PawnIter();
    params = self:OnEnter_box_UniversalInteractionModifier_v2_218();
    l0 = self.box_GroupIter_219;
    l1 = self.box_UniversalInteractionModifier_v2_218;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1899299526", "1899299526", "MIS_200_MASTER", "box_GroupIter_219.PawnIter", "box_UniversalInteractionModifier_v2_218.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GetPreconditionState_v2_170_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_246();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1680974377", "1680974377", "MIS_200_MASTER", "box_GetPreconditionState_v2_170.NotValid", "box_ParticleSystem_v3_246.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_v2_170_Valid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_v2_241();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1454103297", "1454103297", "MIS_200_MASTER", "box_GetPreconditionState_v2_170.Valid", "box_GetPreconditionState_v2_241.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_97_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_97_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1778564835", "1778564835", "MIS_200_MASTER", "box_SetBoolean_v2_97.Out", "box_MultipleOR_75.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_19_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_128();
    l0 = self.box_Delay_v5_128;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1377448609", "1377448609", "MIS_200_MASTER", "box_OutputOrder_v2_19.Out", "box_Delay_v5_128.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_19_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_140();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|812785158", "812785158", "MIS_200_MASTER", "box_OutputOrder_v2_19.Out", "box_Simple_Node_140.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_292_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_151();
    l0 = self.box_MultipleAND_v2_292;
    l1 = self.box_Switch_151;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|79123559", "79123559", "MIS_200_MASTER", "box_MultipleAND_v2_292.Out", "box_Switch_151.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_65_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_65;
    l1 = self.box_OnceOnly_v3_221;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1268139344", "1268139344", "MIS_200_MASTER", "box_MultipleOR_65.Out", "box_OnceOnly_v3_221.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPreconditionState_v2_190_Valid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_286();
    l0 = self.box_MultipleAND_v2_286;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1819335407", "1819335407", "MIS_200_MASTER", "box_GetPreconditionState_v2_190.Valid", "box_MultipleAND_v2_286.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_MIS_200_MASTER_FATHERVOINTRO_155_VOFinished()
    local l0, l1;
    l0 = self.box_MIS_200_MASTER_FATHERVOINTRO_155;
    l1 = self.box_MultipleOR_174;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1434225304", "1434225304", "MIS_200_MASTER", "box_MIS_200_MASTER_FATHERVOINTRO_155.VOFinished", "box_MultipleOR_174.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_GetPreconditionState_v2_167_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_162();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1073136651", "1073136651", "MIS_200_MASTER", "box_GetPreconditionState_v2_167.NotValid", "box_ParticleSystem_v3_162.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_v2_145_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_146();
    l0 = self.box_MessageListener_v3_146;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1856671244", "1856671244", "MIS_200_MASTER", "box_GetPreconditionState_v2_145.NotValid", "box_MessageListener_v3_146.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPreconditionState_v2_145_Valid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_200_LightManager_44();
    l0 = self.box_MIS_200_LightManager_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|371778093", "371778093", "MIS_200_MASTER", "box_GetPreconditionState_v2_145.Valid", "box_MIS_200_LightManager_44.PreconditionValid", clone:GetLuaBox(), l0:GetLuaBox());
    -- PreconditionValid
    l0:Exec(1, params);
end;

function export:f_box_GetPreconditionState_v2_241_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupIter_251();
    l0 = self.box_GroupIter_251;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|458275470", "458275470", "MIS_200_MASTER", "box_GetPreconditionState_v2_241.NotValid", "box_GroupIter_251.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_GroupIter_249_PawnIter()
    local params, l0, l1;
    self:OnExit_box_GroupIter_249_PawnIter();
    params = self:OnEnter_box_UniversalInteractionModifier_v2_250();
    l0 = self.box_GroupIter_249;
    l1 = self.box_UniversalInteractionModifier_v2_250;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|299727523", "299727523", "MIS_200_MASTER", "box_GroupIter_249.PawnIter", "box_UniversalInteractionModifier_v2_250.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_238_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupIter_210();
    l0 = self.box_GroupIter_210;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1436179749", "1436179749", "MIS_200_MASTER", "box_OutputOrder_v2_238.Out", "box_GroupIter_210.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_238_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_v2_165();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|292492778", "292492778", "MIS_200_MASTER", "box_OutputOrder_v2_238.Out", "box_GetPreconditionState_v2_165.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_21_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|899572396", "899572396", "MIS_200_MASTER", "box_OutputOrder_v2_21.Out", "box_ActivityAcknowledgeGate_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_21_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_1();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2030146977", "2030146977", "MIS_200_MASTER", "box_OutputOrder_v2_21.Out", "box_Print_v2_1.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_21_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_67();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1401355568", "1401355568", "MIS_200_MASTER", "box_OutputOrder_v2_21.Out", "box_Print_v2_67.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_2_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_84();
    l0 = self.box_OnceOnly_v3_2;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1661677703", "1661677703", "MIS_200_MASTER", "box_OnceOnly_v3_2.Out", "box_OutputOrder_v2_84.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_290_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_273();
    l0 = self.box_RequestPhoneCall_v2_290;
    l1 = self.box_Gate_v3_273;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1682612369", "1682612369", "MIS_200_MASTER", "box_RequestPhoneCall_v2_290.Completed", "box_Gate_v3_273.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Compare_Strings_265_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_270();
    l0 = self.box_VehicleListener_v3_270;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|141148778", "141148778", "MIS_200_MASTER", "box_Compare_Strings_265.A_eq_B", "box_VehicleListener_v3_270.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Compare_Strings_265_A_neq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_193;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1174099342", "1174099342", "MIS_200_MASTER", "box_Compare_Strings_265.A_neq_B", "box_MultipleOR_193.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPreconditionState_v2_142_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_149();
    l0 = self.box_MessageListener_v3_149;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1901844923", "1901844923", "MIS_200_MASTER", "box_GetPreconditionState_v2_142.NotValid", "box_MessageListener_v3_149.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPreconditionState_v2_142_Valid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_200_LightManager_129();
    l0 = self.box_MIS_200_LightManager_129;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1901678117", "1901678117", "MIS_200_MASTER", "box_GetPreconditionState_v2_142.Valid", "box_MIS_200_LightManager_129.PreconditionValid", clone:GetLuaBox(), l0:GetLuaBox());
    -- PreconditionValid
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_152_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_160();
    l0 = self.box_OnceOnly_v3_152;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1844293483", "1844293483", "MIS_200_MASTER", "box_OnceOnly_v3_152.Out", "box_Simple_Node_160.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_v2_121_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_101();
    l0 = self.box_MultipleAND_v2_101;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|399670232", "399670232", "MIS_200_MASTER", "box_GetPreconditionState_v2_121.NotValid", "box_MultipleAND_v2_101.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 2);
end;

function export:f_box_MessageListener_v3_146_Received()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_200_LightManager_44();
    l0 = self.box_MessageListener_v3_146;
    l1 = self.box_MIS_200_LightManager_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|211708857", "211708857", "MIS_200_MASTER", "box_MessageListener_v3_146.Received", "box_MIS_200_LightManager_44.PreconditionNotValid", l0:GetLuaBox(), l1:GetLuaBox());
    -- PreconditionNotValid
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_223_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_208();
    l0 = self.box_OnceOnly_v3_223;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|787531197", "787531197", "MIS_200_MASTER", "box_OnceOnly_v3_223.Out", "box_ParticleSystem_v3_208.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_227_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_233();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1174471508", "1174471508", "MIS_200_MASTER", "box_ParticleSystem_v3_227.Started", "box_DynamicLightModifier_233.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_237_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_232();
    l0 = self.box_MultipleAND_v2_232;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1200774258", "1200774258", "MIS_200_MASTER", "box_OutputOrder_v2_237.Out", "box_MultipleAND_v2_232.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 2);
end;

function export:f_box_OutputOrder_v2_237_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_231();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1830709892", "1830709892", "MIS_200_MASTER", "box_OutputOrder_v2_237.Out", "box_ParticleSystem_v3_231.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_237_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_282();
    l0 = self.box_SoundModifier_v2_282;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|847200690", "847200690", "MIS_200_MASTER", "box_OutputOrder_v2_237.Out", "box_SoundModifier_v2_282.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_309_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_277();
    l0 = self.box_MessageListener_v3_277;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1560192201", "1560192201", "MIS_200_MASTER", "box_OutputOrder_v2_309.Out", "box_MessageListener_v3_277.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_309_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_283();
    l0 = self.box_MessageListener_v3_283;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|263261559", "263261559", "MIS_200_MASTER", "box_OutputOrder_v2_309.Out", "box_MessageListener_v3_283.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_309_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_284();
    l0 = self.box_MessageListener_v3_284;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|925568791", "925568791", "MIS_200_MASTER", "box_OutputOrder_v2_309.Out", "box_MessageListener_v3_284.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_50_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_152;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2102043106", "2102043106", "MIS_200_MASTER", "box_OutputOrder_v2_50.Out", "box_OnceOnly_v3_152.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_50_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerSpeedModifier_v3_32();
    l0 = self.box_PlayerSpeedModifier_v3_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1900028290", "1900028290", "MIS_200_MASTER", "box_OutputOrder_v2_50.Out", "box_PlayerSpeedModifier_v3_32.ApplySpeedFactor", clone:GetLuaBox(), l0:GetLuaBox());
    -- ApplySpeedFactor
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_195_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_93();
    l0 = self.box_Delay_v5_195;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|594662027", "594662027", "MIS_200_MASTER", "box_Delay_v5_195.TimeElapsed", "box_OutputOrder_v2_93.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_124_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_20();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|597004726", "597004726", "MIS_200_MASTER", "box_Compare_Integers_124.A_eq_B", "box_SetBoolean_v2_20.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_312_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_312;
    l1 = self.box_MultipleOR_314;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|661511649", "661511649", "MIS_200_MASTER", "box_MessageListener_v3_312.Received", "box_MultipleOR_314.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PreconditionListener_v2_186_PreconditionMet()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_192();
    l0 = self.box_PreconditionListener_v2_186;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1444084968", "1444084968", "MIS_200_MASTER", "box_PreconditionListener_v2_186.PreconditionMet", "box_Simple_Node_192.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_208_Stopped()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_90;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|47602045", "47602045", "MIS_200_MASTER", "box_ParticleSystem_v3_208.Stopped", "box_MultipleOR_90.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_291_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_272();
    l0 = self.box_Gate_v3_291;
    l1 = self.box_Gate_v3_272;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1756448583", "1756448583", "MIS_200_MASTER", "box_Gate_v3_291.Closed", "box_Gate_v3_272.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_291_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_289();
    l0 = self.box_Gate_v3_291;
    l1 = self.box_RequestPhoneCall_v2_289;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|351426582", "351426582", "MIS_200_MASTER", "box_Gate_v3_291.Out", "box_RequestPhoneCall_v2_289.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_GetPawnVehicleInfo_214_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_214_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_265();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1522994289", "1522994289", "MIS_200_MASTER", "box_GetPawnVehicleInfo_214.InVehicle", "box_Compare_Strings_265.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_214_NotInVehicle()
    local l0;
    self:OnExit_box_GetPawnVehicleInfo_214_NotInVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_193;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|928369419", "928369419", "MIS_200_MASTER", "box_GetPawnVehicleInfo_214.NotInVehicle", "box_MultipleOR_193.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPawnVehicleInfo_214_Out()
    self:OnExit_box_GetPawnVehicleInfo_214_Out();
end;

function export:f_box_OutputOrder_v2_69_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerSpeedModifier_v3_63();
    l0 = self.box_PlayerSpeedModifier_v3_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2044626491", "2044626491", "MIS_200_MASTER", "box_OutputOrder_v2_69.Out", "box_PlayerSpeedModifier_v3_63.ApplySpeedFactor", clone:GetLuaBox(), l0:GetLuaBox());
    -- ApplySpeedFactor
    l0:Exec(0, params);
end;

function export:f_box_GetPreconditionState_v2_187_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_v2_41();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1207174473", "1207174473", "MIS_200_MASTER", "box_GetPreconditionState_v2_187.NotValid", "box_ActivityRetry_v2_41.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_v2_187_Valid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_328();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1380507716", "1380507716", "MIS_200_MASTER", "box_GetPreconditionState_v2_187.Valid", "box_SetBoolean_v2_328.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_v2_111_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_v2_85();
    l0 = self.box_PreconditionListener_v2_85;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|93399525", "93399525", "MIS_200_MASTER", "box_GetPreconditionState_v2_111.NotValid", "box_PreconditionListener_v2_85.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPreconditionState_v2_111_Valid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_v2_256();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1671046827", "1671046827", "MIS_200_MASTER", "box_GetPreconditionState_v2_111.Valid", "box_GetPreconditionState_v2_256.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MIS_200_MASTER_FATHERVOINTRO_173_VOFinished()
    local l0, l1;
    l0 = self.box_MIS_200_MASTER_FATHERVOINTRO_173;
    l1 = self.box_MultipleOR_174;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1492851347", "1492851347", "MIS_200_MASTER", "box_MIS_200_MASTER_FATHERVOINTRO_173.VOFinished", "box_MultipleOR_174.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ParticleSystem_v3_235_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_230();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2081355255", "2081355255", "MIS_200_MASTER", "box_ParticleSystem_v3_235.Started", "box_DynamicLightModifier_230.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_73_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_73;
    l1 = self.box_OnceOnly_v3_223;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1684892224", "1684892224", "MIS_200_MASTER", "box_MultipleOR_73.Out", "box_OnceOnly_v3_223.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PreconditionListener_v2_255_PreconditionMet()
    local params, l0, l1;
    params = self:OnEnter_box_BroadcastMessage_317();
    l0 = self.box_PreconditionListener_v2_255;
    l1 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|412653328", "412653328", "MIS_200_MASTER", "box_PreconditionListener_v2_255.PreconditionMet", "box_BroadcastMessage_317.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_310_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_277();
    l0 = self.box_MessageListener_v3_277;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|543805013", "543805013", "MIS_200_MASTER", "box_OutputOrder_v2_310.Out", "box_MessageListener_v3_277.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_310_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_283();
    l0 = self.box_MessageListener_v3_283;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1208341801", "1208341801", "MIS_200_MASTER", "box_OutputOrder_v2_310.Out", "box_MessageListener_v3_283.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_310_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_284();
    l0 = self.box_MessageListener_v3_284;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|836718735", "836718735", "MIS_200_MASTER", "box_OutputOrder_v2_310.Out", "box_MessageListener_v3_284.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_295_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_329();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|602020606", "602020606", "MIS_200_MASTER", "box_OutputOrder_v2_295.Out", "box_BroadcastMessage_329.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_295_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_200_FatherShootArrow_148();
    l0 = self.box_MIS_200_FatherShootArrow_148;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|489573687", "489573687", "MIS_200_MASTER", "box_OutputOrder_v2_295.Out", "box_MIS_200_FatherShootArrow_148.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_15_Started()
    local params, l0, l1;
    params = self:OnEnter_box_MessageListener_v3_275();
    l0 = self.box_Delay_v5_15;
    l1 = self.box_MessageListener_v3_275;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1755577831", "1755577831", "MIS_200_MASTER", "box_Delay_v5_15.Started", "box_MessageListener_v3_275.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_15_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_285();
    l0 = self.box_Delay_v5_15;
    l1 = self.box_Gate_v3_285;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1643558368", "1643558368", "MIS_200_MASTER", "box_Delay_v5_15.TimeElapsed", "box_Gate_v3_285.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_RequestPhoneCall_v2_12_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_57();
    l0 = self.box_RequestPhoneCall_v2_12;
    l1 = self.box_Gate_v3_57;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1065444734", "1065444734", "MIS_200_MASTER", "box_RequestPhoneCall_v2_12.Completed", "box_Gate_v3_57.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_314_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_198();
    l0 = self.box_MultipleOR_314;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|744968293", "744968293", "MIS_200_MASTER", "box_MultipleOR_314.Out", "box_Simple_Node_198.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetTimeOfDay_3_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_87();
    l0 = self.box_Delay_v5_87;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|386901543", "386901543", "MIS_200_MASTER", "box_SetTimeOfDay_3.Out", "box_Delay_v5_87.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_278_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_296();
    l0 = self.box_MultipleOR_278;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|816623536", "816623536", "MIS_200_MASTER", "box_MultipleOR_278.Out", "box_OutputOrder_v2_296.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_v2_220_Valid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupIter_219();
    l0 = self.box_GroupIter_219;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1524144971", "1524144971", "MIS_200_MASTER", "box_GetPreconditionState_v2_220.Valid", "box_GroupIter_219.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_261_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PreconditionListener_v2_257();
    l0 = self.box_MultipleOR_261;
    l1 = self.box_PreconditionListener_v2_257;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|14114436", "14114436", "MIS_200_MASTER", "box_MultipleOR_261.Out", "box_PreconditionListener_v2_257.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_120_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_138();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1241833325", "1241833325", "MIS_200_MASTER", "box_OutputOrder_v2_120.Out", "box_Simple_Node_138.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_120_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_110();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|443277891", "443277891", "MIS_200_MASTER", "box_OutputOrder_v2_120.Out", "box_AddActivityObjective_v2_110.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_120_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_15();
    l0 = self.box_Delay_v5_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|42200506", "42200506", "MIS_200_MASTER", "box_OutputOrder_v2_120.Out", "box_Delay_v5_15.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_PreconditionListener_v2_182_PreconditionMet()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_118();
    l0 = self.box_PreconditionListener_v2_182;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|889161886", "889161886", "MIS_200_MASTER", "box_PreconditionListener_v2_182.PreconditionMet", "box_ActivityObjectiveMarkerModifier_v3_118.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_20_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_20_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetTimeOfDay_4();
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|996869542", "996869542", "MIS_200_MASTER", "box_SetBoolean_v2_20.Out", "box_SetTimeOfDay_4.IncrementTimeOfDay", clone:GetLuaBox(), l0:GetLuaBox());
    -- IncrementTimeOfDay
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_119_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2134949998", "2134949998", "MIS_200_MASTER", "box_OutputOrder_v2_119.Out", "box_MultipleOR_5.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_119_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_100;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1713245879", "1713245879", "MIS_200_MASTER", "box_OutputOrder_v2_119.Out", "box_OnceOnly_v3_100.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetActivityState_v2_112_Active()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_135();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1698151446", "1698151446", "MIS_200_MASTER", "box_GetActivityState_v2_112.Active", "box_Simple_Node_135.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetActivityState_v2_112_Inactive()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|940962896", "940962896", "MIS_200_MASTER", "box_GetActivityState_v2_112.Inactive", "box_MultipleOR_18.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityState_v2_112_Unavailable()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|410316646", "410316646", "MIS_200_MASTER", "box_GetActivityState_v2_112.Unavailable", "box_MultipleOR_18.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPreconditionState_v2_239_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_254();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|676876213", "676876213", "MIS_200_MASTER", "box_GetPreconditionState_v2_239.NotValid", "box_OutputOrder_v2_254.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_313_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_313;
    l1 = self.box_MultipleOR_315;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|724549763", "724549763", "MIS_200_MASTER", "box_MessageListener_v3_313.Received", "box_MultipleOR_315.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_93_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|400103826", "400103826", "MIS_200_MASTER", "box_OutputOrder_v2_93.Out", "box_MultipleOR_30.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_93_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SlowMotionHACK_131();
    l0 = self.box_SlowMotionHACK_131;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|427357236", "427357236", "MIS_200_MASTER", "box_OutputOrder_v2_93.Out", "box_SlowMotionHACK_131.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_ActivityInitialized_28_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_126();
    l0 = self.box_ActivityInitialized_28;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1413187018", "1413187018", "MIS_200_MASTER", "box_ActivityInitialized_28.Out", "box_GetPlayerGroup_v2_126.FriendlyPlayers", l0:GetLuaBox(), l1:GetLuaBox());
    -- FriendlyPlayers
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_286_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_115();
    l0 = self.box_MultipleAND_v2_286;
    l1 = self.box_Gate_v3_115;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1412699494", "1412699494", "MIS_200_MASTER", "box_MultipleAND_v2_286.Out", "box_Gate_v3_115.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_285_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_57();
    l0 = self.box_Gate_v3_285;
    l1 = self.box_Gate_v3_57;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1070912701", "1070912701", "MIS_200_MASTER", "box_Gate_v3_285.Closed", "box_Gate_v3_57.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_285_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_12();
    l0 = self.box_Gate_v3_285;
    l1 = self.box_RequestPhoneCall_v2_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2093313181", "2093313181", "MIS_200_MASTER", "box_Gate_v3_285.Out", "box_RequestPhoneCall_v2_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_98_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_184();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|223251911", "223251911", "MIS_200_MASTER", "box_ActivityObjectiveMarkerModifier_v3_98.Enabled", "box_OutputOrder_v2_184.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MIS_200_MASTER_FATHERVOINTRO_172_VOFinished()
    local l0, l1;
    l0 = self.box_MIS_200_MASTER_FATHERVOINTRO_172;
    l1 = self.box_MultipleOR_174;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|172069417", "172069417", "MIS_200_MASTER", "box_MIS_200_MASTER_FATHERVOINTRO_172.VOFinished", "box_MultipleOR_174.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_IndexList_v2_89_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_200_MASTER_FATHERVOINTRO_175();
    l0 = self.box_IndexList_v2_89;
    l1 = self.box_MIS_200_MASTER_FATHERVOINTRO_175;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1057019965", "1057019965", "MIS_200_MASTER", "box_IndexList_v2_89.Output", "box_MIS_200_MASTER_FATHERVOINTRO_175.StopVO", l0:GetLuaBox(), l1:GetLuaBox());
    -- StopVO
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_89_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_200_MASTER_FATHERVOINTRO_173();
    l0 = self.box_IndexList_v2_89;
    l1 = self.box_MIS_200_MASTER_FATHERVOINTRO_173;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1492592912", "1492592912", "MIS_200_MASTER", "box_IndexList_v2_89.Output", "box_MIS_200_MASTER_FATHERVOINTRO_173.StopVO", l0:GetLuaBox(), l1:GetLuaBox());
    -- StopVO
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_89_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_200_MASTER_FATHERVOINTRO_155();
    l0 = self.box_IndexList_v2_89;
    l1 = self.box_MIS_200_MASTER_FATHERVOINTRO_155;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|783094423", "783094423", "MIS_200_MASTER", "box_IndexList_v2_89.Output", "box_MIS_200_MASTER_FATHERVOINTRO_155.StopVO", l0:GetLuaBox(), l1:GetLuaBox());
    -- StopVO
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_89_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_200_MASTER_FATHERVOINTRO_158();
    l0 = self.box_IndexList_v2_89;
    l1 = self.box_MIS_200_MASTER_FATHERVOINTRO_158;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1150883224", "1150883224", "MIS_200_MASTER", "box_IndexList_v2_89.Output", "box_MIS_200_MASTER_FATHERVOINTRO_158.StopVO", l0:GetLuaBox(), l1:GetLuaBox());
    -- StopVO
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_89_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_200_MASTER_FATHERVOINTRO_172();
    l0 = self.box_IndexList_v2_89;
    l1 = self.box_MIS_200_MASTER_FATHERVOINTRO_172;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|216591385", "216591385", "MIS_200_MASTER", "box_IndexList_v2_89.Output", "box_MIS_200_MASTER_FATHERVOINTRO_172.StopVO", l0:GetLuaBox(), l1:GetLuaBox());
    -- StopVO
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_89_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_200_MASTER_FATHERVOINTRO_159();
    l0 = self.box_IndexList_v2_89;
    l1 = self.box_MIS_200_MASTER_FATHERVOINTRO_159;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2073732580", "2073732580", "MIS_200_MASTER", "box_IndexList_v2_89.Output", "box_MIS_200_MASTER_FATHERVOINTRO_159.StopVO", l0:GetLuaBox(), l1:GetLuaBox());
    -- StopVO
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_89_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_200_MASTER_FATHERVOINTRO_154();
    l0 = self.box_IndexList_v2_89;
    l1 = self.box_MIS_200_MASTER_FATHERVOINTRO_154;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|675672175", "675672175", "MIS_200_MASTER", "box_IndexList_v2_89.Output", "box_MIS_200_MASTER_FATHERVOINTRO_154.StopVO", l0:GetLuaBox(), l1:GetLuaBox());
    -- StopVO
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_89_Output_7()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_200_MASTER_FATHERVOINTRO_153();
    l0 = self.box_IndexList_v2_89;
    l1 = self.box_MIS_200_MASTER_FATHERVOINTRO_153;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1073891639", "1073891639", "MIS_200_MASTER", "box_IndexList_v2_89.Output", "box_MIS_200_MASTER_FATHERVOINTRO_153.StopVO", l0:GetLuaBox(), l1:GetLuaBox());
    -- StopVO
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_171_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_v2_169();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|79480467", "79480467", "MIS_200_MASTER", "box_OutputOrder_v2_171.Out", "box_GetPreconditionState_v2_169.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_171_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_v2_168();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1743536607", "1743536607", "MIS_200_MASTER", "box_OutputOrder_v2_171.Out", "box_GetPreconditionState_v2_168.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_171_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_v2_170();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2056869021", "2056869021", "MIS_200_MASTER", "box_OutputOrder_v2_171.Out", "box_GetPreconditionState_v2_170.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_171_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_v2_220();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1783562048", "1783562048", "MIS_200_MASTER", "box_OutputOrder_v2_171.Out", "box_GetPreconditionState_v2_220.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MIS_200_FatherShootArrow_150_ArrowShot()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_237();
    l0 = self.box_MIS_200_FatherShootArrow_150;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|481109329", "481109329", "MIS_200_MASTER", "box_MIS_200_FatherShootArrow_150.ArrowShot", "box_OutputOrder_v2_237.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_53_Received()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_326();
    l0 = self.box_MessageListener_v3_53;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1687438755", "1687438755", "MIS_200_MASTER", "box_MessageListener_v3_53.Received", "box_SetBoolean_v2_326.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_228_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_226();
    l0 = self.box_Delay_v5_228;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1021106682", "1021106682", "MIS_200_MASTER", "box_Delay_v5_228.TimeElapsed", "box_EndActivityObjective_v2_226.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_v2_244_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupIter_200();
    l0 = self.box_GroupIter_200;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1483079107", "1483079107", "MIS_200_MASTER", "box_GetPreconditionState_v2_244.NotValid", "box_GroupIter_200.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_33_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1431784771", "1431784771", "MIS_200_MASTER", "box_OutputOrder_v2_33.Out", "box_MultipleOR_51.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_33_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_v2_29();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|675067763", "675067763", "MIS_200_MASTER", "box_OutputOrder_v2_33.Out", "box_GetPreconditionState_v2_29.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_33_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_v2_81();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|188071605", "188071605", "MIS_200_MASTER", "box_OutputOrder_v2_33.Out", "box_GetPreconditionState_v2_81.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_33_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_v2_111();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1670366798", "1670366798", "MIS_200_MASTER", "box_OutputOrder_v2_33.Out", "box_GetPreconditionState_v2_111.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_45_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_62();
    l0 = self.box_EntityStatusListener_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1239872249", "1239872249", "MIS_200_MASTER", "box_OutputOrder_v2_45.Out", "box_EntityStatusListener_62.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_45_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_139();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1094914849", "1094914849", "MIS_200_MASTER", "box_OutputOrder_v2_45.Out", "box_Simple_Node_139.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_45_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_114();
    l0 = self.box_ExitZoneWarningListener_v3_114;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|421127997", "421127997", "MIS_200_MASTER", "box_OutputOrder_v2_45.Out", "box_ExitZoneWarningListener_v3_114.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_45_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_53();
    l0 = self.box_MessageListener_v3_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|18388870", "18388870", "MIS_200_MASTER", "box_OutputOrder_v2_45.Out", "box_MessageListener_v3_53.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_45_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LeashOverride_324();
    l0 = self.box_LeashOverride_324;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1085734302", "1085734302", "MIS_200_MASTER", "box_OutputOrder_v2_45.Out", "box_LeashOverride_324.UseCustomLeash", clone:GetLuaBox(), l0:GetLuaBox());
    -- UseCustomLeash
    l0:Exec(3, params);
end;

function export:f_box_GroupIter_213_PawnIter()
    local params, l0, l1;
    self:OnExit_box_GroupIter_213_PawnIter();
    params = self:OnEnter_box_UniversalInteractionModifier_v2_206();
    l0 = self.box_GroupIter_213;
    l1 = self.box_UniversalInteractionModifier_v2_206;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1663261143", "1663261143", "MIS_200_MASTER", "box_GroupIter_213.PawnIter", "box_UniversalInteractionModifier_v2_206.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MIS_200_MASTER_FATHERVOINTRO_153_VOFinished()
    local l0, l1;
    l0 = self.box_MIS_200_MASTER_FATHERVOINTRO_153;
    l1 = self.box_MultipleOR_174;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1643056508", "1643056508", "MIS_200_MASTER", "box_MIS_200_MASTER_FATHERVOINTRO_153.VOFinished", "box_MultipleOR_174.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 7);
end;

function export:f_box_ParticleSystem_v3_231_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_229();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1612651681", "1612651681", "MIS_200_MASTER", "box_ParticleSystem_v3_231.Started", "box_DynamicLightModifier_229.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_189_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_14();
    l0 = self.box_MultipleOR_189;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|215749964", "215749964", "MIS_200_MASTER", "box_MultipleOR_189.Out", "box_Compare_Boolean_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_110_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_98();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1442310346", "1442310346", "MIS_200_MASTER", "box_AddActivityObjective_v2_110.Out", "box_ActivityObjectiveMarkerModifier_v3_98.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_94_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_279();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|909636674", "909636674", "MIS_200_MASTER", "box_Compare_Boolean_94.A_is_True", "box_Simple_Node_279.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_311_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_197();
    l0 = self.box_MultipleOR_311;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|138813561", "138813561", "MIS_200_MASTER", "box_MultipleOR_311.Out", "box_Simple_Node_197.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_207_Stopped()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_90;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|57680236", "57680236", "MIS_200_MASTER", "box_ParticleSystem_v3_207.Stopped", "box_MultipleOR_90.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SlowMotionHACK_43_Out()
    local params, l0, l1;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_106();
    l0 = self.box_SlowMotionHACK_43;
    l1 = self.box_CHEAT_SetEnvironmentTimeScale_106;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1490982370", "1490982370", "MIS_200_MASTER", "box_SlowMotionHACK_43.Out", "box_CHEAT_SetEnvironmentTimeScale_106.SetTimeScale", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeScale
    l1:Exec(0, params);
end;

function export:f_box_UIMode_122_OnCinematicMode()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_69();
    l0 = self.box_UIMode_122;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2125212203", "2125212203", "MIS_200_MASTER", "box_UIMode_122.OnCinematicMode", "box_OutputOrder_v2_69.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_274_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_273();
    l0 = self.box_Gate_v3_274;
    l1 = self.box_Gate_v3_273;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1339863816", "1339863816", "MIS_200_MASTER", "box_Gate_v3_274.Closed", "box_Gate_v3_273.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_274_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_290();
    l0 = self.box_Gate_v3_274;
    l1 = self.box_RequestPhoneCall_v2_290;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2110639619", "2110639619", "MIS_200_MASTER", "box_Gate_v3_274.Out", "box_RequestPhoneCall_v2_290.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MessageListener_v3_284_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_284;
    l1 = self.box_MultipleOR_308;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1857002709", "1857002709", "MIS_200_MASTER", "box_MessageListener_v3_284.Received", "box_MultipleOR_308.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_PreconditionListener_v2_86_PreconditionMet()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_262();
    l0 = self.box_PreconditionListener_v2_86;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|216990136", "216990136", "MIS_200_MASTER", "box_PreconditionListener_v2_86.PreconditionMet", "box_OutputOrder_v2_262.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_92_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_49();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|12302650", "12302650", "MIS_200_MASTER", "box_Compare_Integers_92.A_eq_B", "box_SetBoolean_v2_49.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_330_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_331();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2075687357", "2075687357", "MIS_200_MASTER", "box_OutputOrder_v2_330.Out", "box_BroadcastMessage_331.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_330_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_200_FatherShootArrow_150();
    l0 = self.box_MIS_200_FatherShootArrow_150;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|674897048", "674897048", "MIS_200_MASTER", "box_OutputOrder_v2_330.Out", "box_MIS_200_FatherShootArrow_150.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_46_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TimeOfDayListener_42();
    l0 = self.box_TimeOfDayListener_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1077367100", "1077367100", "MIS_200_MASTER", "box_OutputOrder_v2_46.Out", "box_TimeOfDayListener_42.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_46_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_40();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|547511535", "547511535", "MIS_200_MASTER", "box_OutputOrder_v2_46.Out", "box_OverrideDisabledLogicId_40.Tutorial", clone:GetLuaBox(), l0:GetLuaBox());
    -- Tutorial
    l0:Exec(41, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_46_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_UIMode_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|926167803", "926167803", "MIS_200_MASTER", "box_OutputOrder_v2_46.Out", "box_UIMode_47.CinematicMode", clone:GetLuaBox(), l0:GetLuaBox());
    -- CinematicMode
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_46_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GunsForHireSystemModifier_293();
    l0 = self.box_GunsForHireSystemModifier_293;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2101838015", "2101838015", "MIS_200_MASTER", "box_OutputOrder_v2_46.Out", "box_GunsForHireSystemModifier_293.DisableGFHSystem", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableGFHSystem
    l0:Exec(0, params);
end;

function export:f_box_EntityStatusListener_62_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MissionAckTriggerListener_59();
    l0 = self.box_EntityStatusListener_62;
    l1 = self.box_MissionAckTriggerListener_59;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|307611142", "307611142", "MIS_200_MASTER", "box_EntityStatusListener_62.Loaded", "box_MissionAckTriggerListener_59.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_62_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_MissionAckTriggerListener_59();
    l0 = self.box_EntityStatusListener_62;
    l1 = self.box_MissionAckTriggerListener_59;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|121838617", "121838617", "MIS_200_MASTER", "box_EntityStatusListener_62.Unloaded", "box_MissionAckTriggerListener_59.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_LeashOverride_324_OnLeashBroken()
    local params, l0, l1;
    self:OnExit_box_LeashOverride_324_OnLeashBroken();
    params = self:OnEnter_box_TeleportPawns_321();
    l0 = self.box_LeashOverride_324;
    l1 = self.box_TeleportPawns_321;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2079080491", "2079080491", "MIS_200_MASTER", "box_LeashOverride_324.OnLeashBroken", "box_TeleportPawns_321.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_LeashOverride_324_OnLeashFinalWarning()
    self:OnExit_box_LeashOverride_324_OnLeashFinalWarning();
end;

function export:f_box_LeashOverride_324_OnLeashWarning()
    self:OnExit_box_LeashOverride_324_OnLeashWarning();
end;

function export:f_box_MIS_200_MASTER_FATHERVOINTRO_154_VOFinished()
    local l0, l1;
    l0 = self.box_MIS_200_MASTER_FATHERVOINTRO_154;
    l1 = self.box_MultipleOR_174;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1005861828", "1005861828", "MIS_200_MASTER", "box_MIS_200_MASTER_FATHERVOINTRO_154.VOFinished", "box_MultipleOR_174.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 6);
end;

function export:f_box_MIS_200_MASTER_FATHERVOINTRO_159_VOFinished()
    local l0, l1;
    l0 = self.box_MIS_200_MASTER_FATHERVOINTRO_159;
    l1 = self.box_MultipleOR_174;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1841938858", "1841938858", "MIS_200_MASTER", "box_MIS_200_MASTER_FATHERVOINTRO_159.VOFinished", "box_MultipleOR_174.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_GetPreconditionState_v2_201_NotValid()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_260;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1695141640", "1695141640", "MIS_200_MASTER", "box_GetPreconditionState_v2_201.NotValid", "box_MultipleOR_260.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPreconditionState_v2_201_Valid()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_113;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|427711258", "427711258", "MIS_200_MASTER", "box_GetPreconditionState_v2_201.Valid", "box_MultipleOR_113.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_263_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_217;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1272543581", "1272543581", "MIS_200_MASTER", "box_OutputOrder_v2_263.Out", "box_MultipleOR_217.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_263_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_314;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1330774565", "1330774565", "MIS_200_MASTER", "box_OutputOrder_v2_263.Out", "box_MultipleOR_314.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_263_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_312();
    l0 = self.box_MessageListener_v3_312;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|244161298", "244161298", "MIS_200_MASTER", "box_OutputOrder_v2_263.Out", "box_MessageListener_v3_312.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UIMode_47_OnCinematicMode()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_50();
    l0 = self.box_UIMode_47;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1159543585", "1159543585", "MIS_200_MASTER", "box_UIMode_47.OnCinematicMode", "box_OutputOrder_v2_50.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_294_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_77();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1297000334", "1297000334", "MIS_200_MASTER", "box_OutputOrder_v2_294.Out", "box_BroadcastMessage_77.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_294_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_200_FatherShootArrow_141();
    l0 = self.box_MIS_200_FatherShootArrow_141;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1810065895", "1810065895", "MIS_200_MASTER", "box_OutputOrder_v2_294.Out", "box_MIS_200_FatherShootArrow_141.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_MIS_200_FatherShootArrow_148_ArrowShot()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_236();
    l0 = self.box_MIS_200_FatherShootArrow_148;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|344348637", "344348637", "MIS_200_MASTER", "box_MIS_200_FatherShootArrow_148.ArrowShot", "box_OutputOrder_v2_236.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_103_Out()
    local l0;
    self:OnExit_box_IntegerArithmetics_v2_103_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|131338914", "131338914", "MIS_200_MASTER", "box_IntegerArithmetics_v2_103.Out", "box_MultipleOR_51.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetBoolean_v2_49_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_49_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetTimeOfDay_26();
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1009740635", "1009740635", "MIS_200_MASTER", "box_SetBoolean_v2_49.Out", "box_SetTimeOfDay_26.SetTimeOfDay", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeOfDay
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MIS_200_LightManager_11_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_295();
    l0 = self.box_MIS_200_LightManager_11;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|960265073", "960265073", "MIS_200_MASTER", "box_MIS_200_LightManager_11.Out", "box_OutputOrder_v2_295.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_266_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_267();
    l0 = self.box_MultipleAND_v2_267;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1285096714", "1285096714", "MIS_200_MASTER", "box_OutputOrder_v2_266.Out", "box_MultipleAND_v2_267.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_266_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPawnVehicleInfo_214();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|450657273", "450657273", "MIS_200_MASTER", "box_OutputOrder_v2_266.Out", "box_GetPawnVehicleInfo_214.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_v2_165_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_161();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|391497555", "391497555", "MIS_200_MASTER", "box_GetPreconditionState_v2_165.NotValid", "box_ParticleSystem_v3_161.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_118_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_127();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1176610837", "1176610837", "MIS_200_MASTER", "box_ActivityObjectiveMarkerModifier_v3_118.Disabled", "box_EndActivityObjective_v2_127.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_8_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_183();
    l0 = self.box_ProximityRadiusListener_v3_8;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|770503793", "770503793", "MIS_200_MASTER", "box_ProximityRadiusListener_v3_8.SomeoneNear", "box_ActivityObjectiveMarkerModifier_v3_183.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_308_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_125();
    l0 = self.box_MultipleOR_308;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|260594131", "260594131", "MIS_200_MASTER", "box_MultipleOR_308.Out", "box_OutputOrder_v2_125.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_v2_80_Valid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_286();
    l0 = self.box_MultipleAND_v2_286;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|772646893", "772646893", "MIS_200_MASTER", "box_GetPreconditionState_v2_80.Valid", "box_MultipleAND_v2_286.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_TimeOfDayListener_83_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisionModeModifier_v2_70();
    l0 = self.box_TimeOfDayListener_83;
    l1 = self.box_VisionModeModifier_v2_70;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2068508586", "2068508586", "MIS_200_MASTER", "box_TimeOfDayListener_83.Disabled", "box_VisionModeModifier_v2_70.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(8, params);
end;

function export:f_box_TimeOfDayListener_83_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisionModeModifier_v2_70();
    l0 = self.box_TimeOfDayListener_83;
    l1 = self.box_VisionModeModifier_v2_70;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|312321712", "312321712", "MIS_200_MASTER", "box_TimeOfDayListener_83.Enabled", "box_VisionModeModifier_v2_70.StartDrunk", l0:GetLuaBox(), l1:GetLuaBox());
    -- StartDrunk
    l1:Exec(2, params);
end;

function export:f_box_TimeOfDayListener_83_HourChanged()
    local params, l0, l1;
    self:OnExit_box_TimeOfDayListener_83_HourChanged();
    params = self:OnEnter_box_Compare_Integers_92();
    l0 = self.box_TimeOfDayListener_83;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|113077431", "113077431", "MIS_200_MASTER", "box_TimeOfDayListener_83.HourChanged", "box_Compare_Integers_92.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_17_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|153219475", "153219475", "MIS_200_MASTER", "box_EndActivityObjective_v2_17.Out", "box_MultipleOR_38.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_296_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_303();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|122696972", "122696972", "MIS_200_MASTER", "box_OutputOrder_v2_296.Out", "box_Compare_Boolean_303.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_296_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_302();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|296123086", "296123086", "MIS_200_MASTER", "box_OutputOrder_v2_296.Out", "box_Compare_Boolean_302.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_296_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_301();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2115742685", "2115742685", "MIS_200_MASTER", "box_OutputOrder_v2_296.Out", "box_Compare_Boolean_301.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_54_PlayerAdded()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_54;
    l1 = self.box_MultipleOR_104;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1949030379", "1949030379", "MIS_200_MASTER", "box_CoopActivePlayers_54.PlayerAdded", "box_MultipleOR_104.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_323_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LeashOverride_322();
    l0 = self.box_LeashOverride_322;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|10097851", "10097851", "MIS_200_MASTER", "box_OutputOrder_v2_323.Out", "box_LeashOverride_322.RemoveCustomLeash", clone:GetLuaBox(), l0:GetLuaBox());
    -- RemoveCustomLeash
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_323_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_v2_187();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1701125859", "1701125859", "MIS_200_MASTER", "box_OutputOrder_v2_323.Out", "box_GetPreconditionState_v2_187.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_289_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_272();
    l0 = self.box_RequestPhoneCall_v2_289;
    l1 = self.box_Gate_v3_272;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1035468835", "1035468835", "MIS_200_MASTER", "box_RequestPhoneCall_v2_289.Completed", "box_Gate_v3_272.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_273_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_288();
    l0 = self.box_Gate_v3_273;
    l1 = self.box_RequestPhoneCall_v2_288;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1975357978", "1975357978", "MIS_200_MASTER", "box_Gate_v3_273.Out", "box_RequestPhoneCall_v2_288.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MissionAckTriggerListener_59_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_9();
    l0 = self.box_MissionAckTriggerListener_59;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|681376362", "681376362", "MIS_200_MASTER", "box_MissionAckTriggerListener_59.Enter", "box_Compare_Boolean_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_25_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_291();
    l0 = self.box_RequestPhoneCall_v2_25;
    l1 = self.box_Gate_v3_291;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|590233685", "590233685", "MIS_200_MASTER", "box_RequestPhoneCall_v2_25.Completed", "box_Gate_v3_291.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_66_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_195();
    l0 = self.box_Delay_v5_195;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1444561374", "1444561374", "MIS_200_MASTER", "box_OutputOrder_v2_66.Out", "box_Delay_v5_195.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_66_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_61();
    l0 = self.box_SoundModifier_v2_61;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1519568822", "1519568822", "MIS_200_MASTER", "box_OutputOrder_v2_66.Out", "box_SoundModifier_v2_61.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_305_Out()
    self:OnExit_box_SetBoolean_v2_305_Out();
end;

function export:f_box_OutputOrder_v2_125_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_v2_190();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|80390746", "80390746", "MIS_200_MASTER", "box_OutputOrder_v2_125.Out", "box_GetPreconditionState_v2_190.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_125_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_v2_80();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1154193124", "1154193124", "MIS_200_MASTER", "box_OutputOrder_v2_125.Out", "box_GetPreconditionState_v2_80.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_125_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_v2_95();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1211616542", "1211616542", "MIS_200_MASTER", "box_OutputOrder_v2_125.Out", "box_GetPreconditionState_v2_95.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_125_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_300();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1140474470", "1140474470", "MIS_200_MASTER", "box_OutputOrder_v2_125.Out", "box_Simple_Node_300.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_72_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_136();
    l0 = self.box_Delay_v5_72;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2068715009", "2068715009", "MIS_200_MASTER", "box_Delay_v5_72.TimeElapsed", "box_Simple_Node_136.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_276_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_v2_191();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1906101189", "1906101189", "MIS_200_MASTER", "box_OutputOrder_v2_276.Out", "box_GetPreconditionState_v2_191.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_276_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_v2_196();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|439740249", "439740249", "MIS_200_MASTER", "box_OutputOrder_v2_276.Out", "box_GetPreconditionState_v2_196.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_276_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_v2_121();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|665049988", "665049988", "MIS_200_MASTER", "box_OutputOrder_v2_276.Out", "box_GetPreconditionState_v2_121.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_222_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_207();
    l0 = self.box_OnceOnly_v3_222;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1568137316", "1568137316", "MIS_200_MASTER", "box_OnceOnly_v3_222.Out", "box_ParticleSystem_v3_207.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_277_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_277;
    l1 = self.box_MultipleOR_308;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1142775115", "1142775115", "MIS_200_MASTER", "box_MessageListener_v3_277.Received", "box_MultipleOR_308.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_34_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetTimeOfDay_88();
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|352890673", "352890673", "MIS_200_MASTER", "box_Compare_Boolean_34.A_is_False", "box_SetTimeOfDay_88.IncrementTimeOfDay", clone:GetLuaBox(), l0:GetLuaBox());
    -- IncrementTimeOfDay
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_34_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_TimeOfDayListener_83();
    l0 = self.box_TimeOfDayListener_83;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1978295798", "1978295798", "MIS_200_MASTER", "box_Compare_Boolean_34.A_is_True", "box_TimeOfDayListener_83.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_MIS_200_MASTER_FATHERVOINTRO_158_VOFinished()
    local l0, l1;
    l0 = self.box_MIS_200_MASTER_FATHERVOINTRO_158;
    l1 = self.box_MultipleOR_174;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|148561574", "148561574", "MIS_200_MASTER", "box_MIS_200_MASTER_FATHERVOINTRO_158.VOFinished", "box_MultipleOR_174.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_MessageListener_v3_275_Received()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_285();
    l0 = self.box_MessageListener_v3_275;
    l1 = self.box_Gate_v3_285;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|471407730", "471407730", "MIS_200_MASTER", "box_MessageListener_v3_275.Received", "box_Gate_v3_285.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_Compare_Boolean_24_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetTimeOfDay_123();
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1367213249", "1367213249", "MIS_200_MASTER", "box_Compare_Boolean_24.A_is_True", "box_SetTimeOfDay_123.SetTimeOfDay", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeOfDay
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_283_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_283;
    l1 = self.box_MultipleOR_308;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1076980691", "1076980691", "MIS_200_MASTER", "box_MessageListener_v3_283.Received", "box_MultipleOR_308.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_108_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PersistentParticlesModifier_58();
    l0 = self.box_PersistentParticlesModifier_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1237331480", "1237331480", "MIS_200_MASTER", "box_OutputOrder_v2_108.Out", "box_PersistentParticlesModifier_58.StopParticles", clone:GetLuaBox(), l0:GetLuaBox());
    -- StopParticles
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_108_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideEnvironment_v3_105();
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1839079656", "1839079656", "MIS_200_MASTER", "box_OutputOrder_v2_108.Out", "box_OverrideEnvironment_v3_105.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_209_Stopped()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_90;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|226002586", "226002586", "MIS_200_MASTER", "box_ParticleSystem_v3_209.Stopped", "box_MultipleOR_90.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MultipleOR_268_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_267();
    l0 = self.box_MultipleOR_268;
    l1 = self.box_MultipleAND_v2_267;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|522776136", "522776136", "MIS_200_MASTER", "box_MultipleOR_268.Out", "box_MultipleAND_v2_267.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_RequestPhoneCall_v2_287_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_274();
    l0 = self.box_RequestPhoneCall_v2_287;
    l1 = self.box_Gate_v3_274;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|867185261", "867185261", "MIS_200_MASTER", "box_RequestPhoneCall_v2_287.Completed", "box_Gate_v3_274.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_38_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_120();
    l0 = self.box_MultipleOR_38;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|543767272", "543767272", "MIS_200_MASTER", "box_MultipleOR_38.Out", "box_OutputOrder_v2_120.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_156_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_156_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_138();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1930233543", "1930233543", "MIS_200_MASTER", "box_SetBoolean_v2_156.Out", "box_Simple_Node_138.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UIMode_78_OnNormalMode()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_130();
    l0 = self.box_UIMode_78;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|242003575", "242003575", "MIS_200_MASTER", "box_UIMode_78.OnNormalMode", "box_OutputOrder_v2_130.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_v2_240_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_238();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1326456997", "1326456997", "MIS_200_MASTER", "box_GetPreconditionState_v2_240.NotValid", "box_OutputOrder_v2_238.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_BaseMissionBlock_v2_299_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_45();
    l0 = self.box_BaseMissionBlock_v2_299;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1350116075", "1350116075", "MIS_200_MASTER", "box_BaseMissionBlock_v2_299.Enabled", "box_OutputOrder_v2_45.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_101_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IndexList_v2_89();
    l0 = self.box_MultipleAND_v2_101;
    l1 = self.box_IndexList_v2_89;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1700334795", "1700334795", "MIS_200_MASTER", "box_MultipleAND_v2_101.Out", "box_IndexList_v2_89.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_TimeOfDayListener_42_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisionModeModifier_v2_116();
    l0 = self.box_TimeOfDayListener_42;
    l1 = self.box_VisionModeModifier_v2_116;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|785416126", "785416126", "MIS_200_MASTER", "box_TimeOfDayListener_42.Disabled", "box_VisionModeModifier_v2_116.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(8, params);
end;

function export:f_box_TimeOfDayListener_42_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisionModeModifier_v2_116();
    l0 = self.box_TimeOfDayListener_42;
    l1 = self.box_VisionModeModifier_v2_116;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|818860888", "818860888", "MIS_200_MASTER", "box_TimeOfDayListener_42.Enabled", "box_VisionModeModifier_v2_116.StartDrunk", l0:GetLuaBox(), l1:GetLuaBox());
    -- StartDrunk
    l1:Exec(2, params);
end;

function export:f_box_TimeOfDayListener_42_HourChanged()
    local params, l0, l1;
    self:OnExit_box_TimeOfDayListener_42_HourChanged();
    params = self:OnEnter_box_Compare_Integers_124();
    l0 = self.box_TimeOfDayListener_42;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|963463738", "963463738", "MIS_200_MASTER", "box_TimeOfDayListener_42.HourChanged", "box_Compare_Integers_124.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_307_Out()
    self:OnExit_box_SetBoolean_v2_307_Out();
end;

function export:f_box_OutputOrder_v2_64_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_156();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|311899451", "311899451", "MIS_200_MASTER", "box_OutputOrder_v2_64.Out", "box_SetBoolean_v2_156.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_64_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_16();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1482056940", "1482056940", "MIS_200_MASTER", "box_OutputOrder_v2_64.Out", "box_OutputOrder_v2_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_BaseMissionBlock_v2_91_Deactivated()
    local params, l0;
    params = self:OnEnter_box_BaseMissionBlock_v2_91();
    l0 = self.box_BaseMissionBlock_v2_91;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1301529998", "1301529998", "MIS_200_MASTER", "box_BaseMissionBlock_v2_91.Deactivated", "box_BaseMissionBlock_v2_91.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
end;

function export:f_box_BaseMissionBlock_v2_91_Enabled()
    local params, l0;
    params = self:OnEnter_box_BaseMissionBlock_v2_91();
    l0 = self.box_BaseMissionBlock_v2_91;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|271713158", "271713158", "MIS_200_MASTER", "box_BaseMissionBlock_v2_91.Enabled", "box_BaseMissionBlock_v2_91.Activate", l0:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_82_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_82;
    l1 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|547289582", "547289582", "MIS_200_MASTER", "box_Delay_v5_82.TimeElapsed", "box_MultipleOR_30.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_106_Out()
    local l0, l1;
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_106;
    l1 = self.box_UIMode_78;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1060315558", "1060315558", "MIS_200_MASTER", "box_CHEAT_SetEnvironmentTimeScale_106.Out", "box_UIMode_78.NormalMode", l0:GetLuaBox(), l1:GetLuaBox());
    -- NormalMode
    l1:Exec(1, {
    });
end;

function export:f_box_GroupIter_210_PawnIter()
    local params, l0, l1;
    self:OnExit_box_GroupIter_210_PawnIter();
    params = self:OnEnter_box_UniversalInteractionModifier_v2_212();
    l0 = self.box_GroupIter_210;
    l1 = self.box_UniversalInteractionModifier_v2_212;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1500461011", "1500461011", "MIS_200_MASTER", "box_GroupIter_210.PawnIter", "box_UniversalInteractionModifier_v2_212.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ExitZoneWarningListener_v3_114_FailingZoneEntered()
    local l0, l1;
    l0 = self.box_ExitZoneWarningListener_v3_114;
    l1 = self.box_MultipleOR_189;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1927283469", "1927283469", "MIS_200_MASTER", "box_ExitZoneWarningListener_v3_114.FailingZoneEntered", "box_MultipleOR_189.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_18_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_18;
    l1 = self.box_OnceOnly_v3_259;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1966805461", "1966805461", "MIS_200_MASTER", "box_MultipleOR_18.Out", "box_OnceOnly_v3_259.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_87_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_87;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|595907557", "595907557", "MIS_200_MASTER", "box_Delay_v5_87.TimeElapsed", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GroupIter_216_PawnIter()
    local params, l0, l1;
    self:OnExit_box_GroupIter_216_PawnIter();
    params = self:OnEnter_box_UniversalInteractionModifier_v2_215();
    l0 = self.box_GroupIter_216;
    l1 = self.box_UniversalInteractionModifier_v2_215;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|323240614", "323240614", "MIS_200_MASTER", "box_GroupIter_216.PawnIter", "box_UniversalInteractionModifier_v2_215.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_327_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_97();
    l0 = self.box_MultipleOR_327;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|771788484", "771788484", "MIS_200_MASTER", "box_MultipleOR_327.Out", "box_SetBoolean_v2_97.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_260_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PreconditionListener_v2_202();
    l0 = self.box_MultipleOR_260;
    l1 = self.box_PreconditionListener_v2_202;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|320151148", "320151148", "MIS_200_MASTER", "box_MultipleOR_260.Out", "box_PreconditionListener_v2_202.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_68_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerSpeedModifier_v3_63();
    l0 = self.box_PlayerSpeedModifier_v3_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|541828486", "541828486", "MIS_200_MASTER", "box_OutputOrder_v2_68.Out", "box_PlayerSpeedModifier_v3_63.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_36_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerSpeedModifier_v3_32();
    l0 = self.box_PlayerSpeedModifier_v3_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|870262063", "870262063", "MIS_200_MASTER", "box_OutputOrder_v2_36.Out", "box_PlayerSpeedModifier_v3_32.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_100_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_55();
    l0 = self.box_OnceOnly_v3_100;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1333211663", "1333211663", "MIS_200_MASTER", "box_OnceOnly_v3_100.Out", "box_OutputOrder_v2_55.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_115_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_115;
    l1 = self.box_MultipleOR_278;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1213401156", "1213401156", "MIS_200_MASTER", "box_Gate_v3_115.Out", "box_MultipleOR_278.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PreconditionListener_v2_257_PreconditionMet()
    local params, l0, l1;
    params = self:OnEnter_box_BroadcastMessage_316();
    l0 = self.box_PreconditionListener_v2_257;
    l1 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1263614863", "1263614863", "MIS_200_MASTER", "box_PreconditionListener_v2_257.PreconditionMet", "box_BroadcastMessage_316.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_v2_95_Valid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_286();
    l0 = self.box_MultipleAND_v2_286;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|594701116", "594701116", "MIS_200_MASTER", "box_GetPreconditionState_v2_95.Valid", "box_MultipleAND_v2_286.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 2);
end;

function export:f_box_GetPreconditionState_v2_243_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupIter_249();
    l0 = self.box_GroupIter_249;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1652024334", "1652024334", "MIS_200_MASTER", "box_GetPreconditionState_v2_243.NotValid", "box_GroupIter_249.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_84_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_72();
    l0 = self.box_Delay_v5_72;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1880062737", "1880062737", "MIS_200_MASTER", "box_OutputOrder_v2_84.Out", "box_Delay_v5_72.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_84_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_133();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2037066182", "2037066182", "MIS_200_MASTER", "box_OutputOrder_v2_84.Out", "box_Simple_Node_133.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_55_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_19();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|505628187", "505628187", "MIS_200_MASTER", "box_OutputOrder_v2_55.Out", "box_OutputOrder_v2_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_55_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_CoopActivePlayers_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1082202121", "1082202121", "MIS_200_MASTER", "box_OutputOrder_v2_55.Out", "box_CoopActivePlayers_54.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_55_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_269();
    l0 = self.box_Music_Quest_v2_269;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1442323183", "1442323183", "MIS_200_MASTER", "box_OutputOrder_v2_55.Out", "box_Music_Quest_v2_269.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_128_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_128;
    l1 = self.box_MultipleOR_104;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|604587915", "604587915", "MIS_200_MASTER", "box_Delay_v5_128.TimeElapsed", "box_MultipleOR_104.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetBoolean_v2_157_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_157_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_46();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1384705854", "1384705854", "MIS_200_MASTER", "box_SetBoolean_v2_157.Out", "box_OutputOrder_v2_46.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_254_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupIter_216();
    l0 = self.box_GroupIter_216;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|514862798", "514862798", "MIS_200_MASTER", "box_OutputOrder_v2_254.Out", "box_GroupIter_216.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_254_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_v2_166();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|50205487", "50205487", "MIS_200_MASTER", "box_OutputOrder_v2_254.Out", "box_GetPreconditionState_v2_166.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_193_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_193;
    l1 = self.box_MultipleOR_268;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1214024095", "1214024095", "MIS_200_MASTER", "box_MultipleOR_193.Out", "box_MultipleOR_268.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetBoolean_v2_306_Out()
    self:OnExit_box_SetBoolean_v2_306_Out();
end;

function export:f_box_GroupIter_251_PawnIter()
    local params, l0, l1;
    self:OnExit_box_GroupIter_251_PawnIter();
    params = self:OnEnter_box_UniversalInteractionModifier_v2_252();
    l0 = self.box_GroupIter_251;
    l1 = self.box_UniversalInteractionModifier_v2_252;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1802932316", "1802932316", "MIS_200_MASTER", "box_GroupIter_251.PawnIter", "box_UniversalInteractionModifier_v2_252.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MessageListener_v3_147_Received()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_200_LightManager_11();
    l0 = self.box_MessageListener_v3_147;
    l1 = self.box_MIS_200_LightManager_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1218966158", "1218966158", "MIS_200_MASTER", "box_MessageListener_v3_147.Received", "box_MIS_200_LightManager_11.PreconditionNotValid", l0:GetLuaBox(), l1:GetLuaBox());
    -- PreconditionNotValid
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_56_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_56;
    l1 = self.box_ActivityInitialized_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1176851030", "1176851030", "MIS_200_MASTER", "box_MultipleOR_56.Out", "box_ActivityInitialized_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_MultipleAND_v2_267_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_157();
    l0 = self.box_MultipleAND_v2_267;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1524565470", "1524565470", "MIS_200_MASTER", "box_MultipleAND_v2_267.Out", "box_SetBoolean_v2_157.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_253_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupIter_213();
    l0 = self.box_GroupIter_213;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|542267427", "542267427", "MIS_200_MASTER", "box_OutputOrder_v2_253.Out", "box_GroupIter_213.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_253_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_v2_167();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|461792044", "461792044", "MIS_200_MASTER", "box_OutputOrder_v2_253.Out", "box_GetPreconditionState_v2_167.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_52_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_52;
    l1 = self.box_MultipleOR_311;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1970599894", "1970599894", "MIS_200_MASTER", "box_MessageListener_v3_52.Received", "box_MultipleOR_311.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_AddActivityObjective_v2_23_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_33();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|973465906", "973465906", "MIS_200_MASTER", "box_AddActivityObjective_v2_23.Out", "box_OutputOrder_v2_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_221_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_209();
    l0 = self.box_OnceOnly_v3_221;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1010376154", "1010376154", "MIS_200_MASTER", "box_OnceOnly_v3_221.Out", "box_ParticleSystem_v3_209.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_BroadcastMessage_316_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1900641430", "1900641430", "MIS_200_MASTER", "box_BroadcastMessage_316.Out", "box_MultipleOR_65.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MIS_200_MASTER_FATHERVOINTRO_175_VOFinished()
    local l0, l1;
    l0 = self.box_MIS_200_MASTER_FATHERVOINTRO_175;
    l1 = self.box_MultipleOR_174;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|340352991", "340352991", "MIS_200_MASTER", "box_MIS_200_MASTER_FATHERVOINTRO_175.VOFinished", "box_MultipleOR_174.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_FastTravelModifier_v2_224_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_327;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|595624456", "595624456", "MIS_200_MASTER", "box_FastTravelModifier_v2_224.Disabled", "box_MultipleOR_327.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_FastTravelModifier_v2_224_Enabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_327;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|842632607", "842632607", "MIS_200_MASTER", "box_FastTravelModifier_v2_224.Enabled", "box_MultipleOR_327.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_13_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_17();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1776073230", "1776073230", "MIS_200_MASTER", "box_Compare_Integers_13.A_ge_B", "box_EndActivityObjective_v2_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_13_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_211;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|580241589", "580241589", "MIS_200_MASTER", "box_Compare_Integers_13.A_lt_B", "box_OnceOnly_v3_211.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPreconditionState_v2_256_NotValid()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_261;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1167524490", "1167524490", "MIS_200_MASTER", "box_GetPreconditionState_v2_256.NotValid", "box_MultipleOR_261.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPreconditionState_v2_256_Valid()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|572822964", "572822964", "MIS_200_MASTER", "box_GetPreconditionState_v2_256.Valid", "box_MultipleOR_65.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_BroadcastMessage_318_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_113;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|190886012", "190886012", "MIS_200_MASTER", "box_BroadcastMessage_318.Out", "box_MultipleOR_113.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_104_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideEnvironment_v3_99();
    l0 = self.box_MultipleOR_104;
    l1 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|264856221", "264856221", "MIS_200_MASTER", "box_MultipleOR_104.Out", "box_OverrideEnvironment_v3_99.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VisionModeModifier_v2_116_StartedDrunk()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_319();
    l0 = self.box_VisionModeModifier_v2_116;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1668587315", "1668587315", "MIS_200_MASTER", "box_VisionModeModifier_v2_116.StartedDrunk", "box_OutputOrder_v2_319.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VisionModeModifier_v2_116_Stopped()
    local l0, l1;
    l0 = self.box_VisionModeModifier_v2_116;
    l1 = self.box_UIMode_102;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1355344937", "1355344937", "MIS_200_MASTER", "box_VisionModeModifier_v2_116.Stopped", "box_UIMode_102.NormalMode", l0:GetLuaBox(), l1:GetLuaBox());
    -- NormalMode
    l1:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_264_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_261;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|661882778", "661882778", "MIS_200_MASTER", "box_OutputOrder_v2_264.Out", "box_MultipleOR_261.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_264_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_315;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|797728224", "797728224", "MIS_200_MASTER", "box_OutputOrder_v2_264.Out", "box_MultipleOR_315.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_264_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_313();
    l0 = self.box_MessageListener_v3_313;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1194415283", "1194415283", "MIS_200_MASTER", "box_OutputOrder_v2_264.Out", "box_MessageListener_v3_313.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ActivityAcknowledgeGate_7_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_7;
    l1 = self.box_MultipleOR_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1806568369", "1806568369", "MIS_200_MASTER", "box_ActivityAcknowledgeGate_7.Acknowledged", "box_MultipleOR_56.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_7_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_GunsForHireSystemModifier_298();
    l0 = self.box_ActivityAcknowledgeGate_7;
    l1 = self.box_GunsForHireSystemModifier_298;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|831690124", "831690124", "MIS_200_MASTER", "box_ActivityAcknowledgeGate_7.Reloaded", "box_GunsForHireSystemModifier_298.DisableGFHSystem", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisableGFHSystem
    l1:Exec(0, params);
end;

function export:f_box_Compare_Boolean_9_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_266();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1550287212", "1550287212", "MIS_200_MASTER", "box_Compare_Boolean_9.A_is_False", "box_OutputOrder_v2_266.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_303_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_292();
    l0 = self.box_MultipleAND_v2_292;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|21742780", "21742780", "MIS_200_MASTER", "box_Compare_Boolean_303.A_is_False", "box_MultipleAND_v2_292.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_16_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TimeOfDayListener_83();
    l0 = self.box_TimeOfDayListener_83;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1354901366", "1354901366", "MIS_200_MASTER", "box_OutputOrder_v2_16.Out", "box_TimeOfDayListener_83.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_16_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_22();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|234579319", "234579319", "MIS_200_MASTER", "box_OutputOrder_v2_16.Out", "box_OutputOrder_v2_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_236_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_232();
    l0 = self.box_MultipleAND_v2_232;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|696626175", "696626175", "MIS_200_MASTER", "box_OutputOrder_v2_236.Out", "box_MultipleAND_v2_232.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_236_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_235();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1593293201", "1593293201", "MIS_200_MASTER", "box_OutputOrder_v2_236.Out", "box_ParticleSystem_v3_235.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_236_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_281();
    l0 = self.box_SoundModifier_v2_281;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|746414611", "746414611", "MIS_200_MASTER", "box_OutputOrder_v2_236.Out", "box_SoundModifier_v2_281.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_MIS_200_FatherShootArrow_141_ArrowShot()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_234();
    l0 = self.box_MIS_200_FatherShootArrow_141;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1067337296", "1067337296", "MIS_200_MASTER", "box_MIS_200_FatherShootArrow_141.ArrowShot", "box_OutputOrder_v2_234.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_302_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_292();
    l0 = self.box_MultipleAND_v2_292;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2117859191", "2117859191", "MIS_200_MASTER", "box_Compare_Boolean_302.A_is_False", "box_MultipleAND_v2_292.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_GunsForHireSystemModifier_298_Disabled()
    local l0, l1;
    l0 = self.box_GunsForHireSystemModifier_298;
    l1 = self.box_MultipleOR_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|482889503", "482889503", "MIS_200_MASTER", "box_GunsForHireSystemModifier_298.Disabled", "box_MultipleOR_56.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPreconditionState_v2_166_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_163();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|206628958", "206628958", "MIS_200_MASTER", "box_GetPreconditionState_v2_166.NotValid", "box_ParticleSystem_v3_163.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_144_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_v2_145();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|147127011", "147127011", "MIS_200_MASTER", "box_OutputOrder_v2_144.Out", "box_GetPreconditionState_v2_145.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_144_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_v2_143();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|838811907", "838811907", "MIS_200_MASTER", "box_OutputOrder_v2_144.Out", "box_GetPreconditionState_v2_143.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_144_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_v2_142();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|549411374", "549411374", "MIS_200_MASTER", "box_OutputOrder_v2_144.Out", "box_GetPreconditionState_v2_142.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_v2_81_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_v2_117();
    l0 = self.box_PreconditionListener_v2_117;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1289205497", "1289205497", "MIS_200_MASTER", "box_GetPreconditionState_v2_81.NotValid", "box_PreconditionListener_v2_117.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPreconditionState_v2_81_Valid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_v2_109();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1366197082", "1366197082", "MIS_200_MASTER", "box_GetPreconditionState_v2_81.Valid", "box_GetPreconditionState_v2_109.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_232_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_228();
    l0 = self.box_MultipleAND_v2_232;
    l1 = self.box_Delay_v5_228;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|144722650", "144722650", "MIS_200_MASTER", "box_MultipleAND_v2_232.Out", "box_Delay_v5_228.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_90_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_103();
    l0 = self.box_MultipleOR_90;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1992682384", "1992682384", "MIS_200_MASTER", "box_MultipleOR_90.Out", "box_IntegerArithmetics_v2_103.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_259_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_23();
    l0 = self.box_OnceOnly_v3_259;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1571157267", "1571157267", "MIS_200_MASTER", "box_OnceOnly_v3_259.Out", "box_AddActivityObjective_v2_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_184_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_v2_182();
    l0 = self.box_PreconditionListener_v2_182;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2135394152", "2135394152", "MIS_200_MASTER", "box_OutputOrder_v2_184.Out", "box_PreconditionListener_v2_182.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_184_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_8();
    l0 = self.box_ProximityRadiusListener_v3_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|310349519", "310349519", "MIS_200_MASTER", "box_OutputOrder_v2_184.Out", "box_ProximityRadiusListener_v3_8.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetLocalPlayer_v2_35_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_35_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BaseMissionBlock_v2_299();
    l0 = self.box_BaseMissionBlock_v2_299;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1851947278", "1851947278", "MIS_200_MASTER", "box_GetLocalPlayer_v2_35.Out", "box_BaseMissionBlock_v2_299.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
end;

function export:f_box_Switch_151_None()
    self:OnExit_box_Switch_151_None();
end;

function export:f_box_Switch_151_Out()
    local params, l0, l1;
    self:OnExit_box_Switch_151_Out();
    params = self:OnEnter_box_MultipleAND_v2_292();
    l0 = self.box_Switch_151;
    l1 = self.box_MultipleAND_v2_292;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|44577424", "44577424", "MIS_200_MASTER", "box_Switch_151.Out", "box_MultipleAND_v2_292.Reset", l0:GetLuaBox(), l1:GetLuaBox());
    -- Reset
    l1:Exec(1, params);
end;

function export:f_box_Switch_151_Output_0()
    local params, l0, l1;
    self:OnExit_box_Switch_151_Output();
    params = self:OnEnter_box_MIS_200_MASTER_FATHERVOINTRO_175();
    l0 = self.box_Switch_151;
    l1 = self.box_MIS_200_MASTER_FATHERVOINTRO_175;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1124890748", "1124890748", "MIS_200_MASTER", "box_Switch_151.Output", "box_MIS_200_MASTER_FATHERVOINTRO_175.StartVO", l0:GetLuaBox(), l1:GetLuaBox());
    -- StartVO
    l1:Exec(0, params);
end;

function export:f_box_Switch_151_Output_1()
    local params, l0, l1;
    self:OnExit_box_Switch_151_Output();
    params = self:OnEnter_box_MIS_200_MASTER_FATHERVOINTRO_173();
    l0 = self.box_Switch_151;
    l1 = self.box_MIS_200_MASTER_FATHERVOINTRO_173;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2095175702", "2095175702", "MIS_200_MASTER", "box_Switch_151.Output", "box_MIS_200_MASTER_FATHERVOINTRO_173.StartVO", l0:GetLuaBox(), l1:GetLuaBox());
    -- StartVO
    l1:Exec(0, params);
end;

function export:f_box_Switch_151_Output_2()
    local params, l0, l1;
    self:OnExit_box_Switch_151_Output();
    params = self:OnEnter_box_MIS_200_MASTER_FATHERVOINTRO_155();
    l0 = self.box_Switch_151;
    l1 = self.box_MIS_200_MASTER_FATHERVOINTRO_155;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1242849875", "1242849875", "MIS_200_MASTER", "box_Switch_151.Output", "box_MIS_200_MASTER_FATHERVOINTRO_155.StartVO", l0:GetLuaBox(), l1:GetLuaBox());
    -- StartVO
    l1:Exec(0, params);
end;

function export:f_box_Switch_151_Output_3()
    local params, l0, l1;
    self:OnExit_box_Switch_151_Output();
    params = self:OnEnter_box_MIS_200_MASTER_FATHERVOINTRO_158();
    l0 = self.box_Switch_151;
    l1 = self.box_MIS_200_MASTER_FATHERVOINTRO_158;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1797910430", "1797910430", "MIS_200_MASTER", "box_Switch_151.Output", "box_MIS_200_MASTER_FATHERVOINTRO_158.StartVO", l0:GetLuaBox(), l1:GetLuaBox());
    -- StartVO
    l1:Exec(0, params);
end;

function export:f_box_Switch_151_Output_4()
    local params, l0, l1;
    self:OnExit_box_Switch_151_Output();
    params = self:OnEnter_box_MIS_200_MASTER_FATHERVOINTRO_172();
    l0 = self.box_Switch_151;
    l1 = self.box_MIS_200_MASTER_FATHERVOINTRO_172;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1470046382", "1470046382", "MIS_200_MASTER", "box_Switch_151.Output", "box_MIS_200_MASTER_FATHERVOINTRO_172.StartVO", l0:GetLuaBox(), l1:GetLuaBox());
    -- StartVO
    l1:Exec(0, params);
end;

function export:f_box_Switch_151_Output_5()
    local params, l0, l1;
    self:OnExit_box_Switch_151_Output();
    params = self:OnEnter_box_MIS_200_MASTER_FATHERVOINTRO_159();
    l0 = self.box_Switch_151;
    l1 = self.box_MIS_200_MASTER_FATHERVOINTRO_159;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|999523109", "999523109", "MIS_200_MASTER", "box_Switch_151.Output", "box_MIS_200_MASTER_FATHERVOINTRO_159.StartVO", l0:GetLuaBox(), l1:GetLuaBox());
    -- StartVO
    l1:Exec(0, params);
end;

function export:f_box_Switch_151_Output_6()
    local params, l0, l1;
    self:OnExit_box_Switch_151_Output();
    params = self:OnEnter_box_MIS_200_MASTER_FATHERVOINTRO_154();
    l0 = self.box_Switch_151;
    l1 = self.box_MIS_200_MASTER_FATHERVOINTRO_154;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|357808766", "357808766", "MIS_200_MASTER", "box_Switch_151.Output", "box_MIS_200_MASTER_FATHERVOINTRO_154.StartVO", l0:GetLuaBox(), l1:GetLuaBox());
    -- StartVO
    l1:Exec(0, params);
end;

function export:f_box_Switch_151_Output_7()
    local params, l0, l1;
    self:OnExit_box_Switch_151_Output();
    params = self:OnEnter_box_MIS_200_MASTER_FATHERVOINTRO_153();
    l0 = self.box_Switch_151;
    l1 = self.box_MIS_200_MASTER_FATHERVOINTRO_153;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1301762808", "1301762808", "MIS_200_MASTER", "box_Switch_151.Output", "box_MIS_200_MASTER_FATHERVOINTRO_153.StartVO", l0:GetLuaBox(), l1:GetLuaBox());
    -- StartVO
    l1:Exec(0, params);
end;

function export:f_box_GetPreconditionState_v2_168_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_248();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|549748581", "549748581", "MIS_200_MASTER", "box_GetPreconditionState_v2_168.NotValid", "box_ParticleSystem_v3_248.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_v2_168_Valid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_v2_243();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|161061983", "161061983", "MIS_200_MASTER", "box_GetPreconditionState_v2_168.Valid", "box_GetPreconditionState_v2_243.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_328_Out()
    self:OnExit_box_SetBoolean_v2_328_Out();
end;

function export:f_box_MIS_200_LightManager_44_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_294();
    l0 = self.box_MIS_200_LightManager_44;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|356377066", "356377066", "MIS_200_MASTER", "box_MIS_200_LightManager_44.Out", "box_OutputOrder_v2_294.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_319_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_194();
    l0 = self.box_Delay_v5_194;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1565352635", "1565352635", "MIS_200_MASTER", "box_OutputOrder_v2_319.Out", "box_Delay_v5_194.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_319_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_39();
    l0 = self.box_SoundModifier_v2_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1576819227", "1576819227", "MIS_200_MASTER", "box_OutputOrder_v2_319.Out", "box_SoundModifier_v2_39.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_315_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_199();
    l0 = self.box_MultipleOR_315;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|702119920", "702119920", "MIS_200_MASTER", "box_MultipleOR_315.Out", "box_Simple_Node_199.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_304_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_276();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|798387319", "798387319", "MIS_200_MASTER", "box_OutputOrder_v2_304.Out", "box_OutputOrder_v2_276.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_304_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_305();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1904611643", "1904611643", "MIS_200_MASTER", "box_OutputOrder_v2_304.Out", "box_SetBoolean_v2_305.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_304_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_306();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|817830263", "817830263", "MIS_200_MASTER", "box_OutputOrder_v2_304.Out", "box_SetBoolean_v2_306.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_304_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_307();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1733756799", "1733756799", "MIS_200_MASTER", "box_OutputOrder_v2_304.Out", "box_SetBoolean_v2_307.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_v2_143_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_147();
    l0 = self.box_MessageListener_v3_147;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1858439372", "1858439372", "MIS_200_MASTER", "box_GetPreconditionState_v2_143.NotValid", "box_MessageListener_v3_147.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPreconditionState_v2_143_Valid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_200_LightManager_11();
    l0 = self.box_MIS_200_LightManager_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|587700230", "587700230", "MIS_200_MASTER", "box_GetPreconditionState_v2_143.Valid", "box_MIS_200_LightManager_11.PreconditionValid", clone:GetLuaBox(), l0:GetLuaBox());
    -- PreconditionValid
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_130_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_107();
    l0 = self.box_Delay_v5_107;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1252245484", "1252245484", "MIS_200_MASTER", "box_OutputOrder_v2_130.Out", "box_Delay_v5_107.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_130_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_137();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1115222519", "1115222519", "MIS_200_MASTER", "box_OutputOrder_v2_130.Out", "box_Simple_Node_137.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_27_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_27;
    l1 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1745401931", "1745401931", "MIS_200_MASTER", "box_Delay_v5_27.TimeElapsed", "box_MultipleOR_75.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPreconditionState_v2_169_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_245();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1797890715", "1797890715", "MIS_200_MASTER", "box_GetPreconditionState_v2_169.NotValid", "box_ParticleSystem_v3_245.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPreconditionState_v2_169_Valid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_v2_244();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|685068998", "685068998", "MIS_200_MASTER", "box_GetPreconditionState_v2_169.Valid", "box_GetPreconditionState_v2_244.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_BroadcastMessage_317_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1274473245", "1274473245", "MIS_200_MASTER", "box_BroadcastMessage_317.Out", "box_MultipleOR_73.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_60_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PersistentParticlesModifier_58();
    l0 = self.box_PersistentParticlesModifier_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1960539255", "1960539255", "MIS_200_MASTER", "box_OutputOrder_v2_60.Out", "box_PersistentParticlesModifier_58.StartParticles", clone:GetLuaBox(), l0:GetLuaBox());
    -- StartParticles
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_60_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideEnvironment_v3_105();
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|857692795", "857692795", "MIS_200_MASTER", "box_OutputOrder_v2_60.Out", "box_OverrideEnvironment_v3_105.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_14_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_64();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|890298127", "890298127", "MIS_200_MASTER", "box_Compare_Boolean_14.A_is_True", "box_OutputOrder_v2_64.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_74_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_34();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1978611974", "1978611974", "MIS_200_MASTER", "box_OutputOrder_v2_74.Out", "box_Compare_Boolean_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_74_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1903640286", "1903640286", "MIS_200_MASTER", "box_OutputOrder_v2_74.Out", "box_OnceOnly_v3_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPreconditionState_v2_29_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_v2_86();
    l0 = self.box_PreconditionListener_v2_86;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|156915069", "156915069", "MIS_200_MASTER", "box_GetPreconditionState_v2_29.NotValid", "box_PreconditionListener_v2_86.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPreconditionState_v2_29_Valid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_v2_201();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|566122252", "566122252", "MIS_200_MASTER", "box_GetPreconditionState_v2_29.Valid", "box_GetPreconditionState_v2_201.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_FastTravelModifier_v2_225_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_97();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1705930052", "1705930052", "MIS_200_MASTER", "box_FastTravelModifier_v2_225.Disabled", "box_SetBoolean_v2_97.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_107_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_323();
    l0 = self.box_Delay_v5_107;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|761295650", "761295650", "MIS_200_MASTER", "box_Delay_v5_107.TimeElapsed", "box_OutputOrder_v2_323.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_325_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_FastTravelModifier_v2_224();
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|628849425", "628849425", "MIS_200_MASTER", "box_Compare_Boolean_325.A_is_False", "box_FastTravelModifier_v2_224.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_325_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_FastTravelModifier_v2_224();
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|376028569", "376028569", "MIS_200_MASTER", "box_Compare_Boolean_325.A_is_True", "box_FastTravelModifier_v2_224.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_126_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_126_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_35();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2036874461", "2036874461", "MIS_200_MASTER", "box_GetPlayerGroup_v2_126.Out", "box_GetLocalPlayer_v2_35.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UIMode_102_OnNormalMode()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_134();
    l0 = self.box_UIMode_102;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1168971908", "1168971908", "MIS_200_MASTER", "box_UIMode_102.OnNormalMode", "box_Simple_Node_134.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetTimeOfDay_88_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_82();
    l0 = self.box_Delay_v5_82;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1444134251", "1444134251", "MIS_200_MASTER", "box_SetTimeOfDay_88.Out", "box_Delay_v5_82.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OverrideEnvironment_v3_99_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ColorRemapTextureModifier_v3_96();
    l0 = self.box_ColorRemapTextureModifier_v3_96;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1902987941", "1902987941", "MIS_200_MASTER", "box_OverrideEnvironment_v3_99.Disabled", "box_ColorRemapTextureModifier_v3_96.Remove", clone:GetLuaBox(), l0:GetLuaBox());
    -- Remove
    l0:Exec(1, params);
end;

function export:f_box_OverrideEnvironment_v3_99_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ColorRemapTextureModifier_v3_96();
    l0 = self.box_ColorRemapTextureModifier_v3_96;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1053958779", "1053958779", "MIS_200_MASTER", "box_OverrideEnvironment_v3_99.Enabled", "box_ColorRemapTextureModifier_v3_96.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_PreconditionListener_v2_85_PreconditionMet()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_264();
    l0 = self.box_PreconditionListener_v2_85;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|920219615", "920219615", "MIS_200_MASTER", "box_PreconditionListener_v2_85.PreconditionMet", "box_OutputOrder_v2_264.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PreconditionListener_v2_117_PreconditionMet()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_263();
    l0 = self.box_PreconditionListener_v2_117;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|194245976", "194245976", "MIS_200_MASTER", "box_PreconditionListener_v2_117.PreconditionMet", "box_OutputOrder_v2_263.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_262_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_260;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1053595410", "1053595410", "MIS_200_MASTER", "box_OutputOrder_v2_262.Out", "box_MultipleOR_260.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_262_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_311;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1937954570", "1937954570", "MIS_200_MASTER", "box_OutputOrder_v2_262.Out", "box_MultipleOR_311.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_262_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_52();
    l0 = self.box_MessageListener_v3_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1989789579", "1989789579", "MIS_200_MASTER", "box_OutputOrder_v2_262.Out", "box_MessageListener_v3_52.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_30_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_74();
    l0 = self.box_MultipleOR_30;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|184918632", "184918632", "MIS_200_MASTER", "box_MultipleOR_30.Out", "box_OutputOrder_v2_74.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_194_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_119();
    l0 = self.box_Delay_v5_194;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1734614028", "1734614028", "MIS_200_MASTER", "box_Delay_v5_194.TimeElapsed", "box_OutputOrder_v2_119.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_164_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_v2_240();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1215608863", "1215608863", "MIS_200_MASTER", "box_OutputOrder_v2_164.Out", "box_GetPreconditionState_v2_240.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_164_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_v2_242();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1821827555", "1821827555", "MIS_200_MASTER", "box_OutputOrder_v2_164.Out", "box_GetPreconditionState_v2_242.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_164_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_v2_239();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|987905807", "987905807", "MIS_200_MASTER", "box_OutputOrder_v2_164.Out", "box_GetPreconditionState_v2_239.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_132();
    l0 = self.box_MultipleOR_5;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1722716781", "1722716781", "MIS_200_MASTER", "box_MultipleOR_5.Out", "box_Compare_Boolean_132.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_57_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_291();
    l0 = self.box_Gate_v3_57;
    l1 = self.box_Gate_v3_291;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|999934408", "999934408", "MIS_200_MASTER", "box_Gate_v3_57.Closed", "box_Gate_v3_291.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_57_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_25();
    l0 = self.box_Gate_v3_57;
    l1 = self.box_RequestPhoneCall_v2_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1365281276", "1365281276", "MIS_200_MASTER", "box_Gate_v3_57.Out", "box_RequestPhoneCall_v2_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MessageListener_v3_149_Received()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_200_LightManager_129();
    l0 = self.box_MessageListener_v3_149;
    l1 = self.box_MIS_200_LightManager_129;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1772078320", "1772078320", "MIS_200_MASTER", "box_MessageListener_v3_149.Received", "box_MIS_200_LightManager_129.PreconditionNotValid", l0:GetLuaBox(), l1:GetLuaBox());
    -- PreconditionNotValid
    l1:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_326_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_326_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_136();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1329144044", "1329144044", "MIS_200_MASTER", "box_SetBoolean_v2_326.Out", "box_Simple_Node_136.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_217_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PreconditionListener_v2_255();
    l0 = self.box_MultipleOR_217;
    l1 = self.box_PreconditionListener_v2_255;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1526551795", "1526551795", "MIS_200_MASTER", "box_MultipleOR_217.Out", "box_PreconditionListener_v2_255.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_174_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_94();
    l0 = self.box_MultipleOR_174;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|343404792", "343404792", "MIS_200_MASTER", "box_MultipleOR_174.Out", "box_Compare_Boolean_94.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupIter_200_PawnIter()
    local params, l0, l1;
    self:OnExit_box_GroupIter_200_PawnIter();
    params = self:OnEnter_box_UniversalInteractionModifier_v2_247();
    l0 = self.box_GroupIter_200;
    l1 = self.box_UniversalInteractionModifier_v2_247;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2077253197", "2077253197", "MIS_200_MASTER", "box_GroupIter_200.PawnIter", "box_UniversalInteractionModifier_v2_247.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_22_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_76();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2010359470", "2010359470", "MIS_200_MASTER", "box_OutputOrder_v2_22.Out", "box_OverrideDisabledLogicId_76.Tutorial", clone:GetLuaBox(), l0:GetLuaBox());
    -- Tutorial
    l0:Exec(41, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_22_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_UIMode_122;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|895114263", "895114263", "MIS_200_MASTER", "box_OutputOrder_v2_22.Out", "box_UIMode_122.CinematicMode", clone:GetLuaBox(), l0:GetLuaBox());
    -- CinematicMode
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_22_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_271();
    l0 = self.box_Music_Quest_v2_271;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1188027985", "1188027985", "MIS_200_MASTER", "box_OutputOrder_v2_22.Out", "box_Music_Quest_v2_271.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_Compare_Boolean_132_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetTimeOfDay_3();
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1711232450", "1711232450", "MIS_200_MASTER", "box_Compare_Boolean_132.A_is_False", "box_SetTimeOfDay_3.IncrementTimeOfDay", clone:GetLuaBox(), l0:GetLuaBox());
    -- IncrementTimeOfDay
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_132_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_TimeOfDayListener_42();
    l0 = self.box_TimeOfDayListener_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1061813215", "1061813215", "MIS_200_MASTER", "box_Compare_Boolean_132.A_is_True", "box_TimeOfDayListener_42.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Compare_Boolean_301_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_292();
    l0 = self.box_MultipleAND_v2_292;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|600311178", "600311178", "MIS_200_MASTER", "box_Compare_Boolean_301.A_is_False", "box_MultipleAND_v2_292.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 2);
end;

function export:f_box_MultipleOR_113_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_113;
    l1 = self.box_OnceOnly_v3_222;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1404641215", "1404641215", "MIS_200_MASTER", "box_MultipleOR_113.Out", "box_OnceOnly_v3_222.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MIS_200_LightManager_129_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_330();
    l0 = self.box_MIS_200_LightManager_129;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|972162320", "972162320", "MIS_200_MASTER", "box_MIS_200_LightManager_129.Out", "box_OutputOrder_v2_330.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VisionModeModifier_v2_70_StartedDrunk()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_66();
    l0 = self.box_VisionModeModifier_v2_70;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1175987470", "1175987470", "MIS_200_MASTER", "box_VisionModeModifier_v2_70.StartedDrunk", "box_OutputOrder_v2_66.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VisionModeModifier_v2_70_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_SlowMotionHACK_43();
    l0 = self.box_VisionModeModifier_v2_70;
    l1 = self.box_SlowMotionHACK_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1729160567", "1729160567", "MIS_200_MASTER", "box_VisionModeModifier_v2_70.Stopped", "box_SlowMotionHACK_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SetTimeOfDay_123_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_27();
    l0 = self.box_Delay_v5_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2070735410", "2070735410", "MIS_200_MASTER", "box_SetTimeOfDay_123.Out", "box_Delay_v5_27.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:OnEnter_box_Simple_Node_138()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_138");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|@DisableMarkers");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_138_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_192()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_192");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|@ENDTIMELAPSE");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_192_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_134()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_134");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|@enterDone");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_134_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_137()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_137");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|@enterDone_2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_137_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_136()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_136");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|@Exit");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_136_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_160()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_160");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|@FATHERWELCOME");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_160_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_279()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_279");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|@NEXTWELCOMEVO");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_279_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_300()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_300");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|@PlayFatherVOs");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_300_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_135()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_135");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|@SET_B40OBJ");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_135_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_140()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_140");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|@StartIntroPersistantParticle");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_140_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_139()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_139");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|@startUp");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_139_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_133()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_133");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|@StopIntroPersistantParticle");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_133_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_197()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_197");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|@Update_B10OBJ");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_197_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_198()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_198");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|@Update_B20OBJ");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_198_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_199()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_199");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|@Update_B30OBJ");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_199_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_v2_196()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_v2_196");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|50815427");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_v2_196_NotValid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015354538935226",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_234()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_234");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|52053911");
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
                [0] = self.f_box_OutputOrder_v2_234_Out_0,
                [1] = self.f_box_OutputOrder_v2_234_Out_1,
                [2] = self.f_box_OutputOrder_v2_234_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_183()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_183");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|63253662");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_183_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2107271716465019509",
        -- ObjectiveId,
        [2] = {
            section = "OBJECTIVES",
            item = "MIS_200_B40_GOAL",
            id = "959390",
        },
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_v2_202()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015354538805092",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_293()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = true,
        -- immediateDespawn,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_SlowMotionHACK_131()
    local params;
    params = {
        -- Input,
        [0] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_v2_242()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_v2_242");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|122486626");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_v2_242_NotValid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015354538935226",
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_v2_191()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_v2_191");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|125186735");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_v2_191_NotValid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015354538805092",
    };
    return params;
end;

function export:OnEnter_box_PlayerSpeedModifier_v3_32()
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

function export:OnEnter_box_VehicleListener_v3_270()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = self.LocalPlayer,
        -- vehicle,
        [4] = self.PlayerVehicle,
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_v2_109()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_v2_109");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|127965277");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_v2_109_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_v2_109_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015354538935226",
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|128343503");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "killfatherhints",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_272()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_LeashOverride_322()
    local params;
    params = {
        -- CustomLeashDistance,
        [0] = 150,
        -- CustomLeashWarningDistance,
        [2] = 0,
    };
    return params;
end;

function export:OnEnter_box_GroupIter_219()
    local params;
    params = {
        -- entities,
        [0] = "#827A938D",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_226()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_226");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|172030466");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "OBJECTIVES",
            item = "MIS_200_B10_B20_B30_OBJ",
            id = "1019428",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_v2_170()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_v2_170");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|179389679");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_v2_170_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_v2_170_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015346588750679",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_97");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|182594654");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_97_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|187764644");
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
                [1] = self.f_box_OutputOrder_v2_19_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_292()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_v2_190()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_v2_190");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|223488028");
    l0:SetConnections({
        -- Valid,
        [1] = self.f_box_GetPreconditionState_v2_190_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015354538805092",
    };
    return params;
end;

function export:OnEnter_box_MIS_200_MASTER_FATHERVOINTRO_155()
    local params;
    params = {
        -- VOID,
        [0] = "1785160047",
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_v2_167()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_v2_167");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|232575673");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_v2_167_NotValid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015346588739537",
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_v2_145()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_v2_145");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|233236463");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_v2_145_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_v2_145_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015354538805092",
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_v2_241()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_v2_241");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|235587704");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_v2_241_NotValid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015354538957515",
    };
    return params;
end;

function export:OnEnter_box_GroupIter_249()
    local params;
    params = {
        -- entities,
        [0] = "#CD3B054A",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_238()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_238");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|246495784");
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
                [0] = self.f_box_OutputOrder_v2_238_Out_0,
                [1] = self.f_box_OutputOrder_v2_238_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|247139108");
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
                [0] = self.f_box_OutputOrder_v2_21_Out_0,
                [1] = self.f_box_OutputOrder_v2_21_Out_1,
                [2] = self.f_box_OutputOrder_v2_21_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_127()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_127");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|250241296");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "OBJECTIVES",
            item = "MIS_200_B40_GOAL",
            id = "959390",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_290()
    local params;
    params = {
        -- CustomRingInSound,
        [0] = "3763027159",
        -- CustomRingOutSound,
        [1] = "3763027159",
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "2165306694",
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_265()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_265");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|278423514");
    l0:SetConnections({
        -- A_eq_B,
        [1] = self.f_box_Compare_Strings_265_A_eq_B,
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_265_A_neq_B,
    });
    params = {
        -- A,
        [0] = self._sld_vehicleType_box_GetPawnVehicleInfo_214,
        -- B,
        [1] = "Floating",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_v2_142()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_v2_142");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|290497583");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_v2_142_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_v2_142_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015354538957515",
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_v2_121()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_v2_121");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|297009822");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_v2_121_NotValid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015354538957515",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_146()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "mis_200_b10b_done",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_248()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_248");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|318745275");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2108682453987112304",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_227()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_227");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|343187533");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_227_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109164261056975945",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_237()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_237");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|359722801");
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
                [0] = self.f_box_OutputOrder_v2_237_Out_0,
                [1] = self.f_box_OutputOrder_v2_237_Out_1,
                [2] = self.f_box_OutputOrder_v2_237_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_309()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_309");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|370508236");
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
                [0] = self.f_box_OutputOrder_v2_309_Out_0,
                [1] = self.f_box_OutputOrder_v2_309_Out_1,
                [2] = self.f_box_OutputOrder_v2_309_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|386580901");
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
                [0] = self.f_box_OutputOrder_v2_50_Out_0,
                [1] = self.f_box_OutputOrder_v2_50_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_195()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_124()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_124");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|398728587");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_124_A_eq_B,
    });
    params = {
        -- A,
        [0] = self.Hour,
        -- B,
        [1] = 21,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_312()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "B20HintReset",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_229()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_229");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|405095994");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2107618606031319752",
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_v2_186()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- PreconditionId,
        [1] = "9015353328674186",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_208()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_208");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|407845149");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_208_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2108682453987112304",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_291()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_214()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_214");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|412795627");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_214_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_214_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_214_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|422557083");
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
                [1] = self.f_box_OutputOrder_v2_69_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_162()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_162");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|427418802");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2108682453987112304",
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_v2_187()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_v2_187");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|428633071");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_v2_187_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_v2_187_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015353328674186",
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_v2_111()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_v2_111");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|434067131");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_v2_111_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_v2_111_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015346588750679",
    };
    return params;
end;

function export:OnEnter_box_MIS_200_MASTER_FATHERVOINTRO_173()
    local params;
    params = {
        -- VOID,
        [0] = "3720478540",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_235()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_235");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|450141469");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_235_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109164261056975944",
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_v2_255()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015354538935226",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_310()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_310");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|476020867");
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
                [0] = self.f_box_OutputOrder_v2_310_Out_0,
                [1] = self.f_box_OutputOrder_v2_310_Out_1,
                [2] = self.f_box_OutputOrder_v2_310_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_295()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_295");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|479745260");
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
                [0] = self.f_box_OutputOrder_v2_295_Out_0,
                [1] = self.f_box_OutputOrder_v2_295_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_245()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_245");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|484829507");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2108682477793981812",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_15()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 8,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_12()
    local params;
    params = {
        -- CustomRingInSound,
        [0] = "3763027159",
        -- CustomRingOutSound,
        [1] = "3763027159",
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "3550768923",
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|493019071");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_3_Out,
    });
    params = {
        -- Hour,
        [0] = 0,
        -- Minute,
        [1] = 6,
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_v2_220()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_v2_220");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|512112747");
    l0:SetConnections({
        -- Valid,
        [1] = self.f_box_GetPreconditionState_v2_220_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015353322394903",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_120()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_120");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|519865426");
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
                [0] = self.f_box_OutputOrder_v2_120_Out_0,
                [1] = self.f_box_OutputOrder_v2_120_Out_1,
                [2] = self.f_box_OutputOrder_v2_120_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_v2_182()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015353322394903",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_161()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_161");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|527785457");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2108682477793981812",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|551221474");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_20_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_119()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_119");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|557113919");
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

function export:OnEnter_box_GetActivityState_v2_112()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_112");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|579445170");
    l0:SetConnections({
        -- Active,
        [0] = self.f_box_GetActivityState_v2_112_Active,
        -- Inactive,
        [4] = self.f_box_GetActivityState_v2_112_Inactive,
        -- Unavailable,
        [6] = self.f_box_GetActivityState_v2_112_Unavailable,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015330614739432",
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_v2_239()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_v2_239");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|583256511");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_v2_239_NotValid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015354538957515",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_313()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "B30HintReset",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_93");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|597107470");
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
                [0] = self.f_box_OutputOrder_v2_93_Out_0,
                [1] = self.f_box_OutputOrder_v2_93_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_286()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_285()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_98");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|618349557");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_98_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2107271716465019509",
        -- ObjectiveId,
        [2] = {
            section = "OBJECTIVES",
            item = "MIS_200_B40_GOAL",
            id = "959390",
        },
    };
    return params;
end;

function export:OnEnter_box_MIS_200_MASTER_FATHERVOINTRO_172()
    local params;
    params = {
        -- VOID,
        [0] = "3876794090",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_89()
    local params;
    params = {
        -- Index,
        [0] = self.DialogOutputNumber,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_171()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_171");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|633776323");
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
                [0] = self.f_box_OutputOrder_v2_171_Out_0,
                [1] = self.f_box_OutputOrder_v2_171_Out_1,
                [2] = self.f_box_OutputOrder_v2_171_Out_2,
                [3] = self.f_box_OutputOrder_v2_171_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MIS_200_FatherShootArrow_150()
    local params;
    params = {
        -- eFatherID,
        [0] = "2109386463727593144",
        -- eFatherSpawner,
        [1] = "2109386463719204522",
        -- eShootSTP,
        [2] = "2109386463719204519",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_53()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "mis_200_b50_done",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_228()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_v2_244()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_v2_244");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|673935272");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_v2_244_NotValid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015354538805092",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|704027112");
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

function export:OnEnter_box_OutputOrder_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|710943945");
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
                [0] = self.f_box_OutputOrder_v2_45_Out_0,
                [1] = self.f_box_OutputOrder_v2_45_Out_1,
                [2] = self.f_box_OutputOrder_v2_45_Out_2,
                [3] = self.f_box_OutputOrder_v2_45_Out_3,
                [4] = self.f_box_OutputOrder_v2_45_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GroupIter_213()
    local params;
    params = {
        -- entities,
        [0] = "#CD3B054A",
    };
    return params;
end;

function export:OnEnter_box_MIS_200_MASTER_FATHERVOINTRO_153()
    local params;
    params = {
        -- VOID,
        [0] = "3431493264",
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|731096010");
    l0:SetConnections({
    });
    params = {
        -- Hour,
        [0] = 0,
        -- Minute,
        [1] = 30,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_231()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_231");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|734545835");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_231_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109164261056975946",
    };
    return params;
end;

function export:OnEnter_box_OverrideDisabledLogicId_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideDisabledLogicId_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|738963562");
    l0:SetConnections({
    });
    params = {
        -- disableUI,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_110()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_110");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|741122567");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_110_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "OBJECTIVES",
            item = "MIS_200_B40_GOAL",
            id = "959390",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_94");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|743740762");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_94_A_is_True,
    });
    params = {
        -- A,
        [0] = Globals.MIS_200_MASTER.isPlayerInsideIsland,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_207()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_207");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|754035724");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_207_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2108682477793981812",
    };
    return params;
end;

function export:OnEnter_box_SlowMotionHACK_43()
    local params;
    params = {
        -- Input,
        [0] = 1,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_274()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_284()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- message,
        [1] = "B30_Left",
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_v2_86()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015346588716599",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|793634328");
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
        [8] = "MIS_200_B40 script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|795028330");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_92_A_eq_B,
    });
    params = {
        -- A,
        [0] = self.Hour_2,
        -- B,
        [1] = self.currentHour,
    };
    return params;
end;

function export:OnEnter_box_PersistentParticlesModifier_58()
    local params;
    params = {
        -- fadeDuration,
        [0] = 2,
        -- particleSystem,
        [1] = "newparticles/9015339594649231.part",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_252()
    local params, l0;
    l0 = self.box_GroupIter_251;
    params = {
        -- state,
        [3] = false,
        -- usableEntity,
        [4] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_330()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_330");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|803523833");
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
                [0] = self.f_box_OutputOrder_v2_330_Out_0,
                [1] = self.f_box_OutputOrder_v2_330_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|811675234");
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
                [0] = self.f_box_OutputOrder_v2_46_Out_0,
                [1] = self.f_box_OutputOrder_v2_46_Out_1,
                [2] = self.f_box_OutputOrder_v2_46_Out_2,
                [3] = self.f_box_OutputOrder_v2_46_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_62()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2107244323343971389",
    };
    return params;
end;

function export:OnEnter_box_LeashOverride_324()
    local params;
    params = {
        -- CustomLeashDistance,
        [0] = 60,
        -- CustomLeashWarningDistance,
        [2] = 40,
    };
    return params;
end;

function export:OnEnter_box_MIS_200_MASTER_FATHERVOINTRO_154()
    local params;
    params = {
        -- VOID,
        [0] = "998189918",
    };
    return params;
end;

function export:OnEnter_box_MIS_200_MASTER_FATHERVOINTRO_159()
    local params;
    params = {
        -- VOID,
        [0] = "2056065039",
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_v2_201()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_v2_201");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|844571168");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_v2_201_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_v2_201_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015354538805092",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_263()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_263");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|853387544");
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
                [0] = self.f_box_OutputOrder_v2_263_Out_0,
                [1] = self.f_box_OutputOrder_v2_263_Out_1,
                [2] = self.f_box_OutputOrder_v2_263_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_294()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_294");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|877844297");
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
                [0] = self.f_box_OutputOrder_v2_294_Out_0,
                [1] = self.f_box_OutputOrder_v2_294_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MIS_200_FatherShootArrow_148()
    local params;
    params = {
        -- eFatherID,
        [0] = "2109386360130381298",
        -- eFatherSpawner,
        [1] = "2109386360124089836",
        -- eShootSTP,
        [2] = "2109386360121992681",
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_103");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|890301947");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_103_Out,
    });
    params = {
        -- A,
        [0] = 1,
        -- B,
        [1] = self.iCurrentProgress,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|893380262");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_49_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MIS_200_LightManager_11()
    local params;
    params = {
        -- e_EndPos,
        [1] = "2107647426857815405",
        -- e_FinalFire,
        [2] = "2109164261056975944",
        -- e_LastLight,
        [3] = "2107618603862864576",
        -- e_StartPos,
        [4] = "2107647133948593539",
        -- g_LightGroup,
        [5] = "#CD3B054A",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_266()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_266");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|918930879");
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
                [0] = self.f_box_OutputOrder_v2_266_Out_0,
                [1] = self.f_box_OutputOrder_v2_266_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_v2_165()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_v2_165");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|920679049");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_v2_165_NotValid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015346588716599",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_118()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_118");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|933572385");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_118_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2109471348832097228",
        -- ObjectiveId,
        [2] = {
            section = "OBJECTIVES",
            item = "MIS_200_B40_GOAL",
            id = "959390",
        },
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_8()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.PlayerGroup,
        -- id2,
        [3] = "2109471432147751927",
        -- nearZone,
        [4] = 20,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_v2_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_v2_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|939559158");
    l0:SetConnections({
        -- Valid,
        [1] = self.f_box_GetPreconditionState_v2_80_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015354538935226",
    };
    return params;
end;

function export:OnEnter_box_TimeOfDayListener_83()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|952352184");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_17_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "OBJECTIVES",
            item = "MIS_200_B10_B20_B30_OBJ",
            id = "1019428",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_296()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_296");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|954970238");
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
                [0] = self.f_box_OutputOrder_v2_296_Out_0,
                [1] = self.f_box_OutputOrder_v2_296_Out_1,
                [2] = self.f_box_OutputOrder_v2_296_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_323()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_323");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|967897533");
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
                [0] = self.f_box_OutputOrder_v2_323_Out_0,
                [1] = self.f_box_OutputOrder_v2_323_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_289()
    local params;
    params = {
        -- CustomRingInSound,
        [0] = "3763027159",
        -- CustomRingOutSound,
        [1] = "3763027159",
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "4149810940",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_273()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_MissionAckTriggerListener_59()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- triggerId,
        [1] = "2107244323343971389",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_39()
    local params;
    params = {
        -- Pawns,
        [0] = "2109688808279659597",
        -- SoundId,
        [1] = "2843291011",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_233()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_233");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|976544201");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2107618581956014776",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_25()
    local params;
    params = {
        -- CustomRingInSound,
        [0] = "3763027159",
        -- CustomRingOutSound,
        [1] = "3763027159",
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "3122646079",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_206()
    local params, l0;
    l0 = self.box_GroupIter_213;
    params = {
        -- state,
        [3] = true,
        -- usableEntity,
        [4] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_185()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_185");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|986146372");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2109471348832097228",
        -- ObjectiveId,
        [2] = {
            section = "OBJECTIVES",
            item = "MIS_200_B40_GOAL",
            id = "959390",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1025405337");
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
                [0] = self.f_box_OutputOrder_v2_66_Out_0,
                [1] = self.f_box_OutputOrder_v2_66_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_305()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_305");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1036739658");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_305_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_125()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_125");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1038190428");
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
                [0] = self.f_box_OutputOrder_v2_125_Out_0,
                [1] = self.f_box_OutputOrder_v2_125_Out_1,
                [2] = self.f_box_OutputOrder_v2_125_Out_2,
                [3] = self.f_box_OutputOrder_v2_125_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_72()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_276()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_276");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1067789115");
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
                [0] = self.f_box_OutputOrder_v2_276_Out_0,
                [1] = self.f_box_OutputOrder_v2_276_Out_1,
                [2] = self.f_box_OutputOrder_v2_276_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_277()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- message,
        [1] = "B10_Left",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1101472104");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_34_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_34_A_is_True,
    });
    params = {
        -- A,
        [0] = self.goodTime_2,
    };
    return params;
end;

function export:OnEnter_box_PlayerSpeedModifier_v3_63()
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

function export:OnEnter_box_MIS_200_MASTER_FATHERVOINTRO_158()
    local params;
    params = {
        -- VOID,
        [0] = "1706655975",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_275()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "mis_b50_started",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1108926306");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_24_A_is_True,
    });
    params = {
        -- A,
        [0] = self.b_TimeStop,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_283()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- message,
        [1] = "B20_Left",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_108");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1136229407");
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

function export:OnEnter_box_ParticleSystem_v3_209()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_209");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1157268391");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_209_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2108682499249943926",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_287()
    local params;
    params = {
        -- CustomRingInSound,
        [0] = "3763027159",
        -- CustomRingOutSound,
        [1] = "3763027159",
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "219778360",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_156()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_156");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1180355537");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_156_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1181783640");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_v2_240()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_v2_240");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1182026702");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_v2_240_NotValid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015354538805092",
    };
    return params;
end;

function export:OnEnter_box_BaseMissionBlock_v2_299()
    local params;
    params = {
        -- missionBlockId,
        [0] = "27160324092390094",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_163()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_163");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1188894351");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2108682499249943926",
    };
    return params;
end;

function export:OnEnter_box_OverrideDisabledLogicId_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideDisabledLogicId_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1190700666");
    l0:SetConnections({
    });
    params = {
        -- disableUI,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_250()
    local params, l0;
    l0 = self.box_GroupIter_249;
    params = {
        -- state,
        [3] = false,
        -- usableEntity,
        [4] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_101()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_TimeOfDayListener_42()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_307()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_307");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1213023693");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_307_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_271()
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
        [6] = "4185086185",
        -- StopEvent,
        [7] = "2816472133",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1227751753");
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
                [0] = self.f_box_OutputOrder_v2_64_Out_0,
                [1] = self.f_box_OutputOrder_v2_64_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_BaseMissionBlock_v2_91()
    local params;
    params = {
        -- missionBlockId,
        [0] = "54181894203923903",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_82()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.025,
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_106()
    local params;
    params = {
        -- timeScale,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_GroupIter_210()
    local params;
    params = {
        -- entities,
        [0] = "#E6165689",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_247()
    local params, l0;
    l0 = self.box_GroupIter_200;
    params = {
        -- state,
        [3] = false,
        -- usableEntity,
        [4] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_114()
    local params;
    params = {
        -- bShowUI,
        [0] = false,
        -- CoopFailRequiresAllPlayer,
        [1] = true,
        -- FailingZoneTrigger,
        [2] = "2107284153836766559",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_87()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.03,
    };
    return params;
end;

function export:OnEnter_box_GroupIter_216()
    local params;
    params = {
        -- entities,
        [0] = "#D420340B",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1395886394");
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
                [1] = self.f_box_OutputOrder_v2_68_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1399538864");
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
                [1] = self.f_box_OutputOrder_v2_36_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_115()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_v2_257()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015354538957515",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_ColorRemapTextureModifier_v3_96()
    local params;
    params = {
        -- colorRemapSettings,
        [0] = "9015343366146891",
        -- playerGroup,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_v2_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_v2_95");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1445421557");
    l0:SetConnections({
        -- Valid,
        [1] = self.f_box_GetPreconditionState_v2_95_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015354538957515",
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_v2_243()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_v2_243");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1451472070");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_v2_243_NotValid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015354538935226",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_218()
    local params, l0;
    l0 = self.box_GroupIter_219;
    params = {
        -- state,
        [3] = false,
        -- usableEntity,
        [4] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_84()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1460906700");
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

function export:OnEnter_box_SoundModifier_v2_281()
    local params;
    params = {
        -- Pawns,
        [0] = "2109778368571398582",
        -- SoundId,
        [1] = "2484538944",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1463427869");
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
                [0] = self.f_box_OutputOrder_v2_55_Out_0,
                [1] = self.f_box_OutputOrder_v2_55_Out_1,
                [2] = self.f_box_OutputOrder_v2_55_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_320()
    local params;
    params = {
        -- Pawns,
        [0] = "2109688808279659597",
        -- SoundId,
        [1] = "2843291011",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_128()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_157()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_157");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1472135955");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_157_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_254()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_254");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1472662480");
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
                [0] = self.f_box_OutputOrder_v2_254_Out_0,
                [1] = self.f_box_OutputOrder_v2_254_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_331()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_331");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1473689074");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "killfatherhints",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_306()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_306");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1489352392");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_306_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GroupIter_251()
    local params;
    params = {
        -- entities,
        [0] = "#D420340B",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_147()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "mis_200_b20b_done",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_267()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_253()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_253");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1500067109");
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
                [0] = self.f_box_OutputOrder_v2_253_Out_0,
                [1] = self.f_box_OutputOrder_v2_253_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_52()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "B10HintReset",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1512569288");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_23_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "OBJECTIVES",
            item = "MIS_200_B10_B20_B30_OBJ",
            id = "1019428",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_269()
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
        [6] = "4185086185",
        -- StopEvent,
        [7] = "2816472133",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1525667294");
    l0:SetConnections({
    });
    params = {
        -- Hour,
        [0] = self.currentHour,
        -- Minute,
        [1] = self.currentMinute,
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_316()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_316");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1527455406");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_316_Out,
    });
    params = {
        -- Message,
        [0] = "B30_Left",
    };
    return params;
end;

function export:OnEnter_box_MIS_200_MASTER_FATHERVOINTRO_175()
    local params;
    params = {
        -- VOID,
        [0] = "334702187",
    };
    return params;
end;

function export:OnEnter_box_FastTravelModifier_v2_224()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FastTravelModifier_v2_224");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1537646478");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_FastTravelModifier_v2_224_Disabled,
        -- Enabled,
        [1] = self.f_box_FastTravelModifier_v2_224_Enabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1550086716");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_13_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_13_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.iCurrentProgress,
        -- B,
        [1] = 3,
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_v2_256()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_v2_256");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1553853336");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_v2_256_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_v2_256_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015354538957515",
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_318()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_318");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1555321607");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_318_Out,
    });
    params = {
        -- Message,
        [0] = "B10_Left",
    };
    return params;
end;

function export:OnEnter_box_VisionModeModifier_v2_116()
    local params;
    params = {
        -- intoxicationAmount,
        [0] = 40,
        -- players,
        [1] = "#ED455357",
        -- useAsPercent,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_212()
    local params, l0;
    l0 = self.box_GroupIter_210;
    params = {
        -- state,
        [3] = true,
        -- usableEntity,
        [4] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_264()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_264");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1619682460");
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
                [0] = self.f_box_OutputOrder_v2_264_Out_0,
                [1] = self.f_box_OutputOrder_v2_264_Out_1,
                [2] = self.f_box_OutputOrder_v2_264_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_329()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_329");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1630519446");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "killfatherhints",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1634201617");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_9_A_is_False,
    });
    params = {
        -- A,
        [0] = Globals.MIS_200_MASTER.isPlayerInsideIsland,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_303()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_303");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1639622108");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_303_A_is_False,
    });
    params = {
        -- A,
        [0] = PersistentGlobals.MIS_200_MASTER.B10Running,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_230()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_230");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1640729901");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2107618603862864576",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1650928613");
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

function export:OnEnter_box_OutputOrder_v2_236()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_236");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1654425857");
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
                [0] = self.f_box_OutputOrder_v2_236_Out_0,
                [1] = self.f_box_OutputOrder_v2_236_Out_1,
                [2] = self.f_box_OutputOrder_v2_236_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OverrideEnvironment_v3_105()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideEnvironment_v3_105");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1654572928");
    l0:SetConnections({
    });
    params = {
        -- fog,
        [6] = "FCZ_Proto_LD_Selena_Wrath:Fog_Opacity_90",
        -- ratio,
        [9] = 1,
        -- transitionTime,
        [13] = 2,
    };
    return params;
end;

function export:OnEnter_box_MIS_200_FatherShootArrow_141()
    local params;
    params = {
        -- eFatherID,
        [0] = "2109191566802310920",
        -- eFatherSpawner,
        [1] = "2109191566796019456",
        -- eShootSTP,
        [2] = "2109191581931165481",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_302()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_302");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1663129951");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_302_A_is_False,
    });
    params = {
        -- A,
        [0] = PersistentGlobals.MIS_200_MASTER.B20Running,
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_298()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = true,
        -- immediateDespawn,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_v2_166()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_v2_166");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1684248047");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_v2_166_NotValid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015346588750679",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_144()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_144");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1688182867");
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
                [0] = self.f_box_OutputOrder_v2_144_Out_0,
                [1] = self.f_box_OutputOrder_v2_144_Out_1,
                [2] = self.f_box_OutputOrder_v2_144_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_v2_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_v2_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1692263028");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_v2_81_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_v2_81_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015346588739537",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_232()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_184()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_184");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1716238115");
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
                [0] = self.f_box_OutputOrder_v2_184_Out_0,
                [1] = self.f_box_OutputOrder_v2_184_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1718434897");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_35_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Switch_151()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_v2_168()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_v2_168");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1723684507");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_v2_168_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_v2_168_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015346588739537",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_328()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_328");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1736231157");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_328_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MIS_200_LightManager_44()
    local params;
    params = {
        -- e_EndPos,
        [1] = "2107645405071167522",
        -- e_FinalFire,
        [2] = "2109164261056975945",
        -- e_LastLight,
        [3] = "2107618581956014776",
        -- e_StartPos,
        [4] = "2107645394621059102",
        -- g_LightGroup,
        [5] = "#E6165689",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_319()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_319");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1752624389");
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
                [0] = self.f_box_OutputOrder_v2_319_Out_0,
                [1] = self.f_box_OutputOrder_v2_319_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_304()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_304");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1756187001");
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
                [0] = self.f_box_OutputOrder_v2_304_Out_0,
                [1] = self.f_box_OutputOrder_v2_304_Out_1,
                [2] = self.f_box_OutputOrder_v2_304_Out_2,
                [3] = self.f_box_OutputOrder_v2_304_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_v2_143()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_v2_143");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1780037014");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_v2_143_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_v2_143_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015354538935226",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_130()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_130");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1797303387");
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
                [0] = self.f_box_OutputOrder_v2_130_Out_0,
                [1] = self.f_box_OutputOrder_v2_130_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_321()
    local params, l0;
    l0 = self.box_LeashOverride_324;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = self.LocalPlayer,
        -- LoadingScreen,
        [2] = true,
        -- Pawns,
        [4] = l0:GetDataOutValue(0),
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_27()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_v2_169()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_v2_169");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1864828983");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_v2_169_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_v2_169_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015346588716599",
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_317()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_317");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1869171902");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_317_Out,
    });
    params = {
        -- Message,
        [0] = "B20_Left",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1873861537");
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
                [0] = self.f_box_OutputOrder_v2_60_Out_0,
                [1] = self.f_box_OutputOrder_v2_60_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1880476865");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_14_A_is_True,
    });
    params = {
        -- A,
        [0] = Globals.MIS_200_MASTER.isPlayerInsideIsland,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1888432190");
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
                [0] = self.f_box_OutputOrder_v2_74_Out_0,
                [1] = self.f_box_OutputOrder_v2_74_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1892445186");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_v2_29_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_v2_29_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015346588716599",
    };
    return params;
end;

function export:OnEnter_box_FastTravelModifier_v2_225()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FastTravelModifier_v2_225");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1897889582");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_FastTravelModifier_v2_225_Disabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_107()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_288()
    local params;
    params = {
        -- CustomRingInSound,
        [0] = "3763027159",
        -- CustomRingOutSound,
        [1] = "3763027159",
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "837989421",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_325()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_325");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1941917784");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_325_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_325_A_is_True,
    });
    params = {
        -- A,
        [0] = self.B50_Done,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_126()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_126");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1962707316");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_126_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_61()
    local params;
    params = {
        -- Pawns,
        [0] = "2109688808279659597",
        -- SoundId,
        [1] = "2843291011",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_280()
    local params;
    params = {
        -- Pawns,
        [0] = "2109777966281021874",
        -- SoundId,
        [1] = "2484538944",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1981112336");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_88_Out,
    });
    params = {
        -- Hour,
        [0] = 0,
        -- Minute,
        [1] = 6,
    };
    return params;
end;

function export:OnEnter_box_OverrideEnvironment_v3_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideEnvironment_v3_99");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1993810159");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_OverrideEnvironment_v3_99_Disabled,
        -- Enabled,
        [1] = self.f_box_OverrideEnvironment_v3_99_Enabled,
    });
    params = {
        -- cloud,
        [3] = "Default:SandStorm.Cloud",
        -- fog,
        [6] = "9015341360818765",
        -- ratio,
        [9] = 1,
        -- transitionTime,
        [13] = 5,
        -- wind,
        [14] = "Special.MIS_030_Wind",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_246()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_246");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|1997924230");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2108682499249943926",
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_v2_85()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015346588750679",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_v2_117()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015346588739537",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_262()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_262");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2011395092");
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
                [0] = self.f_box_OutputOrder_v2_262_Out_0,
                [1] = self.f_box_OutputOrder_v2_262_Out_1,
                [2] = self.f_box_OutputOrder_v2_262_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_194()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_215()
    local params, l0;
    l0 = self.box_GroupIter_216;
    params = {
        -- state,
        [3] = true,
        -- usableEntity,
        [4] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_164()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_164");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2027358137");
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
                [0] = self.f_box_OutputOrder_v2_164_Out_0,
                [1] = self.f_box_OutputOrder_v2_164_Out_1,
                [2] = self.f_box_OutputOrder_v2_164_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_57()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_149()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "mis_200_b30b_done",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_282()
    local params;
    params = {
        -- Pawns,
        [0] = "2109778398894119354",
        -- SoundId,
        [1] = "2484538944",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_326()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_326");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2059747219");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_326_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GroupIter_200()
    local params;
    params = {
        -- entities,
        [0] = "#E6165689",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2071148441");
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
                [0] = self.f_box_OutputOrder_v2_22_Out_0,
                [1] = self.f_box_OutputOrder_v2_22_Out_1,
                [2] = self.f_box_OutputOrder_v2_22_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_132()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_132");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2089858788");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_132_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_132_A_is_True,
    });
    params = {
        -- A,
        [0] = self.goodTime,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2111612738");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "red",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "*****NEW SCRIPT*****",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_301()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_301");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2112884764");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_301_A_is_False,
    });
    params = {
        -- A,
        [0] = PersistentGlobals.MIS_200_MASTER.B30Running,
    };
    return params;
end;

function export:OnEnter_box_MIS_200_LightManager_129()
    local params;
    params = {
        -- e_EndPos,
        [1] = "2107647428130786673",
        -- e_FinalFire,
        [2] = "2109164261056975946",
        -- e_LastLight,
        [3] = "2107618606031319752",
        -- e_StartPos,
        [4] = "2107647141108270483",
        -- g_LightGroup,
        [5] = "#D420340B",
    };
    return params;
end;

function export:OnEnter_box_VisionModeModifier_v2_70()
    local params;
    params = {
        -- intoxicationAmount,
        [0] = 40,
        -- players,
        [1] = "#ED455357",
        -- useAsPercent,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_123()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_123");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_MASTER.domino|@MIS_200_MASTER|2137374258");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_123_Out,
    });
    params = {
        -- Hour,
        [0] = 21,
        -- Minute,
        [1] = 30,
    };
    return params;
end;

function export:OnExit_box_GroupIter_219_PawnIter()
    local l0, l1;
    l0 = self.box_GroupIter_219;
    l1 = self.box_UniversalInteractionModifier_v2_218;
    l1:GetLuaBox().usableEntity = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_97_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.b_TimeStop = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupIter_249_PawnIter()
    local l0, l1;
    l0 = self.box_GroupIter_249;
    l1 = self.box_UniversalInteractionModifier_v2_250;
    l1:GetLuaBox().usableEntity = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPawnVehicleInfo_214_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.PlayerVehicle = l0:GetDataOutValue(2);
    self._sld_vehicleType_box_GetPawnVehicleInfo_214 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_214_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.PlayerVehicle = l0:GetDataOutValue(2);
    self._sld_vehicleType_box_GetPawnVehicleInfo_214 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_214_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.PlayerVehicle = l0:GetDataOutValue(2);
    self._sld_vehicleType_box_GetPawnVehicleInfo_214 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_SetBoolean_v2_20_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.goodTime = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupIter_213_PawnIter()
    local l0, l1;
    l0 = self.box_GroupIter_213;
    l1 = self.box_UniversalInteractionModifier_v2_206;
    l1:GetLuaBox().usableEntity = l0:GetDataOutValue(0);
end;

function export:OnExit_box_LeashOverride_324_OnLeashBroken()
    local l0, l1;
    l0 = self.box_LeashOverride_324;
    l1 = self.box_TeleportPawns_321;
    l1:GetLuaBox().Pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_LeashOverride_324_OnLeashFinalWarning()
    local l0, l1;
    l0 = self.box_LeashOverride_324;
    l1 = self.box_TeleportPawns_321;
    l1:GetLuaBox().Pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_LeashOverride_324_OnLeashWarning()
    local l0, l1;
    l0 = self.box_LeashOverride_324;
    l1 = self.box_TeleportPawns_321;
    l1:GetLuaBox().Pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_103_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.iCurrentProgress = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_49_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.goodTime_2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_TimeOfDayListener_83_HourChanged()
    local l0;
    l0 = self.box_TimeOfDayListener_83;
    self.Hour_2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_305_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    PersistentGlobals.MIS_200_MASTER.B10Running = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_156_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.MIS_200_MASTER.isPlayerInsideIsland = l0:GetDataOutValue(0);
end;

function export:OnExit_box_TimeOfDayListener_42_HourChanged()
    local l0;
    l0 = self.box_TimeOfDayListener_42;
    self.Hour = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_307_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    PersistentGlobals.MIS_200_MASTER.B30Running = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupIter_210_PawnIter()
    local l0, l1;
    l0 = self.box_GroupIter_210;
    l1 = self.box_UniversalInteractionModifier_v2_212;
    l1:GetLuaBox().usableEntity = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupIter_216_PawnIter()
    local l0, l1;
    l0 = self.box_GroupIter_216;
    l1 = self.box_UniversalInteractionModifier_v2_215;
    l1:GetLuaBox().usableEntity = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_157_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.MIS_200_MASTER.isPlayerInsideIsland = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_306_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    PersistentGlobals.MIS_200_MASTER.B20Running = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupIter_251_PawnIter()
    local l0, l1;
    l0 = self.box_GroupIter_251;
    l1 = self.box_UniversalInteractionModifier_v2_252;
    l1:GetLuaBox().usableEntity = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_35_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.LocalPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Switch_151_None()
    local l0;
    l0 = self.box_Switch_151;
    self.DialogOutputNumber = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Switch_151_Out()
    local l0;
    l0 = self.box_Switch_151;
    self.DialogOutputNumber = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Switch_151_Output()
    local l0;
    l0 = self.box_Switch_151;
    self.DialogOutputNumber = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Switch_151_Output()
    local l0;
    l0 = self.box_Switch_151;
    self.DialogOutputNumber = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Switch_151_Output()
    local l0;
    l0 = self.box_Switch_151;
    self.DialogOutputNumber = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Switch_151_Output()
    local l0;
    l0 = self.box_Switch_151;
    self.DialogOutputNumber = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Switch_151_Output()
    local l0;
    l0 = self.box_Switch_151;
    self.DialogOutputNumber = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Switch_151_Output()
    local l0;
    l0 = self.box_Switch_151;
    self.DialogOutputNumber = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Switch_151_Output()
    local l0;
    l0 = self.box_Switch_151;
    self.DialogOutputNumber = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Switch_151_Output()
    local l0;
    l0 = self.box_Switch_151;
    self.DialogOutputNumber = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_328_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    PersistentGlobals.MIS_200_MASTER.B50TimelapseDone = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_126_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.PlayerGroup = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_326_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.B50_Done = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupIter_200_PawnIter()
    local l0, l1;
    l0 = self.box_GroupIter_200;
    l1 = self.box_UniversalInteractionModifier_v2_247;
    l1:GetLuaBox().usableEntity = l0:GetDataOutValue(0);
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
