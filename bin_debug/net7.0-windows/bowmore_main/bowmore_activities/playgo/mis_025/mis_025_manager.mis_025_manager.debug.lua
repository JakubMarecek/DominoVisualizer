LUAC�= -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/playgo/mis_025/mis_025_manager.domino
-- User graph: MIS_025_Manager
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityState_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/GetPreconditionState_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/PreconditionListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/AI/StateListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/BonusPlanModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/BroadcastMessage.lua");
        cboxRes:RegisterBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/DynamicLightModifier.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/ExtinguishAllFires.lua");
        cboxRes:RegisterBox("Domino/System/FastTravelModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/ForceExitVehicle_v2.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/IsPawnAlive_v3.lua");
        cboxRes:RegisterBox("Domino/System/MessageListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MoonModifier.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/OverrideEnvironment_v3.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/InputPriorityModifier_v4.lua");
        cboxRes:RegisterBox("Domino/System/Player/PersistentParticlesModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayerSpeedModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/RandomFloat_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/RestrictedItemModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetOasis.lua");
        cboxRes:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableBreaker.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        cboxRes:RegisterBox("Domino/System/TaggingModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/TeleportPawns.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
        cboxRes:RegisterBox("Domino/System/UI/OverrideDisabledLogicId.lua");
        cboxRes:RegisterBox("Domino/System/UI/OverrideMenuAccessibility_v2.lua");
        cboxRes:RegisterBox("Domino/System/UI/SetLoadingVideo.lua");
        cboxRes:RegisterBox("Domino/User/Bowmore_main/Bowmore_Activities/PLAYGO/MIS_025/MIS_025_Manager.MIS_025_RescuedSurvivors.debug.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/User/Bowmore_main/Bowmore_Activities/PLAYGO/MIS_025/MIS_025_Manager.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2323568255.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4047574385.bnk]], "CSoundResource");
        cboxRes:LoadResource([[301774942.bnk]], "CSoundResource");
        cboxRes:LoadResource([[28366522.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3125029023.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2326602970.bnk]], "CSoundResource");
        cboxRes:LoadResource([[629282281.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3100690377.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1317995542.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1698860042.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4093346419.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3885491255.bnk]], "CSoundResource");
        cboxRes:LoadResource([[newparticles/18022555641381588.part]], "CParticlesSystemParamResource");
        cboxRes:LoadResource([[3315415770.bnk]], "CSoundResource");
        cboxRes:LoadResource([[newparticles/9015345236642318.part]], "CParticlesSystemParamResource");
        cboxRes:LoadResource([[4231408048.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4016745496.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1728956721.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2517553809.bnk]], "CSoundResource");
        cboxRes:LoadResource([[503363967.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4041936191.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3840146655.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3551202739.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4278316856.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2326773054.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3900798261.bnk]], "CSoundResource");
        cboxRes:LoadResource([[newparticles/81072929500895263.part]], "CParticlesSystemParamResource");
        cboxRes:LoadResource([[4085132984.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4231363732.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1903774645.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3164349161.bnk]], "CSoundResource");
        cboxRes:LoadResource([[newparticles/9015334630293318.part]], "CParticlesSystemParamResource");
        cboxRes:LoadResource([[newparticles/63058549911183370.part]], "CParticlesSystemParamResource");
        cboxRes:LoadResource([[1501590458.bnk]], "CSoundResource");
        cboxRes:LoadResource([[newparticles/63058540764425256.part]], "CParticlesSystemParamResource");
        cboxRes:LoadResource([[174456189.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1267756297.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1388279777.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1726338215.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1993101182.bnk]], "CSoundResource");
        cboxRes:LoadResource([[newparticles/9015344725208974.part]], "CParticlesSystemParamResource");
        cboxRes:LoadResource([[3960144307.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2624524819.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1825810423.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1023351621.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1314831807.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2989533942.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4006244345.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1329761538.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/Bowmore_main/Bowmore_Activities/PLAYGO/MIS_025/MIS_025_Manager.MIS_025_Manager.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/Activity/GetActivityFact.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "GetFact",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "FactNotSet",
                delayed = false,
            },
            [1] = {
                name = "FactSet",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "ActivityIDOrEncounterPrefabID",
                type = "genericdb",
            },
            [1] = {
                name = "Fact",
                type = "string",
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
    metadataTable[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "CallForceNormalEnd",
            },
            [1] = {
                name = "CallInterrupt",
            },
            [2] = {
                name = "Disable",
            },
            [3] = {
                name = "Enable",
            },
            [4] = {
                name = "Use",
            },
        },
        controlInCount = 5,
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
                name = "ForceNormalEndCalled",
                delayed = false,
            },
            [3] = {
                name = "InterruptCalled",
                delayed = false,
            },
            [4] = {
                name = "UseCalled",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "ContextualAction",
                type = "entity",
            },
            [1] = {
                name = "ContextualActionIndex",
                type = "int",
            },
            [2] = {
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/AI/SetContextualStrategy.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetContextualStrategy",
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
                name = "ContextualStrategy",
                type = "entity",
            },
            [1] = {
                name = "Group",
                type = "group",
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
    metadataTable[GetPathID("Domino/System/AI/StateListener_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Alert",
            },
            [1] = {
                name = "Combat",
            },
            [2] = {
                name = "Dead",
            },
            [3] = {
                name = "Disable",
            },
            [4] = {
                name = "Idle_RelaxCautious",
            },
            [5] = {
                name = "Investigate",
            },
        },
        controlInCount = 6,
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
                name = "MemberInState",
                delayed = true,
            },
            [3] = {
                name = "StateStart",
                delayed = true,
            },
            [4] = {
                name = "StateStop",
                delayed = true,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "group",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "memberCountInState",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/Bind_v4.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Bind",
            },
            [1] = {
                name = "UnBind",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Bound",
                delayed = false,
            },
            [1] = {
                name = "UnBound",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "BoneName",
                type = "string",
            },
            [1] = {
                name = "EntityA",
                type = "entity",
            },
            [2] = {
                name = "EntityB",
                type = "entity",
            },
            [3] = {
                name = "IsMultiBeatBind",
                type = "bool",
            },
            [4] = {
                name = "PositionOnly",
                type = "bool",
            },
            [5] = {
                name = "RemoveOffset",
                type = "bool",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/BonusPlanModifier_v3.lua")] = {
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
                name = "AlreadyAdded",
                delayed = false,
            },
            [2] = {
                name = "AlreadyRemoved",
                delayed = false,
            },
            [3] = {
                name = "Removed",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "BonusPlanName",
                type = "string",
            },
            [1] = {
                name = "Entities",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Entity",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/IsPawnAlive_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Alive",
                delayed = false,
            },
            [1] = {
                name = "DeadOrDown",
                delayed = false,
            },
            [2] = {
                name = "NotLoaded",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "Pawn",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/MoonModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "ResetMoonDirection",
            },
            [1] = {
                name = "ResetMoonHDRMultiplier",
            },
            [2] = {
                name = "ResetMoonPhase",
            },
            [3] = {
                name = "ResetMoonSize",
            },
            [4] = {
                name = "SetMoonDirection",
            },
            [5] = {
                name = "SetMoonHDRMultiplier",
            },
            [6] = {
                name = "SetMoonPhase",
            },
            [7] = {
                name = "SetMoonSize",
            },
        },
        controlInCount = 8,
        controlOut = {
            [0] = {
                name = "OnResetMoonDirection",
                delayed = false,
            },
            [1] = {
                name = "OnResetMoonHDRMultiplier",
                delayed = false,
            },
            [2] = {
                name = "OnResetMoonPhase",
                delayed = false,
            },
            [3] = {
                name = "OnResetMoonSize",
                delayed = false,
            },
            [4] = {
                name = "OnSetMoonDirection",
                delayed = false,
            },
            [5] = {
                name = "OnSetMoonHDRMultiplier",
                delayed = false,
            },
            [6] = {
                name = "OnSetMoonPhase",
                delayed = false,
            },
            [7] = {
                name = "OnSetMoonSize",
                delayed = false,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "Azimuth",
                type = "float",
            },
            [1] = {
                name = "Elevation",
                type = "float",
            },
            [2] = {
                name = "HDRMultiplier",
                type = "float",
            },
            [3] = {
                name = "Phase",
                type = "float",
            },
            [4] = {
                name = "ResetAfterBeat",
                type = "bool",
            },
            [5] = {
                name = "Size",
                type = "float",
            },
        },
        dataInCount = 6,
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
    metadataTable[GetPathID("Domino/System/RandomFloat_v2.lua")] = {
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
                name = "Max",
                type = "float",
            },
            [1] = {
                name = "Min",
                type = "float",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Result",
                type = "float",
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
    metadataTable[GetPathID("Domino/System/RestrictedItemModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "AddItemRestriction",
            },
            [1] = {
                name = "ClearRestrictions",
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
                name = "allowedItemDescriptorID",
                type = "genericdb",
            },
            [1] = {
                name = "allowedItemFilterID",
                type = "genericdb",
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
    metadataTable[GetPathID("Domino/System/TaggingModifier_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "Enable",
            },
            [2] = {
                name = "TagEntity",
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
                name = "Tagged",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "Entity",
                type = "entity",
            },
            [1] = {
                name = "Pawns",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/UI/OverrideMenuAccessibility_v2.lua")] = {
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
                name = "ActivityLogMenuEnabled",
                type = "bool",
            },
            [1] = {
                name = "AvatarCreationMenuEnabled",
                type = "bool",
            },
            [2] = {
                name = "AvatarCustomizationMenuEnabled",
                type = "bool",
            },
            [3] = {
                name = "ChallengeMenuEnabled",
                type = "bool",
            },
            [4] = {
                name = "HomebaseMenuEnabled",
                type = "bool",
            },
            [5] = {
                name = "LootMenuEnabled",
                type = "bool",
            },
            [6] = {
                name = "OnlineMenuEnabled",
                type = "bool",
            },
            [7] = {
                name = "PerksMenuEnabled",
                type = "bool",
            },
            [8] = {
                name = "SquadMenuEnabled",
                type = "bool",
            },
            [9] = {
                name = "WorldmapMenuEnabled",
                type = "bool",
            },
        },
        dataInCount = 10,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/UI/SetLoadingVideo.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetVideo",
            },
        },
        controlInCount = 1,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "videoId",
                type = "int",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/User/Bowmore_main/Bowmore_Activities/PLAYGO/MIS_025/MIS_025_Manager.MIS_025_RescuedSurvivors.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "ArmoryDoorManager",
            },
            [1] = {
                name = "Enable_Diags_B20_Start",
            },
            [2] = {
                name = "SpawnRescuedSurvivorsOnReload",
            },
            [3] = {
                name = "SurvivorsStartSetup",
            },
        },
        controlInCount = 4,
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
    self._name = "MIS_025_Manager";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager";
    self.Player = nil;
    self.PlayerGroup = nil;
    self.emitter = "";
    self.objective = {
        section = "",
        item = "",
        id = "",
    };
    self.npc_diag = nil;
    self.box_ActivityAcknowledgeGate_17 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|318086");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_17_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_17_Reloaded,
    });
    self.box_PlayDialog_v6_168 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_168;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_168");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|15939762");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_168_Started,
    });
    self.box_SpawnAI_130 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_130;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_130");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|17744848");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_130_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_130_Spawned,
    });
    self.box_Delay_v5_159 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_159;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_159");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|24131319");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_159_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_159_TimeElapsed,
    });
    self.box_ProximityTrigger_v3_224 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_224;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_224");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|25793137");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_224_Enter,
    });
    self.box_PersistentParticlesModifier_288 = cbox:CreateBox("Domino/System/Player/PersistentParticlesModifier.lua");
    l0 = self.box_PersistentParticlesModifier_288;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PersistentParticlesModifier_288");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|27364121");
    l0:SetConnections({
        -- OnStopParticles,
        [1] = self.f_box_PersistentParticlesModifier_288_OnStopParticles,
    });
    self.box_MultipleAND_v2_278 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_278;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_278");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|35093944");
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
        [0] = self.f_box_MultipleAND_v2_278_Out,
    });
    self.box_MessageListener_v3_192 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_192;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_192");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|35817085");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_192_Received,
    });
    self.box_PlayDialog_v6_166 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_166;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_166");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|87685488");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_166_Started,
    });
    self.box_MultipleOR_244 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_244;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_244");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|89999505");
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
        [0] = self.f_box_MultipleOR_244_Out,
    });
    self.box_MoonModifier_29 = cbox:CreateBox("Domino/System/MoonModifier.lua");
    l0 = self.box_MoonModifier_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MoonModifier_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|107228641");
    l0:SetConnections({
        -- OnResetMoonDirection,
        [0] = self.f_box_MoonModifier_29_OnResetMoonDirection,
        -- OnResetMoonPhase,
        [2] = self.f_box_MoonModifier_29_OnResetMoonPhase,
        -- OnResetMoonSize,
        [3] = self.f_box_MoonModifier_29_OnResetMoonSize,
    });
    self.box_MultipleOR_9 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|122047062");
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
        [0] = self.f_box_MultipleOR_9_Out,
    });
    self.box_PersistentParticlesModifier_193 = cbox:CreateBox("Domino/System/Player/PersistentParticlesModifier.lua");
    l0 = self.box_PersistentParticlesModifier_193;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PersistentParticlesModifier_193");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|152060986");
    l0:SetConnections({
        -- OnStartParticles,
        [0] = self.f_box_PersistentParticlesModifier_193_OnStartParticles,
    });
    self.box_SoundModifier_v2_235 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_235;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_235");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|153039176");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_154 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_154;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_154");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|157844563");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_154_Finished,
        -- Started,
        [4] = self.f_box_PlayDialog_v6_154_Started,
    });
    self.box_TeleportPawns_15 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|161767680");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_15_Out,
    });
    self.box_ProximityTrigger_v3_236 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_236;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_236");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|162545492");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_236_Enter,
    });
    self.box_Delay_v5_335 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_335;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_335");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|221945215");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_335_TimeElapsed,
    });
    self.box_PersistentParticlesModifier_222 = cbox:CreateBox("Domino/System/Player/PersistentParticlesModifier.lua");
    l0 = self.box_PersistentParticlesModifier_222;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PersistentParticlesModifier_222");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|242246972");
    l0:SetConnections({
        -- OnStopParticles,
        [1] = self.f_box_PersistentParticlesModifier_222_OnStopParticles,
    });
    self.box_MultipleOR_91 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|247002984");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 5,
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
        [0] = self.f_box_MultipleOR_91_Out,
    });
    self.box_PlayDialog_v6_164 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_164;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_164");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|253785552");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_164_Started,
    });
    self.box_PreconditionListener_v2_272 = cbox:CreateBox("Domino/System/AI/PreconditionListener_v2.lua");
    l0 = self.box_PreconditionListener_v2_272;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_v2_272");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|263115436");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PreconditionListener_v2_272_Enabled,
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_v2_272_PreconditionMet,
    });
    self.box_InputPriorityModifier_v4_150 = cbox:CreateBox("Domino/System/Player/InputPriorityModifier_v4.lua");
    l0 = self.box_InputPriorityModifier_v4_150;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InputPriorityModifier_v4_150");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|265987869");
    l0:SetConnections({
        -- OnRelease,
        [0] = self.f_box_InputPriorityModifier_v4_150_OnRelease,
    });
    self.box_PersistentParticlesModifier_100 = cbox:CreateBox("Domino/System/Player/PersistentParticlesModifier.lua");
    l0 = self.box_PersistentParticlesModifier_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PersistentParticlesModifier_100");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|277458854");
    l0:SetConnections({
        -- OnStopParticles,
        [1] = self.f_box_PersistentParticlesModifier_100_OnStopParticles,
    });
    self.box_BonusPlanModifier_v3_47 = cbox:CreateBox("Domino/System/BonusPlanModifier_v3.lua");
    l0 = self.box_BonusPlanModifier_v3_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BonusPlanModifier_v3_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|282958335");
    l0:SetConnections({
        -- AlreadyRemoved,
        [2] = self.f_box_BonusPlanModifier_v3_47_AlreadyRemoved,
        -- Removed,
        [3] = self.f_box_BonusPlanModifier_v3_47_Removed,
    });
    self.box_RemoveEntity_v2_360 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_360;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_360");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|288211657");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_360_Out,
    });
    self.box_SoundModifier_v2_217 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_217;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_217");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|300842937");
    l0:SetConnections({
    });
    self.box_MissionAckTriggerListener_277 = cbox:CreateBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
    l0 = self.box_MissionAckTriggerListener_277;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionAckTriggerListener_277");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|307773732");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_MissionAckTriggerListener_277_Enter,
    });
    self.box_SpawnAI_132 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_132;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_132");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|308446094");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_132_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_132_Spawned,
    });
    self.box_ProximityTrigger_v3_214 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_214;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_214");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|313265164");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_214_Enter,
    });
    self.box_OnceOnly_v3_245 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_245;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_245");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|315247619");
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
                [0] = self.f_box_OnceOnly_v3_245_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_27 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|334894952");
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
        [0] = self.f_box_MultipleOR_27_Out,
    });
    self.box_OnceOnly_v3_273 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_273;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_273");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|335003257");
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
                [0] = self.f_box_OnceOnly_v3_273_Out_0,
            },
            count = 1,
        },
    });
    self.box_MultipleOR_158 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_158;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_158");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|350214224");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 14,
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
        [0] = self.f_box_MultipleOR_158_Out,
    });
    self.box_MissionAckTriggerListener_275 = cbox:CreateBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
    l0 = self.box_MissionAckTriggerListener_275;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionAckTriggerListener_275");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|354544341");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_MissionAckTriggerListener_275_Enabled,
        -- Enter,
        [2] = self.f_box_MissionAckTriggerListener_275_Enter,
    });
    self.box_Delay_v5_337 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_337;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_337");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|358018800");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_337_TimeElapsed,
    });
    self.box_MultipleOR_43 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|366899143");
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
        [0] = self.f_box_MultipleOR_43_Out,
    });
    self.box_Delay_v5_361 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_361;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_361");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|369923530");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_361_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_361_TimeElapsed,
    });
    self.box_PersistentParticlesModifier_219 = cbox:CreateBox("Domino/System/Player/PersistentParticlesModifier.lua");
    l0 = self.box_PersistentParticlesModifier_219;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PersistentParticlesModifier_219");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|370194923");
    l0:SetConnections({
    });
    self.box_SpawnAI_276 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_276;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_276");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|386509876");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_276_Out,
    });
    self.box_SoundModifier_v2_218 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_218;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_218");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|393671934");
    l0:SetConnections({
    });
    self.box_Delay_v5_148 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_148;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_148");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|400477937");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_148_TimeElapsed,
    });
    self.box_PlayDialog_v6_167 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_167;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_167");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|424459525");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_167_Started,
    });
    self.box_CharacterLoadedIdListener_v2_223 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_223;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_223");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|436550719");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_223_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_223_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_223_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_223_LoadedIdReceived,
    });
    self.box_ProximityRadiusListener_v3_52 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|437442378");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_52_SomeoneNear,
    });
    self.box_EntityStatusListener_184 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_184;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_184");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|451681582");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_184_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_184_Loaded,
    });
    self.box_MissionAckTriggerListener_133 = cbox:CreateBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
    l0 = self.box_MissionAckTriggerListener_133;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionAckTriggerListener_133");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|476131115");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_MissionAckTriggerListener_133_Disabled,
        -- Enter,
        [2] = self.f_box_MissionAckTriggerListener_133_Enter,
    });
    self.box_MultipleOR_188 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_188;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_188");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|490165161");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 5,
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
        [0] = self.f_box_MultipleOR_188_Out,
    });
    self.box_PlayDialog_v6_19 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|509561864");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_19_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_19_FinishedInterrupted,
        -- StartedPriorityFailed,
        [5] = self.f_box_PlayDialog_v6_19_StartedPriorityFailed,
    });
    self.box_SoundModifier_v2_229 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_229;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_229");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|515958861");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_253 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_253;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_253");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|517542587");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_253_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_253_FinishedInterrupted,
    });
    self.box_PersistentParticlesModifier_102 = cbox:CreateBox("Domino/System/Player/PersistentParticlesModifier.lua");
    l0 = self.box_PersistentParticlesModifier_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PersistentParticlesModifier_102");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|523884812");
    l0:SetConnections({
        -- OnStartParticles,
        [0] = self.f_box_PersistentParticlesModifier_102_OnStartParticles,
    });
    self.box_PlayDialog_v6_165 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_165;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_165");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|530946227");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_165_Started,
    });
    self.box_PersistentParticlesModifier_221 = cbox:CreateBox("Domino/System/Player/PersistentParticlesModifier.lua");
    l0 = self.box_PersistentParticlesModifier_221;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PersistentParticlesModifier_221");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|571995345");
    l0:SetConnections({
        -- OnStopParticles,
        [1] = self.f_box_PersistentParticlesModifier_221_OnStopParticles,
    });
    self.box_PlayDialog_v6_68 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|575310357");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_68_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_68_FinishedInterrupted,
    });
    self.box_Delay_v5_69 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|613466423");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_69_TimeElapsed,
    });
    self.box_Bind_v4_211 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_211;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_211");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|627582149");
    l0:SetConnections({
    });
    self.box_MultipleOR_246 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_246;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_246");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|653060521");
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
        [0] = self.f_box_MultipleOR_246_Out,
    });
    self.box_ActivityInitialized_13 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|662626183");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_13_Out,
    });
    self.box_PlayDialog_v6_139 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_139;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_139");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|687071670");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_139_Finished,
    });
    self.box_MultipleOR_42 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|694223957");
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
        [0] = self.f_box_MultipleOR_42_Out,
    });
    self.box_PlayDialog_v6_251 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_251;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_251");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|694235326");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_251_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_251_FinishedInterrupted,
    });
    self.box_PreconditionListener_v2_121 = cbox:CreateBox("Domino/System/AI/PreconditionListener_v2.lua");
    l0 = self.box_PreconditionListener_v2_121;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_v2_121");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|718132159");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_v2_121_PreconditionMet,
    });
    self.box_OnceOnly_v3_199 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_199;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_199");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|754705965");
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
                [0] = self.f_box_OnceOnly_v3_199_Out_0,
            },
            count = 1,
        },
    });
    self.box_Random_82 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|765048492");
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
                [0] = self.f_box_Random_82_Output_0,
                [1] = self.f_box_Random_82_Output_1,
                [2] = self.f_box_Random_82_Output_2,
                [3] = self.f_box_Random_82_Output_3,
                [4] = self.f_box_Random_82_Output_4,
            },
            count = 5,
        },
    });
    self.box_Gate_v3_93 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_93");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|780256214");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_93_Out,
    });
    self.box_MultipleOR_206 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_206;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_206");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|789600805");
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
        [0] = self.f_box_MultipleOR_206_Out,
    });
    self.box_MultipleOR_226 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_226;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_226");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|792303767");
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
        [0] = self.f_box_MultipleOR_226_Out,
    });
    self.box_Delay_v5_291 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_291;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_291");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|800355223");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_291_TimeElapsed,
    });
    self.box_MultipleOR_176 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_176;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_176");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|802682964");
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
        [0] = self.f_box_MultipleOR_176_Out,
    });
    self.box_Delay_v5_248 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_248;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_248");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|812966084");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_248_TimeElapsed,
    });
    self.box_OnceOnly_v3_200 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_200;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_200");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|820413933");
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
                [0] = self.f_box_OnceOnly_v3_200_Out_0,
            },
            count = 2,
        },
    });
    self.box_PlayDialog_v6_258 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_258;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_258");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|832897734");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_258_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_258_FinishedInterrupted,
    });
    self.box_SoundModifier_v2_233 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_233;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_233");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|843128089");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_44 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|867777915");
    l0:SetConnections({
    });
    self.box_Delay_v5_81 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|876990403");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_81_TimeElapsed,
    });
    self.box_ProximityTrigger_v3_90 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|880278650");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_90_Enter,
    });
    self.box_RestrictedItemModifier_v2_97 = cbox:CreateBox("Domino/System/RestrictedItemModifier_v2.lua");
    l0 = self.box_RestrictedItemModifier_v2_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RestrictedItemModifier_v2_97");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|887845899");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RestrictedItemModifier_v2_97_Out,
    });
    self.box_MultipleOR_137 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_137;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_137");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|906154798");
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
        [0] = self.f_box_MultipleOR_137_Out,
    });
    self.box_SoundModifier_v2_232 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_232;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_232");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|906553882");
    l0:SetConnections({
    });
    self.box_Bind_v4_210 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_210;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_210");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|923871104");
    l0:SetConnections({
    });
    self.box_Delay_v5_334 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_334;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_334");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|958564159");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_334_TimeElapsed,
    });
    self.box_SpawnAI_342 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_342;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_342");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1005931606");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_342_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_342_Spawned,
    });
    self.box_PlayerSpeedModifier_v3_151 = cbox:CreateBox("Domino/System/PlayerSpeedModifier_v3.lua");
    l0 = self.box_PlayerSpeedModifier_v3_151;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerSpeedModifier_v3_151");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1040328279");
    l0:SetConnections({
        -- ApplySpeedFactorOut,
        [0] = self.f_box_PlayerSpeedModifier_v3_151_ApplySpeedFactorOut,
    });
    self.box_PlayDialog_v6_144 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_144;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_144");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1050146928");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_144_Started,
    });
    self.box_MultipleOR_62 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1052737752");
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
    self.box_Delay_v5_339 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_339;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_339");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1060803820");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_339_TimeElapsed,
    });
    self.box_PreconditionListener_v2_23 = cbox:CreateBox("Domino/System/AI/PreconditionListener_v2.lua");
    l0 = self.box_PreconditionListener_v2_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1061600017");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PreconditionListener_v2_23_Enabled,
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_v2_23_PreconditionMet,
    });
    self.box_PersistentParticlesModifier_220 = cbox:CreateBox("Domino/System/Player/PersistentParticlesModifier.lua");
    l0 = self.box_PersistentParticlesModifier_220;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PersistentParticlesModifier_220");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1082154827");
    l0:SetConnections({
        -- OnStopParticles,
        [1] = self.f_box_PersistentParticlesModifier_220_OnStopParticles,
    });
    self.box_PlayerSpeedModifier_v3_157 = cbox:CreateBox("Domino/System/PlayerSpeedModifier_v3.lua");
    l0 = self.box_PlayerSpeedModifier_v3_157;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerSpeedModifier_v3_157");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1093726083");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_45 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1095351273");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_45_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_45_FinishedInterrupted,
    });
    self.box_Bind_v4_209 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_209;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_209");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1095792826");
    l0:SetConnections({
    });
    self.box_Delay_v5_124 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_124;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_124");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1097130499");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_124_TimeElapsed,
    });
    self.box_MultipleOR_98 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_98");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1102105800");
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
        [0] = self.f_box_MultipleOR_98_Out,
    });
    self.box_SoundModifier_v2_208 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_208;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_208");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1114020765");
    l0:SetConnections({
    });
    self.box_Switch_250 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_250;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_250");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1135271604");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 5,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Switch_250_Output_0,
                [1] = self.f_box_Switch_250_Output_1,
                [2] = self.f_box_Switch_250_Output_2,
                [3] = self.f_box_Switch_250_Output_3,
                [4] = self.f_box_Switch_250_Output_4,
            },
            count = 5,
        },
    });
    self.box_PlayDialog_v6_140 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_140;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_140");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1182180427");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_140_Finished,
    });
    self.box_OverrideMenuAccessibility_v2_20 = cbox:CreateBox("Domino/System/UI/OverrideMenuAccessibility_v2.lua");
    l0 = self.box_OverrideMenuAccessibility_v2_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideMenuAccessibility_v2_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1189598398");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_OverrideMenuAccessibility_v2_20_Out,
    });
    self.box_MessageListener_v3_113 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_113");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1190155065");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_MessageListener_v3_113_Enabled,
        -- Received,
        [2] = self.f_box_MessageListener_v3_113_Received,
    });
    self.box_MessageListener_v3_215 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_215;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_215");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1217912653");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_MessageListener_v3_215_Enabled,
        -- Received,
        [2] = self.f_box_MessageListener_v3_215_Received,
    });
    self.box_MultipleOR_63 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1218294457");
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
        [0] = self.f_box_MultipleOR_63_Out,
    });
    self.box_MissionAckTriggerListener_173 = cbox:CreateBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
    l0 = self.box_MissionAckTriggerListener_173;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionAckTriggerListener_173");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1221608568");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_MissionAckTriggerListener_173_Enabled,
        -- Enter,
        [2] = self.f_box_MissionAckTriggerListener_173_Enter,
    });
    self.box_SoundModifier_v2_345 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_345;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_345");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1227856664");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_136 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_136;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_136");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1231421809");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_136_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_136_FinishedInterrupted,
    });
    self.box_SpawnAI_290 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_290;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_290");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1261445519");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_290_Spawned,
    });
    self.box_PersistentParticlesModifier_198 = cbox:CreateBox("Domino/System/Player/PersistentParticlesModifier.lua");
    l0 = self.box_PersistentParticlesModifier_198;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PersistentParticlesModifier_198");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1267493631");
    l0:SetConnections({
        -- OnStartParticles,
        [0] = self.f_box_PersistentParticlesModifier_198_OnStartParticles,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_26 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1292105716");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_26_Out,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_5 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1307290333");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_5_Out,
    });
    self.box_PlayDialog_v6_142 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_142;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_142");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1312903880");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_142_Started,
    });
    self.box_StateListener_v2_195 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_195;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_195");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1318728316");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StateListener_v2_195_Disabled,
        -- Enabled,
        [1] = self.f_box_StateListener_v2_195_Enabled,
        -- MemberInState,
        [2] = self.f_box_StateListener_v2_195_MemberInState,
    });
    self.box_PersistentParticlesModifier_99 = cbox:CreateBox("Domino/System/Player/PersistentParticlesModifier.lua");
    l0 = self.box_PersistentParticlesModifier_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PersistentParticlesModifier_99");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1320220729");
    l0:SetConnections({
    });
    self.box_MultipleOR_293 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_293;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_293");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1326923462");
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
        [0] = self.f_box_MultipleOR_293_Out,
    });
    self.box_PlayDialog_v6_152 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_152;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_152");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1329579213");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_152_Started,
    });
    self.box_MessageListener_v3_216 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_216;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_216");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1330728984");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_216_Received,
    });
    self.box_PlayDialog_v6_252 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_252;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_252");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1339439113");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_252_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_252_FinishedInterrupted,
    });
    self.box_SoundModifier_v2_237 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_237;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_237");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1341231580");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_155 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_155;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_155");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1350931774");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_155_Started,
    });
    self.box_SpawnAI_289 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_289;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_289");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1352718385");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_289_Out,
    });
    self.box_PersistentParticlesModifier_101 = cbox:CreateBox("Domino/System/Player/PersistentParticlesModifier.lua");
    l0 = self.box_PersistentParticlesModifier_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PersistentParticlesModifier_101");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1356314324");
    l0:SetConnections({
        -- OnStopParticles,
        [1] = self.f_box_PersistentParticlesModifier_101_OnStopParticles,
    });
    self.box_ProximityTrigger_v3_234 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_234;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_234");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1392031514");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_234_Enter,
    });
    self.box_Delay_v5_153 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_153;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_153");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1412359829");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_153_TimeElapsed,
    });
    self.box_Delay_v5_96 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_96");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1414735080");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_96_TimeElapsed,
    });
    self.box_StateListener_v2_191 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_191;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_191");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1434168266");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StateListener_v2_191_Disabled,
        -- Enabled,
        [1] = self.f_box_StateListener_v2_191_Enabled,
        -- MemberInState,
        [2] = self.f_box_StateListener_v2_191_MemberInState,
    });
    self.box_RequestPhoneCall_v2_203 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_203;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_203");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1442733950");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_203_Completed,
    });
    self.box_Delay_v5_207 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_207;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_207");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1447954127");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_207_TimeElapsed,
    });
    self.box_OnceOnly_v3_135 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_135;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_135");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1461374202");
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
                [0] = self.f_box_OnceOnly_v3_135_Out_0,
            },
            count = 1,
        },
    });
    self.box_Delay_v5_32 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1471485695");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_32_TimeElapsed,
    });
    self.box_Gate_v3_182 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_182;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_182");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1484284848");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_182_Out,
    });
    self.box_PlayerSpeedModifier_v3_149 = cbox:CreateBox("Domino/System/PlayerSpeedModifier_v3.lua");
    l0 = self.box_PlayerSpeedModifier_v3_149;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerSpeedModifier_v3_149");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1499190557");
    l0:SetConnections({
    });
    self.box_MultipleOR_50 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1500225688");
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
        [0] = self.f_box_MultipleOR_50_Out,
    });
    self.box_Bind_v4_212 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_212;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_212");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1503415819");
    l0:SetConnections({
    });
    self.box_DisplayCustomUIMsg_v5_353 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_353;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_353");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1516591184");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_108 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_108");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1534437769");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_254 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_254;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_254");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1553234240");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_254_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_254_FinishedInterrupted,
    });
    self.box_Gate_v3_163 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_163;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_163");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1565896138");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_163_Out,
    });
    self.box_Delay_v5_57 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1567639355");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_57_TimeElapsed,
    });
    self.box_PlayDialog_v6_161 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_161;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_161");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1584309686");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_161_Started,
    });
    self.box_SpawnAI_123 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_123;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_123");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1592823357");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_123_Spawned,
    });
    self.box_Delay_v5_67 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1596345129");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_67_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_67_TimeElapsed,
    });
    self.box_PlayDialog_v6_25 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1598518749");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_25_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_25_FinishedInterrupted,
    });
    self.box_MultipleOR_169 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_169;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_169");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1603966982");
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
        [0] = self.f_box_MultipleOR_169_Out,
    });
    self.box_ProximityTrigger_v3_228 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_228;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_228");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1604419793");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_228_Enter,
    });
    self.box_SpawnAI_174 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_174;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_174");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1618360170");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_174_Out,
    });
    self.box_ProximityTrigger_v3_231 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_231;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_231");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1638992180");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_231_Enter,
    });
    self.box_MoonModifier_3 = cbox:CreateBox("Domino/System/MoonModifier.lua");
    l0 = self.box_MoonModifier_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MoonModifier_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1644349817");
    l0:SetConnections({
        -- OnSetMoonDirection,
        [4] = self.f_box_MoonModifier_3_OnSetMoonDirection,
        -- OnSetMoonPhase,
        [6] = self.f_box_MoonModifier_3_OnSetMoonPhase,
        -- OnSetMoonSize,
        [7] = self.f_box_MoonModifier_3_OnSetMoonSize,
    });
    self.box_MultipleAND_v2_260 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_260;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_260");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1683098888");
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
        [0] = self.f_box_MultipleAND_v2_260_Out,
    });
    self.box_SpawnAI_131 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_131;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_131");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1700311266");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_131_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_131_Spawned,
    });
    self.box_Music_Quest_v2_241 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_241;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_241");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1716530991");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_292 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_292;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_292");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1719713735");
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
                [0] = self.f_box_OnceOnly_v3_292_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_40 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1727658666");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_40_TimeElapsed,
    });
    self.box_Gate_v3_256 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_256;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_256");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1732476737");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_256_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_256_Out,
    });
    self.box_PlayDialog_v6_59 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1741721869");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_59_Finished,
    });
    self.box_SoundModifier_v2_181 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_181;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_181");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1760408370");
    l0:SetConnections({
    });
    self.box_MultipleOR_89 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_89");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1762395715");
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
        [0] = self.f_box_MultipleOR_89_Out,
    });
    self.box_MultipleOR_134 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_134;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_134");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1767094699");
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
        [0] = self.f_box_MultipleOR_134_Out,
    });
    self.box_PlayDialog_v6_49 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1769484622");
    l0:SetConnections({
    });
    self.box_Switch_160 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_160;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_160");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1788210981");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 14,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Switch_160_Output_0,
                [1] = self.f_box_Switch_160_Output_1,
                [2] = self.f_box_Switch_160_Output_2,
                [3] = self.f_box_Switch_160_Output_3,
                [4] = self.f_box_Switch_160_Output_4,
                [5] = self.f_box_Switch_160_Output_5,
                [6] = self.f_box_Switch_160_Output_6,
                [7] = self.f_box_Switch_160_Output_7,
                [8] = self.f_box_Switch_160_Output_8,
                [9] = self.f_box_Switch_160_Output_9,
                [10] = self.f_box_Switch_160_Output_10,
                [11] = self.f_box_Switch_160_Output_11,
                [12] = self.f_box_Switch_160_Output_12,
                [13] = self.f_box_Switch_160_Output_13,
            },
            count = 14,
        },
    });
    self.box_MultipleOR_75 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1798741424");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 5,
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
    self.box_Delay_v5_36 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1799456830");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_36_TimeElapsed,
    });
    self.box_Music_Quest_v2_243 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_243;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_243");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1826389177");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_178 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_178;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_178");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1831207237");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_178_Disabled,
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_178_SomeoneFar,
    });
    self.box_PersistentParticlesModifier_194 = cbox:CreateBox("Domino/System/Player/PersistentParticlesModifier.lua");
    l0 = self.box_PersistentParticlesModifier_194;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PersistentParticlesModifier_194");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1834031972");
    l0:SetConnections({
        -- OnStopParticles,
        [1] = self.f_box_PersistentParticlesModifier_194_OnStopParticles,
    });
    self.box_RemoveEntity_v2_125 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_125;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_125");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1847176618");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_125_Out,
    });
    self.box_PlayDialog_v6_138 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_138;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_138");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1850221758");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_138_Finished,
    });
    self.box_BonusPlanModifier_v3_239 = cbox:CreateBox("Domino/System/BonusPlanModifier_v3.lua");
    l0 = self.box_BonusPlanModifier_v3_239;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BonusPlanModifier_v3_239");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1865135912");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_BonusPlanModifier_v3_239_Added,
        -- AlreadyAdded,
        [1] = self.f_box_BonusPlanModifier_v3_239_AlreadyAdded,
    });
    self.box_MissionAckTriggerListener_33 = cbox:CreateBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
    l0 = self.box_MissionAckTriggerListener_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionAckTriggerListener_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1869023207");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_MissionAckTriggerListener_33_Enabled,
        -- Enter,
        [2] = self.f_box_MissionAckTriggerListener_33_Enter,
    });
    self.box_MultipleOR_255 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_255;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_255");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1890356693");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 11,
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
        [0] = self.f_box_MultipleOR_255_Out,
    });
    self.box_RequestPhoneCall_v2_61 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1907915695");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_61_Completed,
    });
    self.box_RestrictedItemModifier_v2_95 = cbox:CreateBox("Domino/System/RestrictedItemModifier_v2.lua");
    l0 = self.box_RestrictedItemModifier_v2_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RestrictedItemModifier_v2_95");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1913831184");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RestrictedItemModifier_v2_95_Out,
    });
    self.box_SoundModifier_v2_94 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_94");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1937548945");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_94_Started,
    });
    self.box_CharacterLoadedIdListener_v2_46 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1953930619");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_46_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_46_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_46_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_46_LoadedIdReceived,
    });
    self.box_PlayDialog_v6_141 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_141;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_141");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1957514669");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_141_Started,
    });
    self.box_PersistentParticlesModifier_284 = cbox:CreateBox("Domino/System/Player/PersistentParticlesModifier.lua");
    l0 = self.box_PersistentParticlesModifier_284;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PersistentParticlesModifier_284");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1961407465");
    l0:SetConnections({
        -- OnStartParticles,
        [0] = self.f_box_PersistentParticlesModifier_284_OnStartParticles,
    });
    self.box_Delay_v5_247 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_247;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_247");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1962230050");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_247_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_247_TimeElapsed,
    });
    self.box_MIS_025_RescuedSurvivors_24 = cbox:CreateBox("Domino/User/Bowmore_main/Bowmore_Activities/PLAYGO/MIS_025/MIS_025_Manager.MIS_025_RescuedSurvivors.debug.lua");
    l0 = self.box_MIS_025_RescuedSurvivors_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_025_RescuedSurvivors_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1977597130");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_286 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_286;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_286");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2005833086");
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
                [0] = self.f_box_OnceOnly_v3_286_Out_0,
            },
            count = 1,
        },
    });
    self.box_PlayDialog_v6_156 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_156;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_156");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2019011881");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_156_Started,
    });
    self.box_Delay_v5_35 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2023321965");
    l0:SetConnections({
        -- LoopingEnded,
        [0] = self.f_box_Delay_v5_35_LoopingEnded,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_35_TimeElapsed,
    });
    self.box_PlayDialog_v6_145 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_145;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_145");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2023947532");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_145_Started,
    });
    self.box_Delay_v5_172 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_172;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_172");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2029181976");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_172_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_172_TimeElapsed,
    });
    self.box_ProximityRadiusListener_v3_350 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_350;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_350");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2037614822");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_350_AllFar,
        -- AllNear,
        [1] = self.f_box_ProximityRadiusListener_v3_350_AllNear,
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_350_Disabled,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_350_Enabled,
    });
    self.box_MultipleOR_162 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_162;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_162");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2061567802");
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
        [0] = self.f_box_MultipleOR_162_Out,
    });
    self.box_PlayDialog_v6_65 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2065206008");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_65_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_65_FinishedInterrupted,
        -- StartedPriorityFailed,
        [5] = self.f_box_PlayDialog_v6_65_StartedPriorityFailed,
    });
    self.box_ProximityTrigger_v3_230 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_230;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_230");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2090899983");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_230_Enter,
    });
    self.box_PlayDialog_v6_51 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2093523516");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_51_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_51_FinishedInterrupted,
    });
    self.box_PlayDialog_v6_106 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_106");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2101510209");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_106_Finished,
        -- Started,
        [4] = self.f_box_PlayDialog_v6_106_Started,
    });
    self.box_MissionAckTriggerListener_349 = cbox:CreateBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
    l0 = self.box_MissionAckTriggerListener_349;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionAckTriggerListener_349");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2116819382");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_MissionAckTriggerListener_349_Enabled,
        -- Enter,
        [2] = self.f_box_MissionAckTriggerListener_349_Enter,
    });
    self.box_PersistentParticlesModifier_28 = cbox:CreateBox("Domino/System/Player/PersistentParticlesModifier.lua");
    l0 = self.box_PersistentParticlesModifier_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PersistentParticlesModifier_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2133834106");
    l0:SetConnections({
        -- OnStopParticles,
        [1] = self.f_box_PersistentParticlesModifier_28_OnStopParticles,
    });
    self.box_MultipleOR_48 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2137377422");
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
        [0] = self.f_box_MultipleOR_48_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_16();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|244232869", "244232869", "MIS_025_Manager", "In", "box_OutputOrder_v2_16.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_88_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_182();
    l0 = self.box_Gate_v3_182;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1840463053", "1840463053", "MIS_025_Manager", "box_Simple_Node_88.Out", "box_Gate_v3_182.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_ActivityAcknowledgeGate_17_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_17;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1673208427", "1673208427", "MIS_025_Manager", "box_ActivityAcknowledgeGate_17.Acknowledged", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_17_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_17;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1719632285", "1719632285", "MIS_025_Manager", "box_ActivityAcknowledgeGate_17.Reloaded", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_168_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_168;
    l1 = self.box_MultipleOR_158;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|194340303", "194340303", "MIS_025_Manager", "box_PlayDialog_v6_168.Started", "box_MultipleOR_158.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_GetPreconditionState_v2_30_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_70();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|803905215", "803905215", "MIS_025_Manager", "box_GetPreconditionState_v2_30.NotValid", "box_OutputOrder_v2_70.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_130_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_131();
    l0 = self.box_SpawnAI_130;
    l1 = self.box_SpawnAI_131;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|97310214", "97310214", "MIS_025_Manager", "box_SpawnAI_130.Out", "box_SpawnAI_131.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_130_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_209();
    l0 = self.box_SpawnAI_130;
    l1 = self.box_Bind_v4_209;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1187252928", "1187252928", "MIS_025_Manager", "box_SpawnAI_130.Spawned", "box_Bind_v4_209.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_159_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_154();
    l0 = self.box_Delay_v5_159;
    l1 = self.box_PlayDialog_v6_154;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1998941421", "1998941421", "MIS_025_Manager", "box_Delay_v5_159.Started", "box_PlayDialog_v6_154.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_159_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_123();
    l0 = self.box_Delay_v5_159;
    l1 = self.box_SpawnAI_123;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1305730150", "1305730150", "MIS_025_Manager", "box_Delay_v5_159.TimeElapsed", "box_SpawnAI_123.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_224_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_218();
    l0 = self.box_ProximityTrigger_v3_224;
    l1 = self.box_SoundModifier_v2_218;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1319925856", "1319925856", "MIS_025_Manager", "box_ProximityTrigger_v3_224.Enter", "box_SoundModifier_v2_218.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_PersistentParticlesModifier_288_OnStopParticles()
    local params, l0, l1;
    params = self:OnEnter_box_PersistentParticlesModifier_221();
    l0 = self.box_PersistentParticlesModifier_288;
    l1 = self.box_PersistentParticlesModifier_221;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1027211635", "1027211635", "MIS_025_Manager", "box_PersistentParticlesModifier_288.OnStopParticles", "box_PersistentParticlesModifier_221.StopParticles", l0:GetLuaBox(), l1:GetLuaBox());
    -- StopParticles
    l1:Exec(1, params);
