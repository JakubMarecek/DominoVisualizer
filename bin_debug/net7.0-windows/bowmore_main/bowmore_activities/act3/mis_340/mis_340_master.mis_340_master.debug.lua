LUACn� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_340/mis_340_master.domino
-- User graph: MIS_340_MASTER
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
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp_V2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityState_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/AlarmModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/RegenerateNavmesh.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAIRequestGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
        cboxRes:RegisterBox("Domino/System/ColorRemapTextureModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareEntity.lua");
        cboxRes:RegisterBox("Domino/System/CompareFloats.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/FastTravelModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/FloatArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/GetHealthState.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GetTimeOfDay_v2.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/IsGunsForHire_v2.lua");
        cboxRes:RegisterBox("Domino/System/IsPawnAlive_v3.lua");
        cboxRes:RegisterBox("Domino/System/MessageListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/OverrideEnvironment_v3.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PersistentParticlesModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/PostFx_v3.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SendGSFGenericEvent.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundPointModifier.lua");
        cboxRes:RegisterBox("Domino/System/TriggerState_v2.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInteractionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_340/MIS_340_MASTER.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1730391637.bnk]], "CSoundResource");
        cboxRes:LoadResource([[newparticles/9015345512384402.part]], "CParticlesSystemParamResource");
        cboxRes:LoadResource([[4049451952.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2418032917.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3293870975.bnk]], "CSoundResource");
        cboxRes:LoadResource([[newparticles/9015344457050066.part]], "CParticlesSystemParamResource");
        cboxRes:LoadResource([[3375588294.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1439502674.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3528614461.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1732280548.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_340/MIS_340_MASTER.MIS_340_MASTER.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua")] = {
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
                name = "Cancelled",
                delayed = false,
            },
            [1] = {
                name = "LastWave_Cleanup",
                delayed = false,
            },
            [2] = {
                name = "NextWave",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "AttackersAliveToNextWave",
                type = "int",
            },
            [1] = {
                name = "AttackerSpawner_1",
                type = "entity",
            },
            [2] = {
                name = "CoreNPCGroup",
                type = "group",
            },
            [3] = {
                name = "IsLastWave",
                type = "bool",
            },
            [4] = {
                name = "NextWaveOnTimerEnd",
                type = "bool",
            },
            [5] = {
                name = "opt_AttackerSpawner_2",
                type = "entity",
            },
            [6] = {
                name = "opt_AttackerSpawner_3",
                type = "entity",
            },
            [7] = {
                name = "opt_AttackerSpawner_4",
                type = "entity",
            },
            [8] = {
                name = "opt_AttackerSpawner_5",
                type = "entity",
            },
            [9] = {
                name = "RequestGroup_1",
                type = "string",
            },
            [10] = {
                name = "RequestGroup_2",
                type = "string",
            },
            [11] = {
                name = "RequestGroup_3",
                type = "string",
            },
            [12] = {
                name = "RequestGroup_4",
                type = "string",
            },
            [13] = {
                name = "RequestGroup_5",
                type = "string",
            },
            [14] = {
                name = "Timer",
                type = "float",
            },
        },
        dataInCount = 15,
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
    metadataTable[GetPathID("Domino/System/AI/AlarmModifier_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Activate",
            },
            [1] = {
                name = "Deactivate",
            },
            [2] = {
                name = "Destroy",
            },
            [3] = {
                name = "Disable",
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
                name = "Destroyed",
                delayed = false,
            },
            [3] = {
                name = "Disabled",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "AlarmGroup",
                type = "group",
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
    metadataTable[GetPathID("Domino/System/AI/RegenerateNavmesh.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Completed",
                delayed = true,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "RegionEntity",
                type = "entity",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/CompareFloats.lua")] = {
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
                type = "float",
            },
            [1] = {
                name = "B",
                type = "float",
            },
            [2] = {
                name = "Tolerance",
                type = "float",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/FloatArithmetics_v2.lua")] = {
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
                type = "float",
            },
            [1] = {
                name = "B",
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
    metadataTable[GetPathID("Domino/System/GetHealthState.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Critical",
                delayed = false,
            },
            [1] = {
                name = "Dead",
                delayed = false,
            },
            [2] = {
                name = "Down",
                delayed = false,
            },
            [3] = {
                name = "Healthy",
                delayed = false,
            },
            [4] = {
                name = "NotLoaded",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "Pawn",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Health",
                type = "float",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/GetTimeOfDay_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "GetTimeOfDay",
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
                name = "Hour",
                type = "int",
            },
            [1] = {
                name = "Minute",
                type = "int",
            },
            [2] = {
                name = "Seconds",
                type = "int",
            },
        },
        dataOutCount = 3,
    };
    metadataTable[GetPathID("Domino/System/HealthListener_v6.lua")] = {
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
                name = "Critical",
                delayed = true,
            },
            [1] = {
                name = "Damaged",
                delayed = true,
            },
            [2] = {
                name = "Disabled",
                delayed = false,
            },
            [3] = {
                name = "Downed",
                delayed = true,
            },
            [4] = {
                name = "Enabled",
                delayed = false,
            },
            [5] = {
                name = "Healed",
                delayed = true,
            },
            [6] = {
                name = "Killed",
                delayed = true,
            },
            [7] = {
                name = "Revived",
                delayed = true,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "AutoDisable",
                type = "bool",
            },
            [1] = {
                name = "pawns",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "current",
                type = "float",
            },
            [1] = {
                name = "delta",
                type = "float",
            },
            [2] = {
                name = "emitterName",
                type = "string",
            },
            [3] = {
                name = "hitLocation",
                type = "string",
            },
            [4] = {
                name = "instigator",
                type = "entity",
            },
            [5] = {
                name = "sourceType",
                type = "string",
            },
            [6] = {
                name = "victim",
                type = "entity",
            },
        },
        dataOutCount = 7,
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
    metadataTable[GetPathID("Domino/System/IsGunsForHire_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
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
                name = "Roster",
                delayed = false,
            },
            [3] = {
                name = "Squad",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "Player",
                type = "entity",
            },
            [1] = {
                name = "targetGFHArchetype",
                type = "archetype",
            },
            [2] = {
                name = "targetGFHEntity",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "affectedGFHEntity",
                type = "entity",
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
    metadataTable[GetPathID("Domino/System/Player/PhoneCallExclusivityModifier.lua")] = {
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
        },
        dataInCount = 0,
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
    metadataTable[GetPathID("Domino/System/PositionModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cancel",
            },
            [1] = {
                name = "Start",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Cancelled",
                delayed = false,
            },
            [1] = {
                name = "Done",
                delayed = true,
            },
            [2] = {
                name = "StartOut",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "blendCurve",
                type = "archetype",
            },
            [1] = {
                name = "blendTime",
                type = "float",
            },
            [2] = {
                name = "endPos",
                type = "list",
            },
            [3] = {
                name = "endRot",
                type = "list",
            },
            [4] = {
                name = "endTarget",
                type = "entity",
            },
            [5] = {
                name = "players",
                type = "group",
            },
            [6] = {
                name = "targets",
                type = "group",
            },
            [7] = {
                name = "usePhysVelocity",
                type = "bool",
            },
            [8] = {
                name = "useSmallestAngleDiff",
                type = "bool",
            },
        },
        dataInCount = 9,
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
    metadataTable[GetPathID("Domino/System/SoundPointModifier.lua")] = {
        stateless = true,
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
                name = "Started",
                delayed = false,
            },
            [1] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "soundPoint",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/TriggerState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetAsUnusable",
            },
            [1] = {
                name = "SetAsUsable",
            },
            [2] = {
                name = "SetDisabled",
            },
            [3] = {
                name = "SetEnabled",
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
                name = "OnSetUnusable",
                delayed = false,
            },
            [3] = {
                name = "OnSetUsable",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "CheckAngle",
                type = "bool",
            },
            [1] = {
                name = "CheckLookAt",
                type = "bool",
            },
            [2] = {
                name = "Trigger",
                type = "entity",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_340_MASTER";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER";
    self.eLocalPlayer = nil;
    self.gPlayer = nil;
    self.e_UNI106 = "2108199969350495871";
    self.f_UNI105_HP = 0;
    self.f_UNI106_HP = 0;
    self.e_UNI105 = "2108613560058776545";
    self.f_hpThreshold_event_3 = 0.75;
    self.f_hpThreshold_event_2 = 0.8;
    self.db_Weapon2_UNI105 = "9015214679603873";
    self.db_Weapon2_UNI106 = "9015183783722300";
    self.db_Weapon1_UNI106 = "9015336385834805";
    self.db_Weapon1_UNI105 = "9015183783211459";
    self.e_Helicopter = nil;
    self.e_downTwin = nil;
    self.b_isUni105_HalfHP = false;
    self.b_isFirstReinforcement = true;
    self.i_parachutecount = 0;
    self.b_isParachuteEnough = false;
    self.goodTime = false;
    self.Hour = 0;
    self.eCurrentPlayerWarn = nil;
    self.eCurrentPlayerFail = nil;
    self.timeModulationActive = false;
    self.Hour_event1 = 0;
    self.goodTime_event1 = false;
    self.goodTime_event2 = false;
    self.goodTime_event3 = false;
    self.Minutes = 0;
    self.IsTimeStopped = false;
    self.FightStartCleanupDone = false;
    self.box_MultipleOR_106 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_106");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1103113");
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
        [0] = self.f_box_MultipleOR_106_Out,
    });
    self.box_Delay_v5_303 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_303;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_303");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|22784921");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_303_TimeElapsed,
    });
    self.box_RegenerateNavmesh_67 = cbox:CreateBox("Domino/System/AI/RegenerateNavmesh.lua");
    l0 = self.box_RegenerateNavmesh_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RegenerateNavmesh_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|36770968");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_33 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|50997027");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_33_Out,
    });
    self.box_PositionModifier_v2_311 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_311;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_311");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|51231374");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_311_Done,
    });
    self.box_MultipleOR_314 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_314;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_314");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|67050798");
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
    self.box_Delay_v5_22 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|98268003");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_22_TimeElapsed,
    });
    self.box_RequestPhoneCall_v2_128 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_128;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_128");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|100046248");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_264 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_264;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_264");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|106990040");
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
        [0] = self.f_box_MultipleAND_v2_264_Out,
    });
    self.box_MultipleAND_v2_17 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|108566310");
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
        [0] = self.f_box_MultipleAND_v2_17_Out,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_434 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_434;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_434");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|110206793");
    l0:SetConnections({
    });
    self.box_Delay_v5_153 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_153;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_153");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|131855137");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_153_TimeElapsed,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_281 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_281;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_281");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|136320588");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_329 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_329;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_329");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|149010699");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_329_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_329_Loaded,
    });
    self.box_ActivityAcknowledgeGate_5 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|151504784");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_5_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_5_Reloaded,
    });
    self.box_RequestPhoneCall_v2_127 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_127;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_127");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|161860463");
    l0:SetConnections({
    });
    self.box_Delay_v5_54 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|162444490");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_54_TimeElapsed,
    });
    self.box_PositionModifier_v2_300 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_300;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_300");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|184535341");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_300_Done,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_284 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_284;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_284");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|186255720");
    l0:SetConnections({
    });
    self.box_Delay_v5_276 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_276;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_276");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|189564616");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_276_TimeElapsed,
    });
    self.box_MultipleOR_129 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_129;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_129");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|192333844");
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
        [0] = self.f_box_MultipleOR_129_Out,
    });
    self.box_ColorRemapTextureModifier_v3_426 = cbox:CreateBox("Domino/System/ColorRemapTextureModifier_v3.lua");
    l0 = self.box_ColorRemapTextureModifier_v3_426;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ColorRemapTextureModifier_v3_426");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|199064391");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ColorRemapTextureModifier_v3_426_Added,
        -- Removed,
        [1] = self.f_box_ColorRemapTextureModifier_v3_426_Removed,
    });
    self.box_Delay_v5_206 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_206;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_206");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|200193601");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_206_TimeElapsed,
    });
    self.box_MultipleAND_v2_61 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|208277937");
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
        [0] = self.f_box_MultipleAND_v2_61_Out,
    });
    self.box_SpawnAIRequestGroup_v2_229 = cbox:CreateBox("Domino/System/AI/SpawnAIRequestGroup_v2.lua");
    l0 = self.box_SpawnAIRequestGroup_v2_229;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAIRequestGroup_v2_229");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|214225276");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAIRequestGroup_v2_229_Out,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_419 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_419;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_419");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|217134570");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_168 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_168;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_168");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|226600248");
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
        [0] = self.f_box_MultipleAND_v2_168_Out,
    });
    self.box_RemoveEntity_v2_324 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_324;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_324");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|228711843");
    l0:SetConnections({
    });
    self.box_PersistentParticlesModifier_6 = cbox:CreateBox("Domino/System/Player/PersistentParticlesModifier.lua");
    l0 = self.box_PersistentParticlesModifier_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PersistentParticlesModifier_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|241711467");
    l0:SetConnections({
        -- OnStartParticles,
        [0] = self.f_box_PersistentParticlesModifier_6_OnStartParticles,
        -- OnStopParticles,
        [1] = self.f_box_PersistentParticlesModifier_6_OnStopParticles,
    });
    self.box_NarrativeFade_104 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_104");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|251110424");
    l0:SetConnections({
        -- FadedIn,
        [0] = self.f_box_NarrativeFade_104_FadedIn,
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_104_FadedOut,
    });
    self.box_RequestPhoneCall_v2_105 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_105");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|252243252");
    l0:SetConnections({
    });
    self.box_ActivityInitialized_3 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|258969294");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_3_Out,
    });
    self.box_MultipleOR_443 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_443;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_443");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|261717881");
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
        [0] = self.f_box_MultipleOR_443_Out,
    });
    self.box_MultipleOR_446 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_446;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_446");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|270943814");
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
        [0] = self.f_box_MultipleOR_446_Out,
    });
    self.box_MultipleOR_195 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_195;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_195");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|272448995");
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
        [0] = self.f_box_MultipleOR_195_Out,
    });
    self.box_SpawnAI_Wave_v2_321 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_321;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_321");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|294330900");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_321_NextWave,
    });
    self.box_MultipleOR_48 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|299720321");
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
        [0] = self.f_box_MultipleOR_48_Out,
    });
    self.box_RequestPhoneCall_v2_361 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_361;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_361");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|326499816");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_199 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_199;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_199");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|328694768");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_199_Done,
    });
    self.box_MultipleOR_177 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_177;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_177");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|346739350");
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
        [0] = self.f_box_MultipleOR_177_Out,
    });
    self.box_MultipleOR_331 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_331;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_331");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|381404545");
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
        [0] = self.f_box_MultipleOR_331_Out,
    });
    self.box_MultipleOR_76 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|394336286");
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
        [0] = self.f_box_MultipleOR_76_Out,
    });
    self.box_RemoveEntity_v2_116 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_116");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|396055272");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_162 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_162;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_162");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|396248509");
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
        [0] = self.f_box_MultipleAND_v2_162_Out,
    });
    self.box_OnceOnly_v3_230 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_230;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_230");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|431380574");
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
                [0] = self.f_box_OnceOnly_v3_230_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleAND_v2_119 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_119");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|432118925");
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
        [0] = self.f_box_MultipleAND_v2_119_Out,
    });
    self.box_RequestPhoneCall_v2_100 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_100");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|439152457");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_100_Completed,
    });
    self.box_MultipleOR_402 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_402;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_402");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|440018759");
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
        [0] = self.f_box_MultipleOR_402_Out,
    });
    self.box_Delay_v5_118 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_118");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|442825417");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_118_TimeElapsed,
    });
    self.box_OnceOnly_v3_278 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_278;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_278");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|461836334");
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
                [0] = self.f_box_OnceOnly_v3_278_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_308 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_308;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_308");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|496706779");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_308_TimeElapsed,
    });
    self.box_SpawnAI_Wave_v2_316 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_316;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_316");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|504879500");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_316_NextWave,
    });
    self.box_MultipleOR_47 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|519084480");
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
        [0] = self.f_box_MultipleOR_47_Out,
    });
    self.box_MultipleOR_202 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_202;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_202");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|524499299");
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
        [0] = self.f_box_MultipleOR_202_Out,
    });
    self.box_Delay_v5_140 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_140;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_140");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|529836090");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_140_TimeElapsed,
    });
    self.box_Delay_v5_164 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_164;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_164");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|534350197");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_164_TimeElapsed,
    });
    self.box_OnceOnly_v3_422 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_422;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_422");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|539411742");
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
                [0] = self.f_box_OnceOnly_v3_422_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_95 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_95");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|543611496");
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
    self.box_MultipleOR_141 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_141;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_141");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|566798121");
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
        [0] = self.f_box_MultipleOR_141_Out,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_137 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_137;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_137");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|583270358");
    l0:SetConnections({
    });
    self.box_PhoneCallExclusivityModifier_62 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|592018504");
    l0:SetConnections({
    });
    self.box_MultipleOR_21 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|612553798");
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
    self.box_MultipleOR_439 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_439;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_439");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|617249209");
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
        [0] = self.f_box_MultipleOR_439_Out,
    });
    self.box_OnceOnly_v3_357 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_357;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_357");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|637329501");
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
                [0] = self.f_box_OnceOnly_v3_357_Out_0,
            },
            count = 2,
        },
    });
    self.box_ColorRemapTextureModifier_v3_56 = cbox:CreateBox("Domino/System/ColorRemapTextureModifier_v3.lua");
    l0 = self.box_ColorRemapTextureModifier_v3_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ColorRemapTextureModifier_v3_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|659931211");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ColorRemapTextureModifier_v3_56_Added,
        -- Removed,
        [1] = self.f_box_ColorRemapTextureModifier_v3_56_Removed,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_297 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_297;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_297");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|702500038");
    l0:SetConnections({
    });
    self.box_CHEAT_SetEnvironmentTimeScale_435 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_435;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_435");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|709197158");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v3_64 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|727373621");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v3_64_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_64_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_64_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v3_64_Leave,
        -- OnAllInside,
        [4] = self.f_box_ProximityTrigger_v3_64_OnAllInside,
        -- OnEmpty,
        [5] = self.f_box_ProximityTrigger_v3_64_OnEmpty,
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_64_OnOccupied,
        -- Use,
        [7] = self.f_box_ProximityTrigger_v3_64_Use,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_425 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_425;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_425");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|746689710");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_425_Out,
    });
    self.box_EntityStatusListener_181 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_181;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_181");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|747169015");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_181_Loaded,
    });
    self.box_OnceOnly_v3_447 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_447;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_447");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|748365065");
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
                [0] = self.f_box_OnceOnly_v3_447_Out_0,
            },
            count = 2,
        },
    });
    self.box_RequestPhoneCall_v2_85 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|754401071");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_85_Completed,
    });
    self.box_MultipleOR_291 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_291;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_291");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|786312022");
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
        [0] = self.f_box_MultipleOR_291_Out,
    });
    self.box_Delay_v5_287 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_287;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_287");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|786475729");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_287_TimeElapsed,
    });
    self.box_EntityStatusListener_348 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_348;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_348");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|793515211");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_348_Loaded,
    });
    self.box_PositionModifier_v2_330 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_330;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_330");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|806187064");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_330_Done,
    });
    self.box_CharacterLoadedIdListener_v2_114 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_114");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|827157293");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_114_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_114_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_114_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_114_LoadedIdReceived,
    });
    self.box_SpawnAI_Wave_v2_254 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_254;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_254");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|847625249");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_254_NextWave,
    });
    self.box_NarrativeSceneCleanUp_V2_186 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp_V2.debug.lua");
    l0 = self.box_NarrativeSceneCleanUp_V2_186;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneCleanUp_V2_186");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|858695752");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_NarrativeSceneCleanUp_V2_186_Out,
    });
    self.box_EntityStatusListener_133 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_133;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_133");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|863456770");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_133_Loaded,
    });
    self.box_OnceOnly_v3_103 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_103");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|871605276");
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
                [0] = self.f_box_OnceOnly_v3_103_Out_0,
            },
            count = 2,
        },
    });
    self.box_EntityStatusListener_263 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_263;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_263");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|873003867");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_263_Loaded,
    });
    self.box_OnceOnly_v3_79 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|876411572");
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
                [0] = self.f_box_OnceOnly_v3_79_Out_0,
            },
            count = 2,
        },
    });
    self.box_RemoveEntity_v2_326 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_326;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_326");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|883460738");
    l0:SetConnections({
    });
    self.box_ColorRemapTextureModifier_v3_68 = cbox:CreateBox("Domino/System/ColorRemapTextureModifier_v3.lua");
    l0 = self.box_ColorRemapTextureModifier_v3_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ColorRemapTextureModifier_v3_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|913502886");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ColorRemapTextureModifier_v3_68_Added,
        -- Removed,
        [1] = self.f_box_ColorRemapTextureModifier_v3_68_Removed,
    });
    self.box_OnceOnly_v3_431 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_431;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_431");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|939407561");
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
                [0] = self.f_box_OnceOnly_v3_431_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_158 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_158;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_158");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|951278176");
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
        [0] = self.f_box_MultipleOR_158_Out,
    });
    self.box_MultipleOR_193 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_193;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_193");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|964791602");
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
    self.box_OnceOnly_v3_143 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_143;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_143");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|976350180");
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
                [0] = self.f_box_OnceOnly_v3_143_Out_0,
            },
            count = 2,
        },
    });
    self.box_EntityStatusListener_346 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_346;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_346");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|990375303");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_346_Loaded,
    });
    self.box_OnceOnly_v3_109 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_109");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1008702419");
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
                [0] = self.f_box_OnceOnly_v3_109_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_142 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_142;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_142");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1019554263");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_142_TimeElapsed,
    });
    self.box_SpawnAI_125 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_125;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_125");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1023057191");
    l0:SetConnections({
    });
    self.box_PostFx_v3_184 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_184;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_184");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1033810257");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_145 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_145;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_145");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1040402179");
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
                [0] = self.f_box_OnceOnly_v3_145_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_356 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_356;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_356");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1065979628");
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
                [0] = self.f_box_OnceOnly_v3_356_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_148 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_148;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_148");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1094795449");
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
        [0] = self.f_box_MultipleOR_148_Out,
    });
    self.box_EntityStatusListener_34 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1097253821");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_34_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_34_Loaded,
    });
    self.box_NarrativeFade_259 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_259;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_259");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1097360513");
    l0:SetConnections({
    });
    self.box_CHEAT_SetEnvironmentTimeScale_423 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_423;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_423");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1098868415");
    l0:SetConnections({
    });
    self.box_PostFx_v3_91 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1102917709");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PostFx_v3_91_Disabled,
    });
    self.box_EntityStatusListener_289 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_289;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_289");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1103572646");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_289_Loaded,
    });
    self.box_UniversalInteractionModifier_v2_340 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_340;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_340");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1123245964");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_171 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_171;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_171");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1127593344");
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
        [0] = self.f_box_MultipleAND_v2_171_Out,
    });
    self.box_EntityStatusListener_342 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_342;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_342");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1132279455");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_342_Loaded,
    });
    self.box_MultipleAND_v2_107 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_107");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1140692003");
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
        [0] = self.f_box_MultipleAND_v2_107_Out,
    });
    self.box_VisibilityModifier_260 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_260;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_260");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1142773772");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_260_Disabled,
    });
    self.box_Delay_v5_53 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1178549602");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_53_TimeElapsed,
    });
    self.box_MultipleOR_403 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_403;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_403");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1220950305");
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
        [0] = self.f_box_MultipleOR_403_Out,
    });
    self.box_Delay_v5_237 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_237;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_237");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1242573073");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_237_TimeElapsed,
    });
    self.box_OnceOnly_v3_421 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_421;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_421");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1261319598");
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
                [0] = self.f_box_OnceOnly_v3_421_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleAND_v2_160 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_160;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_160");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1265070605");
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
        [0] = self.f_box_MultipleAND_v2_160_Out,
    });
    self.box_MultipleOR_429 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_429;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_429");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1280525462");
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
        [0] = self.f_box_MultipleOR_429_Out,
    });
    self.box_OnceOnly_v3_134 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_134;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_134");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1290369189");
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
                [0] = self.f_box_OnceOnly_v3_134_Out_0,
            },
            count = 2,
        },
        -- ResetOut,
        [1] = self.f_box_OnceOnly_v3_134_ResetOut,
    });
    self.box_PositionModifier_v2_154 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_154;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_154");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1301057293");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_154_Done,
    });
    self.box_PositionModifier_v2_152 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_152;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_152");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1307070585");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_152_Done,
    });
    self.box_HealthListener_v6_113 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_113");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1311367641");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_HealthListener_v6_113_Critical,
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_113_Damaged,
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_113_Disabled,
        -- Downed,
        [3] = self.f_box_HealthListener_v6_113_Downed,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_113_Enabled,
        -- Healed,
        [5] = self.f_box_HealthListener_v6_113_Healed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_113_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_113_Revived,
    });
    self.box_MultipleOR_155 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_155;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_155");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1313577417");
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
        [0] = self.f_box_MultipleOR_155_Out,
    });
    self.box_MultipleOR_250 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_250;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_250");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1342787447");
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
        [0] = self.f_box_MultipleOR_250_Out,
    });
    self.box_EntityStatusListener_227 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_227;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_227");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1352105121");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_227_Loaded,
    });
    self.box_MessageListener_v3_40 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1357429345");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_40_Received,
    });
    self.box_RequestPhoneCall_v2_75 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1364365277");
    l0:SetConnections({
        -- Started,
        [5] = self.f_box_RequestPhoneCall_v2_75_Started,
    });
    self.box_MultipleOR_89 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_89");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1382316563");
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
    self.box_MultipleOR_253 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_253;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_253");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1382443162");
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
        [0] = self.f_box_MultipleOR_253_Out,
    });
    self.box_ExitZoneWarningListener_v3_121 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_121;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_121");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1424798715");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_121_FailingZoneEntered,
    });
    self.box_SpawnAI_11 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1430487633");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_11_Out,
    });
    self.box_SpawnAIRequestGroup_v2_20 = cbox:CreateBox("Domino/System/AI/SpawnAIRequestGroup_v2.lua");
    l0 = self.box_SpawnAIRequestGroup_v2_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAIRequestGroup_v2_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1433339431");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAIRequestGroup_v2_20_Out,
    });
    self.box_RequestPhoneCall_v2_108 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_108");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1443711739");
    l0:SetConnections({
    });
    self.box_MultipleOR_44 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1462878483");
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
        [0] = self.f_box_MultipleOR_44_Out,
    });
    self.box_Bind_v4_347 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_347;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_347");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1463060930");
    l0:SetConnections({
    });
    self.box_Delay_v5_38 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1473494334");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_38_TimeElapsed,
    });
    self.box_MultipleAND_v2_270 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_270;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_270");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1502980341");
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
        [0] = self.f_box_MultipleAND_v2_270_Out,
    });
    self.box_MultipleOR_328 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_328;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_328");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1505570985");
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
        [0] = self.f_box_MultipleOR_328_Out,
    });
    self.box_RequestPhoneCall_v2_94 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_94");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1514363765");
    l0:SetConnections({
        -- Canceled,
        [0] = self.f_box_RequestPhoneCall_v2_94_Canceled,
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_94_Completed,
        -- Failed,
        [2] = self.f_box_RequestPhoneCall_v2_94_Failed,
    });
    self.box_ColorRemapTextureModifier_v3_29 = cbox:CreateBox("Domino/System/ColorRemapTextureModifier_v3.lua");
    l0 = self.box_ColorRemapTextureModifier_v3_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ColorRemapTextureModifier_v3_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1530124502");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ColorRemapTextureModifier_v3_29_Added,
        -- Removed,
        [1] = self.f_box_ColorRemapTextureModifier_v3_29_Removed,
    });
    self.box_CharacterLoadedIdListener_v2_65 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1545206754");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_65_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_65_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_65_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_65_LoadedIdReceived,
    });
    self.box_OnceOnly_v3_397 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_397;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_397");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1557543471");
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
                [0] = self.f_box_OnceOnly_v3_397_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleAND_v2_74 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1562911451");
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
        [0] = self.f_box_MultipleAND_v2_74_Out,
    });
    self.box_PersistentParticlesModifier_223 = cbox:CreateBox("Domino/System/Player/PersistentParticlesModifier.lua");
    l0 = self.box_PersistentParticlesModifier_223;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PersistentParticlesModifier_223");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1580196463");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_8 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1595856429");
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
                [0] = self.f_box_OnceOnly_v3_8_Out_0,
            },
            count = 2,
        },
    });
    self.box_CHEAT_SetEnvironmentTimeScale_445 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_445;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_445");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1599360481");
    l0:SetConnections({
    });
    self.box_MultipleOR_358 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_358;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_358");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1612817614");
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
        [0] = self.f_box_MultipleOR_358_Out,
    });
    self.box_MultipleAND_v2_318 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_318;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_318");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1641118499");
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
        [0] = self.f_box_MultipleAND_v2_318_Out,
    });
    self.box_MultipleAND_v2_59 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1652731151");
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
        [0] = self.f_box_MultipleAND_v2_59_Out,
    });
    self.box_MultipleOR_338 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_338;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_338");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1653742031");
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
        [0] = self.f_box_MultipleOR_338_Out,
    });
    self.box_MultipleOR_325 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_325;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_325");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1662345451");
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
        [0] = self.f_box_MultipleOR_325_Out,
    });
    self.box_SpawnAI_174 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_174;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_174");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1662849442");
    l0:SetConnections({
    });
    self.box_RequestPhoneCall_v2_201 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_201;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_201");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1665603212");
    l0:SetConnections({
    });
    self.box_MultipleOR_123 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_123;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_123");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1679790412");
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
    self.box_OnceOnly_v3_25 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1681081732");
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
                [0] = self.f_box_OnceOnly_v3_25_Out_0,
            },
            count = 2,
        },
        -- ResetOut,
        [1] = self.f_box_OnceOnly_v3_25_ResetOut,
    });
    self.box_Delay_v5_138 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_138;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_138");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1692302105");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_138_TimeElapsed,
    });
    self.box_Delay_v5_27 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1709123345");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_27_TimeElapsed,
    });
    self.box_Bind_v4_345 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_345;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_345");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1735446995");
    l0:SetConnections({
    });
    self.box_MultipleOR_45 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1736125601");
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
        [0] = self.f_box_MultipleOR_45_Out,
    });
    self.box_ColorRemapTextureModifier_v3_32 = cbox:CreateBox("Domino/System/ColorRemapTextureModifier_v3.lua");
    l0 = self.box_ColorRemapTextureModifier_v3_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ColorRemapTextureModifier_v3_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1736153069");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ColorRemapTextureModifier_v3_32_Added,
        -- Removed,
        [1] = self.f_box_ColorRemapTextureModifier_v3_32_Removed,
    });
    self.box_MultipleOR_341 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_341;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_341");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1751388756");
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
        [0] = self.f_box_MultipleOR_341_Out,
    });
    self.box_SpawnAI_172 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_172;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_172");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1758050216");
    l0:SetConnections({
    });
    self.box_MultipleOR_360 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_360;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_360");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1760619379");
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
        [0] = self.f_box_MultipleOR_360_Out,
    });
    self.box_MultipleAND_v2_26 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1764178779");
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
        [0] = self.f_box_MultipleAND_v2_26_Out,
    });
    self.box_VisibilityModifier_63 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1765852699");
    l0:SetConnections({
    });
    self.box_Delay_v5_334 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_334;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_334");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1767430192");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_334_TimeElapsed,
    });
    self.box_MultipleOR_180 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_180;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_180");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1770433117");
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
        [0] = self.f_box_MultipleOR_180_Out,
    });
    self.box_OnceOnly_v3_151 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_151;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_151");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1776548221");
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
                [0] = self.f_box_OnceOnly_v3_151_Out_0,
            },
            count = 2,
        },
        -- ResetOut,
        [1] = self.f_box_OnceOnly_v3_151_ResetOut,
    });
    self.box_RequestPhoneCall_v2_18 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1813119730");
    l0:SetConnections({
        -- Started,
        [5] = self.f_box_RequestPhoneCall_v2_18_Started,
    });
    self.box_SpawnAI_150 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_150;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_150");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1813315345");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_288 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_288;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_288");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1825100500");
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
                [0] = self.f_box_OnceOnly_v3_288_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_294 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_294;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_294");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1828551558");
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
                [0] = self.f_box_OnceOnly_v3_294_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleAND_v2_204 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_204;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_204");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1840428698");
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
        [0] = self.f_box_MultipleAND_v2_204_Out,
    });
    self.box_RequestPhoneCall_v2_72 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1841998372");
    l0:SetConnections({
        -- Canceled,
        [0] = self.f_box_RequestPhoneCall_v2_72_Canceled,
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_72_Completed,
        -- Failed,
        [2] = self.f_box_RequestPhoneCall_v2_72_Failed,
    });
    self.box_OnceOnly_v3_149 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_149;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_149");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1850010504");
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
                [0] = self.f_box_OnceOnly_v3_149_Out_0,
            },
            count = 2,
        },
    });
    self.box_EntityStatusListener_339 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_339;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_339");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1858331277");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_339_Loaded,
    });
    self.box_EntityStatusListener_70 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1869539054");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_70_Loaded,
    });
    self.box_MessageListener_v3_52 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1871939111");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_52_Received,
    });
    self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1872446167");
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
        [0] = self.f_box_MultipleOR_1_Out,
    });
    self.box_MultipleAND_v2_269 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_269;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_269");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1877826299");
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
        [0] = self.f_box_MultipleAND_v2_269_Out,
    });
    self.box_MultipleOR_283 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_283;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_283");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1906549585");
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
        [0] = self.f_box_MultipleOR_283_Out,
    });
    self.box_Delay_v5_144 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_144;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_144");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1907983574");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_144_TimeElapsed,
    });
    self.box_EntityStatusListener_251 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_251;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_251");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1910726190");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_251_Loaded,
    });
    self.box_EntityStatusListener_441 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_441;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_441");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1922357749");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_EntityStatusListener_441_Disabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_441_Loaded,
    });
    self.box_MultipleAND_v2_248 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_248;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_248");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1925863555");
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
        [0] = self.f_box_MultipleAND_v2_248_Out,
    });
    self.box_NarrativeSceneCleanUp_V2_262 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp_V2.debug.lua");
    l0 = self.box_NarrativeSceneCleanUp_V2_262;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneCleanUp_V2_262");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1939317401");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_NarrativeSceneCleanUp_V2_262_Out,
    });
    self.box_SpawnAI_9 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1966044969");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_9_Out,
    });
    self.box_MultipleOR_280 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_280;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_280");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1970215731");
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
        [0] = self.f_box_MultipleOR_280_Out,
    });
    self.box_VisibilityModifier_36 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1984421689");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_36_Enabled,
    });
    self.box_RemoveEntity_v2_66 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2014859275");
    l0:SetConnections({
    });
    self.box_SpawnAIRequestGroup_v2_35 = cbox:CreateBox("Domino/System/AI/SpawnAIRequestGroup_v2.lua");
    l0 = self.box_SpawnAIRequestGroup_v2_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAIRequestGroup_v2_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2026583831");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAIRequestGroup_v2_35_Out,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_437 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_437;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_437");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2043352709");
    l0:SetConnections({
    });
    self.box_ColorRemapTextureModifier_v3_37 = cbox:CreateBox("Domino/System/ColorRemapTextureModifier_v3.lua");
    l0 = self.box_ColorRemapTextureModifier_v3_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ColorRemapTextureModifier_v3_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2051394287");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ColorRemapTextureModifier_v3_37_Added,
        -- Removed,
        [1] = self.f_box_ColorRemapTextureModifier_v3_37_Removed,
    });
    self.box_HealthListener_v6_84 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2060488682");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_HealthListener_v6_84_Critical,
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_84_Damaged,
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_84_Disabled,
        -- Downed,
        [3] = self.f_box_HealthListener_v6_84_Downed,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_84_Enabled,
        -- Healed,
        [5] = self.f_box_HealthListener_v6_84_Healed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_84_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_84_Revived,
    });
    self.box_MultipleOR_290 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_290;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_290");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2062481662");
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
        [0] = self.f_box_MultipleOR_290_Out,
    });
    self.box_Delay_v5_236 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_236;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_236");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2069842070");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_236_TimeElapsed,
    });
    self.box_Delay_v5_51 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2082203309");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_51_TimeElapsed,
    });
    self.box_Delay_v5_322 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_322;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_322");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2086392939");
    l0:SetConnections({
    });
    self.box_RegenerateNavmesh_60 = cbox:CreateBox("Domino/System/AI/RegenerateNavmesh.lua");
    l0 = self.box_RegenerateNavmesh_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RegenerateNavmesh_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2103500090");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_131 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_131;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_131");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2103697178");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_131_Loaded,
    });
    self.box_Bind_v4_69 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2105483438");
    l0:SetConnections({
    });
    self.box_MultipleOR_279 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_279;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_279");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2106197919");
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
        [0] = self.f_box_MultipleOR_279_Out,
    });
    self.box_RemoveEntity_v2_333 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_333;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_333");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2109724380");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_317 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_317;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_317");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2120226334");
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
        [0] = self.f_box_MultipleAND_v2_317_Out,
    });
    self.box_ProximityTrigger_v3_432 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_432;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_432");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2138821312");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v3_432_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_432_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_432_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v3_432_Leave,
        -- OnAllInside,
        [4] = self.f_box_ProximityTrigger_v3_432_OnAllInside,
        -- OnEmpty,
        [5] = self.f_box_ProximityTrigger_v3_432_OnEmpty,
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_432_OnOccupied,
        -- Use,
        [7] = self.f_box_ProximityTrigger_v3_432_Use,
    });
    self.box_SpawnAIRequestGroup_v2_231 = cbox:CreateBox("Domino/System/AI/SpawnAIRequestGroup_v2.lua");
    l0 = self.box_SpawnAIRequestGroup_v2_231;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAIRequestGroup_v2_231");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2138931605");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAIRequestGroup_v2_231_Out,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|648997077", "648997077", "MIS_340_MASTER", "In", "box_ActivityAcknowledgeGate_5.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_Simple_Node_271_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_283;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|595471847", "595471847", "MIS_340_MASTER", "box_Simple_Node_271.Out", "box_MultipleOR_283.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    params = self:OnEnter_box_MultipleAND_v2_17();
    l0 = self.box_MultipleAND_v2_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2131460408", "2131460408", "MIS_340_MASTER", "box_Simple_Node_271.Out", "box_MultipleAND_v2_17.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
    params = self:OnEnter_box_ColorRemapTextureModifier_v3_37();
    l0 = self.box_ColorRemapTextureModifier_v3_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1092068583", "1092068583", "MIS_340_MASTER", "box_Simple_Node_271.Out", "box_ColorRemapTextureModifier_v3_37.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
    l0 = self.box_MultipleOR_123;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1492518658", "1492518658", "MIS_340_MASTER", "box_Simple_Node_271.Out", "box_MultipleOR_123.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_16_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1156119121", "1156119121", "MIS_340_MASTER", "box_Simple_Node_16.Out", "box_MultipleOR_44.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    params = self:OnEnter_box_HealthListener_v6_113();
    l0 = self.box_HealthListener_v6_113;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|427777611", "427777611", "MIS_340_MASTER", "box_Simple_Node_16.Out", "box_HealthListener_v6_113.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_PersistentParticlesModifier_223();
    l0 = self.box_PersistentParticlesModifier_223;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|864883826", "864883826", "MIS_340_MASTER", "box_Simple_Node_16.Out", "box_PersistentParticlesModifier_223.StopParticles", clone:GetLuaBox(), l0:GetLuaBox());
    -- StopParticles
    l0:Exec(1, params);
    params = self:OnEnter_box_ColorRemapTextureModifier_v3_32();
    l0 = self.box_ColorRemapTextureModifier_v3_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2015982571", "2015982571", "MIS_340_MASTER", "box_Simple_Node_16.Out", "box_ColorRemapTextureModifier_v3_32.Remove", clone:GetLuaBox(), l0:GetLuaBox());
    -- Remove
    l0:Exec(1, params);
    l0 = self.box_PhoneCallExclusivityModifier_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1991959412", "1991959412", "MIS_340_MASTER", "box_Simple_Node_16.Out", "box_PhoneCallExclusivityModifier_62.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, {
    });
    params = self:OnEnter_box_ColorRemapTextureModifier_v3_56();
    l0 = self.box_ColorRemapTextureModifier_v3_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|784903505", "784903505", "MIS_340_MASTER", "box_Simple_Node_16.Out", "box_ColorRemapTextureModifier_v3_56.Remove", clone:GetLuaBox(), l0:GetLuaBox());
    -- Remove
    l0:Exec(1, params);
    l0 = self.box_MultipleOR_331;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2036577689", "2036577689", "MIS_340_MASTER", "box_Simple_Node_16.Out", "box_MultipleOR_331.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_MultipleOR_141;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1030566687", "1030566687", "MIS_340_MASTER", "box_Simple_Node_16.Out", "box_MultipleOR_141.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    params = self:OnEnter_box_EntityStatusListener_342();
    l0 = self.box_EntityStatusListener_342;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|834019119", "834019119", "MIS_340_MASTER", "box_Simple_Node_16.Out", "box_EntityStatusListener_342.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_EntityStatusListener_251();
    l0 = self.box_EntityStatusListener_251;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1563742882", "1563742882", "MIS_340_MASTER", "box_Simple_Node_16.Out", "box_EntityStatusListener_251.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_EntityStatusListener_441();
    l0 = self.box_EntityStatusListener_441;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1788341348", "1788341348", "MIS_340_MASTER", "box_Simple_Node_16.Out", "box_EntityStatusListener_441.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_MessageListener_v3_40();
    l0 = self.box_MessageListener_v3_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1359079667", "1359079667", "MIS_340_MASTER", "box_Simple_Node_16.Out", "box_MessageListener_v3_40.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_HealthListener_v6_84();
    l0 = self.box_HealthListener_v6_84;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1579978032", "1579978032", "MIS_340_MASTER", "box_Simple_Node_16.Out", "box_HealthListener_v6_84.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ExitZoneWarningListener_v3_121();
    l0 = self.box_ExitZoneWarningListener_v3_121;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1566937627", "1566937627", "MIS_340_MASTER", "box_Simple_Node_16.Out", "box_ExitZoneWarningListener_v3_121.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0 = self.box_MultipleOR_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|112448567", "112448567", "MIS_340_MASTER", "box_Simple_Node_16.Out", "box_MultipleOR_48.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_122_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_v2_120();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1723180404", "1723180404", "MIS_340_MASTER", "box_Simple_Node_122.Out", "box_ActivityRetry_v2_120.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_285_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_107();
    l0 = self.box_MultipleAND_v2_107;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1180784869", "1180784869", "MIS_340_MASTER", "box_Simple_Node_285.Out", "box_MultipleAND_v2_107.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
    params = self:OnEnter_box_MultipleAND_v2_204();
    l0 = self.box_MultipleAND_v2_204;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1715679018", "1715679018", "MIS_340_MASTER", "box_Simple_Node_285.Out", "box_MultipleAND_v2_204.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 2);
    params = self:OnEnter_box_MultipleAND_v2_317();
    l0 = self.box_MultipleAND_v2_317;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|752596592", "752596592", "MIS_340_MASTER", "box_Simple_Node_285.Out", "box_MultipleAND_v2_317.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
    params = self:OnEnter_box_MultipleAND_v2_17();
    l0 = self.box_MultipleAND_v2_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|466287552", "466287552", "MIS_340_MASTER", "box_Simple_Node_285.Out", "box_MultipleAND_v2_17.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_137();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_137;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1923610718", "1923610718", "MIS_340_MASTER", "box_Simple_Node_285.Out", "box_CHEAT_SetEnvironmentTimeScale_137.SetTimeScale", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeScale
    l0:Exec(0, params);
    params = self:OnEnter_box_SetContextualStrategy_99();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1834665015", "1834665015", "MIS_340_MASTER", "box_Simple_Node_285.Out", "box_SetContextualStrategy_99.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_NarrativeFade_104();
    l0 = self.box_NarrativeFade_104;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|630964585", "630964585", "MIS_340_MASTER", "box_Simple_Node_285.Out", "box_NarrativeFade_104.FadeOut", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeOut
    l0:Exec(1, params);
    params = self:OnEnter_box_MultipleAND_v2_26();
    l0 = self.box_MultipleAND_v2_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1530346103", "1530346103", "MIS_340_MASTER", "box_Simple_Node_285.Out", "box_MultipleAND_v2_26.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 2);
    params = self:OnEnter_box_MultipleAND_v2_318();
    l0 = self.box_MultipleAND_v2_318;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2018233277", "2018233277", "MIS_340_MASTER", "box_Simple_Node_285.Out", "box_MultipleAND_v2_318.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_Simple_Node_272_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_283;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|574535274", "574535274", "MIS_340_MASTER", "box_Simple_Node_272.Out", "box_MultipleOR_283.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
    l0 = self.box_MultipleOR_280;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|297226603", "297226603", "MIS_340_MASTER", "box_Simple_Node_272.Out", "box_MultipleOR_280.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    l0 = self.box_MultipleOR_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|331812726", "331812726", "MIS_340_MASTER", "box_Simple_Node_272.Out", "box_MultipleOR_47.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    l0 = self.box_MultipleOR_195;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1110761069", "1110761069", "MIS_340_MASTER", "box_Simple_Node_272.Out", "box_MultipleOR_195.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_363_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_103;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|581130380", "581130380", "MIS_340_MASTER", "box_Simple_Node_363.Out", "box_OnceOnly_v3_103.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
    params = self:OnEnter_box_MultipleAND_v2_162();
    l0 = self.box_MultipleAND_v2_162;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|15164431", "15164431", "MIS_340_MASTER", "box_Simple_Node_363.Out", "box_MultipleAND_v2_162.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 2);
end;

function export:f_box_Simple_Node_15_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_52();
    l0 = self.box_MessageListener_v3_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|904526905", "904526905", "MIS_340_MASTER", "box_Simple_Node_15.Out", "box_MessageListener_v3_52.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_OutputOrder_v2_115();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1529955371", "1529955371", "MIS_340_MASTER", "box_Simple_Node_15.Out", "box_OutputOrder_v2_115.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_EntityStatusListener_70();
    l0 = self.box_EntityStatusListener_70;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|329471867", "329471867", "MIS_340_MASTER", "box_Simple_Node_15.Out", "box_EntityStatusListener_70.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_EntityStatusListener_181();
    l0 = self.box_EntityStatusListener_181;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2011050004", "2011050004", "MIS_340_MASTER", "box_Simple_Node_15.Out", "box_EntityStatusListener_181.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_EntityStatusListener_441();
    l0 = self.box_EntityStatusListener_441;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1563643417", "1563643417", "MIS_340_MASTER", "box_Simple_Node_15.Out", "box_EntityStatusListener_441.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_EntityStatusListener_339();
    l0 = self.box_EntityStatusListener_339;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|6033921", "6033921", "MIS_340_MASTER", "box_Simple_Node_15.Out", "box_EntityStatusListener_339.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_OutputOrder_v2_132();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|139215483", "139215483", "MIS_340_MASTER", "box_Simple_Node_15.Out", "box_OutputOrder_v2_132.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_EntityStatusListener_342();
    l0 = self.box_EntityStatusListener_342;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|919615232", "919615232", "MIS_340_MASTER", "box_Simple_Node_15.Out", "box_EntityStatusListener_342.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_OutputOrder_v2_243();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|373914484", "373914484", "MIS_340_MASTER", "box_Simple_Node_15.Out", "box_OutputOrder_v2_243.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    l0 = self.box_PhoneCallExclusivityModifier_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|376196590", "376196590", "MIS_340_MASTER", "box_Simple_Node_15.Out", "box_PhoneCallExclusivityModifier_62.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
    params = self:OnEnter_box_EntityStatusListener_251();
    l0 = self.box_EntityStatusListener_251;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|550187381", "550187381", "MIS_340_MASTER", "box_Simple_Node_15.Out", "box_EntityStatusListener_251.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_OutputOrder_v2_41();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1027858098", "1027858098", "MIS_340_MASTER", "box_Simple_Node_15.Out", "box_OutputOrder_v2_41.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_249_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_313();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1035624117", "1035624117", "MIS_340_MASTER", "box_Simple_Node_249.Out", "box_OutputOrder_v2_313.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_273_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1319326320", "1319326320", "MIS_340_MASTER", "box_Simple_Node_273.Out", "box_MultipleOR_47.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_MultipleOR_283;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|932829985", "932829985", "MIS_340_MASTER", "box_Simple_Node_273.Out", "box_MultipleOR_283.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_97_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_Wave_v2_316();
    l0 = self.box_SpawnAI_Wave_v2_316;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1074031360", "1074031360", "MIS_340_MASTER", "box_Simple_Node_97.Out", "box_SpawnAI_Wave_v2_316.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
    params = self:OnEnter_box_IsPawnAlive_v3_258();
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2071345591", "2071345591", "MIS_340_MASTER", "box_Simple_Node_97.Out", "box_IsPawnAlive_v3_258.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    l0 = self.box_MultipleOR_358;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1458514235", "1458514235", "MIS_340_MASTER", "box_Simple_Node_97.Out", "box_MultipleOR_358.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_MultipleOR_279;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1709394414", "1709394414", "MIS_340_MASTER", "box_Simple_Node_97.Out", "box_MultipleOR_279.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    l0 = self.box_MultipleOR_195;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1202283611", "1202283611", "MIS_340_MASTER", "box_Simple_Node_97.Out", "box_MultipleOR_195.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    params = self:OnEnter_box_RequestPhoneCall_v2_72();
    l0 = self.box_RequestPhoneCall_v2_72;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|218212240", "218212240", "MIS_340_MASTER", "box_Simple_Node_97.Out", "box_RequestPhoneCall_v2_72.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
    params = self:OnEnter_box_MultipleAND_v2_59();
    l0 = self.box_MultipleAND_v2_59;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1549828566", "1549828566", "MIS_340_MASTER", "box_Simple_Node_97.Out", "box_MultipleAND_v2_59.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_Simple_Node_197_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_203();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|43039841", "43039841", "MIS_340_MASTER", "box_Simple_Node_197.Out", "box_SetEntity_v2_203.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_136_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_107();
    l0 = self.box_MultipleAND_v2_107;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|396243188", "396243188", "MIS_340_MASTER", "box_Simple_Node_136.Out", "box_MultipleAND_v2_107.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
    params = self:OnEnter_box_MultipleAND_v2_59();
    l0 = self.box_MultipleAND_v2_59;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1568816746", "1568816746", "MIS_340_MASTER", "box_Simple_Node_136.Out", "box_MultipleAND_v2_59.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
    params = self:OnEnter_box_HealthListener_v6_84();
    l0 = self.box_HealthListener_v6_84;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2009202589", "2009202589", "MIS_340_MASTER", "box_Simple_Node_136.Out", "box_HealthListener_v6_84.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_Delay_v5_140();
    l0 = self.box_Delay_v5_140;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1098242428", "1098242428", "MIS_340_MASTER", "box_Simple_Node_136.Out", "box_Delay_v5_140.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    params = self:OnEnter_box_MultipleAND_v2_168();
    l0 = self.box_MultipleAND_v2_168;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|204613276", "204613276", "MIS_340_MASTER", "box_Simple_Node_136.Out", "box_MultipleAND_v2_168.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
    params = self:OnEnter_box_EntityStatusListener_348();
    l0 = self.box_EntityStatusListener_348;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1806918828", "1806918828", "MIS_340_MASTER", "box_Simple_Node_136.Out", "box_EntityStatusListener_348.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_MultipleAND_v2_204();
    l0 = self.box_MultipleAND_v2_204;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1683454337", "1683454337", "MIS_340_MASTER", "box_Simple_Node_136.Out", "box_MultipleAND_v2_204.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
    params = self:OnEnter_box_MultipleAND_v2_26();
    l0 = self.box_MultipleAND_v2_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1445976934", "1445976934", "MIS_340_MASTER", "box_Simple_Node_136.Out", "box_MultipleAND_v2_26.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
    params = self:OnEnter_box_MultipleAND_v2_162();
    l0 = self.box_MultipleAND_v2_162;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|525325806", "525325806", "MIS_340_MASTER", "box_Simple_Node_136.Out", "box_MultipleAND_v2_162.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
    params = self:OnEnter_box_MultipleAND_v2_317();
    l0 = self.box_MultipleAND_v2_317;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1790413893", "1790413893", "MIS_340_MASTER", "box_Simple_Node_136.Out", "box_MultipleAND_v2_317.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_Simple_Node_219_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_217();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|123122003", "123122003", "MIS_340_MASTER", "box_Simple_Node_219.Out", "box_SetContextualStrategy_217.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_173_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_331;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|194132791", "194132791", "MIS_340_MASTER", "box_Simple_Node_173.Out", "box_MultipleOR_331.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    l0 = self.box_MultipleOR_279;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|707150316", "707150316", "MIS_340_MASTER", "box_Simple_Node_173.Out", "box_MultipleOR_279.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_MultipleOR_360;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|160292762", "160292762", "MIS_340_MASTER", "box_Simple_Node_173.Out", "box_MultipleOR_360.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    params = self:OnEnter_box_MultipleAND_v2_61();
    l0 = self.box_MultipleAND_v2_61;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1257537721", "1257537721", "MIS_340_MASTER", "box_Simple_Node_173.Out", "box_MultipleAND_v2_61.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
    params = self:OnEnter_box_IsPawnAlive_v3_80();
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|104210878", "104210878", "MIS_340_MASTER", "box_Simple_Node_173.Out", "box_IsPawnAlive_v3_80.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    l0 = self.box_MultipleOR_195;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1178713328", "1178713328", "MIS_340_MASTER", "box_Simple_Node_173.Out", "box_MultipleOR_195.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
    params = self:OnEnter_box_RequestPhoneCall_v2_94();
    l0 = self.box_RequestPhoneCall_v2_94;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1303915979", "1303915979", "MIS_340_MASTER", "box_Simple_Node_173.Out", "box_RequestPhoneCall_v2_94.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_198_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_205();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|560578800", "560578800", "MIS_340_MASTER", "box_Simple_Node_198.Out", "box_SetEntity_v2_205.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_135_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_119();
    l0 = self.box_MultipleAND_v2_119;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|263667238", "263667238", "MIS_340_MASTER", "box_Simple_Node_135.Out", "box_MultipleAND_v2_119.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
    params = self:OnEnter_box_MultipleAND_v2_74();
    l0 = self.box_MultipleAND_v2_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|839952865", "839952865", "MIS_340_MASTER", "box_Simple_Node_135.Out", "box_MultipleAND_v2_74.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
    params = self:OnEnter_box_EntityStatusListener_346();
    l0 = self.box_EntityStatusListener_346;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1255300295", "1255300295", "MIS_340_MASTER", "box_Simple_Node_135.Out", "box_EntityStatusListener_346.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_MultipleAND_v2_26();
    l0 = self.box_MultipleAND_v2_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1005716211", "1005716211", "MIS_340_MASTER", "box_Simple_Node_135.Out", "box_MultipleAND_v2_26.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
    params = self:OnEnter_box_MultipleAND_v2_162();
    l0 = self.box_MultipleAND_v2_162;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1005343169", "1005343169", "MIS_340_MASTER", "box_Simple_Node_135.Out", "box_MultipleAND_v2_162.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
    params = self:OnEnter_box_HealthListener_v6_113();
    l0 = self.box_HealthListener_v6_113;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1800826149", "1800826149", "MIS_340_MASTER", "box_Simple_Node_135.Out", "box_HealthListener_v6_113.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_MultipleAND_v2_61();
    l0 = self.box_MultipleAND_v2_61;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1267031811", "1267031811", "MIS_340_MASTER", "box_Simple_Node_135.Out", "box_MultipleAND_v2_61.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
    params = self:OnEnter_box_MultipleAND_v2_318();
    l0 = self.box_MultipleAND_v2_318;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1353179204", "1353179204", "MIS_340_MASTER", "box_Simple_Node_135.Out", "box_MultipleAND_v2_318.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
    params = self:OnEnter_box_MultipleAND_v2_204();
    l0 = self.box_MultipleAND_v2_204;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1855565538", "1855565538", "MIS_340_MASTER", "box_Simple_Node_135.Out", "box_MultipleAND_v2_204.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
    params = self:OnEnter_box_MultipleAND_v2_107();
    l0 = self.box_MultipleAND_v2_107;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|651635314", "651635314", "MIS_340_MASTER", "box_Simple_Node_135.Out", "box_MultipleAND_v2_107.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 2);