end;

function export:f_box_MultipleAND_v2_278_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_257();
    l0 = self.box_MultipleAND_v2_278;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|117897092", "117897092", "MIS_025_Manager", "box_MultipleAND_v2_278.Out", "box_OutputOrder_v2_257.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_192_Received()
    local params, l0, l1;
    params = self:OnEnter_box_SetOasis_358();
    l0 = self.box_MessageListener_v3_192;
    l1 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|580628294", "580628294", "MIS_025_Manager", "box_MessageListener_v3_192.Received", "box_SetOasis_358.FromOasis", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromOasis
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetActivityFact_227_FactNotSet()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_226;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1829262284", "1829262284", "MIS_025_Manager", "box_GetActivityFact_227.FactNotSet", "box_MultipleOR_226.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RandomFloat_v2_143_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_143_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_148();
    l0 = self.box_Delay_v5_148;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1825456425", "1825456425", "MIS_025_Manager", "box_RandomFloat_v2_143.Out", "box_Delay_v5_148.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_41_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MIS_025_RescuedSurvivors_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1002319249", "1002319249", "MIS_025_Manager", "box_OutputOrder_v2_41.Out", "box_MIS_025_RescuedSurvivors_24.SurvivorsStartSetup", clone:GetLuaBox(), l0:GetLuaBox());
    -- SurvivorsStartSetup
    l0:Exec(3, {
    });