end;

function export:f_box_Simple_Node_220_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_218();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|139538913", "139538913", "MIS_340_MASTER", "box_Simple_Node_220.Out", "box_SetContextualStrategy_218.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_106_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_106;
    l1 = self.box_OnceOnly_v3_357;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1576763880", "1576763880", "MIS_340_MASTER", "box_MultipleOR_106.Out", "box_OnceOnly_v3_357.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_295_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_150();
    l0 = self.box_SpawnAI_150;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|212898922", "212898922", "MIS_340_MASTER", "box_Compare_Boolean_295.A_is_True", "box_SpawnAI_150.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_GetHealthState_307_Dead()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_325;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|617526017", "617526017", "MIS_340_MASTER", "box_GetHealthState_307.Dead", "box_MultipleOR_325.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetHealthState_307_Down()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_325;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|704545769", "704545769", "MIS_340_MASTER", "box_GetHealthState_307.Down", "box_MultipleOR_325.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetHealthState_307_Healthy()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_300();
    l0 = self.box_PositionModifier_v2_300;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|303300271", "303300271", "MIS_340_MASTER", "box_GetHealthState_307.Healthy", "box_PositionModifier_v2_300.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_303_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_301();
    l0 = self.box_Delay_v5_303;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1157036751", "1157036751", "MIS_340_MASTER", "box_Delay_v5_303.TimeElapsed", "box_ParticleSystem_v3_301.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_185_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_104();
    l0 = self.box_NarrativeFade_104;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1230328226", "1230328226", "MIS_340_MASTER", "box_Compare_Boolean_185.A_is_False", "box_NarrativeFade_104.FadeIn", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeIn
    l0:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_399_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_399_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_294;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|23190659", "23190659", "MIS_340_MASTER", "box_SetBoolean_v2_399.Out", "box_OnceOnly_v3_294.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetTimeOfDay_v2_359_Out()
    local params, l0;
    self:OnExit_box_GetTimeOfDay_v2_359_Out();
    l0 = Boxes[GetPathID("Domino/System/GetTimeOfDay_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_393();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|488750182", "488750182", "MIS_340_MASTER", "box_GetTimeOfDay_v2_359.Out", "box_Compare_Integers_393.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_261_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_261_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeSceneCleanUp_V2_262();
    l0 = self.box_NarrativeSceneCleanUp_V2_262;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1868696943", "1868696943", "MIS_340_MASTER", "box_SetBoolean_v2_261.Out", "box_NarrativeSceneCleanUp_V2_262.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_RemoveEntity_v2_33_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_54();
    l0 = self.box_RemoveEntity_v2_33;
    l1 = self.box_Delay_v5_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1884205610", "1884205610", "MIS_340_MASTER", "box_RemoveEntity_v2_33.Out", "box_Delay_v5_54.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PositionModifier_v2_311_Done()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_355();
    l0 = self.box_PositionModifier_v2_311;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|223695414", "223695414", "MIS_340_MASTER", "box_PositionModifier_v2_311.Done", "box_UseContextualActionModifier_v3_355.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetLocalPlayer_v2_2_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_2_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_15();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1791815553", "1791815553", "MIS_340_MASTER", "box_GetLocalPlayer_v2_2.Out", "box_Simple_Node_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_314_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_Wave_v2_316();
    l0 = self.box_MultipleOR_314;
    l1 = self.box_SpawnAI_Wave_v2_316;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1704994534", "1704994534", "MIS_340_MASTER", "box_MultipleOR_314.Out", "box_SpawnAI_Wave_v2_316.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_298_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_293();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1384049471", "1384049471", "MIS_340_MASTER", "box_IsEntityLoaded_v3_298.False", "box_Compare_Boolean_293.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_298_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetHealthState_337();
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1373535404", "1373535404", "MIS_340_MASTER", "box_IsEntityLoaded_v3_298.True", "box_GetHealthState_337.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_214_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_214();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|160982035", "160982035", "MIS_340_MASTER", "box_UseContextualActionModifier_v3_214.Enabled", "box_UseContextualActionModifier_v3_214.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_214_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_74();
    l0 = self.box_MultipleAND_v2_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1891615806", "1891615806", "MIS_340_MASTER", "box_UseContextualActionModifier_v3_214.UseCalled", "box_MultipleAND_v2_74.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_Delay_v5_22_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_36();
    l0 = self.box_Delay_v5_22;
    l1 = self.box_VisibilityModifier_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2115702969", "2115702969", "MIS_340_MASTER", "box_Delay_v5_22.TimeElapsed", "box_VisibilityModifier_36.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_MultipleAND_v2_264_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_121();
    l0 = self.box_MultipleAND_v2_264;
    l1 = self.box_ExitZoneWarningListener_v3_121;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|601644033", "601644033", "MIS_340_MASTER", "box_MultipleAND_v2_264.Out", "box_ExitZoneWarningListener_v3_121.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleAND_v2_17_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_17;
    l1 = self.box_MultipleOR_250;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|384987765", "384987765", "MIS_340_MASTER", "box_MultipleAND_v2_17.Out", "box_MultipleOR_250.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsPawnAlive_v3_255_Alive()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_108();
    l0 = self.box_RequestPhoneCall_v2_108;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|952608117", "952608117", "MIS_340_MASTER", "box_IsPawnAlive_v3_255.Alive", "box_RequestPhoneCall_v2_108.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_IsPawnAlive_v3_255_DeadOrDown()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_358;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|303646041", "303646041", "MIS_340_MASTER", "box_IsPawnAlive_v3_255.DeadOrDown", "box_MultipleOR_358.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetActivityState_v2_39_Completed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|933218617", "933218617", "MIS_340_MASTER", "box_GetActivityState_v2_39.Completed", "box_MultipleOR_45.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetTimeOfDay_130_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_272();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|824952973", "824952973", "MIS_340_MASTER", "box_SetTimeOfDay_130.Out", "box_Simple_Node_272.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_153_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_157();
    l0 = self.box_Delay_v5_153;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|432393246", "432393246", "MIS_340_MASTER", "box_Delay_v5_153.TimeElapsed", "box_OutputOrder_v2_157.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_329_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_172();
    l0 = self.box_EntityStatusListener_329;
    l1 = self.box_SpawnAI_172;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1545935411", "1545935411", "MIS_340_MASTER", "box_EntityStatusListener_329.Enabled", "box_SpawnAI_172.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_329_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_332();
    l0 = self.box_EntityStatusListener_329;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|730353450", "730353450", "MIS_340_MASTER", "box_EntityStatusListener_329.Loaded", "box_UseContextualActionModifier_v3_332.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_5_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_5;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1065772658", "1065772658", "MIS_340_MASTER", "box_ActivityAcknowledgeGate_5.Acknowledged", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_5_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_5;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|843970099", "843970099", "MIS_340_MASTER", "box_ActivityAcknowledgeGate_5.Reloaded", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityState_v2_265_Active()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_291;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1645266815", "1645266815", "MIS_340_MASTER", "box_GetActivityState_v2_265.Active", "box_MultipleOR_291.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityState_v2_265_Completed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_238();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1185474461", "1185474461", "MIS_340_MASTER", "box_GetActivityState_v2_265.Completed", "box_OutputOrder_v2_238.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetActivityState_v2_265_Inactive()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_291;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1975995987", "1975995987", "MIS_340_MASTER", "box_GetActivityState_v2_265.Inactive", "box_MultipleOR_291.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_54_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_RegenerateNavmesh_60();
    l0 = self.box_Delay_v5_54;
    l1 = self.box_RegenerateNavmesh_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2104122967", "2104122967", "MIS_340_MASTER", "box_Delay_v5_54.TimeElapsed", "box_RegenerateNavmesh_60.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_19_Out()
    self:OnExit_box_SetBoolean_v2_19_Out();
end;

function export:f_box_PositionModifier_v2_300_Done()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_354();
    l0 = self.box_PositionModifier_v2_300;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1802559517", "1802559517", "MIS_340_MASTER", "box_PositionModifier_v2_300.Done", "box_UseContextualActionModifier_v3_354.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_276_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_276;
    l1 = self.box_MultipleOR_193;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1180081728", "1180081728", "MIS_340_MASTER", "box_Delay_v5_276.TimeElapsed", "box_MultipleOR_193.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_129_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_38();
    l0 = self.box_MultipleOR_129;
    l1 = self.box_Delay_v5_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1663716453", "1663716453", "MIS_340_MASTER", "box_MultipleOR_129.Out", "box_Delay_v5_38.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ColorRemapTextureModifier_v3_426_Added()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideEnvironment_v3_430();
    l0 = self.box_ColorRemapTextureModifier_v3_426;
    l1 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1304010329", "1304010329", "MIS_340_MASTER", "box_ColorRemapTextureModifier_v3_426.Added", "box_OverrideEnvironment_v3_430.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ColorRemapTextureModifier_v3_426_Removed()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideEnvironment_v3_430();
    l0 = self.box_ColorRemapTextureModifier_v3_426;
    l1 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|65425851", "65425851", "MIS_340_MASTER", "box_ColorRemapTextureModifier_v3_426.Removed", "box_OverrideEnvironment_v3_430.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_206_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SendGSFGenericEvent_207();
    l0 = self.box_Delay_v5_206;
    l1 = Boxes[GetPathID("Domino/System/SendGSFGenericEvent.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|130863594", "130863594", "MIS_340_MASTER", "box_Delay_v5_206.TimeElapsed", "box_SendGSFGenericEvent_207.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_218_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_214();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|459492810", "459492810", "MIS_340_MASTER", "box_SetContextualStrategy_218.Out", "box_UseContextualActionModifier_v3_214.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_61_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_77();
    l0 = self.box_MultipleAND_v2_61;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1979101570", "1979101570", "MIS_340_MASTER", "box_MultipleAND_v2_61.Out", "box_OutputOrder_v2_77.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAIRequestGroup_v2_229_Out()
    local l0, l1;
    l0 = self.box_SpawnAIRequestGroup_v2_229;
    l1 = self.box_MultipleOR_129;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1102495711", "1102495711", "MIS_340_MASTER", "box_SpawnAIRequestGroup_v2_229.Out", "box_MultipleOR_129.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleAND_v2_168_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_216();
    l0 = self.box_MultipleAND_v2_168;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|146416522", "146416522", "MIS_340_MASTER", "box_MultipleAND_v2_168.Out", "box_SetContextualStrategy_216.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_208_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_208();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1530898", "1530898", "MIS_340_MASTER", "box_UseContextualActionModifier_v3_208.Enabled", "box_UseContextualActionModifier_v3_208.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_208_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_168();
    l0 = self.box_MultipleAND_v2_168;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|781039932", "781039932", "MIS_340_MASTER", "box_UseContextualActionModifier_v3_208.UseCalled", "box_MultipleAND_v2_168.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_442_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_FastTravelModifier_v2_146();
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1484884310", "1484884310", "MIS_340_MASTER", "box_OutputOrder_v2_442.Out", "box_FastTravelModifier_v2_146.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_442_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_435();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_435;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1425398159", "1425398159", "MIS_340_MASTER", "box_OutputOrder_v2_442.Out", "box_CHEAT_SetEnvironmentTimeScale_435.SetTimeScale", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeScale
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_420_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_276();
    l0 = self.box_Delay_v5_276;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1907990506", "1907990506", "MIS_340_MASTER", "box_OutputOrder_v2_420.Out", "box_Delay_v5_276.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_420_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_422;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1234990280", "1234990280", "MIS_340_MASTER", "box_OutputOrder_v2_420.Out", "box_OnceOnly_v3_422.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PersistentParticlesModifier_6_OnStartParticles()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideEnvironment_v3_49();
    l0 = self.box_PersistentParticlesModifier_6;
    l1 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|443035750", "443035750", "MIS_340_MASTER", "box_PersistentParticlesModifier_6.OnStartParticles", "box_OverrideEnvironment_v3_49.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PersistentParticlesModifier_6_OnStopParticles()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideEnvironment_v3_49();
    l0 = self.box_PersistentParticlesModifier_6;
    l1 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1433837365", "1433837365", "MIS_340_MASTER", "box_PersistentParticlesModifier_6.OnStopParticles", "box_OverrideEnvironment_v3_49.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NarrativeFade_104_FadedIn()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_187();
    l0 = self.box_NarrativeFade_104;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|720166851", "720166851", "MIS_340_MASTER", "box_NarrativeFade_104.FadedIn", "box_SetBoolean_v2_187.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NarrativeFade_104_FadedOut()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_138();
    l0 = self.box_NarrativeFade_104;
    l1 = self.box_Delay_v5_138;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1227066310", "1227066310", "MIS_340_MASTER", "box_NarrativeFade_104.FadedOut", "box_Delay_v5_138.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ActivityInitialized_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_7();
    l0 = self.box_ActivityInitialized_3;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1344711854", "1344711854", "MIS_340_MASTER", "box_ActivityInitialized_3.Out", "box_GetPlayerGroup_v2_7.FriendlyPlayers", l0:GetLuaBox(), l1:GetLuaBox());
    -- FriendlyPlayers
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_443_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_444();
    l0 = self.box_MultipleOR_443;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|582572452", "582572452", "MIS_340_MASTER", "box_MultipleOR_443.Out", "box_OutputOrder_v2_444.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_446_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetTimeOfDay_v2_252();
    l0 = self.box_MultipleOR_446;
    l1 = Boxes[GetPathID("Domino/System/GetTimeOfDay_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1459257307", "1459257307", "MIS_340_MASTER", "box_MultipleOR_446.Out", "box_GetTimeOfDay_v2_252.GetTimeOfDay", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetTimeOfDay
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_195_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_195;
    l1 = self.box_OnceOnly_v3_143;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1111530183", "1111530183", "MIS_340_MASTER", "box_MultipleOR_195.Out", "box_OnceOnly_v3_143.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_391_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_399();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1293383451", "1293383451", "MIS_340_MASTER", "box_Compare_Integers_391.A_ge_B", "box_SetBoolean_v2_399.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_391_A_ne_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_403;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|682306660", "682306660", "MIS_340_MASTER", "box_Compare_Integers_391.A_ne_B", "box_MultipleOR_403.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_TriggerState_v2_225_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_432();
    l0 = self.box_ProximityTrigger_v3_432;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1509921866", "1509921866", "MIS_340_MASTER", "box_TriggerState_v2_225.Enabled", "box_ProximityTrigger_v3_432.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SpawnAI_Wave_v2_321_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_IsPawnAlive_v3_351();
    l0 = self.box_SpawnAI_Wave_v2_321;
    l1 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1958726331", "1958726331", "MIS_340_MASTER", "box_SpawnAI_Wave_v2_321.NextWave", "box_IsPawnAlive_v3_351.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_48_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ColorRemapTextureModifier_v3_37();
    l0 = self.box_MultipleOR_48;
    l1 = self.box_ColorRemapTextureModifier_v3_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|965695013", "965695013", "MIS_340_MASTER", "box_MultipleOR_48.Out", "box_ColorRemapTextureModifier_v3_37.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_4_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|771350559", "771350559", "MIS_340_MASTER", "box_OutputOrder_v2_4.Out", "box_MultipleOR_44.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_4_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_193;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|727923758", "727923758", "MIS_340_MASTER", "box_OutputOrder_v2_4.Out", "box_MultipleOR_193.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_4_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ColorRemapTextureModifier_v3_56();
    l0 = self.box_ColorRemapTextureModifier_v3_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1702140350", "1702140350", "MIS_340_MASTER", "box_OutputOrder_v2_4.Out", "box_ColorRemapTextureModifier_v3_56.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_199_Done()
    local params, l0, l1;
    params = self:OnEnter_box_SendGSFGenericEvent_200();
    l0 = self.box_PositionModifier_v2_199;
    l1 = Boxes[GetPathID("Domino/System/SendGSFGenericEvent.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|339071921", "339071921", "MIS_340_MASTER", "box_PositionModifier_v2_199.Done", "box_SendGSFGenericEvent_200.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetHealthState_209_Down()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_212();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2096530892", "2096530892", "MIS_340_MASTER", "box_GetHealthState_209.Down", "box_Compare_Entity_212.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_344_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_344();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1887432670", "1887432670", "MIS_340_MASTER", "box_UseContextualActionModifier_v3_344.Enabled", "box_UseContextualActionModifier_v3_344.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_315_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_308();
    l0 = self.box_Delay_v5_308;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1267316920", "1267316920", "MIS_340_MASTER", "box_ParticleSystem_v3_315.Started", "box_Delay_v5_308.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_177_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetTimeOfDay_130();
    l0 = self.box_MultipleOR_177;
    l1 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|318688384", "318688384", "MIS_340_MASTER", "box_MultipleOR_177.Out", "box_SetTimeOfDay_130.SetTimeOfDay", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeOfDay
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsPawnAlive_v3_256_Alive()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_105();
    l0 = self.box_RequestPhoneCall_v2_105;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|198665212", "198665212", "MIS_340_MASTER", "box_IsPawnAlive_v3_256.Alive", "box_RequestPhoneCall_v2_105.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_IsPawnAlive_v3_256_DeadOrDown()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_360;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|802819697", "802819697", "MIS_340_MASTER", "box_IsPawnAlive_v3_256.DeadOrDown", "box_MultipleOR_360.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_86_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_85();
    l0 = self.box_RequestPhoneCall_v2_85;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|245651996", "245651996", "MIS_340_MASTER", "box_Compare_Boolean_86.A_is_False", "box_RequestPhoneCall_v2_85.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_86_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_100();
    l0 = self.box_RequestPhoneCall_v2_100;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1980667725", "1980667725", "MIS_340_MASTER", "box_Compare_Boolean_86.A_is_True", "box_RequestPhoneCall_v2_100.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_331_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_Wave_v2_321();
    l0 = self.box_MultipleOR_331;
    l1 = self.box_SpawnAI_Wave_v2_321;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|473693922", "473693922", "MIS_340_MASTER", "box_MultipleOR_331.Out", "box_SpawnAI_Wave_v2_321.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_Compare_Boolean_10_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_312();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1241814370", "1241814370", "MIS_340_MASTER", "box_Compare_Boolean_10.A_is_False", "box_OutputOrder_v2_312.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_10_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_75();
    l0 = self.box_RequestPhoneCall_v2_75;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1920672444", "1920672444", "MIS_340_MASTER", "box_Compare_Boolean_10.A_is_True", "box_RequestPhoneCall_v2_75.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_76_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_136();
    l0 = self.box_MultipleOR_76;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|772448977", "772448977", "MIS_340_MASTER", "box_MultipleOR_76.Out", "box_Simple_Node_136.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_162_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_162;
    l1 = self.box_OnceOnly_v3_397;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|689908622", "689908622", "MIS_340_MASTER", "box_MultipleAND_v2_162.Out", "box_OnceOnly_v3_397.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_240_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_227();
    l0 = self.box_EntityStatusListener_227;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1237925298", "1237925298", "MIS_340_MASTER", "box_OutputOrder_v2_240.Out", "box_EntityStatusListener_227.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_240_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_263();
    l0 = self.box_EntityStatusListener_263;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1414437864", "1414437864", "MIS_340_MASTER", "box_OutputOrder_v2_240.Out", "box_EntityStatusListener_263.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_240_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_285();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|961764712", "961764712", "MIS_340_MASTER", "box_OutputOrder_v2_240.Out", "box_Simple_Node_285.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_292_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_295();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|803077916", "803077916", "MIS_340_MASTER", "box_IsEntityLoaded_v3_292.False", "box_Compare_Boolean_295.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_292_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetHealthState_307();
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1881541497", "1881541497", "MIS_340_MASTER", "box_IsEntityLoaded_v3_292.True", "box_GetHealthState_307.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_230_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_296();
    l0 = self.box_OnceOnly_v3_230;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1302862694", "1302862694", "MIS_340_MASTER", "box_OnceOnly_v3_230.Out", "box_OutputOrder_v2_296.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_119_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_153();
    l0 = self.box_MultipleAND_v2_119;
    l1 = self.box_Delay_v5_153;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1856713207", "1856713207", "MIS_340_MASTER", "box_MultipleAND_v2_119.Out", "box_Delay_v5_153.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_RequestPhoneCall_v2_100_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_10();
    l0 = self.box_RequestPhoneCall_v2_100;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1904087421", "1904087421", "MIS_340_MASTER", "box_RequestPhoneCall_v2_100.Completed", "box_Compare_Boolean_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_402_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetTimeOfDay_v2_359();
    l0 = self.box_MultipleOR_402;
    l1 = Boxes[GetPathID("Domino/System/GetTimeOfDay_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1311152898", "1311152898", "MIS_340_MASTER", "box_MultipleOR_402.Out", "box_GetTimeOfDay_v2_359.GetTimeOfDay", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetTimeOfDay
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_118_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_118;
    l1 = self.box_MultipleOR_95;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1282316880", "1282316880", "MIS_340_MASTER", "box_Delay_v5_118.TimeElapsed", "box_MultipleOR_95.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_278_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = self.box_OnceOnly_v3_278;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1556979096", "1556979096", "MIS_340_MASTER", "box_OnceOnly_v3_278.Out", "box_OutputOrder_v2_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_FastTravelModifier_v2_165_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_446;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1407464118", "1407464118", "MIS_340_MASTER", "box_FastTravelModifier_v2_165.Disabled", "box_MultipleOR_446.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_308_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_315();
    l0 = self.box_Delay_v5_308;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|970051648", "970051648", "MIS_340_MASTER", "box_Delay_v5_308.TimeElapsed", "box_ParticleSystem_v3_315.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_Wave_v2_316_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_IsPawnAlive_v3_352();
    l0 = self.box_SpawnAI_Wave_v2_316;
    l1 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1756817947", "1756817947", "MIS_340_MASTER", "box_SpawnAI_Wave_v2_316.NextWave", "box_IsPawnAlive_v3_352.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetHealthState_147_Critical()
    local l0;
    self:OnExit_box_GetHealthState_147_Critical();
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_148;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1172241798", "1172241798", "MIS_340_MASTER", "box_GetHealthState_147.Critical", "box_MultipleOR_148.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetHealthState_147_Dead()
    local l0;
    self:OnExit_box_GetHealthState_147_Dead();
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_148;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1420542991", "1420542991", "MIS_340_MASTER", "box_GetHealthState_147.Dead", "box_MultipleOR_148.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_GetHealthState_147_Down()
    local l0;
    self:OnExit_box_GetHealthState_147_Down();
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_148;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|940525628", "940525628", "MIS_340_MASTER", "box_GetHealthState_147.Down", "box_MultipleOR_148.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_GetHealthState_147_Healthy()
    local l0;
    self:OnExit_box_GetHealthState_147_Healthy();
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_148;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2062089221", "2062089221", "MIS_340_MASTER", "box_GetHealthState_147.Healthy", "box_MultipleOR_148.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_47_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_23();
    l0 = self.box_MultipleOR_47;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|776030872", "776030872", "MIS_340_MASTER", "box_MultipleOR_47.Out", "box_OutputOrder_v2_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_202_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_211();
    l0 = self.box_MultipleOR_202;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|170643987", "170643987", "MIS_340_MASTER", "box_MultipleOR_202.Out", "box_OutputOrder_v2_211.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_301_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_303();
    l0 = self.box_Delay_v5_303;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1400363517", "1400363517", "MIS_340_MASTER", "box_ParticleSystem_v3_301.Started", "box_Delay_v5_303.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_140_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_286();
    l0 = self.box_Delay_v5_140;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2105200583", "2105200583", "MIS_340_MASTER", "box_Delay_v5_140.TimeElapsed", "box_Compare_Boolean_286.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_164_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_156();
    l0 = self.box_Delay_v5_164;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|456677430", "456677430", "MIS_340_MASTER", "box_Delay_v5_164.TimeElapsed", "box_UseContextualActionModifier_v3_156.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_210_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_208();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1953235781", "1953235781", "MIS_340_MASTER", "box_OutputOrder_v2_210.Out", "box_UseContextualActionModifier_v3_208.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_210_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_202;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|869025671", "869025671", "MIS_340_MASTER", "box_OutputOrder_v2_210.Out", "box_MultipleOR_202.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_422_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_423();
    l0 = self.box_OnceOnly_v3_422;
    l1 = self.box_CHEAT_SetEnvironmentTimeScale_423;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2016173776", "2016173776", "MIS_340_MASTER", "box_OnceOnly_v3_422.Out", "box_CHEAT_SetEnvironmentTimeScale_423.SetTimeScale", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeScale
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_95_Out()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_260();
    l0 = self.box_MultipleOR_95;
    l1 = self.box_VisibilityModifier_260;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|452113164", "452113164", "MIS_340_MASTER", "box_MultipleOR_95.Out", "box_VisibilityModifier_260.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_77_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_248();
    l0 = self.box_MultipleAND_v2_248;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1582555349", "1582555349", "MIS_340_MASTER", "box_OutputOrder_v2_77.Out", "box_MultipleAND_v2_248.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_77_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_89;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1217169705", "1217169705", "MIS_340_MASTER", "box_OutputOrder_v2_77.Out", "box_MultipleOR_89.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_77_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_221();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2047615029", "2047615029", "MIS_340_MASTER", "box_OutputOrder_v2_77.Out", "box_SetContextualStrategy_221.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_343_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_343();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|341919262", "341919262", "MIS_340_MASTER", "box_UseContextualActionModifier_v3_343.Enabled", "box_UseContextualActionModifier_v3_343.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_141_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ColorRemapTextureModifier_v3_68();
    l0 = self.box_MultipleOR_141;
    l1 = self.box_ColorRemapTextureModifier_v3_68;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1336240862", "1336240862", "MIS_340_MASTER", "box_MultipleOR_141.Out", "box_ColorRemapTextureModifier_v3_68.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_235_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_171();
    l0 = self.box_MultipleAND_v2_171;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1758190631", "1758190631", "MIS_340_MASTER", "box_OutputOrder_v2_235.Out", "box_MultipleAND_v2_171.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_235_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_269();
    l0 = self.box_MultipleAND_v2_269;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|536590243", "536590243", "MIS_340_MASTER", "box_OutputOrder_v2_235.Out", "box_MultipleAND_v2_269.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_312_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAIRequestGroup_v2_229();
    l0 = self.box_SpawnAIRequestGroup_v2_229;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1621034759", "1621034759", "MIS_340_MASTER", "box_OutputOrder_v2_312.Out", "box_SpawnAIRequestGroup_v2_229.SpawnByPercentage", clone:GetLuaBox(), l0:GetLuaBox());
    -- SpawnByPercentage
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_312_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_128();
    l0 = self.box_RequestPhoneCall_v2_128;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1521377700", "1521377700", "MIS_340_MASTER", "box_OutputOrder_v2_312.Out", "box_RequestPhoneCall_v2_128.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_349_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_343();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|406168364", "406168364", "MIS_340_MASTER", "box_OutputOrder_v2_349.Out", "box_UseContextualActionModifier_v3_343.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_349_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_94();
    l0 = self.box_RequestPhoneCall_v2_94;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1317929732", "1317929732", "MIS_340_MASTER", "box_OutputOrder_v2_349.Out", "box_RequestPhoneCall_v2_94.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_IsPawnAlive_v3_80_Alive()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_350();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|957679650", "957679650", "MIS_340_MASTER", "box_IsPawnAlive_v3_80.Alive", "box_OutputOrder_v2_350.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_304_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAIRequestGroup_v2_231();
    l0 = self.box_SpawnAIRequestGroup_v2_231;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|127162702", "127162702", "MIS_340_MASTER", "box_OutputOrder_v2_304.Out", "box_SpawnAIRequestGroup_v2_231.SpawnByPercentage", clone:GetLuaBox(), l0:GetLuaBox());
    -- SpawnByPercentage
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_304_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_127();
    l0 = self.box_RequestPhoneCall_v2_127;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2093530452", "2093530452", "MIS_340_MASTER", "box_OutputOrder_v2_304.Out", "box_RequestPhoneCall_v2_127.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_21_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_19();
    l0 = self.box_MultipleOR_21;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|596117440", "596117440", "MIS_340_MASTER", "box_MultipleOR_21.Out", "box_SetBoolean_v2_19.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetTimeOfDay_v2_252_Out()
    local params, l0;
    self:OnExit_box_GetTimeOfDay_v2_252_Out();
    l0 = Boxes[GetPathID("Domino/System/GetTimeOfDay_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_438();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|661001977", "661001977", "MIS_340_MASTER", "box_GetTimeOfDay_v2_252.Out", "box_Compare_Integers_438.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_439_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ColorRemapTextureModifier_v3_426();
    l0 = self.box_MultipleOR_439;
    l1 = self.box_ColorRemapTextureModifier_v3_426;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|133896878", "133896878", "MIS_340_MASTER", "box_MultipleOR_439.Out", "box_ColorRemapTextureModifier_v3_426.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_354_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_306();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1863420843", "1863420843", "MIS_340_MASTER", "box_UseContextualActionModifier_v3_354.Disabled", "box_UseContextualActionModifier_v3_306.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_357_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_236();
    l0 = self.box_OnceOnly_v3_357;
    l1 = self.box_Delay_v5_236;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1644716139", "1644716139", "MIS_340_MASTER", "box_OnceOnly_v3_357.Out", "box_Delay_v5_236.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_GetActivityState_v2_266_Active()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_290;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|721120187", "721120187", "MIS_340_MASTER", "box_GetActivityState_v2_266.Active", "box_MultipleOR_290.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityState_v2_266_Completed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_268();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2069752265", "2069752265", "MIS_340_MASTER", "box_GetActivityState_v2_266.Completed", "box_OutputOrder_v2_268.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetActivityState_v2_266_Inactive()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_290;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1523838017", "1523838017", "MIS_340_MASTER", "box_GetActivityState_v2_266.Inactive", "box_MultipleOR_290.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_157_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_155;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1074796081", "1074796081", "MIS_340_MASTER", "box_OutputOrder_v2_157.Out", "box_MultipleOR_155.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_157_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_156();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1235234298", "1235234298", "MIS_340_MASTER", "box_OutputOrder_v2_157.Out", "box_UseContextualActionModifier_v3_156.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_157_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_163();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|810674586", "810674586", "MIS_340_MASTER", "box_OutputOrder_v2_157.Out", "box_UseContextualActionModifier_v3_163.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ColorRemapTextureModifier_v3_56_Added()
    local params, l0, l1;
    params = self:OnEnter_box_PersistentParticlesModifier_6();
    l0 = self.box_ColorRemapTextureModifier_v3_56;
    l1 = self.box_PersistentParticlesModifier_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|177953707", "177953707", "MIS_340_MASTER", "box_ColorRemapTextureModifier_v3_56.Added", "box_PersistentParticlesModifier_6.StartParticles", l0:GetLuaBox(), l1:GetLuaBox());
    -- StartParticles
    l1:Exec(0, params);
end;

function export:f_box_ColorRemapTextureModifier_v3_56_Removed()
    local params, l0, l1;
    params = self:OnEnter_box_PersistentParticlesModifier_6();
    l0 = self.box_ColorRemapTextureModifier_v3_56;
    l1 = self.box_PersistentParticlesModifier_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1264735087", "1264735087", "MIS_340_MASTER", "box_ColorRemapTextureModifier_v3_56.Removed", "box_PersistentParticlesModifier_6.StopParticles", l0:GetLuaBox(), l1:GetLuaBox());
    -- StopParticles
    l1:Exec(1, params);
end;

function export:f_box_SetBoolean_v2_274_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_274_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_421;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|461373652", "461373652", "MIS_340_MASTER", "box_SetBoolean_v2_274.Out", "box_OnceOnly_v3_421.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetEntity_v2_192_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_192_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_194();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1624932690", "1624932690", "MIS_340_MASTER", "box_SetEntity_v2_192.Out", "box_Simple_Node_194.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_64_Enabled()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v3_64_Enabled();
    params = self:OnEnter_box_Delay_v5_22();
    l0 = self.box_ProximityTrigger_v3_64;
    l1 = self.box_Delay_v5_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|120182703", "120182703", "MIS_340_MASTER", "box_ProximityTrigger_v3_64.Enabled", "box_Delay_v5_22.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v3_64_Enter()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v3_64_Enter();
    params = self:OnEnter_box_VisibilityModifier_63();
    l0 = self.box_ProximityTrigger_v3_64;
    l1 = self.box_VisibilityModifier_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2140682497", "2140682497", "MIS_340_MASTER", "box_ProximityTrigger_v3_64.Enter", "box_VisibilityModifier_63.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_64_Leave()
    self:OnExit_box_ProximityTrigger_v3_64_Leave();
end;

function export:f_box_ProximityTrigger_v3_64_OnEmpty()
    self:OnExit_box_ProximityTrigger_v3_64_OnEmpty();
end;

function export:f_box_ProximityTrigger_v3_64_OnOccupied()
    self:OnExit_box_ProximityTrigger_v3_64_OnOccupied();
end;

function export:f_box_ProximityTrigger_v3_64_Use()
    self:OnExit_box_ProximityTrigger_v3_64_Use();
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_425_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_30();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_425;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2072898289", "2072898289", "MIS_340_MASTER", "box_CHEAT_SetEnvironmentTimeScale_425.Out", "box_OutputOrder_v2_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_181_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_192();
    l0 = self.box_EntityStatusListener_181;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|388082028", "388082028", "MIS_340_MASTER", "box_EntityStatusListener_181.Loaded", "box_SetEntity_v2_192.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_447_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_434();
    l0 = self.box_OnceOnly_v3_447;
    l1 = self.box_CHEAT_SetEnvironmentTimeScale_434;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1236324853", "1236324853", "MIS_340_MASTER", "box_OnceOnly_v3_447.Out", "box_CHEAT_SetEnvironmentTimeScale_434.SetTimeScale", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeScale
    l1:Exec(0, params);
end;

function export:f_box_RequestPhoneCall_v2_85_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_12();
    l0 = self.box_RequestPhoneCall_v2_85;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|18009192", "18009192", "MIS_340_MASTER", "box_RequestPhoneCall_v2_85.Completed", "box_Compare_Boolean_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_FloatArithmetics_v2_87_Out()
    self:OnExit_box_FloatArithmetics_v2_87_Out();
end;

function export:f_box_UseContextualActionModifier_v3_319_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_319();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1503922527", "1503922527", "MIS_340_MASTER", "box_UseContextualActionModifier_v3_319.Enabled", "box_UseContextualActionModifier_v3_319.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_291_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_239();
    l0 = self.box_MultipleOR_291;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|386706676", "386706676", "MIS_340_MASTER", "box_MultipleOR_291.Out", "box_OutputOrder_v2_239.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_287_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_287;
    l1 = self.box_MultipleOR_402;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|619876485", "619876485", "MIS_340_MASTER", "box_Delay_v5_287.TimeElapsed", "box_MultipleOR_402.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EntityStatusListener_348_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_347();
    l0 = self.box_EntityStatusListener_348;
    l1 = self.box_Bind_v4_347;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|87952146", "87952146", "MIS_340_MASTER", "box_EntityStatusListener_348.Loaded", "box_Bind_v4_347.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_239_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_171();
    l0 = self.box_MultipleAND_v2_171;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|261292540", "261292540", "MIS_340_MASTER", "box_OutputOrder_v2_239.Out", "box_MultipleAND_v2_171.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_239_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_270();
    l0 = self.box_MultipleAND_v2_270;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|286340994", "286340994", "MIS_340_MASTER", "box_OutputOrder_v2_239.Out", "box_MultipleAND_v2_270.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_PositionModifier_v2_330_Done()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_353();
    l0 = self.box_PositionModifier_v2_330;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|106779076", "106779076", "MIS_340_MASTER", "box_PositionModifier_v2_330.Done", "box_UseContextualActionModifier_v3_353.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_355_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_323();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|621914878", "621914878", "MIS_340_MASTER", "box_UseContextualActionModifier_v3_355.Disabled", "box_UseContextualActionModifier_v3_323.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_v2_114_LoadedIdReceived()
    local params, l0, l1;
    params = self:OnEnter_box_IsGunsForHire_v2_117();
    l0 = self.box_CharacterLoadedIdListener_v2_114;
    l1 = Boxes[GetPathID("Domino/System/IsGunsForHire_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1162955178", "1162955178", "MIS_340_MASTER", "box_CharacterLoadedIdListener_v2_114.LoadedIdReceived", "box_IsGunsForHire_v2_117.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_Wave_v2_254_NextWave()
    local l0, l1;
    l0 = self.box_SpawnAI_Wave_v2_254;
    l1 = self.box_MultipleOR_129;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1607845385", "1607845385", "MIS_340_MASTER", "box_SpawnAI_Wave_v2_254.NextWave", "box_MultipleOR_129.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_NarrativeSceneCleanUp_V2_186_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_184();
    l0 = self.box_NarrativeSceneCleanUp_V2_186;
    l1 = self.box_PostFx_v3_184;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1695248393", "1695248393", "MIS_340_MASTER", "box_NarrativeSceneCleanUp_V2_186.Out", "box_PostFx_v3_184.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_133_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_133;
    l1 = self.box_OnceOnly_v3_145;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1115625991", "1115625991", "MIS_340_MASTER", "box_EntityStatusListener_133.Loaded", "box_OnceOnly_v3_145.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UseContextualActionModifier_v3_353_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_319();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2120761362", "2120761362", "MIS_340_MASTER", "box_UseContextualActionModifier_v3_353.Disabled", "box_UseContextualActionModifier_v3_319.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_103_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_AlarmModifier_v2_101();
    l0 = self.box_OnceOnly_v3_103;
    l1 = Boxes[GetPathID("Domino/System/AI/AlarmModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1096403208", "1096403208", "MIS_340_MASTER", "box_OnceOnly_v3_103.Out", "box_AlarmModifier_v2_101.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_263_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_264();
    l0 = self.box_EntityStatusListener_263;
    l1 = self.box_MultipleAND_v2_264;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1029839396", "1029839396", "MIS_340_MASTER", "box_EntityStatusListener_263.Loaded", "box_MultipleAND_v2_264.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_394_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_78();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1714423338", "1714423338", "MIS_340_MASTER", "box_OutputOrder_v2_394.Out", "box_SetBoolean_v2_78.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_394_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_401();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|609419006", "609419006", "MIS_340_MASTER", "box_OutputOrder_v2_394.Out", "box_Simple_Node_401.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_79_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_IsPawnAlive_v3_256();
    l0 = self.box_OnceOnly_v3_79;
    l1 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1625247177", "1625247177", "MIS_340_MASTER", "box_OnceOnly_v3_79.Out", "box_IsPawnAlive_v3_256.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_41_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_40();
    l0 = self.box_MessageListener_v3_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|364066757", "364066757", "MIS_340_MASTER", "box_OutputOrder_v2_41.Out", "box_MessageListener_v3_40.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_41_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_39();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2031379576", "2031379576", "MIS_340_MASTER", "box_OutputOrder_v2_41.Out", "box_GetActivityState_v2_39.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_211_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_199();
    l0 = self.box_PositionModifier_v2_199;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1176746346", "1176746346", "MIS_340_MASTER", "box_OutputOrder_v2_211.Out", "box_PositionModifier_v2_199.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_211_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetHealthState_209();
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2137708211", "2137708211", "MIS_340_MASTER", "box_OutputOrder_v2_211.Out", "box_GetHealthState_209.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_286_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_261();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|325337624", "325337624", "MIS_340_MASTER", "box_Compare_Boolean_286.A_is_False", "box_SetBoolean_v2_261.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_306_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_306();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|909223870", "909223870", "MIS_340_MASTER", "box_UseContextualActionModifier_v3_306.Enabled", "box_UseContextualActionModifier_v3_306.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_176_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_287();
    l0 = self.box_Delay_v5_287;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1296581116", "1296581116", "MIS_340_MASTER", "box_OutputOrder_v2_176.Out", "box_Delay_v5_287.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_176_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_288;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|191825160", "191825160", "MIS_340_MASTER", "box_OutputOrder_v2_176.Out", "box_OnceOnly_v3_288.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_43_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_51();
    l0 = self.box_Delay_v5_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1413420864", "1413420864", "MIS_340_MASTER", "box_OutputOrder_v2_43.Out", "box_Delay_v5_51.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_43_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_141;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1793508295", "1793508295", "MIS_340_MASTER", "box_OutputOrder_v2_43.Out", "box_MultipleOR_141.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_43_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_142();
    l0 = self.box_Delay_v5_142;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1897361031", "1897361031", "MIS_340_MASTER", "box_OutputOrder_v2_43.Out", "box_Delay_v5_142.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ColorRemapTextureModifier_v3_68_Added()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideEnvironment_v3_82();
    l0 = self.box_ColorRemapTextureModifier_v3_68;
    l1 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|773332199", "773332199", "MIS_340_MASTER", "box_ColorRemapTextureModifier_v3_68.Added", "box_OverrideEnvironment_v3_82.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ColorRemapTextureModifier_v3_68_Removed()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideEnvironment_v3_82();
    l0 = self.box_ColorRemapTextureModifier_v3_68;
    l1 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|759486559", "759486559", "MIS_340_MASTER", "box_ColorRemapTextureModifier_v3_68.Removed", "box_OverrideEnvironment_v3_82.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_438_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_428();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1367046940", "1367046940", "MIS_340_MASTER", "box_Compare_Integers_438.A_ge_B", "box_Compare_Integers_428.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_438_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_429;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|786763761", "786763761", "MIS_340_MASTER", "box_Compare_Integers_438.A_lt_B", "box_MultipleOR_429.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_431_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_445();
    l0 = self.box_OnceOnly_v3_431;
    l1 = self.box_CHEAT_SetEnvironmentTimeScale_445;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|630863366", "630863366", "MIS_340_MASTER", "box_OnceOnly_v3_431.Out", "box_CHEAT_SetEnvironmentTimeScale_445.SetTimeScale", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeScale
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_296_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_292();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1593048788", "1593048788", "MIS_340_MASTER", "box_OutputOrder_v2_296.Out", "box_IsEntityLoaded_v3_292.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_296_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_305();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|377908587", "377908587", "MIS_340_MASTER", "box_OutputOrder_v2_296.Out", "box_IsEntityLoaded_v3_305.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_296_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_298();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|701084859", "701084859", "MIS_340_MASTER", "box_OutputOrder_v2_296.Out", "box_IsEntityLoaded_v3_298.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_296_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_329();
    l0 = self.box_EntityStatusListener_329;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|157330571", "157330571", "MIS_340_MASTER", "box_OutputOrder_v2_296.Out", "box_EntityStatusListener_329.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_158_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_161();
    l0 = self.box_MultipleOR_158;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1484898372", "1484898372", "MIS_340_MASTER", "box_MultipleOR_158.Out", "box_Compare_Boolean_161.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_193_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetTimeOfDay_v2_277();
    l0 = self.box_MultipleOR_193;
    l1 = Boxes[GetPathID("Domino/System/GetTimeOfDay_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1344652127", "1344652127", "MIS_340_MASTER", "box_MultipleOR_193.Out", "box_GetTimeOfDay_v2_277.GetTimeOfDay", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetTimeOfDay
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_30_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_16();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|620393572", "620393572", "MIS_340_MASTER", "box_OutputOrder_v2_30.Out", "box_Simple_Node_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_30_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_27();
    l0 = self.box_Delay_v5_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|10345703", "10345703", "MIS_340_MASTER", "box_OutputOrder_v2_30.Out", "box_Delay_v5_27.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_143_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_289();
    l0 = self.box_OnceOnly_v3_143;
    l1 = self.box_EntityStatusListener_289;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1481121140", "1481121140", "MIS_340_MASTER", "box_OnceOnly_v3_143.Out", "box_EntityStatusListener_289.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GetHealthState_327_Dead()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_328;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|503588009", "503588009", "MIS_340_MASTER", "box_GetHealthState_327.Dead", "box_MultipleOR_328.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetHealthState_327_Down()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_328;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|198183704", "198183704", "MIS_340_MASTER", "box_GetHealthState_327.Down", "box_MultipleOR_328.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetHealthState_327_Healthy()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_330();
    l0 = self.box_PositionModifier_v2_330;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|165133926", "165133926", "MIS_340_MASTER", "box_GetHealthState_327.Healthy", "box_PositionModifier_v2_330.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_346_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_345();
    l0 = self.box_EntityStatusListener_346;
    l1 = self.box_Bind_v4_345;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|735606054", "735606054", "MIS_340_MASTER", "box_EntityStatusListener_346.Loaded", "box_Bind_v4_345.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_109_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_IsPawnAlive_v3_255();
    l0 = self.box_OnceOnly_v3_109;
    l1 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|849744822", "849744822", "MIS_340_MASTER", "box_OnceOnly_v3_109.Out", "box_IsPawnAlive_v3_255.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_142_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ColorRemapTextureModifier_v3_29();
    l0 = self.box_Delay_v5_142;
    l1 = self.box_ColorRemapTextureModifier_v3_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1382225229", "1382225229", "MIS_340_MASTER", "box_Delay_v5_142.TimeElapsed", "box_ColorRemapTextureModifier_v3_29.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_145_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_GetHealthState_98();
    l0 = self.box_OnceOnly_v3_145;
    l1 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2113887319", "2113887319", "MIS_340_MASTER", "box_OnceOnly_v3_145.Out", "box_GetHealthState_98.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_132_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_133();
    l0 = self.box_EntityStatusListener_133;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|152870315", "152870315", "MIS_340_MASTER", "box_OutputOrder_v2_132.Out", "box_EntityStatusListener_133.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_132_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_131();
    l0 = self.box_EntityStatusListener_131;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1792309093", "1792309093", "MIS_340_MASTER", "box_OutputOrder_v2_132.Out", "box_EntityStatusListener_131.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_356_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_237();
    l0 = self.box_OnceOnly_v3_356;
    l1 = self.box_Delay_v5_237;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1398818103", "1398818103", "MIS_340_MASTER", "box_OnceOnly_v3_356.Out", "box_Delay_v5_237.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Compare_Floats_102_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_396();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2031270939", "2031270939", "MIS_340_MASTER", "box_Compare_Floats_102.A_lt_B", "box_OutputOrder_v2_396.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_148_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_135();
    l0 = self.box_MultipleOR_148;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|571163470", "571163470", "MIS_340_MASTER", "box_MultipleOR_148.Out", "box_Simple_Node_135.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_34_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAIRequestGroup_v2_35();
    l0 = self.box_EntityStatusListener_34;
    l1 = self.box_SpawnAIRequestGroup_v2_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1657142384", "1657142384", "MIS_340_MASTER", "box_EntityStatusListener_34.Enabled", "box_SpawnAIRequestGroup_v2_35.SpawnByPercentage", l0:GetLuaBox(), l1:GetLuaBox());
    -- SpawnByPercentage
    l1:Exec(2, params);
end;

function export:f_box_EntityStatusListener_34_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_53();
    l0 = self.box_EntityStatusListener_34;
    l1 = self.box_Delay_v5_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|62793715", "62793715", "MIS_340_MASTER", "box_EntityStatusListener_34.Loaded", "box_Delay_v5_53.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PostFx_v3_91_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_259();
    l0 = self.box_PostFx_v3_91;
    l1 = self.box_NarrativeFade_259;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|23050374", "23050374", "MIS_340_MASTER", "box_PostFx_v3_91.Disabled", "box_NarrativeFade_259.FadeIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeIn
    l1:Exec(0, params);
end;

function export:f_box_FloatArithmetics_v2_92_Out()
    self:OnExit_box_FloatArithmetics_v2_92_Out();
end;

function export:f_box_EntityStatusListener_289_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_334();
    l0 = self.box_EntityStatusListener_289;
    l1 = self.box_Delay_v5_334;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1840095913", "1840095913", "MIS_340_MASTER", "box_EntityStatusListener_289.Loaded", "box_Delay_v5_334.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleAND_v2_171_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetTimeOfDay_42();
    l0 = self.box_MultipleAND_v2_171;
    l1 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|46879348", "46879348", "MIS_340_MASTER", "box_MultipleAND_v2_171.Out", "box_SetTimeOfDay_42.SetTimeOfDay", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeOfDay
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_342_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SoundPointModifier_126();
    l0 = self.box_EntityStatusListener_342;
    l1 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1151095336", "1151095336", "MIS_340_MASTER", "box_EntityStatusListener_342.Loaded", "box_SoundPointModifier_126.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_107_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_107;
    l1 = self.box_MultipleOR_123;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|734162612", "734162612", "MIS_340_MASTER", "box_MultipleAND_v2_107.Out", "box_MultipleOR_123.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Integers_448_A_eq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_429;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1510314779", "1510314779", "MIS_340_MASTER", "box_Compare_Integers_448.A_eq_B", "box_MultipleOR_429.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Compare_Integers_448_A_ne_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_443;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1172614121", "1172614121", "MIS_340_MASTER", "box_Compare_Integers_448.A_ne_B", "box_MultipleOR_443.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VisibilityModifier_260_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_118();
    l0 = self.box_VisibilityModifier_260;
    l1 = self.box_Delay_v5_118;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1311736267", "1311736267", "MIS_340_MASTER", "box_VisibilityModifier_260.Disabled", "box_Delay_v5_118.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SetContextualStrategy_217_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_208();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1906349181", "1906349181", "MIS_340_MASTER", "box_SetContextualStrategy_217.Out", "box_UseContextualActionModifier_v3_208.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_350_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_72();
    l0 = self.box_RequestPhoneCall_v2_72;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|82307722", "82307722", "MIS_340_MASTER", "box_OutputOrder_v2_350.Out", "box_RequestPhoneCall_v2_72.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_350_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_344();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1469381106", "1469381106", "MIS_340_MASTER", "box_OutputOrder_v2_350.Out", "box_UseContextualActionModifier_v3_344.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_440_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_253;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1843187211", "1843187211", "MIS_340_MASTER", "box_OutputOrder_v2_440.Out", "box_MultipleOR_253.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_440_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_439;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1290092541", "1290092541", "MIS_340_MASTER", "box_OutputOrder_v2_440.Out", "box_MultipleOR_439.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_433_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_437();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_437;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|296661872", "296661872", "MIS_340_MASTER", "box_OutputOrder_v2_433.Out", "box_CHEAT_SetEnvironmentTimeScale_437.SetTimeScale", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeScale
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_433_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ColorRemapTextureModifier_v3_426();
    l0 = self.box_ColorRemapTextureModifier_v3_426;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|272926373", "272926373", "MIS_340_MASTER", "box_OutputOrder_v2_433.Out", "box_ColorRemapTextureModifier_v3_426.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_53_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_33();
    l0 = self.box_Delay_v5_53;
    l1 = self.box_RemoveEntity_v2_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1958522337", "1958522337", "MIS_340_MASTER", "box_Delay_v5_53.TimeElapsed", "box_RemoveEntity_v2_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_403_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_371();
    l0 = self.box_MultipleOR_403;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|551001900", "551001900", "MIS_340_MASTER", "box_MultipleOR_403.Out", "box_Compare_Boolean_371.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_302_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_125();
    l0 = self.box_SpawnAI_125;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|259914608", "259914608", "MIS_340_MASTER", "box_Compare_Boolean_302.A_is_True", "box_SpawnAI_125.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_237_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAIRequestGroup_v2_20();
    l0 = self.box_Delay_v5_237;
    l1 = self.box_SpawnAIRequestGroup_v2_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2062620998", "2062620998", "MIS_340_MASTER", "box_Delay_v5_237.TimeElapsed", "box_SpawnAIRequestGroup_v2_20.SpawnByPercentage", l0:GetLuaBox(), l1:GetLuaBox());
    -- SpawnByPercentage
    l1:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_421_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_419();
    l0 = self.box_OnceOnly_v3_421;
    l1 = self.box_CHEAT_SetEnvironmentTimeScale_419;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1587341575", "1587341575", "MIS_340_MASTER", "box_OnceOnly_v3_421.Out", "box_CHEAT_SetEnvironmentTimeScale_419.SetTimeScale", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeScale
    l1:Exec(0, params);
end;

function export:f_box_MultipleAND_v2_160_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetTimeOfDay_175();
    l0 = self.box_MultipleAND_v2_160;
    l1 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|70387191", "70387191", "MIS_340_MASTER", "box_MultipleAND_v2_160.Out", "box_SetTimeOfDay_175.SetTimeOfDay", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeOfDay
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_429_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_429;
    l1 = self.box_OnceOnly_v3_447;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2040399629", "2040399629", "MIS_340_MASTER", "box_MultipleOR_429.Out", "box_OnceOnly_v3_447.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_134_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_197();
    l0 = self.box_OnceOnly_v3_134;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2007868139", "2007868139", "MIS_340_MASTER", "box_OnceOnly_v3_134.Out", "box_Simple_Node_197.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_134_ResetOut()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_219();
    l0 = self.box_OnceOnly_v3_134;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1219429672", "1219429672", "MIS_340_MASTER", "box_OnceOnly_v3_134.ResetOut", "box_Simple_Node_219.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_154_Done()
    local l0, l1;
    l0 = self.box_PositionModifier_v2_154;
    l1 = self.box_MultipleOR_155;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1902066622", "1902066622", "MIS_340_MASTER", "box_PositionModifier_v2_154.Done", "box_MultipleOR_155.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_161_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_420();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|599849440", "599849440", "MIS_340_MASTER", "box_Compare_Boolean_161.A_is_False", "box_OutputOrder_v2_420.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_152_Done()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_154();
    l0 = self.box_PositionModifier_v2_152;
    l1 = self.box_PositionModifier_v2_154;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1057730527", "1057730527", "MIS_340_MASTER", "box_PositionModifier_v2_152.Done", "box_PositionModifier_v2_154.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_HealthListener_v6_113_Damaged()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Floats_81();
    l0 = self.box_HealthListener_v6_113;
    l1 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|805704553", "805704553", "MIS_340_MASTER", "box_HealthListener_v6_113.Damaged", "box_Compare_Floats_81.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_113_Downed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_113;
    l1 = self.box_OnceOnly_v3_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|487046217", "487046217", "MIS_340_MASTER", "box_HealthListener_v6_113.Downed", "box_OnceOnly_v3_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_113_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_FloatArithmetics_v2_92();
    l0 = self.box_HealthListener_v6_113;
    l1 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1615843827", "1615843827", "MIS_340_MASTER", "box_HealthListener_v6_113.Enabled", "box_FloatArithmetics_v2_92.Mul", l0:GetLuaBox(), l1:GetLuaBox());
    -- Mul
    l1:Exec(7, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_113_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_173();
    l0 = self.box_HealthListener_v6_113;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|577130722", "577130722", "MIS_340_MASTER", "box_HealthListener_v6_113.Killed", "box_Simple_Node_173.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_113_Revived()
    local l0, l1;
    l0 = self.box_HealthListener_v6_113;
    l1 = self.box_OnceOnly_v3_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|189612832", "189612832", "MIS_340_MASTER", "box_HealthListener_v6_113.Revived", "box_OnceOnly_v3_25.Reset", l0:GetLuaBox(), l1:GetLuaBox());
    -- Reset
    l1:Exec(1, {
    });
end;

function export:f_box_MultipleOR_155_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_152();
    l0 = self.box_MultipleOR_155;
    l1 = self.box_PositionModifier_v2_152;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1545279826", "1545279826", "MIS_340_MASTER", "box_MultipleOR_155.Out", "box_PositionModifier_v2_152.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_Compare_Floats_81_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_394();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1501047706", "1501047706", "MIS_340_MASTER", "box_Compare_Floats_81.A_lt_B", "box_OutputOrder_v2_394.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_71_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_34();
    l0 = self.box_EntityStatusListener_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|375940502", "375940502", "MIS_340_MASTER", "box_OutputOrder_v2_71.Out", "box_EntityStatusListener_34.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_71_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_64();
    l0 = self.box_ProximityTrigger_v3_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1400096461", "1400096461", "MIS_340_MASTER", "box_OutputOrder_v2_71.Out", "box_ProximityTrigger_v3_64.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_250_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_250;
    l1 = self.box_OnceOnly_v3_230;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1990697657", "1990697657", "MIS_340_MASTER", "box_MultipleOR_250.Out", "box_OnceOnly_v3_230.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsPawnAlive_v3_351_Alive()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_341;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1099309571", "1099309571", "MIS_340_MASTER", "box_IsPawnAlive_v3_351.Alive", "box_MultipleOR_341.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetContextualStrategy_222_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_228();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1232878659", "1232878659", "MIS_340_MASTER", "box_SetContextualStrategy_222.Out", "box_UseContextualActionModifier_v3_228.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_227_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_264();
    l0 = self.box_EntityStatusListener_227;
    l1 = self.box_MultipleAND_v2_264;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|48531871", "48531871", "MIS_340_MASTER", "box_EntityStatusListener_227.Loaded", "box_MultipleAND_v2_264.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_MessageListener_v3_40_Received()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_58();
    l0 = self.box_MessageListener_v3_40;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|710711635", "710711635", "MIS_340_MASTER", "box_MessageListener_v3_40.Received", "box_OutputOrder_v2_58.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_205_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_205_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_213();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|134902922", "134902922", "MIS_340_MASTER", "box_SetEntity_v2_205.Out", "box_OutputOrder_v2_213.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_75_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_11();
    l0 = self.box_RequestPhoneCall_v2_75;
    l1 = self.box_SpawnAI_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|73025339", "73025339", "MIS_340_MASTER", "box_RequestPhoneCall_v2_75.Started", "box_SpawnAI_11.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_GetTimeOfDay_v2_277_Out()
    local params, l0;
    self:OnExit_box_GetTimeOfDay_v2_277_Out();
    l0 = Boxes[GetPathID("Domino/System/GetTimeOfDay_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_233();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1794699372", "1794699372", "MIS_340_MASTER", "box_GetTimeOfDay_v2_277.Out", "box_Compare_Integers_233.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_110_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_89;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|727490139", "727490139", "MIS_340_MASTER", "box_OutputOrder_v2_110.Out", "box_MultipleOR_89.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_110_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_222();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2045666636", "2045666636", "MIS_340_MASTER", "box_OutputOrder_v2_110.Out", "box_SetContextualStrategy_222.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_110_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_248();
    l0 = self.box_MultipleAND_v2_248;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|371445645", "371445645", "MIS_340_MASTER", "box_OutputOrder_v2_110.Out", "box_MultipleAND_v2_248.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_MultipleOR_89_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_89;
    l1 = self.box_OnceOnly_v3_103;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|845484118", "845484118", "MIS_340_MASTER", "box_MultipleOR_89.Out", "box_OnceOnly_v3_103.Reset", l0:GetLuaBox(), l1:GetLuaBox());
    -- Reset
    l1:Exec(1, {
    });
end;

function export:f_box_MultipleOR_253_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_442();
    l0 = self.box_MultipleOR_253;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1795833235", "1795833235", "MIS_340_MASTER", "box_MultipleOR_253.Out", "box_OutputOrder_v2_442.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ExitZoneWarningListener_v3_121_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_122();
    l0 = self.box_ExitZoneWarningListener_v3_121;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2026070202", "2026070202", "MIS_340_MASTER", "box_ExitZoneWarningListener_v3_121.FailingZoneEntered", "box_Simple_Node_122.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_7_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_7_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_2();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1039648952", "1039648952", "MIS_340_MASTER", "box_GetPlayerGroup_v2_7.Out", "box_GetLocalPlayer_v2_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_11_Out()
    local l0, l1;
    l0 = self.box_SpawnAI_11;
    l1 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1802237763", "1802237763", "MIS_340_MASTER", "box_SpawnAI_11.Out", "box_MultipleOR_21.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAIRequestGroup_v2_20_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_201();
    l0 = self.box_SpawnAIRequestGroup_v2_20;
    l1 = self.box_RequestPhoneCall_v2_201;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|150995972", "150995972", "MIS_340_MASTER", "box_SpawnAIRequestGroup_v2_20.Out", "box_RequestPhoneCall_v2_201.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_396_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_78();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|897047837", "897047837", "MIS_340_MASTER", "box_OutputOrder_v2_396.Out", "box_SetBoolean_v2_78.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_396_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_400();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1932673708", "1932673708", "MIS_340_MASTER", "box_OutputOrder_v2_396.Out", "box_Simple_Node_400.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_187_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_187_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeSceneCleanUp_V2_186();
    l0 = self.box_NarrativeSceneCleanUp_V2_186;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1153336641", "1153336641", "MIS_340_MASTER", "box_SetBoolean_v2_187.Out", "box_NarrativeSceneCleanUp_V2_186.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_44_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ColorRemapTextureModifier_v3_29();
    l0 = self.box_MultipleOR_44;
    l1 = self.box_ColorRemapTextureModifier_v3_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|413937175", "413937175", "MIS_340_MASTER", "box_MultipleOR_44.Out", "box_ColorRemapTextureModifier_v3_29.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(1, params);
end;

function export:f_box_IsPawnAlive_v3_352_Alive()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_314;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|522857679", "522857679", "MIS_340_MASTER", "box_IsPawnAlive_v3_352.Alive", "box_MultipleOR_314.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_313_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_38();
    l0 = self.box_Delay_v5_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|506595488", "506595488", "MIS_340_MASTER", "box_OutputOrder_v2_313.Out", "box_Delay_v5_38.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_313_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_Wave_v2_254();
    l0 = self.box_SpawnAI_Wave_v2_254;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1316645729", "1316645729", "MIS_340_MASTER", "box_OutputOrder_v2_313.Out", "box_SpawnAI_Wave_v2_254.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_38_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_Wave_v2_254();
    l0 = self.box_Delay_v5_38;
    l1 = self.box_SpawnAI_Wave_v2_254;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1023723098", "1023723098", "MIS_340_MASTER", "box_Delay_v5_38.TimeElapsed", "box_SpawnAI_Wave_v2_254.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SendGSFGenericEvent_200_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SendGSFGenericEvent.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_206();
    l0 = self.box_Delay_v5_206;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|97291016", "97291016", "MIS_340_MASTER", "box_SendGSFGenericEvent_200.Out", "box_Delay_v5_206.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OverrideEnvironment_v3_82_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetTimeOfDay_124();
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|704989719", "704989719", "MIS_340_MASTER", "box_OverrideEnvironment_v3_82.Enabled", "box_SetTimeOfDay_124.SetTimeOfDay", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeOfDay
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_270_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_270;
    l1 = self.box_MultipleOR_177;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1185051424", "1185051424", "MIS_340_MASTER", "box_MultipleAND_v2_270.Out", "box_MultipleOR_177.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_328_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_326();
    l0 = self.box_MultipleOR_328;
    l1 = self.box_RemoveEntity_v2_326;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|944051572", "944051572", "MIS_340_MASTER", "box_MultipleOR_328.Out", "box_RemoveEntity_v2_326.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_RequestPhoneCall_v2_94_Canceled()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_94;
    l1 = self.box_MultipleOR_106;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|634342243", "634342243", "MIS_340_MASTER", "box_RequestPhoneCall_v2_94.Canceled", "box_MultipleOR_106.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_RequestPhoneCall_v2_94_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_94;
    l1 = self.box_MultipleOR_106;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|699891345", "699891345", "MIS_340_MASTER", "box_RequestPhoneCall_v2_94.Completed", "box_MultipleOR_106.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestPhoneCall_v2_94_Failed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_94;
    l1 = self.box_MultipleOR_106;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|528868388", "528868388", "MIS_340_MASTER", "box_RequestPhoneCall_v2_94.Failed", "box_MultipleOR_106.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_268_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_160();
    l0 = self.box_MultipleAND_v2_160;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|989156332", "989156332", "MIS_340_MASTER", "box_OutputOrder_v2_268.Out", "box_MultipleAND_v2_160.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_268_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_270();
    l0 = self.box_MultipleAND_v2_270;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1859421257", "1859421257", "MIS_340_MASTER", "box_OutputOrder_v2_268.Out", "box_MultipleAND_v2_270.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_ColorRemapTextureModifier_v3_29_Added()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideEnvironment_v3_55();
    l0 = self.box_ColorRemapTextureModifier_v3_29;
    l1 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2045627857", "2045627857", "MIS_340_MASTER", "box_ColorRemapTextureModifier_v3_29.Added", "box_OverrideEnvironment_v3_55.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ColorRemapTextureModifier_v3_29_Removed()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideEnvironment_v3_55();
    l0 = self.box_ColorRemapTextureModifier_v3_29;
    l1 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1312789638", "1312789638", "MIS_340_MASTER", "box_ColorRemapTextureModifier_v3_29.Removed", "box_OverrideEnvironment_v3_55.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_393_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_391();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1280669447", "1280669447", "MIS_340_MASTER", "box_Compare_Integers_393.A_eq_B", "box_Compare_Integers_391.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_393_A_ne_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_403;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|150257263", "150257263", "MIS_340_MASTER", "box_Compare_Integers_393.A_ne_B", "box_MultipleOR_403.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_AlarmModifier_v2_101_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AlarmModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_86();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1314273738", "1314273738", "MIS_340_MASTER", "box_AlarmModifier_v2_101.Activated", "box_Compare_Boolean_86.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_v2_65_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_v2_65_LoadedIdReceived();
    params = self:OnEnter_box_RemoveEntity_v2_66();
    l0 = self.box_CharacterLoadedIdListener_v2_65;
    l1 = self.box_RemoveEntity_v2_66;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2106319377", "2106319377", "MIS_340_MASTER", "box_CharacterLoadedIdListener_v2_65.LoadedIdReceived", "box_RemoveEntity_v2_66.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_397_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_43();
    l0 = self.box_OnceOnly_v3_397;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1699243653", "1699243653", "MIS_340_MASTER", "box_OnceOnly_v3_397.Out", "box_OutputOrder_v2_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_74_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_215();
    l0 = self.box_MultipleAND_v2_74;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2020597504", "2020597504", "MIS_340_MASTER", "box_MultipleAND_v2_74.Out", "box_SetContextualStrategy_215.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_221_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_224();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|163137066", "163137066", "MIS_340_MASTER", "box_SetContextualStrategy_221.Out", "box_UseContextualActionModifier_v3_224.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_8_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_320();
    l0 = self.box_OnceOnly_v3_8;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|584573005", "584573005", "MIS_340_MASTER", "box_OnceOnly_v3_8.Out", "box_OutputOrder_v2_320.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_358_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_108();
    l0 = self.box_MultipleOR_358;
    l1 = self.box_RequestPhoneCall_v2_108;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1222802403", "1222802403", "MIS_340_MASTER", "box_MultipleOR_358.Out", "box_RequestPhoneCall_v2_108.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_78_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_78_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_363();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|16575735", "16575735", "MIS_340_MASTER", "box_SetBoolean_v2_78.Out", "box_Simple_Node_363.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_12_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_304();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1824134663", "1824134663", "MIS_340_MASTER", "box_Compare_Boolean_12.A_is_False", "box_OutputOrder_v2_304.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_12_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_18();
    l0 = self.box_RequestPhoneCall_v2_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1704295543", "1704295543", "MIS_340_MASTER", "box_Compare_Boolean_12.A_is_True", "box_RequestPhoneCall_v2_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_GetHealthState_98_Critical()
    local l0;
    self:OnExit_box_GetHealthState_98_Critical();
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_76;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1261620639", "1261620639", "MIS_340_MASTER", "box_GetHealthState_98.Critical", "box_MultipleOR_76.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetHealthState_98_Dead()
    local l0;
    self:OnExit_box_GetHealthState_98_Dead();
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_76;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1563083678", "1563083678", "MIS_340_MASTER", "box_GetHealthState_98.Dead", "box_MultipleOR_76.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_GetHealthState_98_Down()
    local l0;
    self:OnExit_box_GetHealthState_98_Down();
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_76;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|267925858", "267925858", "MIS_340_MASTER", "box_GetHealthState_98.Down", "box_MultipleOR_76.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_GetHealthState_98_Healthy()
    local l0;
    self:OnExit_box_GetHealthState_98_Healthy();
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_76;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|813492323", "813492323", "MIS_340_MASTER", "box_GetHealthState_98.Healthy", "box_MultipleOR_76.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetHealthState_337_Dead()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_338;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1297935023", "1297935023", "MIS_340_MASTER", "box_GetHealthState_337.Dead", "box_MultipleOR_338.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetHealthState_337_Down()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_338;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1273480996", "1273480996", "MIS_340_MASTER", "box_GetHealthState_337.Down", "box_MultipleOR_338.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetHealthState_337_Healthy()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_311();
    l0 = self.box_PositionModifier_v2_311;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|411216059", "411216059", "MIS_340_MASTER", "box_GetHealthState_337.Healthy", "box_PositionModifier_v2_311.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_IsPawnAlive_v3_258_Alive()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_349();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1766370976", "1766370976", "MIS_340_MASTER", "box_IsPawnAlive_v3_258.Alive", "box_OutputOrder_v2_349.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_318_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_318;
    l1 = self.box_MultipleOR_341;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1564117002", "1564117002", "MIS_340_MASTER", "box_MultipleAND_v2_318.Out", "box_MultipleOR_341.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleAND_v2_59_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_110();
    l0 = self.box_MultipleAND_v2_59;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1468030667", "1468030667", "MIS_340_MASTER", "box_MultipleAND_v2_59.Out", "box_OutputOrder_v2_110.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_338_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_333();
    l0 = self.box_MultipleOR_338;
    l1 = self.box_RemoveEntity_v2_333;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1641608402", "1641608402", "MIS_340_MASTER", "box_MultipleOR_338.Out", "box_RemoveEntity_v2_333.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_320_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_301();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1722462148", "1722462148", "MIS_340_MASTER", "box_OutputOrder_v2_320.Out", "box_ParticleSystem_v3_301.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_320_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_315();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|65867804", "65867804", "MIS_340_MASTER", "box_OutputOrder_v2_320.Out", "box_ParticleSystem_v3_315.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_320_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_322();
    l0 = self.box_Delay_v5_322;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|519051153", "519051153", "MIS_340_MASTER", "box_OutputOrder_v2_320.Out", "box_Delay_v5_322.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_325_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_324();
    l0 = self.box_MultipleOR_325;
    l1 = self.box_RemoveEntity_v2_324;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2028222858", "2028222858", "MIS_340_MASTER", "box_MultipleOR_325.Out", "box_RemoveEntity_v2_324.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_123_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ColorRemapTextureModifier_v3_68();
    l0 = self.box_MultipleOR_123;
    l1 = self.box_ColorRemapTextureModifier_v3_68;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|680400309", "680400309", "MIS_340_MASTER", "box_MultipleOR_123.Out", "box_ColorRemapTextureModifier_v3_68.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_25_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_198();
    l0 = self.box_OnceOnly_v3_25;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1400401483", "1400401483", "MIS_340_MASTER", "box_OnceOnly_v3_25.Out", "box_Simple_Node_198.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_25_ResetOut()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_220();
    l0 = self.box_OnceOnly_v3_25;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1761099351", "1761099351", "MIS_340_MASTER", "box_OnceOnly_v3_25.ResetOut", "box_Simple_Node_220.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_305_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_302();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|49135011", "49135011", "MIS_340_MASTER", "box_IsEntityLoaded_v3_305.False", "box_Compare_Boolean_302.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_305_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetHealthState_327();
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1354092460", "1354092460", "MIS_340_MASTER", "box_IsEntityLoaded_v3_305.True", "box_GetHealthState_327.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_138_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_185();
    l0 = self.box_Delay_v5_138;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1312126125", "1312126125", "MIS_340_MASTER", "box_Delay_v5_138.TimeElapsed", "box_Compare_Boolean_185.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_332_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_332();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|9427593", "9427593", "MIS_340_MASTER", "box_UseContextualActionModifier_v3_332.Enabled", "box_UseContextualActionModifier_v3_332.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_27_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_31();
    l0 = self.box_Delay_v5_27;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|407665582", "407665582", "MIS_340_MASTER", "box_Delay_v5_27.TimeElapsed", "box_ActivityEnd_31.EndNoSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndNoSave
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_45_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_240();
    l0 = self.box_MultipleOR_45;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|364092066", "364092066", "MIS_340_MASTER", "box_MultipleOR_45.Out", "box_OutputOrder_v2_240.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ColorRemapTextureModifier_v3_32_Added()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideEnvironment_v3_28();
    l0 = self.box_ColorRemapTextureModifier_v3_32;
    l1 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1714000374", "1714000374", "MIS_340_MASTER", "box_ColorRemapTextureModifier_v3_32.Added", "box_OverrideEnvironment_v3_28.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ColorRemapTextureModifier_v3_32_Removed()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideEnvironment_v3_28();
    l0 = self.box_ColorRemapTextureModifier_v3_32;
    l1 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1084849007", "1084849007", "MIS_340_MASTER", "box_ColorRemapTextureModifier_v3_32.Removed", "box_OverrideEnvironment_v3_28.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_341_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_Wave_v2_321();
    l0 = self.box_MultipleOR_341;
    l1 = self.box_SpawnAI_Wave_v2_321;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|949667995", "949667995", "MIS_340_MASTER", "box_MultipleOR_341.Out", "box_SpawnAI_Wave_v2_321.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_360_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_105();
    l0 = self.box_MultipleOR_360;
    l1 = self.box_RequestPhoneCall_v2_105;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|622217382", "622217382", "MIS_340_MASTER", "box_MultipleOR_360.Out", "box_RequestPhoneCall_v2_105.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_MultipleAND_v2_26_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_26;
    l1 = self.box_OnceOnly_v3_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|628601433", "628601433", "MIS_340_MASTER", "box_MultipleAND_v2_26.Out", "box_OnceOnly_v3_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_334_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_336();
    l0 = self.box_Delay_v5_334;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1801881311", "1801881311", "MIS_340_MASTER", "box_Delay_v5_334.TimeElapsed", "box_OutputOrder_v2_336.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_180_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_180;
    l1 = self.box_OnceOnly_v3_356;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1860015399", "1860015399", "MIS_340_MASTER", "box_MultipleOR_180.Out", "box_OnceOnly_v3_356.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_151_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_FastTravelModifier_v2_165();
    l0 = self.box_OnceOnly_v3_151;
    l1 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|541553997", "541553997", "MIS_340_MASTER", "box_OnceOnly_v3_151.Out", "box_FastTravelModifier_v2_165.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_151_ResetOut()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_151;
    l1 = self.box_OnceOnly_v3_431;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|135792462", "135792462", "MIS_340_MASTER", "box_OnceOnly_v3_151.ResetOut", "box_OnceOnly_v3_431.Reset", l0:GetLuaBox(), l1:GetLuaBox());
    -- Reset
    l1:Exec(1, {
    });
end;

function export:f_box_IsGunsForHire_v2_117_None()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsGunsForHire_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_116();
    l0 = self.box_RemoveEntity_v2_116;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|868093063", "868093063", "MIS_340_MASTER", "box_IsGunsForHire_v2_117.None", "box_RemoveEntity_v2_116.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_IsGunsForHire_v2_117_Out()
    self:OnExit_box_IsGunsForHire_v2_117_Out();
end;

function export:f_box_IsGunsForHire_v2_117_Roster()
    self:OnExit_box_IsGunsForHire_v2_117_Roster();
end;

function export:f_box_IsGunsForHire_v2_117_Squad()
    self:OnExit_box_IsGunsForHire_v2_117_Squad();
end;

function export:f_box_RequestPhoneCall_v2_18_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_9();
    l0 = self.box_RequestPhoneCall_v2_18;
    l1 = self.box_SpawnAI_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|200929396", "200929396", "MIS_340_MASTER", "box_RequestPhoneCall_v2_18.Started", "box_SpawnAI_9.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Compare_Entity_212_Equal()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_109;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1013676846", "1013676846", "MIS_340_MASTER", "box_Compare_Entity_212.Equal", "box_OnceOnly_v3_109.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Entity_212_NotEqual()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_79;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|292735874", "292735874", "MIS_340_MASTER", "box_Compare_Entity_212.NotEqual", "box_OnceOnly_v3_79.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_288_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_297();
    l0 = self.box_OnceOnly_v3_288;
    l1 = self.box_CHEAT_SetEnvironmentTimeScale_297;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1703510165", "1703510165", "MIS_340_MASTER", "box_OnceOnly_v3_288.Out", "box_CHEAT_SetEnvironmentTimeScale_297.SetTimeScale", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeScale
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_294_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_281();
    l0 = self.box_OnceOnly_v3_294;
    l1 = self.box_CHEAT_SetEnvironmentTimeScale_281;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|772613901", "772613901", "MIS_340_MASTER", "box_OnceOnly_v3_294.Out", "box_CHEAT_SetEnvironmentTimeScale_281.SetTimeScale", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeScale
    l1:Exec(0, params);
end;

function export:f_box_Compare_Boolean_293_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_174();
    l0 = self.box_SpawnAI_174;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1302251572", "1302251572", "MIS_340_MASTER", "box_Compare_Boolean_293.A_is_True", "box_SpawnAI_174.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_MultipleAND_v2_204_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_204;
    l1 = self.box_MultipleOR_250;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|925746993", "925746993", "MIS_340_MASTER", "box_MultipleAND_v2_204.Out", "box_MultipleOR_250.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RequestPhoneCall_v2_72_Canceled()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_72;
    l1 = self.box_MultipleOR_180;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|703372143", "703372143", "MIS_340_MASTER", "box_RequestPhoneCall_v2_72.Canceled", "box_MultipleOR_180.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_RequestPhoneCall_v2_72_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_72;
    l1 = self.box_MultipleOR_180;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1412870632", "1412870632", "MIS_340_MASTER", "box_RequestPhoneCall_v2_72.Completed", "box_MultipleOR_180.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestPhoneCall_v2_72_Failed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_72;
    l1 = self.box_MultipleOR_180;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1899978928", "1899978928", "MIS_340_MASTER", "box_RequestPhoneCall_v2_72.Failed", "box_MultipleOR_180.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UseContextualActionModifier_v3_156_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_156();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|192326242", "192326242", "MIS_340_MASTER", "box_UseContextualActionModifier_v3_156.Enabled", "box_UseContextualActionModifier_v3_156.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_156_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_164();
    l0 = self.box_Delay_v5_164;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1568746933", "1568746933", "MIS_340_MASTER", "box_UseContextualActionModifier_v3_156.UseCalled", "box_Delay_v5_164.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_149_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_GetHealthState_147();
    l0 = self.box_OnceOnly_v3_149;
    l1 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1748501675", "1748501675", "MIS_340_MASTER", "box_OnceOnly_v3_149.Out", "box_GetHealthState_147.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_23_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|758248795", "758248795", "MIS_340_MASTER", "box_OutputOrder_v2_23.Out", "box_MultipleOR_48.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_23_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ColorRemapTextureModifier_v3_32();
    l0 = self.box_ColorRemapTextureModifier_v3_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|592933703", "592933703", "MIS_340_MASTER", "box_OutputOrder_v2_23.Out", "box_ColorRemapTextureModifier_v3_32.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_EntityStatusListener_339_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_340();
    l0 = self.box_EntityStatusListener_339;
    l1 = self.box_UniversalInteractionModifier_v2_340;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1221628886", "1221628886", "MIS_340_MASTER", "box_EntityStatusListener_339.Loaded", "box_UniversalInteractionModifier_v2_340.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_213_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_202;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1678361935", "1678361935", "MIS_340_MASTER", "box_OutputOrder_v2_213.Out", "box_MultipleOR_202.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_213_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_214();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1896232465", "1896232465", "MIS_340_MASTER", "box_OutputOrder_v2_213.Out", "box_UseContextualActionModifier_v3_214.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_234_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_274();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|843060251", "843060251", "MIS_340_MASTER", "box_Compare_Integers_234.A_ge_B", "box_SetBoolean_v2_274.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_234_A_ne_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_158;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|900900414", "900900414", "MIS_340_MASTER", "box_Compare_Integers_234.A_ne_B", "box_MultipleOR_158.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_70_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_69();
    l0 = self.box_EntityStatusListener_70;
    l1 = self.box_Bind_v4_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1873228339", "1873228339", "MIS_340_MASTER", "box_EntityStatusListener_70.Loaded", "box_Bind_v4_69.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_MessageListener_v3_52_Received()
    local params, l0, l1;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_425();
    l0 = self.box_MessageListener_v3_52;
    l1 = self.box_CHEAT_SetEnvironmentTimeScale_425;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1166633956", "1166633956", "MIS_340_MASTER", "box_MessageListener_v3_52.Received", "box_CHEAT_SetEnvironmentTimeScale_425.SetTimeScale", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeScale
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_1_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_1;
    l1 = self.box_ActivityInitialized_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|212811619", "212811619", "MIS_340_MASTER", "box_MultipleOR_1.Out", "box_ActivityInitialized_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_MultipleAND_v2_269_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_269;
    l1 = self.box_MultipleOR_177;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1055424298", "1055424298", "MIS_340_MASTER", "box_MultipleAND_v2_269.Out", "box_MultipleOR_177.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_436_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_151;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|832558109", "832558109", "MIS_340_MASTER", "box_OutputOrder_v2_436.Out", "box_OnceOnly_v3_151.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_436_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_253;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1156448462", "1156448462", "MIS_340_MASTER", "box_OutputOrder_v2_436.Out", "box_MultipleOR_253.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_283_Out()
    local params, l0, l1;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_284();
    l0 = self.box_MultipleOR_283;
    l1 = self.box_CHEAT_SetEnvironmentTimeScale_284;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1655383350", "1655383350", "MIS_340_MASTER", "box_MultipleOR_283.Out", "box_CHEAT_SetEnvironmentTimeScale_284.SetTimeScale", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeScale
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_144_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_144;
    l1 = self.box_MultipleOR_446;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1285869367", "1285869367", "MIS_340_MASTER", "box_Delay_v5_144.TimeElapsed", "box_MultipleOR_446.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_243_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_266();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|599937418", "599937418", "MIS_340_MASTER", "box_OutputOrder_v2_243.Out", "box_GetActivityState_v2_266.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_243_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_265();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1694499546", "1694499546", "MIS_340_MASTER", "box_OutputOrder_v2_243.Out", "box_GetActivityState_v2_265.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_251_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SoundPointModifier_178();
    l0 = self.box_EntityStatusListener_251;
    l1 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1765782346", "1765782346", "MIS_340_MASTER", "box_EntityStatusListener_251.Loaded", "box_SoundPointModifier_178.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetTimeOfDay_175_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_273();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|412719756", "412719756", "MIS_340_MASTER", "box_SetTimeOfDay_175.Out", "box_Simple_Node_273.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_441_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_432();
    l0 = self.box_EntityStatusListener_441;
    l1 = self.box_ProximityTrigger_v3_432;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1859754589", "1859754589", "MIS_340_MASTER", "box_EntityStatusListener_441.Disabled", "box_ProximityTrigger_v3_432.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_441_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_TriggerState_v2_225();
    l0 = self.box_EntityStatusListener_441;
    l1 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1111150636", "1111150636", "MIS_340_MASTER", "box_EntityStatusListener_441.Loaded", "box_TriggerState_v2_225.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_248_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_249();
    l0 = self.box_MultipleAND_v2_248;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|926645491", "926645491", "MIS_340_MASTER", "box_MultipleAND_v2_248.Out", "box_Simple_Node_249.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NarrativeSceneCleanUp_V2_262_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_91();
    l0 = self.box_NarrativeSceneCleanUp_V2_262;
    l1 = self.box_PostFx_v3_91;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|956840011", "956840011", "MIS_340_MASTER", "box_NarrativeSceneCleanUp_V2_262.Out", "box_PostFx_v3_91.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_444_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_144();
    l0 = self.box_Delay_v5_144;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|995444187", "995444187", "MIS_340_MASTER", "box_OutputOrder_v2_444.Out", "box_Delay_v5_144.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_444_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_431;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1119303773", "1119303773", "MIS_340_MASTER", "box_OutputOrder_v2_444.Out", "box_OnceOnly_v3_431.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_9_Out()
    local l0, l1;
    l0 = self.box_SpawnAI_9;
    l1 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|471232847", "471232847", "MIS_340_MASTER", "box_SpawnAI_9.Out", "box_MultipleOR_21.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Integers_233_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_234();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1490609348", "1490609348", "MIS_340_MASTER", "box_Compare_Integers_233.A_eq_B", "box_Compare_Integers_234.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_233_A_ne_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_158;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|746166546", "746166546", "MIS_340_MASTER", "box_Compare_Integers_233.A_ne_B", "box_MultipleOR_158.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_280_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_280;
    l1 = self.box_OnceOnly_v3_278;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1808864765", "1808864765", "MIS_340_MASTER", "box_MultipleOR_280.Out", "box_OnceOnly_v3_278.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VisibilityModifier_36_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_64();
    l0 = self.box_VisibilityModifier_36;
    l1 = self.box_ProximityTrigger_v3_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1023186131", "1023186131", "MIS_340_MASTER", "box_VisibilityModifier_36.Enabled", "box_ProximityTrigger_v3_64.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Compare_Integers_428_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_448();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|324189164", "324189164", "MIS_340_MASTER", "box_Compare_Integers_428.A_eq_B", "box_Compare_Integers_448.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_428_A_gt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_429;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|287148099", "287148099", "MIS_340_MASTER", "box_Compare_Integers_428.A_gt_B", "box_MultipleOR_429.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Integers_428_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_443;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|754397463", "754397463", "MIS_340_MASTER", "box_Compare_Integers_428.A_lt_B", "box_MultipleOR_443.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetEntity_v2_203_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_203_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_210();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1529010398", "1529010398", "MIS_340_MASTER", "box_SetEntity_v2_203.Out", "box_OutputOrder_v2_210.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_58_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1049377923", "1049377923", "MIS_340_MASTER", "box_OutputOrder_v2_58.Out", "box_MultipleOR_45.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_58_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_50();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|982958954", "982958954", "MIS_340_MASTER", "box_OutputOrder_v2_58.Out", "box_Simple_Node_50.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_115_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_65();
    l0 = self.box_CharacterLoadedIdListener_v2_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|280836784", "280836784", "MIS_340_MASTER", "box_OutputOrder_v2_115.Out", "box_CharacterLoadedIdListener_v2_65.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_115_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_114();
    l0 = self.box_CharacterLoadedIdListener_v2_114;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1941063320", "1941063320", "MIS_340_MASTER", "box_OutputOrder_v2_115.Out", "box_CharacterLoadedIdListener_v2_114.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_371_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_176();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|778665969", "778665969", "MIS_340_MASTER", "box_Compare_Boolean_371.A_is_False", "box_OutputOrder_v2_176.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAIRequestGroup_v2_35_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_361();
    l0 = self.box_SpawnAIRequestGroup_v2_35;
    l1 = self.box_RequestPhoneCall_v2_361;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|870156664", "870156664", "MIS_340_MASTER", "box_SpawnAIRequestGroup_v2_35.Out", "box_RequestPhoneCall_v2_361.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ColorRemapTextureModifier_v3_37_Added()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideEnvironment_v3_46();
    l0 = self.box_ColorRemapTextureModifier_v3_37;
    l1 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|102966372", "102966372", "MIS_340_MASTER", "box_ColorRemapTextureModifier_v3_37.Added", "box_OverrideEnvironment_v3_46.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ColorRemapTextureModifier_v3_37_Removed()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideEnvironment_v3_46();
    l0 = self.box_ColorRemapTextureModifier_v3_37;
    l1 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|60912711", "60912711", "MIS_340_MASTER", "box_ColorRemapTextureModifier_v3_37.Removed", "box_OverrideEnvironment_v3_46.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_336_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RegenerateNavmesh_67();
    l0 = self.box_RegenerateNavmesh_67;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|746628086", "746628086", "MIS_340_MASTER", "box_OutputOrder_v2_336.Out", "box_RegenerateNavmesh_67.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_336_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_95;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2101977644", "2101977644", "MIS_340_MASTER", "box_OutputOrder_v2_336.Out", "box_MultipleOR_95.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_336_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_335();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|165273594", "165273594", "MIS_340_MASTER", "box_OutputOrder_v2_336.Out", "box_Print_v2_335.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_84_Damaged()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Floats_102();
    l0 = self.box_HealthListener_v6_84;
    l1 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|628461936", "628461936", "MIS_340_MASTER", "box_HealthListener_v6_84.Damaged", "box_Compare_Floats_102.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_84_Downed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_84;
    l1 = self.box_OnceOnly_v3_134;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1909485217", "1909485217", "MIS_340_MASTER", "box_HealthListener_v6_84.Downed", "box_OnceOnly_v3_134.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_84_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_FloatArithmetics_v2_87();
    l0 = self.box_HealthListener_v6_84;
    l1 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1935575132", "1935575132", "MIS_340_MASTER", "box_HealthListener_v6_84.Enabled", "box_FloatArithmetics_v2_87.Mul", l0:GetLuaBox(), l1:GetLuaBox());
    -- Mul
    l1:Exec(7, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_84_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_97();
    l0 = self.box_HealthListener_v6_84;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|845913724", "845913724", "MIS_340_MASTER", "box_HealthListener_v6_84.Killed", "box_Simple_Node_97.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_84_Revived()
    local l0, l1;
    l0 = self.box_HealthListener_v6_84;
    l1 = self.box_OnceOnly_v3_134;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1851481812", "1851481812", "MIS_340_MASTER", "box_HealthListener_v6_84.Revived", "box_OnceOnly_v3_134.Reset", l0:GetLuaBox(), l1:GetLuaBox());
    -- Reset
    l1:Exec(1, {
    });
end;

function export:f_box_MultipleOR_290_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_235();
    l0 = self.box_MultipleOR_290;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1311192912", "1311192912", "MIS_340_MASTER", "box_MultipleOR_290.Out", "box_OutputOrder_v2_235.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_236_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_71();
    l0 = self.box_Delay_v5_236;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1006438394", "1006438394", "MIS_340_MASTER", "box_Delay_v5_236.TimeElapsed", "box_OutputOrder_v2_71.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_51_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_51;
    l1 = self.box_MultipleOR_402;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|300836738", "300836738", "MIS_340_MASTER", "box_Delay_v5_51.TimeElapsed", "box_MultipleOR_402.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_131_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_131;
    l1 = self.box_OnceOnly_v3_149;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1139133834", "1139133834", "MIS_340_MASTER", "box_EntityStatusListener_131.Loaded", "box_OnceOnly_v3_149.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_279_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_279;
    l1 = self.box_MultipleOR_280;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|609475015", "609475015", "MIS_340_MASTER", "box_MultipleOR_279.Out", "box_MultipleOR_280.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UseContextualActionModifier_v3_323_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_323();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1486882740", "1486882740", "MIS_340_MASTER", "box_UseContextualActionModifier_v3_323.Enabled", "box_UseContextualActionModifier_v3_323.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_238_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_160();
    l0 = self.box_MultipleAND_v2_160;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|797819679", "797819679", "MIS_340_MASTER", "box_OutputOrder_v2_238.Out", "box_MultipleAND_v2_160.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_238_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_269();
    l0 = self.box_MultipleAND_v2_269;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1859983915", "1859983915", "MIS_340_MASTER", "box_OutputOrder_v2_238.Out", "box_MultipleAND_v2_269.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_SetTimeOfDay_42_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_271();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|883411142", "883411142", "MIS_340_MASTER", "box_SetTimeOfDay_42.Out", "box_Simple_Node_271.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_317_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_317;
    l1 = self.box_MultipleOR_314;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2027262691", "2027262691", "MIS_340_MASTER", "box_MultipleAND_v2_317.Out", "box_MultipleOR_314.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v3_432_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_440();
    l0 = self.box_ProximityTrigger_v3_432;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1717324832", "1717324832", "MIS_340_MASTER", "box_ProximityTrigger_v3_432.Disabled", "box_OutputOrder_v2_440.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_432_Enabled()
    self:OnExit_box_ProximityTrigger_v3_432_Enabled();
end;

function export:f_box_ProximityTrigger_v3_432_Enter()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v3_432_Enter();
    params = self:OnEnter_box_OutputOrder_v2_433();
    l0 = self.box_ProximityTrigger_v3_432;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|997530811", "997530811", "MIS_340_MASTER", "box_ProximityTrigger_v3_432.Enter", "box_OutputOrder_v2_433.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_432_Leave()
    local l0, l1;
    self:OnExit_box_ProximityTrigger_v3_432_Leave();
    l0 = self.box_ProximityTrigger_v3_432;
    l1 = self.box_MultipleOR_439;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1836323148", "1836323148", "MIS_340_MASTER", "box_ProximityTrigger_v3_432.Leave", "box_MultipleOR_439.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v3_432_OnEmpty()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v3_432_OnEmpty();
    params = self:OnEnter_box_OutputOrder_v2_436();
    l0 = self.box_ProximityTrigger_v3_432;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|556724553", "556724553", "MIS_340_MASTER", "box_ProximityTrigger_v3_432.OnEmpty", "box_OutputOrder_v2_436.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_432_OnOccupied()
    local l0, l1;
    self:OnExit_box_ProximityTrigger_v3_432_OnOccupied();
    l0 = self.box_ProximityTrigger_v3_432;
    l1 = self.box_OnceOnly_v3_151;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|219755085", "219755085", "MIS_340_MASTER", "box_ProximityTrigger_v3_432.OnOccupied", "box_OnceOnly_v3_151.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v3_432_Use()
    self:OnExit_box_ProximityTrigger_v3_432_Use();
end;

function export:f_box_SpawnAIRequestGroup_v2_231_Out()
    local l0, l1;
    l0 = self.box_SpawnAIRequestGroup_v2_231;
    l1 = self.box_MultipleOR_129;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|48716264", "48716264", "MIS_340_MASTER", "box_SpawnAIRequestGroup_v2_231.Out", "box_MultipleOR_129.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:OnEnter_box_Simple_Node_271()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_271");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|@2twinsAlive");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_271_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|@b10_done");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|@cleanUp");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_16_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_122()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_122");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|@fail");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_122_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_194()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_194");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|@helico_loaded");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_285()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_285");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|@n_fightStart");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_285_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_272()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_272");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|@OneTwinAlreadyDead");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_272_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_363()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_363");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|@OneTwinDamaged");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_363_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|@startUp");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_15_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_249()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_249");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|@twins_dead");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_249_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_273()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_273");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|@TwinsDead");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_273_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_400()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_400");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|@uni105_damaged");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_97");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|@uni105_died");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_97_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|@uni105_down");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_197_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|@uni105_loaded");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_136_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_219()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_219");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|@uni105_revive");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_219_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_401()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_401");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|@uni106_damaged");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_173()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_173");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|@uni106_died");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_173_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|@uni106_down");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_198_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|@uni106_loaded");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_135_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_220()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_220");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|@uni106_revive");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_220_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_295()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_295");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|4171952");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_295_A_is_True,
    });
    params = {
        -- A,
        [0] = PersistentGlobals.MIS_340_MASTER.b_globalSurvivorRevived_01,
    };
    return params;
end;

function export:OnEnter_box_GetHealthState_307()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetHealthState_307");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|14451448");
    l0:SetConnections({
        -- Dead,
        [1] = self.f_box_GetHealthState_307_Dead,
        -- Down,
        [2] = self.f_box_GetHealthState_307_Down,
        -- Healthy,
        [3] = self.f_box_GetHealthState_307_Healthy,
    });
    params = {
        -- Pawn,
        [0] = "2108543433007175798",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_303()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 7,
    };
    return params;
end;

function export:OnEnter_box_OverrideEnvironment_v3_430()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideEnvironment_v3_430");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|30645015");
    l0:SetConnections({
    });
    params = {
        -- fog,
        [6] = "FCZ_Default:Special.Twin_Fight_Start_Fog",
        -- ratio,
        [9] = 1,
        -- transitionTime,
        [13] = 5,
    };
    return params;