end;

function export:f_box_OutputOrder_v2_41_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PersistentParticlesModifier_198();
    l0 = self.box_PersistentParticlesModifier_198;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|921747312", "921747312", "MIS_025_Manager", "box_OutputOrder_v2_41.Out", "box_PersistentParticlesModifier_198.StartParticles", clone:GetLuaBox(), l0:GetLuaBox());
    -- StartParticles
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_41_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_126();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1777221218", "1777221218", "MIS_025_Manager", "box_OutputOrder_v2_41.Out", "box_UseContextualActionModifier_v3_126.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_92_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_38();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|61620679", "61620679", "MIS_025_Manager", "box_AddActivityObjective_v2_92.Out", "box_OutputOrder_v2_38.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsPawnAlive_v3_72_Alive()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_76();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|120731827", "120731827", "MIS_025_Manager", "box_IsPawnAlive_v3_72.Alive", "box_SetEntity_v2_76.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsPawnAlive_v3_72_DeadOrDown()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|923263274", "923263274", "MIS_025_Manager", "box_IsPawnAlive_v3_72.DeadOrDown", "box_MultipleOR_75.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_IsPawnAlive_v3_72_NotLoaded()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1071484927", "1071484927", "MIS_025_Manager", "box_IsPawnAlive_v3_72.NotLoaded", "box_MultipleOR_75.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_PlayDialog_v6_166_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_166;
    l1 = self.box_MultipleOR_158;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|156260624", "156260624", "MIS_025_Manager", "box_PlayDialog_v6_166.Started", "box_MultipleOR_158.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_244_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_244;
    l1 = self.box_OnceOnly_v3_245;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1156130963", "1156130963", "MIS_025_Manager", "box_MultipleOR_244.Out", "box_OnceOnly_v3_245.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MoonModifier_29_OnResetMoonDirection()
    local params, l0;
    params = self:OnEnter_box_MoonModifier_29();
    l0 = self.box_MoonModifier_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1097193841", "1097193841", "MIS_025_Manager", "box_MoonModifier_29.OnResetMoonDirection", "box_MoonModifier_29.ResetMoonSize", l0:GetLuaBox(), l0:GetLuaBox());
    -- ResetMoonSize
    l0:Exec(3, params);
end;

function export:f_box_MoonModifier_29_OnResetMoonPhase()
    local params, l0, l1;
    params = self:OnEnter_box_BonusPlanModifier_v3_47();
    l0 = self.box_MoonModifier_29;
    l1 = self.box_BonusPlanModifier_v3_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|623500610", "623500610", "MIS_025_Manager", "box_MoonModifier_29.OnResetMoonPhase", "box_BonusPlanModifier_v3_47.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(1, params);
end;

function export:f_box_MoonModifier_29_OnResetMoonSize()
    local params, l0;
    params = self:OnEnter_box_MoonModifier_29();
    l0 = self.box_MoonModifier_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|709495276", "709495276", "MIS_025_Manager", "box_MoonModifier_29.OnResetMoonSize", "box_MoonModifier_29.ResetMoonPhase", l0:GetLuaBox(), l0:GetLuaBox());
    -- ResetMoonPhase
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_9_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_9;
    l1 = self.box_ActivityInitialized_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|413413029", "413413029", "MIS_025_Manager", "box_MultipleOR_9.Out", "box_ActivityInitialized_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_PersistentParticlesModifier_193_OnStartParticles()
    local params, l0, l1;
    params = self:OnEnter_box_PersistentParticlesModifier_194();
    l0 = self.box_PersistentParticlesModifier_193;
    l1 = self.box_PersistentParticlesModifier_194;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1095578892", "1095578892", "MIS_025_Manager", "box_PersistentParticlesModifier_193.OnStartParticles", "box_PersistentParticlesModifier_194.StopParticles", l0:GetLuaBox(), l1:GetLuaBox());
    -- StopParticles
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_31_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_v2_30();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1698676041", "1698676041", "MIS_025_Manager", "box_OutputOrder_v2_31.Out", "box_GetPreconditionState_v2_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_v2_23();
    l0 = self.box_PreconditionListener_v2_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|777061914", "777061914", "MIS_025_Manager", "box_OutputOrder_v2_31.Out", "box_PreconditionListener_v2_23.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_31_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MIS_025_RescuedSurvivors_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|921869290", "921869290", "MIS_025_Manager", "box_OutputOrder_v2_31.Out", "box_MIS_025_RescuedSurvivors_24.ArmoryDoorManager", clone:GetLuaBox(), l0:GetLuaBox());
    -- ArmoryDoorManager
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_31_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_184();
    l0 = self.box_EntityStatusListener_184;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1892238010", "1892238010", "MIS_025_Manager", "box_OutputOrder_v2_31.Out", "box_EntityStatusListener_184.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_31_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PersistentParticlesModifier_100();
    l0 = self.box_PersistentParticlesModifier_100;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1976997129", "1976997129", "MIS_025_Manager", "box_OutputOrder_v2_31.Out", "box_PersistentParticlesModifier_100.StopParticles", clone:GetLuaBox(), l0:GetLuaBox());
    -- StopParticles
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_31_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_69();
    l0 = self.box_Delay_v5_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|737843505", "737843505", "MIS_025_Manager", "box_OutputOrder_v2_31.Out", "box_Delay_v5_69.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_31_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_v2_272();
    l0 = self.box_PreconditionListener_v2_272;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1099716658", "1099716658", "MIS_025_Manager", "box_OutputOrder_v2_31.Out", "box_PreconditionListener_v2_272.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_31_Out_8()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MIS_025_RescuedSurvivors_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|556389188", "556389188", "MIS_025_Manager", "box_OutputOrder_v2_31.Out", "box_MIS_025_RescuedSurvivors_24.Enable_Diags_B20_Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable_Diags_B20_Start
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_31_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_213();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|282709063", "282709063", "MIS_025_Manager", "box_OutputOrder_v2_31.Out", "box_OutputOrder_v2_213.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_207();
    l0 = self.box_Delay_v5_207;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1135181473", "1135181473", "MIS_025_Manager", "box_OutputOrder_v2_31.Out", "box_Delay_v5_207.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_31_Out_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_243();
    l0 = self.box_Music_Quest_v2_243;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|893836022", "893836022", "MIS_025_Manager", "box_OutputOrder_v2_31.Out", "box_Music_Quest_v2_243.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_154_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_36();
    l0 = self.box_PlayDialog_v6_154;
    l1 = self.box_Delay_v5_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|139765911", "139765911", "MIS_025_Manager", "box_PlayDialog_v6_154.Finished", "box_Delay_v5_36.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_154_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_40();
    l0 = self.box_PlayDialog_v6_154;
    l1 = self.box_Delay_v5_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|563609724", "563609724", "MIS_025_Manager", "box_PlayDialog_v6_154.Started", "box_Delay_v5_40.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_TeleportPawns_15_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_96();
    l0 = self.box_TeleportPawns_15;
    l1 = self.box_Delay_v5_96;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|562409253", "562409253", "MIS_025_Manager", "box_TeleportPawns_15.Out", "box_Delay_v5_96.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v3_236_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_235();
    l0 = self.box_ProximityTrigger_v3_236;
    l1 = self.box_SoundModifier_v2_235;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|471594510", "471594510", "MIS_025_Manager", "box_ProximityTrigger_v3_236.Enter", "box_SoundModifier_v2_235.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_83_Started()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_91;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1436686949", "1436686949", "MIS_025_Manager", "box_ParticleSystem_v3_83.Started", "box_MultipleOR_91.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_TaggingModifier_v3_189_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_TaggingModifier_v3_189();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|863801342", "863801342", "MIS_025_Manager", "box_TaggingModifier_v3_189.Enabled", "box_TaggingModifier_v3_189.TagEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- TagEntity
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_356_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_345();
    l0 = self.box_SoundModifier_v2_345;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1090459771", "1090459771", "MIS_025_Manager", "box_ParticleSystem_v3_356.Started", "box_SoundModifier_v2_345.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_335_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_138();
    l0 = self.box_Delay_v5_335;
    l1 = self.box_PlayDialog_v6_138;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1269536854", "1269536854", "MIS_025_Manager", "box_Delay_v5_335.TimeElapsed", "box_PlayDialog_v6_138.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PersistentParticlesModifier_222_OnStopParticles()
    local params, l0, l1;
    params = self:OnEnter_box_PersistentParticlesModifier_220();
    l0 = self.box_PersistentParticlesModifier_222;
    l1 = self.box_PersistentParticlesModifier_220;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|372656338", "372656338", "MIS_025_Manager", "box_PersistentParticlesModifier_222.OnStopParticles", "box_PersistentParticlesModifier_220.StopParticles", l0:GetLuaBox(), l1:GetLuaBox());
    -- StopParticles
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_91_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_91;
    l1 = self.box_MultipleOR_89;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1380602517", "1380602517", "MIS_025_Manager", "box_MultipleOR_91.Out", "box_MultipleOR_89.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_265_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MIS_025_RescuedSurvivors_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1284485187", "1284485187", "MIS_025_Manager", "box_OutputOrder_v2_265.Out", "box_MIS_025_RescuedSurvivors_24.SpawnRescuedSurvivorsOnReload", clone:GetLuaBox(), l0:GetLuaBox());
    -- SpawnRescuedSurvivorsOnReload
    l0:Exec(2, {
    });
end;

function export:f_box_OutputOrder_v2_265_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_46();
    l0 = self.box_CharacterLoadedIdListener_v2_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1443769244", "1443769244", "MIS_025_Manager", "box_OutputOrder_v2_265.Out", "box_CharacterLoadedIdListener_v2_46.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_265_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_223();
    l0 = self.box_CharacterLoadedIdListener_v2_223;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|598534350", "598534350", "MIS_025_Manager", "box_OutputOrder_v2_265.Out", "box_CharacterLoadedIdListener_v2_223.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_265_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_112();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|448576270", "448576270", "MIS_025_Manager", "box_OutputOrder_v2_265.Out", "box_OverrideDisabledLogicId_112.HudGunsForHire", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudGunsForHire
    l0:Exec(12, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_164_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_164;
    l1 = self.box_MultipleOR_158;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|350220081", "350220081", "MIS_025_Manager", "box_PlayDialog_v6_164.Started", "box_MultipleOR_158.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 10);
end;

function export:f_box_PreconditionListener_v2_272_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MessageListener_v3_215();
    l0 = self.box_PreconditionListener_v2_272;
    l1 = self.box_MessageListener_v3_215;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1670238736", "1670238736", "MIS_025_Manager", "box_PreconditionListener_v2_272.Enabled", "box_MessageListener_v3_215.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PreconditionListener_v2_272_PreconditionMet()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_294();
    l0 = self.box_PreconditionListener_v2_272;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1755310999", "1755310999", "MIS_025_Manager", "box_PreconditionListener_v2_272.PreconditionMet", "box_OutputOrder_v2_294.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_InputPriorityModifier_v4_150_OnRelease()
    local params, l0, l1;
    params = self:OnEnter_box_PlayerSpeedModifier_v3_151();
    l0 = self.box_InputPriorityModifier_v4_150;
    l1 = self.box_PlayerSpeedModifier_v3_151;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|885915666", "885915666", "MIS_025_Manager", "box_InputPriorityModifier_v4_150.OnRelease", "box_PlayerSpeedModifier_v3_151.ApplySpeedFactor", l0:GetLuaBox(), l1:GetLuaBox());
    -- ApplySpeedFactor
    l1:Exec(0, params);
end;

function export:f_box_PersistentParticlesModifier_100_OnStopParticles()
    local params, l0, l1;
    params = self:OnEnter_box_PersistentParticlesModifier_99();
    l0 = self.box_PersistentParticlesModifier_100;
    l1 = self.box_PersistentParticlesModifier_99;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|205302744", "205302744", "MIS_025_Manager", "box_PersistentParticlesModifier_100.OnStopParticles", "box_PersistentParticlesModifier_99.StartParticles", l0:GetLuaBox(), l1:GetLuaBox());
    -- StartParticles
    l1:Exec(0, params);
end;