end;

function export:OnEnter_box_RegenerateNavmesh_67()
    local params;
    params = {
        -- RegionEntity,
        [0] = "2109581383694292000",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_185()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_185");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|37163463");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_185_A_is_False,
    });
    params = {
        -- A,
        [0] = self.FightStartCleanupDone,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_399()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_399");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|47189710");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_399_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetTimeOfDay_v2_359()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetTimeOfDay_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetTimeOfDay_v2_359");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|47670492");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetTimeOfDay_v2_359_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_261()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_261");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|49356548");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_261_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_33()
    local params;
    params = {
        -- Group,
        [0] = "#16F94DCD",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_311()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2109662320566225108",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108543437285366000",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|53457014");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_2_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_298()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_298");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|79586102");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_298_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_298_True,
    });
    params = {
        -- entityId,
        [0] = "2108543437285366000",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_163()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_163");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|84826299");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2108200128522235937",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_214()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_214");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|96989891");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_214_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_214_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108728042493866259",
        -- Entity,
        [2] = self.e_UNI105,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_22()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_128()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "3528614461",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_264()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_17()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_434()
    local params;
    params = {
        -- timeScale,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v3_255()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v3_255");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|116567198");
    l0:SetConnections({
        -- Alive,
        [0] = self.f_box_IsPawnAlive_v3_255_Alive,
        -- DeadOrDown,
        [1] = self.f_box_IsPawnAlive_v3_255_DeadOrDown,
    });
    params = {
        -- Pawn,
        [0] = self.e_UNI106,
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|120313706");
    l0:SetConnections({
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_39_Completed,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015340431023358",
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_130()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_130");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|124997801");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_130_Out,
    });
    params = {
        -- Hour,
        [0] = 20,
        -- Minute,
        [1] = 40,
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

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_281()
    local params;
    params = {
        -- timeScale,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_329()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109665813454667446",
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_265()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_265");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|158298852");
    l0:SetConnections({
        -- Active,
        [0] = self.f_box_GetActivityState_v2_265_Active,
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_265_Completed,
        -- Inactive,
        [4] = self.f_box_GetActivityState_v2_265_Inactive,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015340431412650",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_127()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "3528614461",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_54()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|164460727");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_19_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_300()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2109301882030669489",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108543433007175798",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_284()
    local params;
    params = {
        -- timeScale,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_276()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.04,
    };
    return params;
end;

function export:OnEnter_box_ColorRemapTextureModifier_v3_426()
    local params, l0;
    l0 = self.box_ProximityTrigger_v3_432;
    params = {
        -- colorRemapSettings,
        [0] = "9015351415023683",
        -- playerGroup,
        [1] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_206()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 11,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_218()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_218");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|205731090");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_218_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108712305154858414",
        -- Group,
        [1] = self.e_UNI105,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_61()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAIRequestGroup_v2_229()
    local params;
    params = {
        -- RequestGroupName,
        [0] = "hwm_reinforcement_uni105_dead",
        -- SpawnerPercentage,
        [2] = 100,
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_419()
    local params;
    params = {
        -- timeScale,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_168()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_324()
    local params;
    params = {
        -- Group,
        [0] = "2108543433007175798",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_208()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_208");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|229934383");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_208_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_208_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108728046151299351",
        -- Entity,
        [2] = self.e_UNI106,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_442()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_442");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|230210403");
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
                [0] = self.f_box_OutputOrder_v2_442_Out_0,
                [1] = self.f_box_OutputOrder_v2_442_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_420()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_420");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|236256100");
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
                [0] = self.f_box_OutputOrder_v2_420_Out_0,
                [1] = self.f_box_OutputOrder_v2_420_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PersistentParticlesModifier_6()
    local params;
    params = {
        -- fadeDuration,
        [0] = 5,
        -- particleSystem,
        [1] = "newparticles/9015344457050066.part",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_104()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_105()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = self.gPlayer,
        -- SoundId,
        [5] = "2418032917",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_391()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_391");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|280116203");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_391_A_ge_B,
        -- A_ne_B,
        [5] = self.f_box_Compare_Integers_391_A_ne_B,
    });
    params = {
        -- A,
        [0] = self._sld_Minute_box_GetTimeOfDay_v2_359,
        -- B,
        [1] = 40,
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_225()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_225");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|282626721");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_TriggerState_v2_225_Enabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2109896879236985177",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_321()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 0,
        -- AttackerSpawner_1,
        [1] = "2110191141860213491",
        -- CoreNPCGroup,
        [2] = "#61E3DCFA",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- Timer,
        [14] = 10,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|314781013");
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
                [0] = self.f_box_OutputOrder_v2_4_Out_0,
                [1] = self.f_box_OutputOrder_v2_4_Out_1,
                [2] = self.f_box_OutputOrder_v2_4_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_361()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "3293870975",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_199()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = self.e_downTwin,
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108727890303545533",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_GetHealthState_209()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetHealthState_209");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|331811112");
    l0:SetConnections({
        -- Down,
        [2] = self.f_box_GetHealthState_209_Down,
    });
    params = {
        -- Pawn,
        [0] = self.e_downTwin,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_344()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_344");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|340021697");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_344_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109874390289112259",
        -- Entity,
        [2] = self.e_UNI105,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_315()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_315");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|343103272");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_315_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109667108089531276",
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v3_256()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v3_256");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|357872471");
    l0:SetConnections({
        -- Alive,
        [0] = self.f_box_IsPawnAlive_v3_256_Alive,
        -- DeadOrDown,
        [1] = self.f_box_IsPawnAlive_v3_256_DeadOrDown,
    });
    params = {
        -- Pawn,
        [0] = self.e_UNI105,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|362176880");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_86_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_86_A_is_True,
    });
    params = {
        -- A,
        [0] = self.b_isUni105_HalfHP,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|385315980");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_10_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_10_A_is_True,
    });
    params = {
        -- A,
        [0] = self.b_isFirstReinforcement,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_116()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsGunsForHire_v2.lua")];
    params = {
        -- Group,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_162()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_240()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_240");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|399613224");
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
                [0] = self.f_box_OutputOrder_v2_240_Out_0,
                [1] = self.f_box_OutputOrder_v2_240_Out_1,
                [2] = self.f_box_OutputOrder_v2_240_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_292()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_292");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|423475048");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_292_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_292_True,
    });
    params = {
        -- entityId,
        [0] = "2108543433007175798",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_119()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_100()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1730391637",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_118()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_FastTravelModifier_v2_165()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FastTravelModifier_v2_165");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|481691112");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_FastTravelModifier_v2_165_Disabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_308()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 7,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_316()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 0,
        -- AttackerSpawner_1,
        [1] = "2110191132991357637",
        -- CoreNPCGroup,
        [2] = "#2643A62A",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- Timer,
        [14] = 10,
    };
    return params;
end;

function export:OnEnter_box_GetHealthState_147()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetHealthState_147");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|516319585");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_GetHealthState_147_Critical,
        -- Dead,
        [1] = self.f_box_GetHealthState_147_Dead,
        -- Down,
        [2] = self.f_box_GetHealthState_147_Down,
        -- Healthy,
        [3] = self.f_box_GetHealthState_147_Healthy,
        -- NotLoaded,
        [4] = self.f_box_GetHealthState_147_NotLoaded,
    });
    params = {
        -- Pawn,
        [0] = self.e_UNI106,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_301()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_301");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|525400599");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_301_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109667099956775814",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_140()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_164()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 13,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_210()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_210");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|538226150");
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
                [0] = self.f_box_OutputOrder_v2_210_Out_0,
                [1] = self.f_box_OutputOrder_v2_210_Out_1,
            },
            count = 2,
        },
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|546681037");
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
                [1] = self.f_box_OutputOrder_v2_77_Out_1,
                [2] = self.f_box_OutputOrder_v2_77_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_178()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_178");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|548616200");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = "2109762273126928481",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_343()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_343");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|553737724");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_343_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109874389890653375",
        -- Entity,
        [2] = self.e_UNI106,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_235()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_235");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|568506666");
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
                [0] = self.f_box_OutputOrder_v2_235_Out_0,
                [1] = self.f_box_OutputOrder_v2_235_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_312()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_312");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|574478043");
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
                [0] = self.f_box_OutputOrder_v2_312_Out_0,
                [1] = self.f_box_OutputOrder_v2_312_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_137()
    local params;
    params = {
        -- timeScale,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_349()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_349");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|593440118");
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
                [0] = self.f_box_OutputOrder_v2_349_Out_0,
                [1] = self.f_box_OutputOrder_v2_349_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v3_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v3_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|602144413");
    l0:SetConnections({
        -- Alive,
        [0] = self.f_box_IsPawnAlive_v3_80_Alive,
    });
    params = {
        -- Pawn,
        [0] = self.e_UNI105,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_304()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_304");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|611960863");
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
                [0] = self.f_box_OutputOrder_v2_304_Out_0,
                [1] = self.f_box_OutputOrder_v2_304_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetTimeOfDay_v2_252()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetTimeOfDay_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetTimeOfDay_v2_252");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|613259445");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetTimeOfDay_v2_252_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_354()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_354");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|618265778");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_354_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2110147628936205548",
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_266()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_266");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|641388761");
    l0:SetConnections({
        -- Active,
        [0] = self.f_box_GetActivityState_v2_266_Active,
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_266_Completed,
        -- Inactive,
        [4] = self.f_box_GetActivityState_v2_266_Inactive,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015340431407140",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_157()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_157");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|655640044");
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
                [0] = self.f_box_OutputOrder_v2_157_Out_0,
                [1] = self.f_box_OutputOrder_v2_157_Out_1,
                [2] = self.f_box_OutputOrder_v2_157_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ColorRemapTextureModifier_v3_56()
    local params;
    params = {
        -- colorRemapSettings,
        [0] = "9015351415047924",
        -- playerGroup,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_274()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_274");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|686749547");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_274_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_297()
    local params;
    params = {
        -- timeScale,
        [0] = 10,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_192()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_192");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|707996729");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_192_Out,
    });
    params = {
        -- Entity,
        [0] = "2108421326459905976",
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_435()
    local params;
    params = {
        -- timeScale,
        [0] = 1,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_64()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = "#88050ED2",
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108779367388678523",
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_425()
    local params;
    params = {
        -- timeScale,
        [0] = 1,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_181()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108421326459905976",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_85()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1732280548",
    };
    return params;
end;

function export:OnEnter_box_FloatArithmetics_v2_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|774149464");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_87_Out,
    });
    params = {
        -- A,
        [0] = self.f_UNI105_HP,
        -- B,
        [1] = self.f_hpThreshold_event_3,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_319()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_319");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|781773710");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_319_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109662319765113040",
        -- Entity,
        [2] = "2108543433667778702",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_287()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.04,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_348()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109874390289112259",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_239()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_239");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|799936185");
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
                [0] = self.f_box_OutputOrder_v2_239_Out_0,
                [1] = self.f_box_OutputOrder_v2_239_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_330()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2109662319765113040",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108543433667778702",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_355()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_355");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|815589014");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_355_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2110149561466017814",
    };
    return params;