function export:f_box_BonusPlanModifier_v3_47_AlreadyRemoved()
    local l0, l1;
    l0 = self.box_BonusPlanModifier_v3_47;
    l1 = self.box_MultipleOR_244;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1130592304", "1130592304", "MIS_025_Manager", "box_BonusPlanModifier_v3_47.AlreadyRemoved", "box_MultipleOR_244.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_BonusPlanModifier_v3_47_Removed()
    local l0, l1;
    l0 = self.box_BonusPlanModifier_v3_47;
    l1 = self.box_MultipleOR_244;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|157783651", "157783651", "MIS_025_Manager", "box_BonusPlanModifier_v3_47.Removed", "box_MultipleOR_244.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RemoveEntity_v2_360_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_93();
    l0 = self.box_RemoveEntity_v2_360;
    l1 = self.box_Gate_v3_93;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|455920845", "455920845", "MIS_025_Manager", "box_RemoveEntity_v2_360.Out", "box_Gate_v3_93.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_SetOasis_107_Out()
    local params, l0;
    self:OnExit_box_SetOasis_107_Out();
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_92();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1653324717", "1653324717", "MIS_025_Manager", "box_SetOasis_107.Out", "box_AddActivityObjective_v2_92.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionAckTriggerListener_277_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_278();
    l0 = self.box_MissionAckTriggerListener_277;
    l1 = self.box_MultipleAND_v2_278;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|896913861", "896913861", "MIS_025_Manager", "box_MissionAckTriggerListener_277.Enter", "box_MultipleAND_v2_278.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_SpawnAI_132_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_342();
    l0 = self.box_SpawnAI_132;
    l1 = self.box_SpawnAI_342;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|947037479", "947037479", "MIS_025_Manager", "box_SpawnAI_132.Out", "box_SpawnAI_342.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_132_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_211();
    l0 = self.box_SpawnAI_132;
    l1 = self.box_Bind_v4_211;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|705028498", "705028498", "MIS_025_Manager", "box_SpawnAI_132.Spawned", "box_Bind_v4_211.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v3_214_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_217();
    l0 = self.box_ProximityTrigger_v3_214;
    l1 = self.box_SoundModifier_v2_217;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|517088539", "517088539", "MIS_025_Manager", "box_ProximityTrigger_v3_214.Enter", "box_SoundModifier_v2_217.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_245_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PersistentParticlesModifier_288();
    l0 = self.box_OnceOnly_v3_245;
    l1 = self.box_PersistentParticlesModifier_288;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|34399257", "34399257", "MIS_025_Manager", "box_OnceOnly_v3_245.Out", "box_PersistentParticlesModifier_288.StopParticles", l0:GetLuaBox(), l1:GetLuaBox());
    -- StopParticles
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_27_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_249();
    l0 = self.box_MultipleOR_27;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1776513384", "1776513384", "MIS_025_Manager", "box_MultipleOR_27.Out", "box_OutputOrder_v2_249.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_273_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PersistentParticlesModifier_193();
    l0 = self.box_OnceOnly_v3_273;
    l1 = self.box_PersistentParticlesModifier_193;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1326259636", "1326259636", "MIS_025_Manager", "box_OnceOnly_v3_273.Out", "box_PersistentParticlesModifier_193.StartParticles", l0:GetLuaBox(), l1:GetLuaBox());
    -- StartParticles
    l1:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_205_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_205_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_291();
    l0 = self.box_Delay_v5_291;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2133034639", "2133034639", "MIS_025_Manager", "box_SetBoolean_v2_205.Out", "box_Delay_v5_291.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_158_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_158;
    l1 = self.box_MultipleOR_162;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1179861726", "1179861726", "MIS_025_Manager", "box_MultipleOR_158.Out", "box_MultipleOR_162.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ForceExitVehicle_v2_118_ForceExitted()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_360();
    l0 = self.box_RemoveEntity_v2_360;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|638778860", "638778860", "MIS_025_Manager", "box_ForceExitVehicle_v2_118.ForceExitted", "box_RemoveEntity_v2_360.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_MissionAckTriggerListener_275_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MessageListener_v3_192();
    l0 = self.box_MissionAckTriggerListener_275;
    l1 = self.box_MessageListener_v3_192;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1877425829", "1877425829", "MIS_025_Manager", "box_MissionAckTriggerListener_275.Enabled", "box_MessageListener_v3_192.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MissionAckTriggerListener_275_Enter()
    local l0, l1;
    l0 = self.box_MissionAckTriggerListener_275;
    l1 = self.box_MultipleOR_169;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1092176122", "1092176122", "MIS_025_Manager", "box_MissionAckTriggerListener_275.Enter", "box_MultipleOR_169.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Delay_v5_337_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_139();
    l0 = self.box_Delay_v5_337;
    l1 = self.box_PlayDialog_v6_139;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|876914694", "876914694", "MIS_025_Manager", "box_Delay_v5_337.TimeElapsed", "box_PlayDialog_v6_139.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_43_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_44();
    l0 = self.box_MultipleOR_43;
    l1 = self.box_PlayDialog_v6_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|450774203", "450774203", "MIS_025_Manager", "box_MultipleOR_43.Out", "box_PlayDialog_v6_44.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_361_Stopped()
    local l0, l1;
    l0 = self.box_Delay_v5_361;
    l1 = self.box_OnceOnly_v3_135;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|783838781", "783838781", "MIS_025_Manager", "box_Delay_v5_361.Stopped", "box_OnceOnly_v3_135.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_361_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_361;
    l1 = self.box_MultipleOR_134;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|809295017", "809295017", "MIS_025_Manager", "box_Delay_v5_361.TimeElapsed", "box_MultipleOR_134.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_276_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_174();
    l0 = self.box_SpawnAI_276;
    l1 = self.box_SpawnAI_174;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1773127798", "1773127798", "MIS_025_Manager", "box_SpawnAI_276.Out", "box_SpawnAI_174.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_39_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_190();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|789802382", "789802382", "MIS_025_Manager", "box_ActivityObjectiveMarkerModifier_v3_39.Enabled", "box_OutputOrder_v2_190.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_148_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_163();
    l0 = self.box_Delay_v5_148;
    l1 = self.box_Gate_v3_163;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|120625762", "120625762", "MIS_025_Manager", "box_Delay_v5_148.TimeElapsed", "box_Gate_v3_163.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ForceExitVehicle_v2_115_ForceExitted()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ForceExitVehicle_v2_116();
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1043011616", "1043011616", "MIS_025_Manager", "box_ForceExitVehicle_v2_115.ForceExitted", "box_ForceExitVehicle_v2_116.ForceExit", clone:GetLuaBox(), l0:GetLuaBox());
    -- ForceExit
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_167_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_167;
    l1 = self.box_MultipleOR_158;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|467410312", "467410312", "MIS_025_Manager", "box_PlayDialog_v6_167.Started", "box_MultipleOR_158.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_MissionBlockLayer_196_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_71();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1203072715", "1203072715", "MIS_025_Manager", "box_MissionBlockLayer_196.Activated", "box_MissionBlockLayer_71.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_v2_223_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_v2_223_LoadedIdReceived();
    params = self:OnEnter_box_MultipleAND_v2_260();
    l0 = self.box_CharacterLoadedIdListener_v2_223;
    l1 = self.box_MultipleAND_v2_260;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1744060550", "1744060550", "MIS_025_Manager", "box_CharacterLoadedIdListener_v2_223.LoadedIdReceived", "box_MultipleAND_v2_260.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_ProximityRadiusListener_v3_52_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableBreaker_53();
    l0 = self.box_ProximityRadiusListener_v3_52;
    l1 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1681574825", "1681574825", "MIS_025_Manager", "box_ProximityRadiusListener_v3_52.SomeoneNear", "box_StaticBreakableBreaker_53.Destroy", l0:GetLuaBox(), l1:GetLuaBox());
    -- Destroy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_120_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideEnvironment_v3_12();
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|579816047", "579816047", "MIS_025_Manager", "box_OutputOrder_v2_120.Out", "box_OverrideEnvironment_v3_12.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RandomFloat_v2_80_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_80_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_81();
    l0 = self.box_Delay_v5_81;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1483586307", "1483586307", "MIS_025_Manager", "box_RandomFloat_v2_80.Out", "box_Delay_v5_81.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_EntityStatusListener_184_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MissionAckTriggerListener_275();
    l0 = self.box_EntityStatusListener_184;
    l1 = self.box_MissionAckTriggerListener_275;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|41383933", "41383933", "MIS_025_Manager", "box_EntityStatusListener_184.Enabled", "box_MissionAckTriggerListener_275.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_184_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MissionAckTriggerListener_173();
    l0 = self.box_EntityStatusListener_184;
    l1 = self.box_MissionAckTriggerListener_173;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|339739671", "339739671", "MIS_025_Manager", "box_EntityStatusListener_184.Loaded", "box_MissionAckTriggerListener_173.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_129_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_159();
    l0 = self.box_Delay_v5_159;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2066763988", "2066763988", "MIS_025_Manager", "box_UseContextualActionModifier_v3_129.Enabled", "box_Delay_v5_159.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SetEntity_v2_76_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_76_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|390824092", "390824092", "MIS_025_Manager", "box_SetEntity_v2_76.Out", "box_MultipleOR_63.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MissionAckTriggerListener_133_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_361();
    l0 = self.box_MissionAckTriggerListener_133;
    l1 = self.box_Delay_v5_361;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|467585329", "467585329", "MIS_025_Manager", "box_MissionAckTriggerListener_133.Disabled", "box_Delay_v5_361.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_MissionAckTriggerListener_133_Enter()
    local l0, l1;
    l0 = self.box_MissionAckTriggerListener_133;
    l1 = self.box_MultipleOR_134;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1482319878", "1482319878", "MIS_025_Manager", "box_MissionAckTriggerListener_133.Enter", "box_MultipleOR_134.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_AddActivityObjective_v2_357_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_39();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|470163883", "470163883", "MIS_025_Manager", "box_AddActivityObjective_v2_357.Out", "box_ActivityObjectiveMarkerModifier_v3_39.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_188_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_188;
    l1 = self.box_OnceOnly_v3_200;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|485627065", "485627065", "MIS_025_Manager", "box_MultipleOR_188.Out", "box_OnceOnly_v3_200.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_38_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_37();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1368467184", "1368467184", "MIS_025_Manager", "box_OutputOrder_v2_38.Out", "box_GetActivityState_v2_37.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_19_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_19;
    l1 = self.box_MultipleOR_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|747498215", "747498215", "MIS_025_Manager", "box_PlayDialog_v6_19.Finished", "box_MultipleOR_48.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_19_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_19;
    l1 = self.box_MultipleOR_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|548615865", "548615865", "MIS_025_Manager", "box_PlayDialog_v6_19.FinishedInterrupted", "box_MultipleOR_48.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_19_StartedPriorityFailed()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_19;
    l1 = self.box_MultipleOR_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2038757515", "2038757515", "MIS_025_Manager", "box_PlayDialog_v6_19.StartedPriorityFailed", "box_MultipleOR_48.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_253_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_253;
    l1 = self.box_MultipleOR_255;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1427042891", "1427042891", "MIS_025_Manager", "box_PlayDialog_v6_253.Finished", "box_MultipleOR_255.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_PlayDialog_v6_253_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_253;
    l1 = self.box_MultipleOR_255;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|478737299", "478737299", "MIS_025_Manager", "box_PlayDialog_v6_253.FinishedInterrupted", "box_MultipleOR_255.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 6);
end;

function export:f_box_PersistentParticlesModifier_102_OnStartParticles()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_119();
    l0 = self.box_PersistentParticlesModifier_102;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|402730241", "402730241", "MIS_025_Manager", "box_PersistentParticlesModifier_102.OnStartParticles", "box_OutputOrder_v2_119.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OverrideEnvironment_v3_12_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_v2_121();
    l0 = self.box_PreconditionListener_v2_121;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1723402291", "1723402291", "MIS_025_Manager", "box_OverrideEnvironment_v3_12.Enabled", "box_PreconditionListener_v2_121.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_165_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_165;
    l1 = self.box_MultipleOR_158;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1814661564", "1814661564", "MIS_025_Manager", "box_PlayDialog_v6_165.Started", "box_MultipleOR_158.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 12);
end;

function export:f_box_ParticleSystem_v3_86_Started()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_91;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|532825773", "532825773", "MIS_025_Manager", "box_ParticleSystem_v3_86.Started", "box_MultipleOR_91.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_PersistentParticlesModifier_221_OnStopParticles()
    local params, l0, l1;
    params = self:OnEnter_box_PersistentParticlesModifier_222();
    l0 = self.box_PersistentParticlesModifier_221;
    l1 = self.box_PersistentParticlesModifier_222;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2107189351", "2107189351", "MIS_025_Manager", "box_PersistentParticlesModifier_221.OnStopParticles", "box_PersistentParticlesModifier_222.StopParticles", l0:GetLuaBox(), l1:GetLuaBox());
    -- StopParticles
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_68_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_68;
    l1 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1336512931", "1336512931", "MIS_025_Manager", "box_PlayDialog_v6_68.Finished", "box_MultipleOR_27.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_68_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_68;
    l1 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|566153116", "566153116", "MIS_025_Manager", "box_PlayDialog_v6_68.FinishedInterrupted", "box_MultipleOR_27.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_190_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_113();
    l0 = self.box_MessageListener_v3_113;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1417952369", "1417952369", "MIS_025_Manager", "box_OutputOrder_v2_190.Out", "box_MessageListener_v3_113.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_190_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BonusPlanModifier_v3_239();
    l0 = self.box_BonusPlanModifier_v3_239;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1971260377", "1971260377", "MIS_025_Manager", "box_OutputOrder_v2_190.Out", "box_BonusPlanModifier_v3_239.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_69_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetOasis_107();
    l0 = self.box_Delay_v5_69;
    l1 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|492704989", "492704989", "MIS_025_Manager", "box_Delay_v5_69.TimeElapsed", "box_SetOasis_107.FromOasis", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromOasis
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_294_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_227();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1506540776", "1506540776", "MIS_025_Manager", "box_OutputOrder_v2_294.Out", "box_GetActivityFact_227.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_294_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_225();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|298222788", "298222788", "MIS_025_Manager", "box_OutputOrder_v2_294.Out", "box_GetActivityFact_225.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_240_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_241();
    l0 = self.box_Music_Quest_v2_241;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|464550260", "464550260", "MIS_025_Manager", "box_OutputOrder_v2_240.Out", "box_Music_Quest_v2_241.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_240_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_v2_177();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2057835292", "2057835292", "MIS_025_Manager", "box_OutputOrder_v2_240.Out", "box_ActivityRetry_v2_177.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_246_Out()
    local params, l0, l1;
    params = self:OnEnter_box_TaggingModifier_v3_189();
    l0 = self.box_MultipleOR_246;
    l1 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|106505589", "106505589", "MIS_025_Manager", "box_MultipleOR_246.Out", "box_TaggingModifier_v3_189.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2066657222", "2066657222", "MIS_025_Manager", "box_OutputOrder_v2_16.Out", "box_ActivityAcknowledgeGate_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_16_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_14();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|394262886", "394262886", "MIS_025_Manager", "box_OutputOrder_v2_16.Out", "box_Print_v2_14.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetTimeOfDay_11();
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|857377408", "857377408", "MIS_025_Manager", "box_OutputOrder_v2_16.Out", "box_SetTimeOfDay_11.SetTimeOfDay", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeOfDay
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_13_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InputPriorityModifier_v4_150();
    l0 = self.box_ActivityInitialized_13;
    l1 = self.box_InputPriorityModifier_v4_150;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|443251786", "443251786", "MIS_025_Manager", "box_ActivityInitialized_13.Out", "box_InputPriorityModifier_v4_150.Release", l0:GetLuaBox(), l1:GetLuaBox());
    -- Release
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_85_Started()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_91;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|659236201", "659236201", "MIS_025_Manager", "box_ParticleSystem_v3_85.Started", "box_MultipleOR_91.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_77_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_55();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1876439238", "1876439238", "MIS_025_Manager", "box_OutputOrder_v2_77.Out", "box_ParticleSystem_v3_55.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_77_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_35();
    l0 = self.box_Delay_v5_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1599646265", "1599646265", "MIS_025_Manager", "box_OutputOrder_v2_77.Out", "box_Delay_v5_35.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_139_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_339();
    l0 = self.box_PlayDialog_v6_139;
    l1 = self.box_Delay_v5_339;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1425052429", "1425052429", "MIS_025_Manager", "box_PlayDialog_v6_139.Finished", "box_Delay_v5_339.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_42_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_45();
    l0 = self.box_MultipleOR_42;
    l1 = self.box_PlayDialog_v6_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1006280712", "1006280712", "MIS_025_Manager", "box_MultipleOR_42.Out", "box_PlayDialog_v6_45.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_251_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_251;
    l1 = self.box_MultipleOR_255;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1375577800", "1375577800", "MIS_025_Manager", "box_PlayDialog_v6_251.Finished", "box_MultipleOR_255.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_251_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_251;
    l1 = self.box_MultipleOR_255;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1323685542", "1323685542", "MIS_025_Manager", "box_PlayDialog_v6_251.FinishedInterrupted", "box_MultipleOR_255.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PreconditionListener_v2_121_PreconditionMet()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideEnvironment_v3_122();
    l0 = self.box_PreconditionListener_v2_121;
    l1 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|937080330", "937080330", "MIS_025_Manager", "box_PreconditionListener_v2_121.PreconditionMet", "box_OverrideEnvironment_v3_122.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_FastTravelModifier_v2_4_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_265();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1104049983", "1104049983", "MIS_025_Manager", "box_FastTravelModifier_v2_4.Disabled", "box_OutputOrder_v2_265.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_348_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_130();
    l0 = self.box_SpawnAI_130;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|202031095", "202031095", "MIS_025_Manager", "box_OutputOrder_v2_348.Out", "box_SpawnAI_130.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_348_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_356();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2116849729", "2116849729", "MIS_025_Manager", "box_OutputOrder_v2_348.Out", "box_ParticleSystem_v3_356.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_348_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_32();
    l0 = self.box_Delay_v5_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1706966853", "1706966853", "MIS_025_Manager", "box_OutputOrder_v2_348.Out", "box_Delay_v5_32.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_199_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_183();
    l0 = self.box_OnceOnly_v3_199;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|790111055", "790111055", "MIS_025_Manager", "box_OnceOnly_v3_199.Out", "box_SetActivityFact_183.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_82_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_83();
    l0 = self.box_Random_82;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|236521814", "236521814", "MIS_025_Manager", "box_Random_82.Output", "box_ParticleSystem_v3_83.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_82_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_84();
    l0 = self.box_Random_82;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|335359500", "335359500", "MIS_025_Manager", "box_Random_82.Output", "box_ParticleSystem_v3_84.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_82_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_85();
    l0 = self.box_Random_82;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1907300783", "1907300783", "MIS_025_Manager", "box_Random_82.Output", "box_ParticleSystem_v3_85.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_82_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_86();
    l0 = self.box_Random_82;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2123222920", "2123222920", "MIS_025_Manager", "box_Random_82.Output", "box_ParticleSystem_v3_86.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_82_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_87();
    l0 = self.box_Random_82;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|142529218", "142529218", "MIS_025_Manager", "box_Random_82.Output", "box_ParticleSystem_v3_87.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_249_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_278();
    l0 = self.box_MultipleAND_v2_278;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|232281180", "232281180", "MIS_025_Manager", "box_OutputOrder_v2_249.Out", "box_MultipleAND_v2_278.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_249_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_255;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|581185120", "581185120", "MIS_025_Manager", "box_OutputOrder_v2_249.Out", "box_MultipleOR_255.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Gate_v3_93_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_82();
    l0 = self.box_Gate_v3_93;
    l1 = self.box_Random_82;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|314539255", "314539255", "MIS_025_Manager", "box_Gate_v3_93.Out", "box_Random_82.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_206_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_172();
    l0 = self.box_MultipleOR_206;
    l1 = self.box_Delay_v5_172;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|91749112", "91749112", "MIS_025_Manager", "box_MultipleOR_206.Out", "box_Delay_v5_172.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_MultipleOR_226_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_226;
    l1 = self.box_OnceOnly_v3_273;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|699199680", "699199680", "MIS_025_Manager", "box_MultipleOR_226.Out", "box_OnceOnly_v3_273.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_291_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_203();
    l0 = self.box_Delay_v5_291;
    l1 = self.box_RequestPhoneCall_v2_203;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1692773916", "1692773916", "MIS_025_Manager", "box_Delay_v5_291.TimeElapsed", "box_RequestPhoneCall_v2_203.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_176_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetActivityFact_171();
    l0 = self.box_MultipleOR_176;
    l1 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2087499451", "2087499451", "MIS_025_Manager", "box_MultipleOR_176.Out", "box_GetActivityFact_171.GetFact", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetFact
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_248_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_256();
    l0 = self.box_Delay_v5_248;
    l1 = self.box_Gate_v3_256;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|156470555", "156470555", "MIS_025_Manager", "box_Delay_v5_248.TimeElapsed", "box_Gate_v3_256.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_200_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_34();
    l0 = self.box_OnceOnly_v3_200;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1085132036", "1085132036", "MIS_025_Manager", "box_OnceOnly_v3_200.Out", "box_ActivityObjectiveMarkerModifier_v3_34.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_197_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_170();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|639755358", "639755358", "MIS_025_Manager", "box_OutputOrder_v2_197.Out", "box_GetActivityFact_170.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_197_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_226;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|814867079", "814867079", "MIS_025_Manager", "box_OutputOrder_v2_197.Out", "box_MultipleOR_226.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_258_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_258;
    l1 = self.box_MultipleOR_255;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1480317283", "1480317283", "MIS_025_Manager", "box_PlayDialog_v6_258.Finished", "box_MultipleOR_255.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 9);
end;

function export:f_box_PlayDialog_v6_258_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_258;
    l1 = self.box_MultipleOR_255;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|808340390", "808340390", "MIS_025_Manager", "box_PlayDialog_v6_258.FinishedInterrupted", "box_MultipleOR_255.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 10);
end;