end;

function export:OnEnter_box_OverrideEnvironment_v3_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideEnvironment_v3_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|818972031");
    l0:SetConnections({
    });
    params = {
        -- fog,
        [6] = "FCZ_Default:Special.Twin_Fight_End_Fog",
        -- ratio,
        [9] = 1,
        -- transitionTime,
        [13] = 5,
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_114()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015328871164501",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_254()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 3,
        -- AttackerSpawner_1,
        [1] = "2108783056239253024",
        -- CoreNPCGroup,
        [2] = "#0587E442",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- Timer,
        [14] = 10,
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneCleanUp_V2_186()
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

function export:OnEnter_box_EntityStatusListener_133()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.e_UNI105,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_353()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_353");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|865297599");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_353_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2110149483781216270",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_263()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109775336595034696",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_394()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_394");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|876111264");
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
                [0] = self.f_box_OutputOrder_v2_394_Out_0,
                [1] = self.f_box_OutputOrder_v2_394_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|878360286");
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
                [0] = self.f_box_OutputOrder_v2_41_Out_0,
                [1] = self.f_box_OutputOrder_v2_41_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_326()
    local params;
    params = {
        -- Group,
        [0] = "2108543433667778702",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_211()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_211");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|885000826");
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
                [0] = self.f_box_OutputOrder_v2_211_Out_0,
                [1] = self.f_box_OutputOrder_v2_211_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_286()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_286");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|892115071");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_286_A_is_False,
    });
    params = {
        -- A,
        [0] = self.FightStartCleanupDone,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_306()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_306");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|894992481");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_306_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109301882030669489",
        -- Entity,
        [2] = "2108543433007175798",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_176()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_176");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|899838897");
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
                [0] = self.f_box_OutputOrder_v2_176_Out_0,
                [1] = self.f_box_OutputOrder_v2_176_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|913043444");
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
                [0] = self.f_box_OutputOrder_v2_43_Out_0,
                [1] = self.f_box_OutputOrder_v2_43_Out_1,
                [2] = self.f_box_OutputOrder_v2_43_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ColorRemapTextureModifier_v3_68()
    local params;
    params = {
        -- colorRemapSettings,
        [0] = "9015351415023683",
        -- playerGroup,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_99");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|918819417");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2110149873562096139",
        -- Group,
        [1] = "#A488FD80",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_438()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_438");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|922105881");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_438_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_438_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.Hour,
        -- B,
        [1] = 13,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_296()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_296");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|945701622");
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
                [0] = self.f_box_OutputOrder_v2_296_Out_0,
                [1] = self.f_box_OutputOrder_v2_296_Out_1,
                [2] = self.f_box_OutputOrder_v2_296_Out_2,
                [3] = self.f_box_OutputOrder_v2_296_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|971765463");
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
                [0] = self.f_box_OutputOrder_v2_30_Out_0,
                [1] = self.f_box_OutputOrder_v2_30_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetHealthState_327()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetHealthState_327");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|984553293");
    l0:SetConnections({
        -- Dead,
        [1] = self.f_box_GetHealthState_327_Dead,
        -- Down,
        [2] = self.f_box_GetHealthState_327_Down,
        -- Healthy,
        [3] = self.f_box_GetHealthState_327_Healthy,
    });
    params = {
        -- Pawn,
        [0] = "2108543433667778702",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_346()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109874389890653375",
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

function export:OnEnter_box_SpawnAI_125()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109666029056573649",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_184()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_132()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_132");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1057904385");
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
                [0] = self.f_box_OutputOrder_v2_132_Out_0,
                [1] = self.f_box_OutputOrder_v2_132_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_102");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1081990688");
    l0:SetConnections({
        -- A_lt_B,
        [4] = self.f_box_Compare_Floats_102_A_lt_B,
    });
    l0 = self.box_HealthListener_v6_84;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(0),
        -- B,
        [1] = self._sld_Result_box_FloatArithmetics_v2_87,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_215()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_215");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1084286155");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108615100702141024",
        -- Group,
        [1] = self.e_UNI105,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_34()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108779894876950307",
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_259()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_423()
    local params;
    params = {
        -- timeScale,
        [0] = 10,
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_91()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_FloatArithmetics_v2_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1102959041");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_92_Out,
    });
    params = {
        -- A,
        [0] = self.f_UNI106_HP,
        -- B,
        [1] = self.f_hpThreshold_event_3,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_289()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108779190670093833",
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_126()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_126");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1104079650");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = "2110078537095451487",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_340()
    local params;
    params = {
        -- state,
        [3] = false,
        -- usableEntity,
        [4] = "2109483625859785233",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_171()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_342()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2110078537095451487",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_107()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_448()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_448");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1141188866");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_448_A_eq_B,
        -- A_ne_B,
        [5] = self.f_box_Compare_Integers_448_A_ne_B,
    });
    params = {
        -- A,
        [0] = self.Minutes,
        -- B,
        [1] = 30,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_260()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#16F94DCD",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_217()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_217");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1145431400");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_217_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108629269501461077",
        -- Group,
        [1] = self.e_UNI106,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_120()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_120");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1146560399");
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

function export:OnEnter_box_OutputOrder_v2_350()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_350");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1148500673");
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
                [0] = self.f_box_OutputOrder_v2_350_Out_0,
                [1] = self.f_box_OutputOrder_v2_350_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_440()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_440");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1170318669");
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
                [0] = self.f_box_OutputOrder_v2_440_Out_0,
                [1] = self.f_box_OutputOrder_v2_440_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_433()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_433");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1172130515");
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
                [0] = self.f_box_OutputOrder_v2_433_Out_0,
                [1] = self.f_box_OutputOrder_v2_433_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_53()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1199130083");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_302()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_302");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1240986565");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_302_A_is_True,
    });
    params = {
        -- A,
        [0] = PersistentGlobals.MIS_340_MASTER.b_globalSurvivorRevived_02,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_237()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.3,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_160()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OverrideEnvironment_v3_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideEnvironment_v3_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1274826644");
    l0:SetConnections({
    });
    params = {
        -- fog,
        [6] = "FCZ_Default:Special.Twin_Fight_End_Fog",
        -- ratio,
        [9] = 1,
        -- shadow,
        [10] = "FCZ_Default:Special.Twin_Fight_End_CloudShadows",
        -- transitionTime,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_154()
    local params;
    params = {
        -- blendTime,
        [1] = 2,
        -- endTarget,
        [4] = "2108725445645067052",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108587604724168240",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_161()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_161");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1303633222");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_161_A_is_False,
    });
    params = {
        -- A,
        [0] = self.goodTime_event3,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_152()
    local params;
    params = {
        -- blendTime,
        [1] = 2,
        -- endTarget,
        [4] = "2108725514739934000",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108587604724168240",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_113()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.e_UNI106,
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1319106909");
    l0:SetConnections({
        -- A_lt_B,
        [4] = self.f_box_Compare_Floats_81_A_lt_B,
    });
    l0 = self.box_HealthListener_v6_113;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(0),
        -- B,
        [1] = self._sld_Result_box_FloatArithmetics_v2_92,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_216()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_216");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1322365815");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108615100702141024",
        -- Group,
        [1] = self.e_UNI106,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1333740184");
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
                [0] = self.f_box_OutputOrder_v2_71_Out_0,
                [1] = self.f_box_OutputOrder_v2_71_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v3_351()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v3_351");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1345407565");
    l0:SetConnections({
        -- Alive,
        [0] = self.f_box_IsPawnAlive_v3_351_Alive,
    });
    params = {
        -- Pawn,
        [0] = self.e_UNI106,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_222()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_222");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1346215767");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_222_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109664398908863824",
        -- Group,
        [1] = self.e_UNI106,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_227()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109775333638050117",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_40()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "MIS_340_B10_DONE",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_205()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_205");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1357875722");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_205_Out,
    });
    params = {
        -- Entity,
        [0] = self.e_UNI106,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_75()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "3528614461",
    };
    return params;