function export:f_box_Delay_v5_81_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_93();
    l0 = self.box_Delay_v5_81;
    l1 = self.box_Gate_v3_93;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|799076281", "799076281", "MIS_025_Manager", "box_Delay_v5_81.TimeElapsed", "box_Gate_v3_93.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_90_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_208();
    l0 = self.box_ProximityTrigger_v3_90;
    l1 = self.box_SoundModifier_v2_208;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1891687046", "1891687046", "MIS_025_Manager", "box_ProximityTrigger_v3_90.Enter", "box_SoundModifier_v2_208.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_RestrictedItemModifier_v2_97_Out()
    local params, l0, l1;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_26();
    l0 = self.box_RestrictedItemModifier_v2_97;
    l1 = self.box_CHEAT_SetEnvironmentTimeScale_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|792761131", "792761131", "MIS_025_Manager", "box_RestrictedItemModifier_v2_97.Out", "box_CHEAT_SetEnvironmentTimeScale_26.SetTimeScale", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeScale
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_137_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_68();
    l0 = self.box_MultipleOR_137;
    l1 = self.box_PlayDialog_v6_68;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|273465297", "273465297", "MIS_025_Manager", "box_MultipleOR_137.Out", "box_PlayDialog_v6_68.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_128_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_129();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|75011497", "75011497", "MIS_025_Manager", "box_UseContextualActionModifier_v3_128.Disabled", "box_UseContextualActionModifier_v3_129.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_128_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_129();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2081161435", "2081161435", "MIS_025_Manager", "box_UseContextualActionModifier_v3_128.Enabled", "box_UseContextualActionModifier_v3_129.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetActivityFact_170_FactNotSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_289();
    l0 = self.box_SpawnAI_289;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2056281134", "2056281134", "MIS_025_Manager", "box_GetActivityFact_170.FactNotSet", "box_SpawnAI_289.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_334_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_59();
    l0 = self.box_Delay_v5_334;
    l1 = self.box_PlayDialog_v6_59;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|29979282", "29979282", "MIS_025_Manager", "box_Delay_v5_334.TimeElapsed", "box_PlayDialog_v6_59.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_87_Started()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_91;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1200451116", "1200451116", "MIS_025_Manager", "box_ParticleSystem_v3_87.Started", "box_MultipleOR_91.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_DynamicLightModifier_58_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_60();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1913517261", "1913517261", "MIS_025_Manager", "box_DynamicLightModifier_58.Enabled", "box_DynamicLightModifier_60.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_342_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_361();
    l0 = self.box_SpawnAI_342;
    l1 = self.box_Delay_v5_361;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1004432792", "1004432792", "MIS_025_Manager", "box_SpawnAI_342.Out", "box_Delay_v5_361.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SpawnAI_342_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_212();
    l0 = self.box_SpawnAI_342;
    l1 = self.box_Bind_v4_212;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1006852209", "1006852209", "MIS_025_Manager", "box_SpawnAI_342.Spawned", "box_Bind_v4_212.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_PlayerSpeedModifier_v3_151_ApplySpeedFactorOut()
    local params, l0, l1;
    params = self:OnEnter_box_GetLocalPlayer_v2_8();
    l0 = self.box_PlayerSpeedModifier_v3_151;
    l1 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1083893557", "1083893557", "MIS_025_Manager", "box_PlayerSpeedModifier_v3_151.ApplySpeedFactorOut", "box_GetLocalPlayer_v2_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_144_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_144;
    l1 = self.box_MultipleOR_158;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|127752336", "127752336", "MIS_025_Manager", "box_PlayDialog_v6_144.Started", "box_MultipleOR_158.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_MultipleOR_62_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsPawnAlive_v3_72();
    l0 = self.box_MultipleOR_62;
    l1 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2033364718", "2033364718", "MIS_025_Manager", "box_MultipleOR_62.Out", "box_IsPawnAlive_v3_72.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_127_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_128();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2042146210", "2042146210", "MIS_025_Manager", "box_UseContextualActionModifier_v3_127.Disabled", "box_UseContextualActionModifier_v3_128.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_127_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_128();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|427254140", "427254140", "MIS_025_Manager", "box_UseContextualActionModifier_v3_127.Enabled", "box_UseContextualActionModifier_v3_128.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_339_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_140();
    l0 = self.box_Delay_v5_339;
    l1 = self.box_PlayDialog_v6_140;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1805193241", "1805193241", "MIS_025_Manager", "box_Delay_v5_339.TimeElapsed", "box_PlayDialog_v6_140.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PreconditionListener_v2_23_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_PlayerSpeedModifier_v3_157();
    l0 = self.box_PreconditionListener_v2_23;
    l1 = self.box_PlayerSpeedModifier_v3_157;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|953470015", "953470015", "MIS_025_Manager", "box_PreconditionListener_v2_23.Enabled", "box_PlayerSpeedModifier_v3_157.ApplySpeedFactor", l0:GetLuaBox(), l1:GetLuaBox());
    -- ApplySpeedFactor
    l1:Exec(0, params);
end;

function export:f_box_PreconditionListener_v2_23_PreconditionMet()
    local params, l0, l1;
    params = self:OnEnter_box_RestrictedItemModifier_v2_97();
    l0 = self.box_PreconditionListener_v2_23;
    l1 = self.box_RestrictedItemModifier_v2_97;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1801928049", "1801928049", "MIS_025_Manager", "box_PreconditionListener_v2_23.PreconditionMet", "box_RestrictedItemModifier_v2_97.ClearRestrictions", l0:GetLuaBox(), l1:GetLuaBox());
    -- ClearRestrictions
    l1:Exec(1, params);
end;

function export:f_box_SetTimeOfDay_11_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_5();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|75584822", "75584822", "MIS_025_Manager", "box_SetTimeOfDay_11.Out", "box_CHEAT_SetEnvironmentTimeScale_5.SetTimeScale", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeScale
    l0:Exec(0, params);
end;

function export:f_box_PersistentParticlesModifier_220_OnStopParticles()
    local params, l0, l1;
    params = self:OnEnter_box_PersistentParticlesModifier_101();
    l0 = self.box_PersistentParticlesModifier_220;
    l1 = self.box_PersistentParticlesModifier_101;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|910320346", "910320346", "MIS_025_Manager", "box_PersistentParticlesModifier_220.OnStopParticles", "box_PersistentParticlesModifier_101.StopParticles", l0:GetLuaBox(), l1:GetLuaBox());
    -- StopParticles
    l1:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_84_Started()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_91;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|271493537", "271493537", "MIS_025_Manager", "box_ParticleSystem_v3_84.Started", "box_MultipleOR_91.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_45_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_45;
    l1 = self.box_MultipleOR_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|463905563", "463905563", "MIS_025_Manager", "box_PlayDialog_v6_45.Finished", "box_MultipleOR_43.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_45_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_45;
    l1 = self.box_MultipleOR_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|971305286", "971305286", "MIS_025_Manager", "box_PlayDialog_v6_45.FinishedInterrupted", "box_MultipleOR_43.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_124_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_125();
    l0 = self.box_Delay_v5_124;
    l1 = self.box_RemoveEntity_v2_125;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|517068472", "517068472", "MIS_025_Manager", "box_Delay_v5_124.TimeElapsed", "box_RemoveEntity_v2_125.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_98_Out()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_353();
    l0 = self.box_MultipleOR_98;
    l1 = self.box_DisplayCustomUIMsg_v5_353;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|883829356", "883829356", "MIS_025_Manager", "box_MultipleOR_98.Out", "box_DisplayCustomUIMsg_v5_353.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_GetActivityFact_225_FactNotSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_290();
    l0 = self.box_SpawnAI_290;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1710852317", "1710852317", "MIS_025_Manager", "box_GetActivityFact_225.FactNotSet", "box_SpawnAI_290.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_Switch_250_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_251();
    l0 = self.box_Switch_250;
    l1 = self.box_PlayDialog_v6_251;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|152925214", "152925214", "MIS_025_Manager", "box_Switch_250.Output", "box_PlayDialog_v6_251.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_250_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_252();
    l0 = self.box_Switch_250;
    l1 = self.box_PlayDialog_v6_252;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|148899091", "148899091", "MIS_025_Manager", "box_Switch_250.Output", "box_PlayDialog_v6_252.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_250_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_253();
    l0 = self.box_Switch_250;
    l1 = self.box_PlayDialog_v6_253;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|226955308", "226955308", "MIS_025_Manager", "box_Switch_250.Output", "box_PlayDialog_v6_253.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_250_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_254();
    l0 = self.box_Switch_250;
    l1 = self.box_PlayDialog_v6_254;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|969455730", "969455730", "MIS_025_Manager", "box_Switch_250.Output", "box_PlayDialog_v6_254.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_250_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_258();
    l0 = self.box_Switch_250;
    l1 = self.box_PlayDialog_v6_258;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|819782873", "819782873", "MIS_025_Manager", "box_Switch_250.Output", "box_PlayDialog_v6_258.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_SetOasis_358_Out()
    local params, l0;
    self:OnExit_box_SetOasis_358_Out();
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_357();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|757619339", "757619339", "MIS_025_Manager", "box_SetOasis_358.Out", "box_AddActivityObjective_v2_357.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_140_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_141();
    l0 = self.box_PlayDialog_v6_140;
    l1 = self.box_PlayDialog_v6_141;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|664928119", "664928119", "MIS_025_Manager", "box_PlayDialog_v6_140.Finished", "box_PlayDialog_v6_141.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OverrideMenuAccessibility_v2_20_Out()
    local params, l0, l1;
    params = self:OnEnter_box_FastTravelModifier_v2_4();
    l0 = self.box_OverrideMenuAccessibility_v2_20;
    l1 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1957759343", "1957759343", "MIS_025_Manager", "box_OverrideMenuAccessibility_v2_20.Out", "box_FastTravelModifier_v2_4.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_113_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_350();
    l0 = self.box_MessageListener_v3_113;
    l1 = self.box_ProximityRadiusListener_v3_350;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|815516092", "815516092", "MIS_025_Manager", "box_MessageListener_v3_113.Enabled", "box_ProximityRadiusListener_v3_350.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MessageListener_v3_113_Received()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_178();
    l0 = self.box_MessageListener_v3_113;
    l1 = self.box_ProximityRadiusListener_v3_178;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2067715386", "2067715386", "MIS_025_Manager", "box_MessageListener_v3_113.Received", "box_ProximityRadiusListener_v3_178.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_MessageListener_v3_215_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MessageListener_v3_216();
    l0 = self.box_MessageListener_v3_215;
    l1 = self.box_MessageListener_v3_216;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1720228671", "1720228671", "MIS_025_Manager", "box_MessageListener_v3_215.Enabled", "box_MessageListener_v3_216.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MessageListener_v3_215_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_215;
    l1 = self.box_MultipleOR_226;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|153145487", "153145487", "MIS_025_Manager", "box_MessageListener_v3_215.Received", "box_MultipleOR_226.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MultipleOR_63_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_65();
    l0 = self.box_MultipleOR_63;
    l1 = self.box_PlayDialog_v6_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|324099716", "324099716", "MIS_025_Manager", "box_MultipleOR_63.Out", "box_PlayDialog_v6_65.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MissionAckTriggerListener_173_Enabled()
    local l0, l1;
    l0 = self.box_MissionAckTriggerListener_173;
    l1 = self.box_MultipleOR_176;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|264039319", "264039319", "MIS_025_Manager", "box_MissionAckTriggerListener_173.Enabled", "box_MultipleOR_176.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MissionAckTriggerListener_173_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_197();
    l0 = self.box_MissionAckTriggerListener_173;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1148726075", "1148726075", "MIS_025_Manager", "box_MissionAckTriggerListener_173.Enter", "box_OutputOrder_v2_197.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_119_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetLoadingVideo_117();
    l0 = Boxes[GetPathID("Domino/System/UI/SetLoadingVideo.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1394733626", "1394733626", "MIS_025_Manager", "box_OutputOrder_v2_119.Out", "box_SetLoadingVideo_117.SetVideo", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetVideo
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_119_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PersistentParticlesModifier_28();
    l0 = self.box_PersistentParticlesModifier_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1769955067", "1769955067", "MIS_025_Manager", "box_OutputOrder_v2_119.Out", "box_PersistentParticlesModifier_28.StopParticles", clone:GetLuaBox(), l0:GetLuaBox());
    -- StopParticles
    l0:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_136_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_136;
    l1 = self.box_MultipleOR_137;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1723737188", "1723737188", "MIS_025_Manager", "box_PlayDialog_v6_136.Finished", "box_MultipleOR_137.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_136_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_136;
    l1 = self.box_MultipleOR_137;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2135970405", "2135970405", "MIS_025_Manager", "box_PlayDialog_v6_136.FinishedInterrupted", "box_MultipleOR_137.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetActivityFact_183_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_StateListener_v2_191();
    l0 = self.box_StateListener_v2_191;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|563691038", "563691038", "MIS_025_Manager", "box_SetActivityFact_183.Out", "box_StateListener_v2_191.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_257_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_25();
    l0 = self.box_PlayDialog_v6_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1072397091", "1072397091", "MIS_025_Manager", "box_OutputOrder_v2_257.Out", "box_PlayDialog_v6_25.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_257_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_256();
    l0 = self.box_Gate_v3_256;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|734043465", "734043465", "MIS_025_Manager", "box_OutputOrder_v2_257.Out", "box_Gate_v3_256.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_SpawnAI_290_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_290;
    l1 = self.box_MultipleOR_293;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1886160485", "1886160485", "MIS_025_Manager", "box_SpawnAI_290.Spawned", "box_MultipleOR_293.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PersistentParticlesModifier_198_OnStartParticles()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_181();
    l0 = self.box_PersistentParticlesModifier_198;
    l1 = self.box_SoundModifier_v2_181;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1861194449", "1861194449", "MIS_025_Manager", "box_PersistentParticlesModifier_198.OnStartParticles", "box_SoundModifier_v2_181.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_26_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MoonModifier_29();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_26;
    l1 = self.box_MoonModifier_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2084855308", "2084855308", "MIS_025_Manager", "box_CHEAT_SetEnvironmentTimeScale_26.Out", "box_MoonModifier_29.ResetMoonDirection", l0:GetLuaBox(), l1:GetLuaBox());
    -- ResetMoonDirection
    l1:Exec(0, params);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MoonModifier_3();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_5;
    l1 = self.box_MoonModifier_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1420434123", "1420434123", "MIS_025_Manager", "box_CHEAT_SetEnvironmentTimeScale_5.Out", "box_MoonModifier_3.SetMoonSize", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetMoonSize
    l1:Exec(7, params);
end;

function export:f_box_PlayDialog_v6_142_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_142;
    l1 = self.box_MultipleOR_158;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|693826628", "693826628", "MIS_025_Manager", "box_PlayDialog_v6_142.Started", "box_MultipleOR_158.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_StateListener_v2_195_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_88();
    l0 = self.box_StateListener_v2_195;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1977791141", "1977791141", "MIS_025_Manager", "box_StateListener_v2_195.Disabled", "box_Simple_Node_88.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StateListener_v2_195_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_IsPawnAlive_v3_74();
    l0 = self.box_StateListener_v2_195;
    l1 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1126336066", "1126336066", "MIS_025_Manager", "box_StateListener_v2_195.Enabled", "box_IsPawnAlive_v3_74.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StateListener_v2_195_MemberInState()
    local l0, l1;
    l0 = self.box_StateListener_v2_195;
    l1 = self.box_MultipleOR_206;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|33339529", "33339529", "MIS_025_Manager", "box_StateListener_v2_195.MemberInState", "box_MultipleOR_206.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_293_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_293;
    l1 = self.box_OnceOnly_v3_292;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|89001575", "89001575", "MIS_025_Manager", "box_MultipleOR_293.Out", "box_OnceOnly_v3_292.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_152_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_152;
    l1 = self.box_MultipleOR_158;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1545333237", "1545333237", "MIS_025_Manager", "box_PlayDialog_v6_152.Started", "box_MultipleOR_158.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 11);
end;

function export:f_box_MessageListener_v3_216_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_216;
    l1 = self.box_OnceOnly_v3_286;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1862588236", "1862588236", "MIS_025_Manager", "box_MessageListener_v3_216.Received", "box_OnceOnly_v3_286.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_252_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_252;
    l1 = self.box_MultipleOR_255;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|457345962", "457345962", "MIS_025_Manager", "box_PlayDialog_v6_252.Finished", "box_MultipleOR_255.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_PlayDialog_v6_252_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_252;
    l1 = self.box_MultipleOR_255;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1080358776", "1080358776", "MIS_025_Manager", "box_PlayDialog_v6_252.FinishedInterrupted", "box_MultipleOR_255.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_PlayDialog_v6_155_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_155;
    l1 = self.box_MultipleOR_158;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|358181766", "358181766", "MIS_025_Manager", "box_PlayDialog_v6_155.Started", "box_MultipleOR_158.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 8);
end;

function export:f_box_SpawnAI_289_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_276();
    l0 = self.box_SpawnAI_289;
    l1 = self.box_SpawnAI_276;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1278830386", "1278830386", "MIS_025_Manager", "box_SpawnAI_289.Out", "box_SpawnAI_276.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_PersistentParticlesModifier_101_OnStopParticles()
    local params, l0, l1;
    params = self:OnEnter_box_PersistentParticlesModifier_102();
    l0 = self.box_PersistentParticlesModifier_101;
    l1 = self.box_PersistentParticlesModifier_102;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2058131165", "2058131165", "MIS_025_Manager", "box_PersistentParticlesModifier_101.OnStopParticles", "box_PersistentParticlesModifier_102.StartParticles", l0:GetLuaBox(), l1:GetLuaBox());
    -- StartParticles
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_213_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_90();
    l0 = self.box_ProximityTrigger_v3_90;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1618985982", "1618985982", "MIS_025_Manager", "box_OutputOrder_v2_213.Out", "box_ProximityTrigger_v3_90.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_213_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_214();
    l0 = self.box_ProximityTrigger_v3_214;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1233864837", "1233864837", "MIS_025_Manager", "box_OutputOrder_v2_213.Out", "box_ProximityTrigger_v3_214.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_213_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_224();
    l0 = self.box_ProximityTrigger_v3_224;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|522159948", "522159948", "MIS_025_Manager", "box_OutputOrder_v2_213.Out", "box_ProximityTrigger_v3_224.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_213_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_228();
    l0 = self.box_ProximityTrigger_v3_228;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1873970975", "1873970975", "MIS_025_Manager", "box_OutputOrder_v2_213.Out", "box_ProximityTrigger_v3_228.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_213_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_231();
    l0 = self.box_ProximityTrigger_v3_231;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|153435513", "153435513", "MIS_025_Manager", "box_OutputOrder_v2_213.Out", "box_ProximityTrigger_v3_231.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_213_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_230();
    l0 = self.box_ProximityTrigger_v3_230;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1705440919", "1705440919", "MIS_025_Manager", "box_OutputOrder_v2_213.Out", "box_ProximityTrigger_v3_230.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_213_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_236();
    l0 = self.box_ProximityTrigger_v3_236;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1835457494", "1835457494", "MIS_025_Manager", "box_OutputOrder_v2_213.Out", "box_ProximityTrigger_v3_236.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_213_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_234();
    l0 = self.box_ProximityTrigger_v3_234;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1256993000", "1256993000", "MIS_025_Manager", "box_OutputOrder_v2_213.Out", "box_ProximityTrigger_v3_234.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetLocalPlayer_v2_8_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_8_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_2();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|157980442", "157980442", "MIS_025_Manager", "box_GetLocalPlayer_v2_8.Out", "box_GetPlayerGroup_v2_2.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_234_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_237();
    l0 = self.box_ProximityTrigger_v3_234;
    l1 = self.box_SoundModifier_v2_237;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|344349639", "344349639", "MIS_025_Manager", "box_ProximityTrigger_v3_234.Enter", "box_SoundModifier_v2_237.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_GetActivityFact_171_FactNotSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_172();
    l0 = self.box_Delay_v5_172;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|465324826", "465324826", "MIS_025_Manager", "box_GetActivityFact_171.FactNotSet", "box_Delay_v5_172.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_GetActivityFact_171_FactSet()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_169;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|724236526", "724236526", "MIS_025_Manager", "box_GetActivityFact_171.FactSet", "box_MultipleOR_169.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_242_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_345();
    l0 = self.box_SoundModifier_v2_345;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1749045788", "1749045788", "MIS_025_Manager", "box_OutputOrder_v2_242.Out", "box_SoundModifier_v2_345.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_242_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionAckTriggerListener_133();
    l0 = self.box_MissionAckTriggerListener_133;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1770150474", "1770150474", "MIS_025_Manager", "box_OutputOrder_v2_242.Out", "box_MissionAckTriggerListener_133.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_153_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayerSpeedModifier_v3_149();
    l0 = self.box_Delay_v5_153;
    l1 = self.box_PlayerSpeedModifier_v3_149;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|612298159", "612298159", "MIS_025_Manager", "box_Delay_v5_153.TimeElapsed", "box_PlayerSpeedModifier_v3_149.ApplySpeedFactor", l0:GetLuaBox(), l1:GetLuaBox());
    -- ApplySpeedFactor
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_96_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_21();
    l0 = self.box_Delay_v5_96;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2829035", "2829035", "MIS_025_Manager", "box_Delay_v5_96.TimeElapsed", "box_ActivityEnd_21.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableBreaker_53_Destroyed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_77();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2114319130", "2114319130", "MIS_025_Manager", "box_StaticBreakableBreaker_53.Destroyed", "box_OutputOrder_v2_77.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_64_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_64_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1377137856", "1377137856", "MIS_025_Manager", "box_SetEntity_v2_64.Out", "box_MultipleOR_63.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_StateListener_v2_191_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_StateListener_v2_195();
    l0 = self.box_StateListener_v2_191;
    l1 = self.box_StateListener_v2_195;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1415639653", "1415639653", "MIS_025_Manager", "box_StateListener_v2_191.Disabled", "box_StateListener_v2_195.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(3, params);
end;

function export:f_box_StateListener_v2_191_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_StateListener_v2_195();
    l0 = self.box_StateListener_v2_191;
    l1 = self.box_StateListener_v2_195;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1379156922", "1379156922", "MIS_025_Manager", "box_StateListener_v2_191.Enabled", "box_StateListener_v2_195.Dead", l0:GetLuaBox(), l1:GetLuaBox());
    -- Dead
    l1:Exec(2, params);
end;

function export:f_box_StateListener_v2_191_MemberInState()
    local l0, l1;
    l0 = self.box_StateListener_v2_191;
    l1 = self.box_MultipleOR_206;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1979284770", "1979284770", "MIS_025_Manager", "box_StateListener_v2_191.MemberInState", "box_MultipleOR_206.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestPhoneCall_v2_203_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_61();
    l0 = self.box_RequestPhoneCall_v2_203;
    l1 = self.box_RequestPhoneCall_v2_61;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|629965775", "629965775", "MIS_025_Manager", "box_RequestPhoneCall_v2_203.Completed", "box_RequestPhoneCall_v2_61.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_207_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_238();
    l0 = self.box_Delay_v5_207;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|138366566", "138366566", "MIS_025_Manager", "box_Delay_v5_207.TimeElapsed", "box_ParticleSystem_v3_238.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_135_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ForceExitVehicle_v2_114();
    l0 = self.box_OnceOnly_v3_135;
    l1 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1599849990", "1599849990", "MIS_025_Manager", "box_OnceOnly_v3_135.Out", "box_ForceExitVehicle_v2_114.ForceExit", l0:GetLuaBox(), l1:GetLuaBox());
    -- ForceExit
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_32_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_32;
    l1 = self.box_MultipleOR_188;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1679849126", "1679849126", "MIS_025_Manager", "box_Delay_v5_32.TimeElapsed", "box_MultipleOR_188.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ParticleSystem_v3_332_Started()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_89;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|804596033", "804596033", "MIS_025_Manager", "box_ParticleSystem_v3_332.Started", "box_MultipleOR_89.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Gate_v3_182_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_202();
    l0 = self.box_Gate_v3_182;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1322924094", "1322924094", "MIS_025_Manager", "box_Gate_v3_182.Out", "box_SetContextualStrategy_202.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_50_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_49();
    l0 = self.box_MultipleOR_50;
    l1 = self.box_PlayDialog_v6_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1218137950", "1218137950", "MIS_025_Manager", "box_MultipleOR_50.Out", "box_PlayDialog_v6_49.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_254_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_254;
    l1 = self.box_MultipleOR_255;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1183884238", "1183884238", "MIS_025_Manager", "box_PlayDialog_v6_254.Finished", "box_MultipleOR_255.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 7);
end;

function export:f_box_PlayDialog_v6_254_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_254;
    l1 = self.box_MultipleOR_255;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|610122154", "610122154", "MIS_025_Manager", "box_PlayDialog_v6_254.FinishedInterrupted", "box_MultipleOR_255.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 8);
end;

function export:f_box_Gate_v3_163_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_160();
    l0 = self.box_Gate_v3_163;
    l1 = self.box_Switch_160;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1265724524", "1265724524", "MIS_025_Manager", "box_Gate_v3_163.Out", "box_Switch_160.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_57_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_56();
    l0 = self.box_Delay_v5_57;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1764573312", "1764573312", "MIS_025_Manager", "box_Delay_v5_57.TimeElapsed", "box_ParticleSystem_v3_56.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ForceExitVehicle_v2_114_ForceExitted()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ForceExitVehicle_v2_115();
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1398112180", "1398112180", "MIS_025_Manager", "box_ForceExitVehicle_v2_114.ForceExitted", "box_ForceExitVehicle_v2_115.ForceExit", clone:GetLuaBox(), l0:GetLuaBox());
    -- ForceExit
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_161_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_161;
    l1 = self.box_MultipleOR_158;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|184300888", "184300888", "MIS_025_Manager", "box_PlayDialog_v6_161.Started", "box_MultipleOR_158.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 7);
end;

function export:f_box_SpawnAI_123_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_124();
    l0 = self.box_SpawnAI_123;
    l1 = self.box_Delay_v5_124;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1577315975", "1577315975", "MIS_025_Manager", "box_SpawnAI_123.Spawned", "box_Delay_v5_124.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_67_Started()
    local params, l0, l1;
    params = self:OnEnter_box_MissionAckTriggerListener_277();
    l0 = self.box_Delay_v5_67;
    l1 = self.box_MissionAckTriggerListener_277;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|446249520", "446249520", "MIS_025_Manager", "box_Delay_v5_67.Started", "box_MissionAckTriggerListener_277.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_67_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_GetActivityState_v2_66();
    l0 = self.box_Delay_v5_67;
    l1 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1881330175", "1881330175", "MIS_025_Manager", "box_Delay_v5_67.TimeElapsed", "box_GetActivityState_v2_66.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_25_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_25;
    l1 = self.box_MultipleOR_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|87796166", "87796166", "MIS_025_Manager", "box_PlayDialog_v6_25.Finished", "box_MultipleOR_42.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_25_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_25;
    l1 = self.box_MultipleOR_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|379565676", "379565676", "MIS_025_Manager", "box_PlayDialog_v6_25.FinishedInterrupted", "box_MultipleOR_42.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_169_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_169;
    l1 = self.box_OnceOnly_v3_199;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|609762121", "609762121", "MIS_025_Manager", "box_MultipleOR_169.Out", "box_OnceOnly_v3_199.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v3_228_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_229();
    l0 = self.box_ProximityTrigger_v3_228;
    l1 = self.box_SoundModifier_v2_229;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|277398041", "277398041", "MIS_025_Manager", "box_ProximityTrigger_v3_228.Enter", "box_SoundModifier_v2_229.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_174_Out()
    local l0, l1;
    l0 = self.box_SpawnAI_174;
    l1 = self.box_MultipleOR_293;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2014283541", "2014283541", "MIS_025_Manager", "box_SpawnAI_174.Out", "box_MultipleOR_293.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v3_231_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_233();
    l0 = self.box_ProximityTrigger_v3_231;
    l1 = self.box_SoundModifier_v2_233;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1297787915", "1297787915", "MIS_025_Manager", "box_ProximityTrigger_v3_231.Enter", "box_SoundModifier_v2_233.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_MoonModifier_3_OnSetMoonDirection()
    local params, l0;
    params = self:OnEnter_box_MoonModifier_3();
    l0 = self.box_MoonModifier_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1327387540", "1327387540", "MIS_025_Manager", "box_MoonModifier_3.OnSetMoonDirection", "box_MoonModifier_3.SetMoonPhase", l0:GetLuaBox(), l0:GetLuaBox());
    -- SetMoonPhase
    l0:Exec(6, params);
end;

function export:f_box_MoonModifier_3_OnSetMoonPhase()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_120();
    l0 = self.box_MoonModifier_3;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|293855162", "293855162", "MIS_025_Manager", "box_MoonModifier_3.OnSetMoonPhase", "box_OutputOrder_v2_120.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MoonModifier_3_OnSetMoonSize()
    local params, l0;
    params = self:OnEnter_box_MoonModifier_3();
    l0 = self.box_MoonModifier_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|261275923", "261275923", "MIS_025_Manager", "box_MoonModifier_3.OnSetMoonSize", "box_MoonModifier_3.SetMoonDirection", l0:GetLuaBox(), l0:GetLuaBox());
    -- SetMoonDirection
    l0:Exec(4, params);
end;

function export:f_box_MultipleAND_v2_260_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RestrictedItemModifier_v2_95();
    l0 = self.box_MultipleAND_v2_260;
    l1 = self.box_RestrictedItemModifier_v2_95;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|127213518", "127213518", "MIS_025_Manager", "box_MultipleAND_v2_260.Out", "box_RestrictedItemModifier_v2_95.AddItemRestriction", l0:GetLuaBox(), l1:GetLuaBox());
    -- AddItemRestriction
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_131_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_132();
    l0 = self.box_SpawnAI_131;
    l1 = self.box_SpawnAI_132;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1330449", "1330449", "MIS_025_Manager", "box_SpawnAI_131.Out", "box_SpawnAI_132.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_131_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_210();
    l0 = self.box_SpawnAI_131;
    l1 = self.box_Bind_v4_210;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1191227266", "1191227266", "MIS_025_Manager", "box_SpawnAI_131.Spawned", "box_Bind_v4_210.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_292_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_StateListener_v2_191();
    l0 = self.box_OnceOnly_v3_292;
    l1 = self.box_StateListener_v2_191;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|363899160", "363899160", "MIS_025_Manager", "box_OnceOnly_v3_292.Out", "box_StateListener_v2_191.Combat", l0:GetLuaBox(), l1:GetLuaBox());
    -- Combat
    l1:Exec(1, params);
end;

function export:f_box_SetContextualStrategy_202_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_204();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|733264658", "733264658", "MIS_025_Manager", "box_SetContextualStrategy_202.Out", "box_BroadcastMessage_204.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_40_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_19();
    l0 = self.box_Delay_v5_40;
    l1 = self.box_PlayDialog_v6_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1447502614", "1447502614", "MIS_025_Manager", "box_Delay_v5_40.TimeElapsed", "box_PlayDialog_v6_19.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_256_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_248();
    l0 = self.box_Gate_v3_256;
    l1 = self.box_Delay_v5_248;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1013938922", "1013938922", "MIS_025_Manager", "box_Gate_v3_256.Closed", "box_Delay_v5_248.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_Gate_v3_256_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_250();
    l0 = self.box_Gate_v3_256;
    l1 = self.box_Switch_250;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1983181087", "1983181087", "MIS_025_Manager", "box_Gate_v3_256.Out", "box_Switch_250.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_70_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_67();
    l0 = self.box_Delay_v5_67;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2080018645", "2080018645", "MIS_025_Manager", "box_OutputOrder_v2_70.Out", "box_Delay_v5_67.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_70_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_153();
    l0 = self.box_Delay_v5_153;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1377228783", "1377228783", "MIS_025_Manager", "box_OutputOrder_v2_70.Out", "box_Delay_v5_153.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_70_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_52();
    l0 = self.box_ProximityRadiusListener_v3_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|507797794", "507797794", "MIS_025_Manager", "box_OutputOrder_v2_70.Out", "box_ProximityRadiusListener_v3_52.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_59_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_335();
    l0 = self.box_PlayDialog_v6_59;
    l1 = self.box_Delay_v5_335;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|571026084", "571026084", "MIS_025_Manager", "box_PlayDialog_v6_59.Finished", "box_Delay_v5_335.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_89_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_80();
    l0 = self.box_MultipleOR_89;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2022028145", "2022028145", "MIS_025_Manager", "box_MultipleOR_89.Out", "box_RandomFloat_v2_80.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_134_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_242();
    l0 = self.box_MultipleOR_134;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|130243146", "130243146", "MIS_025_Manager", "box_MultipleOR_134.Out", "box_OutputOrder_v2_242.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_56_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_58();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1522727166", "1522727166", "MIS_025_Manager", "box_ParticleSystem_v3_56.Started", "box_DynamicLightModifier_58.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Switch_160_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_142();
    l0 = self.box_Switch_160;
    l1 = self.box_PlayDialog_v6_142;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2065807920", "2065807920", "MIS_025_Manager", "box_Switch_160.Output", "box_PlayDialog_v6_142.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_160_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_166();
    l0 = self.box_Switch_160;
    l1 = self.box_PlayDialog_v6_166;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|320024535", "320024535", "MIS_025_Manager", "box_Switch_160.Output", "box_PlayDialog_v6_166.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_160_Output_2()
    local l0, l1;
    l0 = self.box_Switch_160;
    l1 = self.box_MultipleOR_158;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|306612084", "306612084", "MIS_025_Manager", "box_Switch_160.Output", "box_MultipleOR_158.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Switch_160_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_167();
    l0 = self.box_Switch_160;
    l1 = self.box_PlayDialog_v6_167;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1715097682", "1715097682", "MIS_025_Manager", "box_Switch_160.Output", "box_PlayDialog_v6_167.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_160_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_168();
    l0 = self.box_Switch_160;
    l1 = self.box_PlayDialog_v6_168;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2128473083", "2128473083", "MIS_025_Manager", "box_Switch_160.Output", "box_PlayDialog_v6_168.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_160_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_144();
    l0 = self.box_Switch_160;
    l1 = self.box_PlayDialog_v6_144;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|87827583", "87827583", "MIS_025_Manager", "box_Switch_160.Output", "box_PlayDialog_v6_144.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_160_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_145();
    l0 = self.box_Switch_160;
    l1 = self.box_PlayDialog_v6_145;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2145838297", "2145838297", "MIS_025_Manager", "box_Switch_160.Output", "box_PlayDialog_v6_145.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_160_Output_7()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_161();
    l0 = self.box_Switch_160;
    l1 = self.box_PlayDialog_v6_161;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|736958286", "736958286", "MIS_025_Manager", "box_Switch_160.Output", "box_PlayDialog_v6_161.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_160_Output_8()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_155();
    l0 = self.box_Switch_160;
    l1 = self.box_PlayDialog_v6_155;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1749151238", "1749151238", "MIS_025_Manager", "box_Switch_160.Output", "box_PlayDialog_v6_155.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_160_Output_9()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_156();
    l0 = self.box_Switch_160;
    l1 = self.box_PlayDialog_v6_156;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1496785146", "1496785146", "MIS_025_Manager", "box_Switch_160.Output", "box_PlayDialog_v6_156.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_160_Output_10()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_164();
    l0 = self.box_Switch_160;
    l1 = self.box_PlayDialog_v6_164;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|609963757", "609963757", "MIS_025_Manager", "box_Switch_160.Output", "box_PlayDialog_v6_164.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_160_Output_11()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_152();
    l0 = self.box_Switch_160;
    l1 = self.box_PlayDialog_v6_152;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1798154093", "1798154093", "MIS_025_Manager", "box_Switch_160.Output", "box_PlayDialog_v6_152.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_160_Output_12()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_165();
    l0 = self.box_Switch_160;
    l1 = self.box_PlayDialog_v6_165;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|908229118", "908229118", "MIS_025_Manager", "box_Switch_160.Output", "box_PlayDialog_v6_165.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_160_Output_13()
    local l0, l1;
    l0 = self.box_Switch_160;
    l1 = self.box_MultipleOR_158;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1030292188", "1030292188", "MIS_025_Manager", "box_Switch_160.Output", "box_MultipleOR_158.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 13);
end;

function export:f_box_MultipleOR_75_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_205();
    l0 = self.box_MultipleOR_75;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2043118781", "2043118781", "MIS_025_Manager", "box_MultipleOR_75.Out", "box_SetBoolean_v2_205.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_36_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_106();
    l0 = self.box_Delay_v5_36;
    l1 = self.box_PlayDialog_v6_106;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1609882250", "1609882250", "MIS_025_Manager", "box_Delay_v5_36.TimeElapsed", "box_PlayDialog_v6_106.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_IsPawnAlive_v3_74_Alive()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_64();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|323739060", "323739060", "MIS_025_Manager", "box_IsPawnAlive_v3_74.Alive", "box_SetEntity_v2_64.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsPawnAlive_v3_74_DeadOrDown()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|407821884", "407821884", "MIS_025_Manager", "box_IsPawnAlive_v3_74.DeadOrDown", "box_MultipleOR_62.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsPawnAlive_v3_74_NotLoaded()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|655737386", "655737386", "MIS_025_Manager", "box_IsPawnAlive_v3_74.NotLoaded", "box_MultipleOR_62.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityRadiusListener_v3_178_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_350();
    l0 = self.box_ProximityRadiusListener_v3_178;
    l1 = self.box_ProximityRadiusListener_v3_350;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1313604368", "1313604368", "MIS_025_Manager", "box_ProximityRadiusListener_v3_178.Disabled", "box_ProximityRadiusListener_v3_350.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_178_SomeoneFar()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_240();
    l0 = self.box_ProximityRadiusListener_v3_178;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1725392271", "1725392271", "MIS_025_Manager", "box_ProximityRadiusListener_v3_178.SomeoneFar", "box_OutputOrder_v2_240.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PersistentParticlesModifier_194_OnStopParticles()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_247();
    l0 = self.box_PersistentParticlesModifier_194;
    l1 = self.box_Delay_v5_247;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|133571125", "133571125", "MIS_025_Manager", "box_PersistentParticlesModifier_194.OnStopParticles", "box_Delay_v5_247.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_RemoveEntity_v2_125_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_126();
    l0 = self.box_RemoveEntity_v2_125;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|528060696", "528060696", "MIS_025_Manager", "box_RemoveEntity_v2_125.Out", "box_UseContextualActionModifier_v3_126.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_138_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_337();
    l0 = self.box_PlayDialog_v6_138;
    l1 = self.box_Delay_v5_337;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|204314924", "204314924", "MIS_025_Manager", "box_PlayDialog_v6_138.Finished", "box_Delay_v5_337.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_BonusPlanModifier_v3_239_Added()
    local l0, l1;
    l0 = self.box_BonusPlanModifier_v3_239;
    l1 = self.box_MultipleOR_246;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1842744486", "1842744486", "MIS_025_Manager", "box_BonusPlanModifier_v3_239.Added", "box_MultipleOR_246.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_BonusPlanModifier_v3_239_AlreadyAdded()
    local l0, l1;
    l0 = self.box_BonusPlanModifier_v3_239;
    l1 = self.box_MultipleOR_246;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1081303737", "1081303737", "MIS_025_Manager", "box_BonusPlanModifier_v3_239.AlreadyAdded", "box_MultipleOR_246.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MissionAckTriggerListener_33_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MissionAckTriggerListener_349();
    l0 = self.box_MissionAckTriggerListener_33;
    l1 = self.box_MissionAckTriggerListener_349;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|169613263", "169613263", "MIS_025_Manager", "box_MissionAckTriggerListener_33.Enabled", "box_MissionAckTriggerListener_349.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MissionAckTriggerListener_33_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_41();
    l0 = self.box_MissionAckTriggerListener_33;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1596428736", "1596428736", "MIS_025_Manager", "box_MissionAckTriggerListener_33.Enter", "box_OutputOrder_v2_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_255_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_248();
    l0 = self.box_MultipleOR_255;
    l1 = self.box_Delay_v5_248;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1393853144", "1393853144", "MIS_025_Manager", "box_MultipleOR_255.Out", "box_Delay_v5_248.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_RequestPhoneCall_v2_61_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_182();
    l0 = self.box_RequestPhoneCall_v2_61;
    l1 = self.box_Gate_v3_182;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1980887234", "1980887234", "MIS_025_Manager", "box_RequestPhoneCall_v2_61.Completed", "box_Gate_v3_182.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_GetActivityState_v2_66_Active()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_136();
    l0 = self.box_PlayDialog_v6_136;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2073147359", "2073147359", "MIS_025_Manager", "box_GetActivityState_v2_66.Active", "box_PlayDialog_v6_136.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_RestrictedItemModifier_v2_95_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_31();
    l0 = self.box_RestrictedItemModifier_v2_95;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1804005779", "1804005779", "MIS_025_Manager", "box_RestrictedItemModifier_v2_95.Out", "box_OutputOrder_v2_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_94_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_108();
    l0 = self.box_SoundModifier_v2_94;
    l1 = self.box_SoundModifier_v2_108;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|197306786", "197306786", "MIS_025_Manager", "box_SoundModifier_v2_94.Started", "box_SoundModifier_v2_108.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_CharacterLoadedIdListener_v2_46_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_v2_46_LoadedIdReceived();
    params = self:OnEnter_box_MultipleAND_v2_260();
    l0 = self.box_CharacterLoadedIdListener_v2_46;
    l1 = self.box_MultipleAND_v2_260;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1495759357", "1495759357", "MIS_025_Manager", "box_CharacterLoadedIdListener_v2_46.LoadedIdReceived", "box_MultipleAND_v2_260.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_PlayDialog_v6_141_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_141;
    l1 = self.box_MultipleOR_162;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1537153994", "1537153994", "MIS_025_Manager", "box_PlayDialog_v6_141.Started", "box_MultipleOR_162.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PersistentParticlesModifier_284_OnStartParticles()
    local params, l0, l1;
    params = self:OnEnter_box_PersistentParticlesModifier_219();
    l0 = self.box_PersistentParticlesModifier_284;
    l1 = self.box_PersistentParticlesModifier_219;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1372526193", "1372526193", "MIS_025_Manager", "box_PersistentParticlesModifier_284.OnStartParticles", "box_PersistentParticlesModifier_219.StopParticles", l0:GetLuaBox(), l1:GetLuaBox());
    -- StopParticles
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_247_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_94();
    l0 = self.box_Delay_v5_247;
    l1 = self.box_SoundModifier_v2_94;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|421797071", "421797071", "MIS_025_Manager", "box_Delay_v5_247.Started", "box_SoundModifier_v2_94.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_247_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_196();
    l0 = self.box_Delay_v5_247;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|787014602", "787014602", "MIS_025_Manager", "box_Delay_v5_247.TimeElapsed", "box_MissionBlockLayer_196.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_286_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PersistentParticlesModifier_284();
    l0 = self.box_OnceOnly_v3_286;
    l1 = self.box_PersistentParticlesModifier_284;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1934219916", "1934219916", "MIS_025_Manager", "box_OnceOnly_v3_286.Out", "box_PersistentParticlesModifier_284.StartParticles", l0:GetLuaBox(), l1:GetLuaBox());
    -- StartParticles
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_55_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_57();
    l0 = self.box_Delay_v5_57;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1396784511", "1396784511", "MIS_025_Manager", "box_ParticleSystem_v3_55.Started", "box_Delay_v5_57.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_GetPlayerGroup_v2_2_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_2_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideMenuAccessibility_v2_20();
    l0 = self.box_OverrideMenuAccessibility_v2_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|726927149", "726927149", "MIS_025_Manager", "box_GetPlayerGroup_v2_2.Out", "box_OverrideMenuAccessibility_v2_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_PlayDialog_v6_156_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_156;
    l1 = self.box_MultipleOR_158;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|518048891", "518048891", "MIS_025_Manager", "box_PlayDialog_v6_156.Started", "box_MultipleOR_158.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 9);