end;

function export:OnEnter_box_GetTimeOfDay_v2_277()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetTimeOfDay_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetTimeOfDay_v2_277");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1365900969");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetTimeOfDay_v2_277_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_110()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_110");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1370841647");
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
                [0] = self.f_box_OutputOrder_v2_110_Out_0,
                [1] = self.f_box_OutputOrder_v2_110_Out_1,
                [2] = self.f_box_OutputOrder_v2_110_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_121()
    local params;
    params = {
        -- bShowUI,
        [0] = true,
        -- CoopFailRequiresAllPlayer,
        [1] = false,
        -- FailingZoneTrigger,
        [2] = "2109775336595034696",
        -- WarningZoneTrigger,
        [3] = "2109775333638050117",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1427642563");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_7_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_11()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108783367773283767",
    };
    return params;
end;

function export:OnEnter_box_SpawnAIRequestGroup_v2_20()
    local params;
    params = {
        -- RequestGroupName,
        [0] = "mis340_request_helico",
        -- SpawnerPercentage,
        [2] = 100,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_396()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_396");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1435691482");
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
                [0] = self.f_box_OutputOrder_v2_396_Out_0,
                [1] = self.f_box_OutputOrder_v2_396_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_187()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_187");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1436588160");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_187_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_108()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = self.gPlayer,
        -- SoundId,
        [5] = "1439502674",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_347()
    local params;
    params = {
        -- EntityA,
        [1] = self.e_UNI105,
        -- EntityB,
        [2] = "2109874390289112259",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v3_352()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v3_352");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1463909066");
    l0:SetConnections({
        -- Alive,
        [0] = self.f_box_IsPawnAlive_v3_352_Alive,
    });
    params = {
        -- Pawn,
        [0] = self.e_UNI105,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_313()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_313");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1464395170");
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
                [0] = self.f_box_OutputOrder_v2_313_Out_0,
                [1] = self.f_box_OutputOrder_v2_313_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OverrideEnvironment_v3_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideEnvironment_v3_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1470390339");
    l0:SetConnections({
    });
    params = {
        -- fog,
        [6] = "FCZ_Default:Special.Twin_Fight_Mid_Fog",
        -- ratio,
        [9] = 1,
        -- shadow,
        [10] = "FCZ_Default:Special.Twin_Fight_Mid_CloudShadows",
        -- transitionTime,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_38()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 30,
    };
    return params;
end;

function export:OnEnter_box_SendGSFGenericEvent_200()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SendGSFGenericEvent.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SendGSFGenericEvent_200");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1476376250");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SendGSFGenericEvent_200_Out,
    });
    params = {
        -- entity,
        [0] = "2108727890303545533",
        -- eventName,
        [1] = "mis_340_fog_activate",
    };
    return params;
end;

function export:OnEnter_box_OverrideEnvironment_v3_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideEnvironment_v3_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1483354804");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_OverrideEnvironment_v3_82_Enabled,
    });
    params = {
        -- fog,
        [6] = "FCZ_Default:Special.Twin_Fight_Start_Fog",
        -- ratio,
        [9] = 1,
        -- transitionTime,
        [13] = 5,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_270()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_94()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "4049451952",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_268()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_268");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1527799977");
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
                [0] = self.f_box_OutputOrder_v2_268_Out_0,
                [1] = self.f_box_OutputOrder_v2_268_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ColorRemapTextureModifier_v3_29()
    local params;
    params = {
        -- colorRemapSettings,
        [0] = "9015351415037042",
        -- playerGroup,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_SendGSFGenericEvent_207()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SendGSFGenericEvent.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SendGSFGenericEvent_207");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1530611691");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2108727890303545533",
        -- eventName,
        [1] = "mis_340_fog_deactivate",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_393()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_393");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1531562356");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_393_A_eq_B,
        -- A_ne_B,
        [5] = self.f_box_Compare_Integers_393_A_ne_B,
    });
    params = {
        -- A,
        [0] = self._sld_Hour_box_GetTimeOfDay_v2_359,
        -- B,
        [1] = 20,
    };
    return params;
end;

function export:OnEnter_box_AlarmModifier_v2_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AlarmModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AlarmModifier_v2_101");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1541540017");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_AlarmModifier_v2_101_Activated,
    });
    params = {
        -- AlarmGroup,
        [0] = "#0587E442",
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_65()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015328870580308",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_74()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_FastTravelModifier_v2_146()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FastTravelModifier_v2_146");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1563351967");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_221()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_221");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1570833079");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_221_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109664398908863824",
        -- Group,
        [1] = self.e_UNI105,
    };
    return params;
end;

function export:OnEnter_box_PersistentParticlesModifier_223()
    local params;
    params = {
        -- fadeDuration,
        [0] = 10,
        -- particleSystem,
        [1] = "newparticles/9015345512384402.part",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_224()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_224");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1587167109");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2108728042493866259",
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_445()
    local params;
    params = {
        -- timeScale,
        [0] = 11,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1616905557");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_78_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1626143837");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_12_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_12_A_is_True,
    });
    params = {
        -- A,
        [0] = self.b_isFirstReinforcement,
    };
    return params;
end;

function export:OnEnter_box_GetHealthState_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetHealthState_98");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1627649855");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_GetHealthState_98_Critical,
        -- Dead,
        [1] = self.f_box_GetHealthState_98_Dead,
        -- Down,
        [2] = self.f_box_GetHealthState_98_Down,
        -- Healthy,
        [3] = self.f_box_GetHealthState_98_Healthy,
        -- NotLoaded,
        [4] = self.f_box_GetHealthState_98_NotLoaded,
    });
    params = {
        -- Pawn,
        [0] = self.e_UNI105,
    };
    return params;
end;

function export:OnEnter_box_GetHealthState_337()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetHealthState_337");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1635096742");
    l0:SetConnections({
        -- Dead,
        [1] = self.f_box_GetHealthState_337_Dead,
        -- Down,
        [2] = self.f_box_GetHealthState_337_Down,
        -- Healthy,
        [3] = self.f_box_GetHealthState_337_Healthy,
    });
    params = {
        -- Pawn,
        [0] = "2108543437285366000",
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v3_258()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v3_258");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1636935680");
    l0:SetConnections({
        -- Alive,
        [0] = self.f_box_IsPawnAlive_v3_258_Alive,
    });
    params = {
        -- Pawn,
        [0] = self.e_UNI106,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_318()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_59()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_320()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_320");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1654678002");
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
                [0] = self.f_box_OutputOrder_v2_320_Out_0,
                [1] = self.f_box_OutputOrder_v2_320_Out_1,
                [2] = self.f_box_OutputOrder_v2_320_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_174()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109666030224687385",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_201()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "3293870975",
    };
    return params;
end;

function export:OnEnter_box_OverrideEnvironment_v3_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideEnvironment_v3_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1669602929");
    l0:SetConnections({
    });
    params = {
        -- fog,
        [6] = "FCZ_Default:Special.Twin_Fight_Mid_Fog",
        -- ratio,
        [9] = 1,
        -- transitionTime,
        [13] = 5,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_305()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_305");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1681135526");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_305_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_305_True,
    });
    params = {
        -- entityId,
        [0] = "2108543433667778702",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_138()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_332()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_332");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1699276416");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_332_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109662322231363800",
        -- Entity,
        [2] = "2109665813454667446",
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

function export:OnEnter_box_Bind_v4_345()
    local params;
    params = {
        -- EntityA,
        [1] = self.e_UNI106,
        -- EntityB,
        [2] = "2109874389890653375",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_ColorRemapTextureModifier_v3_32()
    local params;
    params = {
        -- colorRemapSettings,
        [0] = "9015351415047924",
        -- playerGroup,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_172()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109665813450473136",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_26()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_63()
    local params, l0;
    l0 = self.box_ProximityTrigger_v3_64;
    params = {
        -- players,
        [0] = self.gPlayer,
        -- targets,
        [1] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_334()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_IsGunsForHire_v2_117()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsGunsForHire_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsGunsForHire_v2_117");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1811424228");
    l0:SetConnections({
        -- None,
        [0] = self.f_box_IsGunsForHire_v2_117_None,
        -- Out,
        [1] = self.f_box_IsGunsForHire_v2_117_Out,
        -- Roster,
        [2] = self.f_box_IsGunsForHire_v2_117_Roster,
        -- Squad,
        [3] = self.f_box_IsGunsForHire_v2_117_Squad,
    });
    l0 = self.box_CharacterLoadedIdListener_v2_114;
    params = {
        -- targetGFHEntity,
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_18()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "3528614461",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_150()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109666029608124661",
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_212()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_212");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1824721856");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_212_Equal,
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_212_NotEqual,
    });
    params = {
        -- Entity1,
        [0] = self.e_downTwin,
        -- Entity2,
        [1] = self.e_UNI105,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_293()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_293");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1831811407");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_293_A_is_True,
    });
    params = {
        -- A,
        [0] = PersistentGlobals.MIS_340_MASTER.b_globalSurvivorRevived_03,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_204()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_72()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "3375588294",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_156()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_156");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1842297975");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_156_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_156_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108725565302271250",
        -- Entity,
        [2] = self.e_UNI106,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1852686433");
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

function export:OnEnter_box_Print_v2_335()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_335");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1857212210");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "RED",
        -- duration,
        [3] = 10,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "REGEN_NAV",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_339()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109483625859785233",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_213()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_213");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1860827375");
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
                [0] = self.f_box_OutputOrder_v2_213_Out_0,
                [1] = self.f_box_OutputOrder_v2_213_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_234()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_234");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1865296717");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_234_A_ge_B,
        -- A_ne_B,
        [5] = self.f_box_Compare_Integers_234_A_ne_B,
    });
    params = {
        -- A,
        [0] = self._sld_Minute_box_GetTimeOfDay_v2_277,
        -- B,
        [1] = 40,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_70()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108628979515671065",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_52()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "MIS_340_ENDED",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_269()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_124()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_124");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1896781634");
    l0:SetConnections({
    });
    params = {
        -- Hour,
        [0] = 18,
        -- Minute,
        [1] = 45,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_436()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_436");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1905041367");
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
                [0] = self.f_box_OutputOrder_v2_436_Out_0,
                [1] = self.f_box_OutputOrder_v2_436_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_144()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.04,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_243()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_243");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1909108991");
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
                [0] = self.f_box_OutputOrder_v2_243_Out_0,
                [1] = self.f_box_OutputOrder_v2_243_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_251()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109762273126928481",
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_175()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_175");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1916103005");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_175_Out,
    });
    params = {
        -- Hour,
        [0] = 22,
        -- Minute,
        [1] = 40,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_441()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109896879236985177",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_248()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneCleanUp_V2_262()
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

function export:OnEnter_box_OutputOrder_v2_444()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_444");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1941436562");
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
                [0] = self.f_box_OutputOrder_v2_444_Out_0,
                [1] = self.f_box_OutputOrder_v2_444_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_9()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108783372108097089",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_233()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_233");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1966240928");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_233_A_eq_B,
        -- A_ne_B,
        [5] = self.f_box_Compare_Integers_233_A_ne_B,
    });
    params = {
        -- A,
        [0] = self._sld_Hour_box_GetTimeOfDay_v2_277,
        -- B,
        [1] = 22,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_228()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_228");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1973046813");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2108728046151299351",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_36()
    local params;
    params = {
        -- players,
        [0] = self.gPlayer,
        -- targets,
        [1] = "#88050ED2",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_428()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_428");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1989388959");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_428_A_eq_B,
        -- A_gt_B,
        [2] = self.f_box_Compare_Integers_428_A_gt_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_428_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.Hour,
        -- B,
        [1] = 18,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_203()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_203");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|1999551289");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_203_Out,
    });
    params = {
        -- Entity,
        [0] = self.e_UNI105,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2007177605");
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
                [0] = self.f_box_OutputOrder_v2_58_Out_0,
                [1] = self.f_box_OutputOrder_v2_58_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_115()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_115");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2009164394");
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
                [0] = self.f_box_OutputOrder_v2_115_Out_0,
                [1] = self.f_box_OutputOrder_v2_115_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_371()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_371");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2013266113");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_371_A_is_False,
    });
    params = {
        -- A,
        [0] = self.goodTime_event2,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_66()
    local params, l0;
    l0 = self.box_CharacterLoadedIdListener_v2_65;
    params = {
        -- Group,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_SpawnAIRequestGroup_v2_35()
    local params;
    params = {
        -- RequestGroupName,
        [0] = "mis340_request_parachute",
        -- SpawnerPercentage,
        [2] = 100,
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_437()
    local params;
    params = {
        -- timeScale,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_ColorRemapTextureModifier_v3_37()
    local params;
    params = {
        -- colorRemapSettings,
        [0] = "9015351415037042",
        -- playerGroup,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_336()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_336");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2055799659");
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
                [0] = self.f_box_OutputOrder_v2_336_Out_0,
                [1] = self.f_box_OutputOrder_v2_336_Out_1,
                [2] = self.f_box_OutputOrder_v2_336_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_84()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.e_UNI105,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_236()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.3,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_51()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_322()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_RegenerateNavmesh_60()
    local params;
    params = {
        -- RegionEntity,
        [0] = "2109581383694292000",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_131()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.e_UNI106,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_69()
    local params;
    params = {
        -- BoneName,
        [0] = "head",
        -- EntityA,
        [1] = self.eLocalPlayer,
        -- EntityB,
        [2] = "2108628979515671065",
        -- IsMultiBeatBind,
        [3] = true,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_323()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_323");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2106409919");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_323_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109662320566225108",
        -- Entity,
        [2] = "2108543437285366000",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_238()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_238");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2106991252");
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

function export:OnEnter_box_SetTimeOfDay_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_MASTER.domino|@MIS_340_MASTER|2108351906");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_42_Out,
    });
    params = {
        -- Hour,
        [0] = 18,
        -- Minute,
        [1] = 45,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_333()
    local params;
    params = {
        -- Group,
        [0] = "2108543437285366000",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_317()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_432()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = self.gPlayer,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109896879236985177",
    };
    return params;
end;

function export:OnEnter_box_SpawnAIRequestGroup_v2_231()
    local params;
    params = {
        -- RequestGroupName,
        [0] = "hwm_reinforcement_uni106_dead",
        -- SpawnerPercentage,
        [2] = 100,
    };
    return params;
end;

function export:OnExit_box_SetBoolean_v2_399_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.goodTime_event2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetTimeOfDay_v2_359_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetTimeOfDay_v2.lua")];
    self._sld_Hour_box_GetTimeOfDay_v2_359 = l0:GetDataOutValue(0);
    self._sld_Minute_box_GetTimeOfDay_v2_359 = l0:GetDataOutValue(1);
end;

function export:OnExit_box_SetBoolean_v2_261_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.FightStartCleanupDone = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_2_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.eLocalPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_19_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.b_isFirstReinforcement = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetHealthState_147_Critical()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    self.f_UNI106_HP = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetHealthState_147_Dead()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    self.f_UNI106_HP = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetHealthState_147_Down()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    self.f_UNI106_HP = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetHealthState_147_Healthy()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    self.f_UNI106_HP = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetTimeOfDay_v2_252_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetTimeOfDay_v2.lua")];
    self.Hour = l0:GetDataOutValue(0);
    self.Minutes = l0:GetDataOutValue(1);
end;

function export:OnExit_box_SetBoolean_v2_274_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.goodTime_event3 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_192_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Helicopter = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_64_Enabled()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_64;
    l1 = self.box_VisibilityModifier_63;
    l1:GetLuaBox().targets = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_64_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_64;
    l1 = self.box_VisibilityModifier_63;
    l1:GetLuaBox().targets = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_64_Leave()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_64;
    l1 = self.box_VisibilityModifier_63;
    l1:GetLuaBox().targets = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_64_OnEmpty()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_64;
    l1 = self.box_VisibilityModifier_63;
    l1:GetLuaBox().targets = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_64_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_64;
    l1 = self.box_VisibilityModifier_63;
    l1:GetLuaBox().targets = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_64_Use()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_64;
    l1 = self.box_VisibilityModifier_63;
    l1:GetLuaBox().targets = l0:GetDataOutValue(0);
end;

function export:OnExit_box_FloatArithmetics_v2_87_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self._sld_Result_box_FloatArithmetics_v2_87 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_FloatArithmetics_v2_92_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self._sld_Result_box_FloatArithmetics_v2_92 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_205_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_downTwin = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetTimeOfDay_v2_277_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetTimeOfDay_v2.lua")];
    self._sld_Hour_box_GetTimeOfDay_v2_277 = l0:GetDataOutValue(0);
    self._sld_Minute_box_GetTimeOfDay_v2_277 = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GetPlayerGroup_v2_7_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_187_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.FightStartCleanupDone = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_v2_65_LoadedIdReceived()
    local l0, l1;
    l0 = self.box_CharacterLoadedIdListener_v2_65;
    l1 = self.box_RemoveEntity_v2_66;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_78_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.b_isUni105_HalfHP = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetHealthState_98_Critical()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    self.f_UNI105_HP = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetHealthState_98_Dead()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    self.f_UNI105_HP = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetHealthState_98_Down()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    self.f_UNI105_HP = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetHealthState_98_Healthy()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    self.f_UNI105_HP = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IsGunsForHire_v2_117_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/IsGunsForHire_v2.lua")];
    l1 = self.box_RemoveEntity_v2_116;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IsGunsForHire_v2_117_Roster()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/IsGunsForHire_v2.lua")];
    l1 = self.box_RemoveEntity_v2_116;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IsGunsForHire_v2_117_Squad()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/IsGunsForHire_v2.lua")];
    l1 = self.box_RemoveEntity_v2_116;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_203_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_downTwin = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_432_Enabled()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_432;
    l1 = self.box_ColorRemapTextureModifier_v3_426;
    l1:GetLuaBox().playerGroup = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_432_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_432;
    l1 = self.box_ColorRemapTextureModifier_v3_426;
    l1:GetLuaBox().playerGroup = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_432_Leave()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_432;
    l1 = self.box_ColorRemapTextureModifier_v3_426;
    l1:GetLuaBox().playerGroup = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_432_OnEmpty()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_432;
    l1 = self.box_ColorRemapTextureModifier_v3_426;
    l1:GetLuaBox().playerGroup = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_432_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_432;
    l1 = self.box_ColorRemapTextureModifier_v3_426;
    l1:GetLuaBox().playerGroup = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_432_Use()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_432;
    l1 = self.box_ColorRemapTextureModifier_v3_426;
    l1:GetLuaBox().playerGroup = l0:GetDataOutValue(0);
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