end;

function export:f_box_Delay_v5_35_LoopingEnded()
    local params, l0;
    params = self:OnEnter_box_Delay_v5_35();
    l0 = self.box_Delay_v5_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2033893696", "2033893696", "MIS_025_Manager", "box_Delay_v5_35.LoopingEnded", "box_Delay_v5_35.Stop", l0:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_Delay_v5_35_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ExtinguishAllFires_175();
    l0 = self.box_Delay_v5_35;
    l1 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1007973642", "1007973642", "MIS_025_Manager", "box_Delay_v5_35.TimeElapsed", "box_ExtinguishAllFires_175.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_145_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_145;
    l1 = self.box_MultipleOR_158;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|291268372", "291268372", "MIS_025_Manager", "box_PlayDialog_v6_145.Started", "box_MultipleOR_158.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 6);
end;

function export:f_box_Delay_v5_172_Stopped()
    local l0, l1;
    l0 = self.box_Delay_v5_172;
    l1 = self.box_MultipleOR_169;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1162380743", "1162380743", "MIS_025_Manager", "box_Delay_v5_172.Stopped", "box_MultipleOR_169.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_172_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_172;
    l1 = self.box_MultipleOR_176;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1735119875", "1735119875", "MIS_025_Manager", "box_Delay_v5_172.TimeElapsed", "box_MultipleOR_176.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityState_v2_37_Active()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionAckTriggerListener_33();
    l0 = self.box_MissionAckTriggerListener_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1215609025", "1215609025", "MIS_025_Manager", "box_GetActivityState_v2_37.Active", "box_MissionAckTriggerListener_33.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetActivityState_v2_37_Canceled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_188;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1283559622", "1283559622", "MIS_025_Manager", "box_GetActivityState_v2_37.Canceled", "box_MultipleOR_188.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_GetActivityState_v2_37_Completed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_188;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|94746409", "94746409", "MIS_025_Manager", "box_GetActivityState_v2_37.Completed", "box_MultipleOR_188.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_GetActivityState_v2_37_Inactive()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_188;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|22794784", "22794784", "MIS_025_Manager", "box_GetActivityState_v2_37.Inactive", "box_MultipleOR_188.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityState_v2_37_Unavailable()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_188;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1946042425", "1946042425", "MIS_025_Manager", "box_GetActivityState_v2_37.Unavailable", "box_MultipleOR_188.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_ProximityRadiusListener_v3_350_AllFar()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_353();
    l0 = self.box_ProximityRadiusListener_v3_350;
    l1 = self.box_DisplayCustomUIMsg_v5_353;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1071662642", "1071662642", "MIS_025_Manager", "box_ProximityRadiusListener_v3_350.AllFar", "box_DisplayCustomUIMsg_v5_353.Display", l0:GetLuaBox(), l1:GetLuaBox());
    -- Display
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_350_AllNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_350;
    l1 = self.box_MultipleOR_98;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1968600998", "1968600998", "MIS_025_Manager", "box_ProximityRadiusListener_v3_350.AllNear", "box_MultipleOR_98.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_350_Disabled()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_350;
    l1 = self.box_MultipleOR_98;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1753377420", "1753377420", "MIS_025_Manager", "box_ProximityRadiusListener_v3_350.Disabled", "box_MultipleOR_98.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityRadiusListener_v3_350_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_178();
    l0 = self.box_ProximityRadiusListener_v3_350;
    l1 = self.box_ProximityRadiusListener_v3_178;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1601959651", "1601959651", "MIS_025_Manager", "box_ProximityRadiusListener_v3_350.Enabled", "box_ProximityRadiusListener_v3_178.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_162_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_143();
    l0 = self.box_MultipleOR_162;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|417118390", "417118390", "MIS_025_Manager", "box_MultipleOR_162.Out", "box_RandomFloat_v2_143.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_65_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_65;
    l1 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1366771340", "1366771340", "MIS_025_Manager", "box_PlayDialog_v6_65.Finished", "box_MultipleOR_75.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_65_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_65;
    l1 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1018887155", "1018887155", "MIS_025_Manager", "box_PlayDialog_v6_65.FinishedInterrupted", "box_MultipleOR_75.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_65_StartedPriorityFailed()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_65;
    l1 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|546072865", "546072865", "MIS_025_Manager", "box_PlayDialog_v6_65.StartedPriorityFailed", "box_MultipleOR_75.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ForceExitVehicle_v2_116_ForceExitted()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ForceExitVehicle_v2_118();
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|453287386", "453287386", "MIS_025_Manager", "box_ForceExitVehicle_v2_116.ForceExitted", "box_ForceExitVehicle_v2_118.ForceExit", clone:GetLuaBox(), l0:GetLuaBox());
    -- ForceExit
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_230_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_232();
    l0 = self.box_ProximityTrigger_v3_230;
    l1 = self.box_SoundModifier_v2_232;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2088171744", "2088171744", "MIS_025_Manager", "box_ProximityTrigger_v3_230.Enter", "box_SoundModifier_v2_232.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_PlayDialog_v6_51_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_51;
    l1 = self.box_MultipleOR_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1780142939", "1780142939", "MIS_025_Manager", "box_PlayDialog_v6_51.Finished", "box_MultipleOR_50.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_51_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_51;
    l1 = self.box_MultipleOR_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1041680454", "1041680454", "MIS_025_Manager", "box_PlayDialog_v6_51.FinishedInterrupted", "box_MultipleOR_50.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_106_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_334();
    l0 = self.box_PlayDialog_v6_106;
    l1 = self.box_Delay_v5_334;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2062040220", "2062040220", "MIS_025_Manager", "box_PlayDialog_v6_106.Finished", "box_Delay_v5_334.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_106_Started()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_332();
    l0 = self.box_PlayDialog_v6_106;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|474136791", "474136791", "MIS_025_Manager", "box_PlayDialog_v6_106.Started", "box_ParticleSystem_v3_332.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionAckTriggerListener_349_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MissionAckTriggerListener_133();
    l0 = self.box_MissionAckTriggerListener_349;
    l1 = self.box_MissionAckTriggerListener_133;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1068545153", "1068545153", "MIS_025_Manager", "box_MissionAckTriggerListener_349.Enabled", "box_MissionAckTriggerListener_133.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MissionAckTriggerListener_349_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_348();
    l0 = self.box_MissionAckTriggerListener_349;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|685244103", "685244103", "MIS_025_Manager", "box_MissionAckTriggerListener_349.Enter", "box_OutputOrder_v2_348.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_126_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_127();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1210756956", "1210756956", "MIS_025_Manager", "box_UseContextualActionModifier_v3_126.Disabled", "box_UseContextualActionModifier_v3_127.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_126_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_127();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1721789083", "1721789083", "MIS_025_Manager", "box_UseContextualActionModifier_v3_126.Enabled", "box_UseContextualActionModifier_v3_127.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PersistentParticlesModifier_28_OnStopParticles()
    local params, l0, l1;
    params = self:OnEnter_box_TeleportPawns_15();
    l0 = self.box_PersistentParticlesModifier_28;
    l1 = self.box_TeleportPawns_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|49221844", "49221844", "MIS_025_Manager", "box_PersistentParticlesModifier_28.OnStopParticles", "box_TeleportPawns_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_48_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_51();
    l0 = self.box_MultipleOR_48;
    l1 = self.box_PlayDialog_v6_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1941169661", "1941169661", "MIS_025_Manager", "box_MultipleOR_48.Out", "box_PlayDialog_v6_51.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:OnEnter_box_Simple_Node_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|@B40_started");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_88_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_168()
    local params;
    params = {
        -- Group,
        [0] = "2109843242265619930",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4041936191",
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_v2_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|16028659");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_v2_30_NotValid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015351461357245",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_130()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109331804465934201",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_159()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_224()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109951773792809704",
    };
    return params;
end;

function export:OnEnter_box_PersistentParticlesModifier_288()
    local params;
    params = {
        -- fadeDuration,
        [0] = 0,
        -- particleSystem,
        [1] = "newparticles/63058549911183370.part",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_278()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_192()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "MIS_025_B40_FailSafeMarker",
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_227()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_227");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|38383410");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_227_FactNotSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015350620672304",
        -- Fact,
        [1] = "MIS_025_ALARM",
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_143()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_143");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|39452425");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_143_Out,
    });
    params = {
        -- Max,
        [0] = 5,
        -- Min,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|44183187");
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
                [0] = self.f_box_OutputOrder_v2_41_Out_0,
                [1] = self.f_box_OutputOrder_v2_41_Out_1,
                [3] = self.f_box_OutputOrder_v2_41_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|58599201");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_92_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = self.objective,
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v3_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v3_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|77236598");
    l0:SetConnections({
        -- Alive,
        [0] = self.f_box_IsPawnAlive_v3_72_Alive,
        -- DeadOrDown,
        [1] = self.f_box_IsPawnAlive_v3_72_DeadOrDown,
        -- NotLoaded,
        [2] = self.f_box_IsPawnAlive_v3_72_NotLoaded,
    });
    params = {
        -- Pawn,
        [0] = "2109595153860670305",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_166()
    local params;
    params = {
        -- Group,
        [0] = "2109843242265619930",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "301774942",
    };
    return params;
end;

function export:OnEnter_box_MoonModifier_29()
    local params;
    params = {
        -- Azimuth,
        [0] = -80,
        -- Elevation,
        [1] = 20,
        -- HDRMultiplier,
        [2] = 1,
        -- Phase,
        [3] = -2,
        -- ResetAfterBeat,
        [4] = true,
        -- Size,
        [5] = 1,
    };
    return params;
end;

function export:OnEnter_box_PersistentParticlesModifier_193()
    local params;
    params = {
        -- fadeDuration,
        [0] = 15,
        -- particleSystem,
        [1] = "newparticles/9015345236642318.part",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_235()
    local params;
    params = {
        -- Pawns,
        [0] = "2109952259723899758",
        -- SoundId,
        [1] = "4093346419",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|157620185");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 12,
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
                [1] = self.f_box_OutputOrder_v2_31_Out_1,
                [2] = self.f_box_OutputOrder_v2_31_Out_2,
                [3] = self.f_box_OutputOrder_v2_31_Out_3,
                [4] = self.f_box_OutputOrder_v2_31_Out_4,
                [6] = self.f_box_OutputOrder_v2_31_Out_6,
                [7] = self.f_box_OutputOrder_v2_31_Out_7,
                [8] = self.f_box_OutputOrder_v2_31_Out_8,
                [9] = self.f_box_OutputOrder_v2_31_Out_9,
                [10] = self.f_box_OutputOrder_v2_31_Out_10,
                [11] = self.f_box_OutputOrder_v2_31_Out_11,
            },
            count = 12,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_154()
    local params;
    params = {
        -- Group,
        [0] = "2109843229292637656",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1993101182",
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_15()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2108251401728568989",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "#5B9E5CA4",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_236()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109952218424685416",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|175492375");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_83_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109748659561176099",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|177807359");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "MIS_025_Manager Mission Started",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_189()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_189");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|186850022");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_TaggingModifier_v3_189_Enabled,
    });
    params = {
        -- Entity,
        [0] = PersistentGlobals.MIS_025_Manager.rush,
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_356()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_356");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|198543728");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_356_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109609812110147849",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_335()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_PersistentParticlesModifier_222()
    local params;
    params = {
        -- fadeDuration,
        [0] = 0,
        -- particleSystem,
        [1] = "newparticles/9015345236642318.part",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_265()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_265");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|249672169");
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
                [0] = self.f_box_OutputOrder_v2_265_Out_0,
                [1] = self.f_box_OutputOrder_v2_265_Out_1,
                [2] = self.f_box_OutputOrder_v2_265_Out_2,
                [3] = self.f_box_OutputOrder_v2_265_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_164()
    local params;
    params = {
        -- Group,
        [0] = "2109843242265619930",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2989533942",
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_v2_272()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015351461357245",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_InputPriorityModifier_v4_150()
    local params;
    params = {
        -- InputPriority,
        [0] = "cinema",
        -- pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_PersistentParticlesModifier_100()
    local params;
    params = {
        -- fadeDuration,
        [0] = 0,
        -- particleSystem,
        [1] = "newparticles/9015334630293318.part",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_BonusPlanModifier_v3_47()
    local params;
    params = {
        -- BonusPlanName,
        [0] = "bowmore_tag",
        -- Entities,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_360()
    local params;
    params = {
        -- Group,
        [0] = "#8F440F5A",
    };
    return params;
end;

function export:OnEnter_box_SetOasis_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetOasis_107");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|293824773");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetOasis_107_Out,
    });
    params = {
        -- Oasis,
        [0] = {
            section = "Objectives",
            item = "MIS_025_OBJ_01_Investigate",
            id = "1030906",
        },
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_217()
    local params;
    params = {
        -- Pawns,
        [0] = "2109951761761448676",
        -- SoundId,
        [1] = "4093346419",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_MissionAckTriggerListener_277()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- triggerId,
        [1] = "2109471008825032909",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_132()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109456317044250935",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_214()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109951755314803426",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_205()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_205");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|344535137");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_205_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ForceExitVehicle_v2_118()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceExitVehicle_v2_118");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|352477448");
    l0:SetConnections({
        -- ForceExitted,
        [0] = self.f_box_ForceExitVehicle_v2_118_ForceExitted,
    });
    params = {
        -- noFail,
        [0] = true,
        -- pawns,
        [1] = "#8F440F5A",
        -- vehicle,
        [2] = "2109456317056833856",
    };
    return params;
end;

function export:OnEnter_box_MissionAckTriggerListener_275()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- triggerId,
        [1] = "2109374063001520649",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_337()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_204()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_204");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|369145194");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "MIS_025_B40_FailSafeMarker",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_361()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 35,
    };
    return params;
end;

function export:OnEnter_box_PersistentParticlesModifier_219()
    local params;
    params = {
        -- fadeDuration,
        [0] = 15,
        -- particleSystem,
        [1] = "newparticles/9015345236642318.part",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_276()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109570017159830505",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|389988909");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_39_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2109679437296446799",
        -- ObjectiveId,
        [2] = self.objective,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_218()
    local params;
    params = {
        -- Pawns,
        [0] = "2109951769892106982",
        -- SoundId,
        [1] = "4093346419",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_148()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_ForceExitVehicle_v2_115()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceExitVehicle_v2_115");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|404389294");
    l0:SetConnections({
        -- ForceExitted,
        [0] = self.f_box_ForceExitVehicle_v2_115_ForceExitted,
    });
    params = {
        -- noFail,
        [0] = true,
        -- pawns,
        [1] = "#8F440F5A",
        -- vehicle,
        [2] = "2109331810591715307",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_167()
    local params;
    params = {
        -- Group,
        [0] = "2109843242265619930",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1825810423",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_196()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_196");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|427701544");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_196_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160317620781682",
        -- missionLayerId,
        [1] = "54181915385324033",
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_223()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015328870637778",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_52()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "2109706663870082272",
        -- id2,
        [3] = self.Player,
        -- nearZone,
        [4] = 20,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_120()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_120");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|441155067");
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
                [1] = self.f_box_OutputOrder_v2_120_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|442288208");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_80_Out,
    });
    params = {
        -- Max,
        [0] = 1.5,
        -- Min,
        [1] = 0.3,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_184()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109347518222516848",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_129()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_129");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|462827343");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_129_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109442253765320403",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|469473282");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_76_Out,
    });
    params = {
        -- Entity,
        [0] = "2109595153860670305",
    };
    return params;
end;

function export:OnEnter_box_MissionAckTriggerListener_133()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- triggerId,
        [1] = "2109260396748615115",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_238()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_238");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|480076254");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109968669097343828",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_357()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_357");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|486765035");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_357_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = self.objective,
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|493798195");
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
                [1] = self.f_box_OutputOrder_v2_38_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_19()
    local params;
    params = {
        -- Group,
        [0] = "2109843229292637656",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1023351621",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_229()
    local params;
    params = {
        -- Pawns,
        [0] = "2109951769892106982",
        -- SoundId,
        [1] = "4093346419",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_253()
    local params;
    params = {
        -- Group,
        [0] = PersistentGlobals.MIS_025_Manager.rush,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4231408048",
    };
    return params;
end;

function export:OnEnter_box_PersistentParticlesModifier_102()
    local params;
    params = {
        -- fadeDuration,
        [0] = 5,
        -- particleSystem,
        [1] = "newparticles/9015334630293318.part",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OverrideEnvironment_v3_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideEnvironment_v3_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|529726473");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_OverrideEnvironment_v3_12_Enabled,
    });
    params = {
        -- ratio,
        [9] = 1,
        -- transitionTime,
        [13] = 5,
        -- wind,
        [14] = "FCZ_Proto_LD_Selena_Wrath:BOW_MIS_025.Wind_Storm_LOW",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_165()
    local params;
    params = {
        -- Group,
        [0] = "2109843242265619930",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1501590458",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|565750154");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_86_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109748660267916327",
    };
    return params;
end;

function export:OnEnter_box_PersistentParticlesModifier_221()
    local params;
    params = {
        -- fadeDuration,
        [0] = 0,
        -- particleSystem,
        [1] = "newparticles/9015344725208974.part",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_68()
    local params;
    params = {
        -- Group,
        [0] = PersistentGlobals.MIS_025_Manager.rush,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3125029023",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_190()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_190");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|579640295");
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
                [0] = self.f_box_OutputOrder_v2_190_Out_0,
                [1] = self.f_box_OutputOrder_v2_190_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OverrideEnvironment_v3_122()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideEnvironment_v3_122");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|596515009");
    l0:SetConnections({
    });
    params = {
        -- ratio,
        [9] = 1,
        -- transitionTime,
        [13] = 5,
        -- wind,
        [14] = "FCZ_Proto_LD_Selena_Wrath:BOW_MIS_025.Wind_Storm_HIGH",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_69()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 8,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_294()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_294");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|623616173");
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

function export:OnEnter_box_Bind_v4_211()
    local params;
    params = {
        -- EntityA,
        [1] = "2109456317056833856",
        -- EntityB,
        [2] = "2109748594073410591",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_240()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_240");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|651822014");
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
                [0] = self.f_box_OutputOrder_v2_240_Out_0,
                [1] = self.f_box_OutputOrder_v2_240_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|653494943");
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
                [0] = self.f_box_OutputOrder_v2_16_Out_0,
                [1] = self.f_box_OutputOrder_v2_16_Out_1,
                [2] = self.f_box_OutputOrder_v2_16_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|663678312");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_85_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109748658665692193",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|686755273");
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
                [0] = self.f_box_OutputOrder_v2_77_Out_0,
                [2] = self.f_box_OutputOrder_v2_77_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_139()
    local params;
    params = {
        -- Group,
        [0] = "2109843229292637656",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "28366522",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_251()
    local params;
    params = {
        -- Group,
        [0] = PersistentGlobals.MIS_025_Manager.rush,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4278316856",
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_v2_121()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015351461357245",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_FastTravelModifier_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FastTravelModifier_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|738111440");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_FastTravelModifier_v2_4_Disabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_348()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_348");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|740674740");
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
                [0] = self.f_box_OutputOrder_v2_348_Out_0,
                [1] = self.f_box_OutputOrder_v2_348_Out_1,
                [2] = self.f_box_OutputOrder_v2_348_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Random_82()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 5,
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_249()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_249");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|770924825");
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
                [0] = self.f_box_OutputOrder_v2_249_Out_0,
                [1] = self.f_box_OutputOrder_v2_249_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_93()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|781864695");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160317620781682",
        -- missionLayerId,
        [1] = "36167516875522675",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_291()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_248()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_197()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_197");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|827027112");
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
                [0] = self.f_box_OutputOrder_v2_197_Out_0,
                [1] = self.f_box_OutputOrder_v2_197_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_258()
    local params;
    params = {
        -- Group,
        [0] = PersistentGlobals.MIS_025_Manager.rush,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3885491255",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_233()
    local params;
    params = {
        -- Pawns,
        [0] = "2109952232941171564",
        -- SoundId,
        [1] = "4093346419",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_44()
    local params;
    params = {
        -- Group,
        [0] = PersistentGlobals.MIS_025_Manager.rush,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "503363967",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_90()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109943886561424097",
    };
    return params;
end;

function export:OnEnter_box_RestrictedItemModifier_v2_97()
    local params;
    params = {
        -- allowedItemFilterID,
        [1] = "9015356267264662",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_232()
    local params;
    params = {
        -- Pawns,
        [0] = "2109952232941171564",
        -- SoundId,
        [1] = "4093346419",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_128()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_128");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|911959279");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_128_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_128_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109442269865156311",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_210()
    local params;
    params = {
        -- EntityA,
        [1] = "2109456315418958113",
        -- EntityB,
        [2] = "2109748659561176099",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_170()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_170");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|950965511");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_170_FactNotSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015350620672304",
        -- Fact,
        [1] = "MIS_025_ALARM",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_334()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|985529068");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_87_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109748659873651749",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|998097274");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_DynamicLightModifier_58_Enabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2109707209645508513",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_342()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109610188723000546",
    };
    return params;
end;

function export:OnEnter_box_PlayerSpeedModifier_v3_151()
    local params;
    params = {
        -- blendTime,
        [0] = 0,
        -- factor,
        [1] = 0,
        -- Players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_144()
    local params;
    params = {
        -- Group,
        [0] = "2109843242265619930",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4085132984",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_127()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_127");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1054331853");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_127_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_127_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109442272155246299",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_339()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.7,
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_v2_23()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015351461379618",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1063897942");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_11_Out,
    });
    params = {
        -- Hour,
        [0] = 0,
        -- Minute,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_PersistentParticlesModifier_220()
    local params;
    params = {
        -- fadeDuration,
        [0] = 0,
        -- particleSystem,
        [1] = "newparticles/63058540764425256.part",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_84()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1082379585");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_84_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109748594073410591",
    };
    return params;
end;

function export:OnEnter_box_PlayerSpeedModifier_v3_157()
    local params;
    params = {
        -- blendTime,
        [0] = 0,
        -- factor,
        [1] = 1,
        -- Players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_45()
    local params;
    params = {
        -- Group,
        [0] = PersistentGlobals.MIS_025_Manager.barnes,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1314831807",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_209()
    local params;
    params = {
        -- EntityA,
        [1] = "2109331810591715307",
        -- EntityB,
        [2] = "2109748659873651749",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_124()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_225()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_225");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1103414548");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_225_FactNotSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015350620982647",
        -- Fact,
        [1] = "MIS_025_B20_AlarmMode",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_208()
    local params;
    params = {
        -- Pawns,
        [0] = "2109943880523723487",
        -- SoundId,
        [1] = "4093346419",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Switch_250()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SetOasis_358()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetOasis_358");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1147246593");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetOasis_358_Out,
    });
    params = {
        -- Oasis,
        [0] = {
            section = "Objectives",
            item = "MIS_025_OBJ_02_Escape",
            id = "1034662",
        },
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_140()
    local params;
    params = {
        -- Group,
        [0] = "2109843229292637656",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2624524819",
    };
    return params;
end;

function export:OnEnter_box_OverrideMenuAccessibility_v2_20()
    local params;
    params = {
        -- ActivityLogMenuEnabled,
        [0] = true,
        -- AvatarCreationMenuEnabled,
        [1] = false,
        -- AvatarCustomizationMenuEnabled,
        [2] = false,
        -- ChallengeMenuEnabled,
        [3] = false,
        -- HomebaseMenuEnabled,
        [4] = false,
        -- LootMenuEnabled,
        [5] = false,
        -- OnlineMenuEnabled,
        [6] = false,
        -- PerksMenuEnabled,
        [7] = false,
        -- SquadMenuEnabled,
        [8] = false,
        -- WorldmapMenuEnabled,
        [9] = false,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_113()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "MIS_025_B40_EndCinStarted",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_215()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "MIS_025_B40_StartStormHigh",
    };
    return params;
end;

function export:OnEnter_box_MissionAckTriggerListener_173()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- triggerId,
        [1] = "2109347518222516848",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_345()
    local params;
    params = {
        -- Pawns,
        [0] = "2109619734619105612",
        -- SoundId,
        [1] = "174456189",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 10,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_119()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_119");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1229249264");
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

function export:OnEnter_box_PlayDialog_v6_136()
    local params;
    params = {
        -- Group,
        [0] = PersistentGlobals.MIS_025_Manager.barnes,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1267756297",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_183()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_183");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1254879710");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_183_Out,
    });
    params = {
        -- Fact,
        [0] = "MIS_025_ALARM",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_257()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_257");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1259668845");
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
                [0] = self.f_box_OutputOrder_v2_257_Out_0,
                [1] = self.f_box_OutputOrder_v2_257_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_290()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109584256010300069",
    };
    return params;
end;

function export:OnEnter_box_PersistentParticlesModifier_198()
    local params;
    params = {
        -- fadeDuration,
        [0] = 15,
        -- particleSystem,
        [1] = "newparticles/63058540764425256.part",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_26()
    local params;
    params = {
        -- timeScale,
        [0] = 1,
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_5()
    local params;
    params = {
        -- timeScale,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_142()
    local params;
    params = {
        -- Group,
        [0] = "2109843242265619930",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2326773054",
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_195()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#719A9809",
    };
    return params;
end;

function export:OnEnter_box_PersistentParticlesModifier_99()
    local params;
    params = {
        -- fadeDuration,
        [0] = 5,
        -- particleSystem,
        [1] = "newparticles/18022555641381588.part",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_152()
    local params;
    params = {
        -- Group,
        [0] = "2109843242265619930",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3840146655",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_216()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "MIS_025_B40_StartStormVeryHigh",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_252()
    local params;
    params = {
        -- Group,
        [0] = PersistentGlobals.MIS_025_Manager.barnes,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "629282281",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_237()
    local params;
    params = {
        -- Pawns,
        [0] = "2109952259723899758",
        -- SoundId,
        [1] = "4093346419",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_155()
    local params;
    params = {
        -- Group,
        [0] = "2109843242265619930",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3164349161",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_289()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109584256010300069",
    };
    return params;
end;

function export:OnEnter_box_PersistentParticlesModifier_101()
    local params;
    params = {
        -- fadeDuration,
        [0] = 5,
        -- particleSystem,
        [1] = "newparticles/18022555641381588.part",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_213()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_213");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1368867566");
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
                [0] = self.f_box_OutputOrder_v2_213_Out_0,
                [1] = self.f_box_OutputOrder_v2_213_Out_1,
                [2] = self.f_box_OutputOrder_v2_213_Out_2,
                [3] = self.f_box_OutputOrder_v2_213_Out_3,
                [4] = self.f_box_OutputOrder_v2_213_Out_4,
                [5] = self.f_box_OutputOrder_v2_213_Out_5,
                [6] = self.f_box_OutputOrder_v2_213_Out_6,
                [7] = self.f_box_OutputOrder_v2_213_Out_7,
            },
            count = 8,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1379831178");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_8_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_234()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109952225469018986",
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_171()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_171");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1397681281");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_171_FactNotSet,
        -- FactSet,
        [1] = self.f_box_GetActivityFact_171_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015350620982647",
        -- Fact,
        [1] = "MIS_025_B20_AlarmMode",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_242()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_242");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1409284493");
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
                [0] = self.f_box_OutputOrder_v2_242_Out_0,
                [1] = self.f_box_OutputOrder_v2_242_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_153()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_96()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.2,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1421191836");
    l0:SetConnections({
        -- Destroyed,
        [1] = self.f_box_StaticBreakableBreaker_53_Destroyed,
    });
    params = {
        -- entity,
        [0] = "2109706638595206363",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_OverrideDisabledLogicId_112()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideDisabledLogicId_112");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1424829640");
    l0:SetConnections({
    });
    params = {
        -- disableUI,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1426157074");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_64_Out,
    });
    params = {
        -- Entity,
        [0] = "2109620937987989740",
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_191()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#719A9809",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_203()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "3900798261",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_207()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_32()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_332()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_332");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1472280202");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_332_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109609812110147849",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_182()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayerSpeedModifier_v3_149()
    local params;
    params = {
        -- blendTime,
        [0] = 0,
        -- factor,
        [1] = 1,
        -- Players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_212()
    local params;
    params = {
        -- EntityA,
        [1] = "2109610188737680619",
        -- EntityB,
        [2] = "2109748660267916327",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v5_353()
    local params;
    params = {
        -- MessageId,
        [0] = {
            section = "Objectives",
            item = "MIS_140_B40_WarningRush",
            id = "1033193",
        },
        -- MessageType,
        [1] = 1,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_108()
    local params;
    params = {
        -- Pawns,
        [0] = "2109896635573088857",
        -- SoundId,
        [1] = "3551202739",
        -- SoundType,
        [2] = 0,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_254()
    local params;
    params = {
        -- Group,
        [0] = PersistentGlobals.MIS_025_Manager.barnes,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2517553809",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_163()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_57()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_ForceExitVehicle_v2_114()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceExitVehicle_v2_114");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1569551125");
    l0:SetConnections({
        -- ForceExitted,
        [0] = self.f_box_ForceExitVehicle_v2_114_ForceExitted,
    });
    params = {
        -- noFail,
        [0] = true,
        -- pawns,
        [1] = "#8F440F5A",
        -- vehicle,
        [2] = "2109610188737680619",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_161()
    local params;
    params = {
        -- Group,
        [0] = "2109843242265619930",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3100690377",
    };
    return params;
end;

function export:OnEnter_box_SetLoadingVideo_117()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/SetLoadingVideo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetLoadingVideo_117");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1588602773");
    l0:SetConnections({
    });
    params = {
        -- videoId,
        [0] = 15,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_177()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_177");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1590555944");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "BRICK_Escort_NPC_To_Position",
            item = "BRICK_Escort_NPC_FailTooFar",
            id = "376650",
        },
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_123()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109441695276957940",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_67()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_25()
    local params;
    params = {
        -- Group,
        [0] = PersistentGlobals.MIS_025_Manager.rush,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1728956721",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_228()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109951780195414762",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_174()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109510905170504493",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_231()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109952205600600932",
    };
    return params;
end;

function export:OnEnter_box_MoonModifier_3()
    local params;
    params = {
        -- Azimuth,
        [0] = 184.92,
        -- Elevation,
        [1] = 29.99,
        -- HDRMultiplier,
        [2] = 1,
        -- Phase,
        [3] = 0.7,
        -- ResetAfterBeat,
        [4] = false,
        -- Size,
        [5] = 10,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1665216068");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2109707255327773018",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_260()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_131()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109456315404278040",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1703389148");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ExtinguishAllFires_175()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExtinguishAllFires_175");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1715604541");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_241()
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
        [6] = "4047574385",
        -- StopEvent,
        [7] = "1903774645",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_202()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_202");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1722911080");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_202_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109220810810994616",
        -- Group,
        [1] = PersistentGlobals.MIS_025_Manager.rush,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_40()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_256()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1733249736");
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
                [0] = self.f_box_OutputOrder_v2_70_Out_0,
                [2] = self.f_box_OutputOrder_v2_70_Out_2,
                [3] = self.f_box_OutputOrder_v2_70_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_59()
    local params;
    params = {
        -- Group,
        [0] = "2109843229292637656",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1329761538",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_181()
    local params;
    params = {
        -- Pawns,
        [0] = "2109896635573088857",
        -- SoundId,
        [1] = "2323568255",
        -- SoundType,
        [2] = 0,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_49()
    local params;
    params = {
        -- Group,
        [0] = PersistentGlobals.MIS_025_Manager.barnes,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1388279777",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1771379804");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_56_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109707090279806511",
    };
    return params;
end;

function export:OnEnter_box_Switch_160()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_36()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v3_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v3_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1804016000");
    l0:SetConnections({
        -- Alive,
        [0] = self.f_box_IsPawnAlive_v3_74_Alive,
        -- DeadOrDown,
        [1] = self.f_box_IsPawnAlive_v3_74_DeadOrDown,
        -- NotLoaded,
        [2] = self.f_box_IsPawnAlive_v3_74_NotLoaded,
    });
    params = {
        -- Pawn,
        [0] = "2109620937987989740",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_243()
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
        [6] = "4047574385",
        -- StopEvent,
        [7] = "1903774645",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_178()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.Player,
        -- farZone,
        [2] = 230,
        -- id2,
        [3] = PersistentGlobals.MIS_025_Manager.rush,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_PersistentParticlesModifier_194()
    local params;
    params = {
        -- fadeDuration,
        [0] = 15,
        -- particleSystem,
        [1] = "newparticles/9015344725208974.part",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_125()
    local params;
    params = {
        -- Group,
        [0] = "#DA749AE3",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_138()
    local params;
    params = {
        -- Group,
        [0] = "2109843229292637656",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1698860042",
    };
    return params;
end;

function export:OnEnter_box_BonusPlanModifier_v3_239()
    local params;
    params = {
        -- BonusPlanName,
        [0] = "bowmore_tag",
        -- Entities,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_MissionAckTriggerListener_33()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- triggerId,
        [1] = "2109318263268716587",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_61()
    local params;
    params = {
        -- Delay,
        [2] = 1,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "2326602970",
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|1911239111");
    l0:SetConnections({
        -- Active,
        [0] = self.f_box_GetActivityState_v2_66_Active,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015350742752554",
    };
    return params;
end;

function export:OnEnter_box_RestrictedItemModifier_v2_95()
    local params;
    params = {
        -- allowedItemFilterID,
        [1] = "9015356267264662",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_94()
    local params;
    params = {
        -- Pawns,
        [0] = "2109896635573088857",
        -- SoundId,
        [1] = "1317995542",
        -- SoundType,
        [2] = 0,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_46()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015328870620083",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_141()
    local params;
    params = {
        -- Group,
        [0] = "2109843229292637656",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4231363732",
    };
    return params;
end;

function export:OnEnter_box_PersistentParticlesModifier_284()
    local params;
    params = {
        -- fadeDuration,
        [0] = 15,
        -- particleSystem,
        [1] = "newparticles/63058549911183370.part",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_247()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 11,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2009491552");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2109247760724136279",
        -- ObjectiveId,
        [2] = self.objective,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2017383871");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_55_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109706839368143346",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2018743511");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_2_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_156()
    local params;
    params = {
        -- Group,
        [0] = "2109843242265619930",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4016745496",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_35()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- nbLoop,
        [1] = 10,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_145()
    local params;
    params = {
        -- Group,
        [0] = "2109843242265619930",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3960144307",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_172()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2033787762");
    l0:SetConnections({
        -- Active,
        [0] = self.f_box_GetActivityState_v2_37_Active,
        -- Canceled,
        [1] = self.f_box_GetActivityState_v2_37_Canceled,
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_37_Completed,
        -- Inactive,
        [4] = self.f_box_GetActivityState_v2_37_Inactive,
        -- Unavailable,
        [6] = self.f_box_GetActivityState_v2_37_Unavailable,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015350742752554",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_350()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.Player,
        -- farZone,
        [2] = 170,
        -- id2,
        [3] = PersistentGlobals.MIS_025_Manager.rush,
        -- nearZone,
        [4] = 130,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_65()
    local params;
    params = {
        -- Group,
        [0] = self.npc_diag,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3315415770",
    };
    return params;
end;

function export:OnEnter_box_ForceExitVehicle_v2_116()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceExitVehicle_v2_116");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2073170702");
    l0:SetConnections({
        -- ForceExitted,
        [0] = self.f_box_ForceExitVehicle_v2_116_ForceExitted,
    });
    params = {
        -- noFail,
        [0] = true,
        -- pawns,
        [1] = "#8F440F5A",
        -- vehicle,
        [2] = "2109456315418958113",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_230()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109952214205215590",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_51()
    local params;
    params = {
        -- Group,
        [0] = PersistentGlobals.MIS_025_Manager.rush,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1726338215",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_106()
    local params;
    params = {
        -- Group,
        [0] = "2109843229292637656",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4006244345",
    };
    return params;
end;

function export:OnEnter_box_MissionAckTriggerListener_349()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- triggerId,
        [1] = "2109623577385921917",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_126()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_126");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_Manager.domino|@MIS_025_Manager|2126021839");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_126_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_126_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109442272744546015",
    };
    return params;
end;

function export:OnEnter_box_PersistentParticlesModifier_28()
    local params;
    params = {
        -- fadeDuration,
        [0] = 0,
        -- particleSystem,
        [1] = "newparticles/81072929500895263.part",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnExit_box_RandomFloat_v2_143_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_148;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetOasis_107_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.objective = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_205_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    PersistentGlobals.MIS_025_Manager.radio_call = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_v2_223_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_v2_223;
    PersistentGlobals.MIS_025_Manager.barnes = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_80_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_81;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_76_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.npc_diag = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetOasis_358_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.objective = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_8_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.Player = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_64_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.npc_diag = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_v2_46_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_v2_46;
    PersistentGlobals.MIS_025_Manager.rush = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_2_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.PlayerGroup = l0:GetDataOutValue(0);
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
