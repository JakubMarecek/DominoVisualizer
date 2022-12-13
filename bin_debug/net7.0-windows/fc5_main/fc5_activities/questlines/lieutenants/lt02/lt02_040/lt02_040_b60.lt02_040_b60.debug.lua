LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt02/lt02_040/lt02_040_b60.domino
-- User graph: LT02_040_B60
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
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Assert.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
        cboxRes:RegisterBox("Domino/System/ColorRemapTextureModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/CompareEntity.lua");
        cboxRes:RegisterBox("Domino/System/CompareFloats.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/CompareStrings.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/GroupAddToGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Misc/GetNameOfEntity.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetDistance.lua");
        cboxRes:RegisterBox("Domino/System/GetEntityInPrefab_v2.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/GroupIter.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v5.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/LookAtTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/OverrideEnvironment_v3.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/TimedSlowMotion_v2.lua");
        cboxRes:RegisterBox("Domino/System/PostWWiseEventSetState.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundMusicTrigger.lua");
        cboxRes:RegisterBox("Domino/System/SoundPointModifier.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableBreaker.lua");
        cboxRes:RegisterBox("Domino/System/TaggingModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/TimeOfDayListener.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B60.LT02_040_B60_Dialog.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1345264242.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1658190421.bnk]], "CSoundResource");
        cboxRes:LoadResource([[313712956.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1019691150.bnk]], "CSoundResource");
        cboxRes:LoadResource([[438456083.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3493689896.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3037681180.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1278626803.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1219233337.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2102059229.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1049444306.bnk]], "CSoundResource");
        cboxRes:LoadResource([[40681610.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2806627700.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B60.LT02_040_B60.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.debug.lua")] = {
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
                name = "KeepGodMode",
                type = "bool",
            },
            [2] = {
                name = "KeepHUDMode",
                type = "bool",
            },
            [3] = {
                name = "KeepWeaponHolstered",
                type = "bool",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "BasicSetup",
            },
            [1] = {
                name = "HolsterWeapon",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Holstered",
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
                name = "Enable_Blackbars",
                type = "bool",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")] = {
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
                name = "ActivityAbortAndFastTravelEnabled",
                type = "bool",
            },
            [1] = {
                name = "SleepingCampEnabled",
                type = "bool",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/AI/CharacterLoadedIdListener.lua")] = {
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
                type = "string",
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
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 2,
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
                name = "vehiclesSpawned",
                type = "list",
            },
        },
        dataOutCount = 2,
    };
    metadataTable[GetPathID("Domino/System/Assert.lua")] = {
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
                name = "msg",
                type = "string",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/Coop/Misc/GetNameOfEntity.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Long",
            },
            [1] = {
                name = "Short",
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
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Name",
                type = "string",
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
    metadataTable[GetPathID("Domino/System/GetDistance.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Distance2D",
            },
            [1] = {
                name = "Distance3D",
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
                name = "Distance",
                type = "float",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/GetEntityInPrefab_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "NoEntity",
                delayed = true,
            },
            [1] = {
                name = "Out",
                delayed = true,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "ObjectName",
                type = "string",
            },
            [1] = {
                name = "PrefabEntity",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "ObjectEntity",
                type = "entity",
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
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/GroupSizeListener_v5.lua")] = {
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
                name = "MemberAdded",
                delayed = true,
            },
            [3] = {
                name = "MemberRemoved",
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
                name = "group",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Entity",
                type = "entity",
            },
            [1] = {
                name = "memberCount",
                type = "int",
            },
        },
        dataOutCount = 2,
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
    metadataTable[GetPathID("Domino/System/LookAtTrigger_v2.lua")] = {
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
                name = "EnterFOV",
                delayed = true,
            },
            [3] = {
                name = "LeaveFOV",
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
                name = "pawns",
                type = "group",
            },
            [2] = {
                name = "triggerId",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "LookingPawn",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
                name = "AutoDisable",
                type = "bool",
            },
            [1] = {
                name = "BlendInTime",
                type = "float",
            },
            [2] = {
                name = "BlendOutTime",
                type = "float",
            },
            [3] = {
                name = "Duration",
                type = "float",
            },
            [4] = {
                name = "PreDelay",
                type = "float",
            },
            [5] = {
                name = "TimeFactor",
                type = "float",
            },
        },
        dataInCount = 6,
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
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B60.LT02_040_B60_Dialog.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "PlayLine",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "LinePlayed",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "eTarget",
                type = "entity",
            },
            [1] = {
                name = "iNumLines",
                type = "int",
            },
            [2] = {
                name = "Line01",
                type = "Sound",
            },
            [3] = {
                name = "Line02",
                type = "Sound",
            },
            [4] = {
                name = "Line03",
                type = "Sound",
            },
            [5] = {
                name = "Line04",
                type = "Sound",
            },
            [6] = {
                name = "Line05",
                type = "Sound",
            },
            [7] = {
                name = "Line06",
                type = "Sound",
            },
            [8] = {
                name = "Line07",
                type = "Sound",
            },
            [9] = {
                name = "Line08",
                type = "Sound",
            },
            [10] = {
                name = "Line09",
                type = "Sound",
            },
            [11] = {
                name = "Line10",
                type = "Sound",
            },
        },
        dataInCount = 12,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "LT02_040_B60";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60";
    self.bReload = false;
    self.eJacob = nil;
    self.eClient = nil;
    self.eHost = nil;
    self.gPlayer = nil;
    self.oKillJacob = {
        section = "Objectives",
        item = "LT02_000_B20_OBJ",
        id = "585139",
    };
    self.oInteractObjective = {
        section = "Objectives",
        item = "LT02_040_DEBRIEF_EndMission",
        id = "570185",
    };
    self.ehost = nil;
    self.ePosition1 = "2104287077014181347";
    self.ePosition2 = "2104287084102555109";
    self.ePosition3 = "2104287084496819687";
    self.fMinSpawnDistance = 80;
    self.eCurrentPlayer = nil;
    self.iPosition01Players = 0;
    self.iPosition02Players = 0;
    self.iPosition03Players = 0;
    self.eP1Spawner01 = "2104135432829684502";
    self.eP1Spawner02 = "2104135141635930136";
    self.eP2Spawner01 = "2104355966427344935";
    self.eP2Spawner02 = "2104355966454607930";
    self.eP3Spawner01 = "2104355988145451697";
    self.eP3Spawner02 = "2104355988118188702";
    self.eP2JacobCS = "2104356012212368665";
    self.eP3JacobCS = "2104356013307082013";
    self.eP1JacobCS = "2104134824393446069";
    self.eTeleportPosition = nil;
    self.eJacobCS = nil;
    self.eLKP = "2104134844528202443";
    self.eP1Bodyguards = "2104274432911546515";
    self.eP2Bodyguards = "2104355146537381024";
    self.eP3Bodyguards = "2104355148164771015";
    self.sGeneratorName = "Generator_01.Generator_01_Beacon_2";
    self.eBeaconSoundPoint04 = "2104093299577983740";
    self.eBeaconSoundPoint02 = "2104093294574179064";
    self.eBeaconSoundPoint01 = "2104093291845784310";
    self.eBeaconSoundPoint03 = "2104093297252242170";
    self.eBeaconSoundPoint05 = "2104093301782090494";
    self.eBeaconSoundPoint06 = "2104426357806096311";
    self.eSpawnerAggroCultists = nil;
    self.eSpawnerBodyguards = nil;
    self.eSpawnerAggroJudges = nil;
    self.eSpawnerBodyguardJudges = nil;
    self.sBirdName = "boids_birds.shot_010_1";
    self.sBirdName2 = "boids_birds.shot_010_2";
    self.box_SpawnAI_220 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_220;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_220");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|32113879");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_220_Spawned,
    });
    self.box_GetEntityInPrefab_v2_199 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_199;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_199");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|32402486");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_199_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_199_Out,
    });
    self.box_Bind_v4_34 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|52789544");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_34_Bound,
    });
    self.box_LT02_040_B60_Dialog_53 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B60.LT02_040_B60_Dialog.debug.lua");
    l0 = self.box_LT02_040_B60_Dialog_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B60_Dialog_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|85056813");
    l0:SetConnections({
    });
    self.box_HealthListener_v6_13 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|126270352");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_13_Downed,
    });
    self.box_ProximityTrigger_v2_236 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_236;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_236");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|129158258");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_236_Enter,
    });
    self.box_PhoneCallExclusivityModifier_17 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|175046097");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_17_Enabled,
    });
    self.box_Gate_v3_129 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_129;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|178101807");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_129_Out,
    });
    self.box_NarrativeSceneCleanUp_286 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.debug.lua");
    l0 = self.box_NarrativeSceneCleanUp_286;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneCleanUp_286");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|190050847");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_NarrativeSceneCleanUp_286_Out,
    });
    self.box_GroupSizeListener_v5_222 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_222;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_222");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|204942127");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_222_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_222_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_222_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_222_MemberRemoved,
    });
    self.box_RemoveEntity_v2_181 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_181;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_181");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|205738376");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_37 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|240365091");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_37_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_37_Loaded,
    });
    self.box_SoundMusicTriggerBox_3 = cbox:CreateBox("Domino/System/SoundMusicTrigger.lua");
    l0 = self.box_SoundMusicTriggerBox_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMusicTriggerBox_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|262389129");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundMusicTriggerBox_3_Started,
    });
    self.box_GetEntityInPrefab_v2_36 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|278801053");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_36_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_36_Out,
    });
    self.box_SpawnAI_260 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_260;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_260");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|281471813");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_144 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_144;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_144");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|301954385");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_144_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_144_Loaded,
    });
    self.box_ActivityAcknowledgeGate_4 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|304386868");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_4_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_4_Reloaded,
    });
    self.box_LookAtTrigger_v2_44 = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self.box_LookAtTrigger_v2_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LookAtTrigger_v2_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|305666266");
    l0:SetConnections({
        -- EnterFOV,
        [2] = self.f_box_LookAtTrigger_v2_44_EnterFOV,
    });
    self.box_GetEntityInPrefab_v2_132 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_132;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_132");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|306789753");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_132_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_132_Out,
    });
    self.box_SpawnAI_213 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_213;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_213");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|316109477");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_213_Spawned,
    });
    self.box_Delay_v5_204 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_204;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_204");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|322724017");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_204_TimeElapsed,
    });
    self.box_GetEntityInPrefab_v2_182 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_182;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_182");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|341690411");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_182_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_182_Out,
    });
    self.box_GroupSizeListener_v5_214 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_214;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_214");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|367503238");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_214_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_214_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_214_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_214_MemberRemoved,
    });
    self.box_Delay_v5_159 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_159;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_159");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|417042336");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_159_TimeElapsed,
    });
    self.box_MultipleOR_147 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_147;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_147");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|425572212");
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
        [0] = self.f_box_MultipleOR_147_Out,
    });
    self.box_GetEntityInPrefab_v2_134 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_134;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_134");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|444064437");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_134_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_134_Out,
    });
    self.box_EntityStatusListener_23 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|450377851");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_23_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_23_Loaded,
    });
    self.box_OnceOnly_v3_252 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_252;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_252");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|457403889");
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
                [0] = self.f_box_OnceOnly_v3_252_Out_0,
            },
            count = 1,
        },
    });
    self.box_RemoveEntity_v2_189 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_189;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_189");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|463732767");
    l0:SetConnections({
    });
    self.box_MultipleOR_107 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|476426496");
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
        [0] = self.f_box_MultipleOR_107_Out,
    });
    self.box_MultipleOR_163 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_163;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_163");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|476925685");
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
        [0] = self.f_box_MultipleOR_163_Out,
    });
    self.box_GetEntityInPrefab_v2_137 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_137;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_137");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|490875613");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_137_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_137_Out,
    });
    self.box_SpawnAI_157 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_157;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_157");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|491274085");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_157_Spawned,
    });
    self.box_Gate_v3_227 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_227;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_227");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|497335621");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_227_Out,
    });
    self.box_EntityStatusListener_141 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_141;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_141");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|536034452");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_141_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_141_Loaded,
    });
    self.box_ExitZoneWarningListener_v3_11 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|575802267");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_11_FailingZoneEntered,
        -- WarningZoneEntered,
        [1] = self.f_box_ExitZoneWarningListener_v3_11_WarningZoneEntered,
    });
    self.box_EntityStatusListener_130 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_130;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|601893364");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_130_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_130_Loaded,
    });
    self.box_GetEntityInPrefab_v2_192 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_192;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_192");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|601925115");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_192_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_192_Out,
    });
    self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|643546711");
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
    self.box_RemoveEntity_v2_185 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_185;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_185");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|650746080");
    l0:SetConnections({
    });
    self.box_Delay_v5_223 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_223;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_223");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|654374938");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_223_TimeElapsed,
    });
    self.box_MultipleOR_234 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_234;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_234");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|675606825");
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
        [0] = self.f_box_MultipleOR_234_Out,
    });
    self.box_RemoveEntity_v2_197 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_197;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_197");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|697291581");
    l0:SetConnections({
    });
    self.box_GroupSizeListener_v5_261 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_261;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_261");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|729958297");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_261_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_261_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_261_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_261_MemberRemoved,
    });
    self.box_SpawnAI_216 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_216;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_216");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|731759456");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_216_Spawned,
    });
    self.box_Delay_v5_225 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_225;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_225");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|772677099");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_225_TimeElapsed,
    });
    self.box_RemoveEntity_v2_145 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_145;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_145");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|820341065");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_145_Out,
    });
    self.box_HealthListener_v6_47 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|856930147");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_HealthListener_v6_47_Critical,
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_47_Damaged,
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_47_Disabled,
        -- Downed,
        [3] = self.f_box_HealthListener_v6_47_Downed,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_47_Enabled,
        -- Healed,
        [5] = self.f_box_HealthListener_v6_47_Healed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_47_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_47_Revived,
    });
    self.box_GetEntityInPrefab_v2_177 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_177;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_177");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|860692299");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_177_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_177_Out,
    });
    self.box_TimeOfDayListener_170 = cbox:CreateBox("Domino/System/TimeOfDayListener.lua");
    l0 = self.box_TimeOfDayListener_170;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TimeOfDayListener_170");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|888264309");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_TimeOfDayListener_170_Disabled,
        -- Enabled,
        [1] = self.f_box_TimeOfDayListener_170_Enabled,
        -- HourChanged,
        [2] = self.f_box_TimeOfDayListener_170_HourChanged,
    });
    self.box_GetEntityInPrefab_v2_180 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_180;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_180");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|915849537");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_180_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_180_Out,
    });
    self.box_ProximityRadiusListener_v3_247 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_247;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_247");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|944515148");
    l0:SetConnections({
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_247_Enabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_247_SomeoneNear,
    });
    self.box_SpawnAI_154 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_154;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_154");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|946112882");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_154_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_154_Spawned,
    });
    self.box_Delay_v5_40 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|975994967");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_40_TimeElapsed,
    });
    self.box_MultipleOR_110 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|998504506");
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
    self.box_RemoveEntity_v2_187 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_187;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_187");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|998960230");
    l0:SetConnections({
    });
    self.box_HealthListener_v6_205 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_205;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_205");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1017806642");
    l0:SetConnections({
        -- Killed,
        [6] = self.f_box_HealthListener_v6_205_Killed,
    });
    self.box_CharacterLoadedIdListener_18 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1030414365");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_18_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_18_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_18_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_18_LoadedIdReceived,
    });
    self.box_MultipleOR_251 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_251;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_251");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1089456029");
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
        [0] = self.f_box_MultipleOR_251_Out,
    });
    self.box_RemoveEntity_v2_179 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_179;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_179");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1111071677");
    l0:SetConnections({
    });
    self.box_GetEntityInPrefab_v2_196 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_196;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_196");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1113387943");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_196_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_196_Out,
    });
    self.box_EntityStatusListener_24 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1130757669");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_24_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_24_Loaded,
    });
    self.box_NarrativeFade_14 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1146203279");
    l0:SetConnections({
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_14_FadedOut,
    });
    self.box_EntityStatusListener_135 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_135;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_135");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1164668559");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_135_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_135_Loaded,
    });
    self.box_MultipleOR_104 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1173721699");
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
    self.box_Gate_v3_125 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_125;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1177854192");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_125_Out,
    });
    self.box_GroupSizeListener_v5_217 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_217;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_217");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1178938981");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_217_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_217_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_217_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_217_MemberRemoved,
    });
    self.box_NarrativeSceneSetup_15 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1179498734");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_NarrativeSceneSetup_15_Out,
    });
    self.box_RemoveEntity_v2_191 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_191;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_191");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1202567544");
    l0:SetConnections({
    });
    self.box_Delay_v5_224 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_224;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_224");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1213755688");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_224_TimeElapsed,
    });
    self.box_EntityStatusListener_33 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1238557335");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_33_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_33_Loaded,
    });
    self.box_NarrativeFade_165 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_165;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_165");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1245736771");
    l0:SetConnections({
        -- FadedIn,
        [0] = self.f_box_NarrativeFade_165_FadedIn,
    });
    self.box_Delay_v5_124 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_124;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1258287799");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_124_TimeElapsed,
    });
    self.box_EntityStatusListener_138 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_138;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_138");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1259188471");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_138_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_138_Loaded,
    });
    self.box_SpawnAI_226 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_226;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_226");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1274085940");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_226_Spawned,
    });
    self.box_Bind_v4_273 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_273;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_273");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1282454128");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_273_Bound,
    });
    self.box_HealthListener_v6_248 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_248;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_248");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1308264224");
    l0:SetConnections({
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_248_Damaged,
    });
    self.box_GetEntityInPrefab_v2_190 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_190;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_190");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1313279127");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_190_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_190_Out,
    });
    self.box_GetEntityInPrefab_v2_140 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_140;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_140");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1355752565");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_140_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_140_Out,
    });
    self.box_RemoveEntity_v2_175 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_175;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_175");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1359683479");
    l0:SetConnections({
    });
    self.box_Delay_v5_16 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1367099843");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_16_TimeElapsed,
    });
    self.box_GetEntityInPrefab_v2_143 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_143;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_143");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1373367743");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_143_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_143_Out,
    });
    self.box_OnceOnly_v3_206 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_206;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_206");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1386017492");
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
                [0] = self.f_box_OnceOnly_v3_206_Out_0,
            },
            count = 1,
        },
    });
    self.box_GunsForHireSystemModifier_148 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_148;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_148");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1395389078");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_148_Disabled,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_258 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_258;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_258");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1407758512");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_258_Out,
    });
    self.box_GroupIter_56 = cbox:CreateBox("Domino/System/GroupIter.lua");
    l0 = self.box_GroupIter_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupIter_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1411509277");
    l0:SetConnections({
        -- EndIter,
        [0] = self.f_box_GroupIter_56_EndIter,
        -- PawnIter,
        [1] = self.f_box_GroupIter_56_PawnIter,
        -- Started,
        [2] = self.f_box_GroupIter_56_Started,
        -- Stopped,
        [3] = self.f_box_GroupIter_56_Stopped,
    });
    self.box_MultipleOR_121 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_121;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1463974355");
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
    self.box_Delay_v5_263 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_263;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_263");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1470569730");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_263_TimeElapsed,
    });
    self.box_RemoveEntity_v2_183 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_183;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_183");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1487751310");
    l0:SetConnections({
    });
    self.box_MultipleOR_98 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1508091122");
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
        [0] = self.f_box_MultipleOR_98_Out,
    });
    self.box_ColorRemapTextureModifier_v3_150 = cbox:CreateBox("Domino/System/ColorRemapTextureModifier_v3.lua");
    l0 = self.box_ColorRemapTextureModifier_v3_150;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ColorRemapTextureModifier_v3_150");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1513659511");
    l0:SetConnections({
        -- Removed,
        [1] = self.f_box_ColorRemapTextureModifier_v3_150_Removed,
    });
    self.box_HealthListener_v6_54 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1534714900");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_HealthListener_v6_54_Critical,
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_54_Damaged,
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_54_Disabled,
        -- Downed,
        [3] = self.f_box_HealthListener_v6_54_Downed,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_54_Enabled,
        -- Healed,
        [5] = self.f_box_HealthListener_v6_54_Healed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_54_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_54_Revived,
    });
    self.box_PostWWiseEventSetState_31 = cbox:CreateBox("Domino/System/PostWWiseEventSetState.lua");
    l0 = self.box_PostWWiseEventSetState_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostWWiseEventSetState_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1549364154");
    l0:SetConnections({
        -- Set,
        [0] = self.f_box_PostWWiseEventSetState_31_Set,
    });
    self.box_RemoveEntity_v2_178 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_178;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_178");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1622561046");
    l0:SetConnections({
    });
    self.box_CHEAT_SetEnvironmentTimeScale_267 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_267;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_267");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1625240069");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_267_Out,
    });
    self.box_ProximityRadiusListener_v3_250 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_250;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_250");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1627644910");
    l0:SetConnections({
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_250_Enabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_250_SomeoneNear,
    });
    self.box_MultipleOR_118 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1652047898");
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
        [0] = self.f_box_MultipleOR_118_Out,
    });
    self.box_Delay_v5_231 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_231;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_231");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1656718492");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_231_TimeElapsed,
    });
    self.box_GetEntityInPrefab_v2_194 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_194;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_194");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1668423305");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_194_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_194_Out,
    });
    self.box_RequestPhoneCall_v2_12 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1674621524");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_277 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_277;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_277");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1675029580");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_277_Out,
    });
    self.box_LT02_040_B60_Dialog_46 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B60.LT02_040_B60_Dialog.debug.lua");
    l0 = self.box_LT02_040_B60_Dialog_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B60_Dialog_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1677834240");
    l0:SetConnections({
    });
    self.box_SpawnAI_219 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_219;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_219");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1685739904");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_219_Spawned,
    });
    self.box_GetEntityInPrefab_v2_188 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_188;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_188");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1700415015");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_188_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_188_Out,
    });
    self.box_GetEntityInPrefab_v2_184 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_184;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_184");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1701812870");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_184_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_184_Out,
    });
    self.box_MultipleOR_116 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1714077426");
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
        [0] = self.f_box_MultipleOR_116_Out,
    });
    self.box_Delay_v5_229 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_229;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_229");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1797663087");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_229_TimeElapsed,
    });
    self.box_RemoveEntity_v2_278 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_278;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_278");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1823286109");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_278_Out,
    });
    self.box_GroupSizeListener_v5_233 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_233;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_233");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1834570245");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_233_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_233_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_233_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_233_MemberRemoved,
    });
    self.box_GetEntityInPrefab_v2_186 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_186;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_186");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1839118489");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_186_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_186_Out,
    });
    self.box_ProximityTrigger_v2_243 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_243;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_243");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1849549234");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_243_Enter,
    });
    self.box_PostWWiseEventSetState_27 = cbox:CreateBox("Domino/System/PostWWiseEventSetState.lua");
    l0 = self.box_PostWWiseEventSetState_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostWWiseEventSetState_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1854376511");
    l0:SetConnections({
    });
    self.box_SpawnAI_156 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_156;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_156");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1869959146");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_156_Out,
    });
    self.box_RemoveEntity_v2_279 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_279;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_279");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1870301795");
    l0:SetConnections({
    });
    self.box_MultipleOR_264 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_264;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_264");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1876166778");
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
        [0] = self.f_box_MultipleOR_264_Out,
    });
    self.box_RemoveEntity_v2_195 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_195;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_195");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1912936838");
    l0:SetConnections({
    });
    self.box_GetEntityInPrefab_v2_174 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_174;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_174");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1989455090");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_174_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_174_Out,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_255 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_255;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_255");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|2012683362");
    l0:SetConnections({
    });
    self.box_MultipleOR_208 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_208;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_208");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|2036790549");
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
        [0] = self.f_box_MultipleOR_208_Out,
    });
    self.box_ActivityInitialized_7 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|2041220718");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_7_Out,
    });
    self.box_GroupSizeListener_v5_230 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_230;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_230");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|2068345992");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_230_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_230_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_230_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_230_MemberRemoved,
    });
    self.box_GroupSizeListener_v5_271 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_271;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_271");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|2068941881");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_271_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_271_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_271_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_271_MemberRemoved,
    });
    self.box_LT02_040_B60_Dialog_45 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B60.LT02_040_B60_Dialog.debug.lua");
    l0 = self.box_LT02_040_B60_Dialog_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B60_Dialog_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|2069905020");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_211 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_211;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_211");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|2095406853");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_211_Enter,
    });
    self.box_TimedSlowMotion_v2_246 = cbox:CreateBox("Domino/System/Player/TimedSlowMotion_v2.lua");
    l0 = self.box_TimedSlowMotion_v2_246;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TimedSlowMotion_v2_246");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|2104812739");
    l0:SetConnections({
        -- SlowMotionEnded,
        [2] = self.f_box_TimedSlowMotion_v2_246_SlowMotionEnded,
    });
    self.box_RemoveEntity_v2_193 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_193;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_193");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|2134405934");
    l0:SetConnections({
    });
    self.box_MultipleOR_152 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_152;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_152");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|2136912386");
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
        [0] = self.f_box_MultipleOR_152_Out,
    });
    self.box_MultipleOR_78 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|2142302801");
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
        [0] = self.f_box_MultipleOR_78_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_2();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|218414260", "218414260", "LT02_040_B60", "In", "box_OutputOrder_v2_2.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_8();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|221112592", "221112592", "LT02_040_B60", "OnLeaveZone", "box_ActivityRetry_8.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_254_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_205();
    l0 = self.box_HealthListener_v6_205;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1823491088", "1823491088", "LT02_040_B60", "box_Simple_Node_254.Out", "box_HealthListener_v6_205.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_HealthListener_v6_13();
    l0 = self.box_HealthListener_v6_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1996462438", "1996462438", "LT02_040_B60", "box_Simple_Node_254.Out", "box_HealthListener_v6_13.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ExitZoneWarningListener_v3_11();
    l0 = self.box_ExitZoneWarningListener_v3_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|80943693", "80943693", "LT02_040_B60", "box_Simple_Node_254.Out", "box_ExitZoneWarningListener_v3_11.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_269_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_152;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|408584776", "408584776", "LT02_040_B60", "box_Simple_Node_269.Out", "box_MultipleOR_152.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    l0 = self.box_MultipleOR_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1535875010", "1535875010", "LT02_040_B60", "box_Simple_Node_269.Out", "box_MultipleOR_78.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_235_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_227();
    l0 = self.box_Gate_v3_227;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|328883934", "328883934", "LT02_040_B60", "box_Simple_Node_235.Out", "box_Gate_v3_227.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    l0 = self.box_MultipleOR_152;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|885900142", "885900142", "LT02_040_B60", "box_Simple_Node_235.Out", "box_MultipleOR_152.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_MultipleOR_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|484756669", "484756669", "LT02_040_B60", "box_Simple_Node_235.Out", "box_MultipleOR_78.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    params = self:OnEnter_box_GroupSizeListener_v5_233();
    l0 = self.box_GroupSizeListener_v5_233;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|306261511", "306261511", "LT02_040_B60", "box_Simple_Node_235.Out", "box_GroupSizeListener_v5_233.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_Delay_v5_231();
    l0 = self.box_Delay_v5_231;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|712026672", "712026672", "LT02_040_B60", "box_Simple_Node_235.Out", "box_Delay_v5_231.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_SpawnAI_220_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v5_230();
    l0 = self.box_SpawnAI_220;
    l1 = self.box_GroupSizeListener_v5_230;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|660060667", "660060667", "LT02_040_B60", "box_SpawnAI_220.Spawned", "box_GroupSizeListener_v5_230.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GetEntityInPrefab_v2_199_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_199_Out();
    params = self:OnEnter_box_RemoveEntity_v2_197();
    l0 = self.box_GetEntityInPrefab_v2_199;
    l1 = self.box_RemoveEntity_v2_197;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|982711130", "982711130", "LT02_040_B60", "box_GetEntityInPrefab_v2_199.Out", "box_RemoveEntity_v2_197.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SetEntity_v2_93_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_93_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_96();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1977497427", "1977497427", "LT02_040_B60", "box_SetEntity_v2_93.Out", "box_Simple_Node_96.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_34_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_40();
    l0 = self.box_Bind_v4_34;
    l1 = self.box_Delay_v5_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1231018559", "1231018559", "LT02_040_B60", "box_Bind_v4_34.Bound", "box_Delay_v5_40.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Compare_Integers_259_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_262();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|132532154", "132532154", "LT02_040_B60", "box_Compare_Integers_259.A_le_B", "box_OutputOrder_v2_262.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TaggingModifier_v3_245_Tagged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_TaggingModifier_v3_244();
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1857877199", "1857877199", "LT02_040_B60", "box_TaggingModifier_v3_245.Tagged", "box_TaggingModifier_v3_244.TagEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- TagEntity
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_215_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_223();
    l0 = self.box_Delay_v5_223;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|376097846", "376097846", "LT02_040_B60", "box_Compare_Integers_215.A_le_B", "box_Delay_v5_223.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OverrideEnvironment_v3_149_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1496188647", "1496188647", "LT02_040_B60", "box_OverrideEnvironment_v3_149.Disabled", "box_MultipleOR_1.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_76_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_88();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|747180242", "747180242", "LT02_040_B60", "box_Simple_Node_76.Out", "box_SetEntity_v2_88.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_13_Downed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_151();
    l0 = self.box_HealthListener_v6_13;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|2139883601", "2139883601", "LT02_040_B60", "box_HealthListener_v6_13.Downed", "box_OutputOrder_v2_151.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_236_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_TaggingModifier_v3_241();
    l0 = self.box_ProximityTrigger_v2_236;
    l1 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1631495837", "1631495837", "LT02_040_B60", "box_ProximityTrigger_v2_236.Enter", "box_TaggingModifier_v3_241.TagEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- TagEntity
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_238_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupIter_56();
    l0 = self.box_GroupIter_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|553185403", "553185403", "LT02_040_B60", "box_OutputOrder_v2_238.Out", "box_GroupIter_56.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_238_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TaggingModifier_v3_237();
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1538777977", "1538777977", "LT02_040_B60", "box_OutputOrder_v2_238.Out", "box_TaggingModifier_v3_237.TagEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- TagEntity
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_128_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_264;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1337305329", "1337305329", "LT02_040_B60", "box_OutputOrder_v2_128.Out", "box_MultipleOR_264.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_128_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_269();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|587123293", "587123293", "LT02_040_B60", "box_OutputOrder_v2_128.Out", "box_Simple_Node_269.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TaggingModifier_v3_239_Tagged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_TaggingModifier_v3_253();
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1875126885", "1875126885", "LT02_040_B60", "box_TaggingModifier_v3_239.Tagged", "box_TaggingModifier_v3_253.TagEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- TagEntity
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_95_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_95_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_93();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|516508765", "516508765", "LT02_040_B60", "box_SetEntity_v2_95.Out", "box_SetEntity_v2_93.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PhoneCallExclusivityModifier_17_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_26();
    l0 = self.box_PhoneCallExclusivityModifier_17;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|593143881", "593143881", "LT02_040_B60", "box_PhoneCallExclusivityModifier_17.Enabled", "box_OutputOrder_v2_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetNameOfEntity_49_Out()
    local params, l0;
    self:OnExit_box_GetNameOfEntity_49_Out();
    l0 = Boxes[GetPathID("Domino/System/Coop/Misc/GetNameOfEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_52();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|937889189", "937889189", "LT02_040_B60", "box_GetNameOfEntity_49.Out", "box_Compare_Strings_52.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_153_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_284();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1724312093", "1724312093", "LT02_040_B60", "box_OutputOrder_v2_153.Out", "box_SoundPointModifier_284.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_153_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_285();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1210906996", "1210906996", "LT02_040_B60", "box_OutputOrder_v2_153.Out", "box_SoundPointModifier_285.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_153_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_282();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1280758073", "1280758073", "LT02_040_B60", "box_OutputOrder_v2_153.Out", "box_SoundPointModifier_282.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_153_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_280();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1582493433", "1582493433", "LT02_040_B60", "box_OutputOrder_v2_153.Out", "box_SoundPointModifier_280.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_153_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_281();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|2071500547", "2071500547", "LT02_040_B60", "box_OutputOrder_v2_153.Out", "box_SoundPointModifier_281.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_153_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_283();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1103484748", "1103484748", "LT02_040_B60", "box_OutputOrder_v2_153.Out", "box_SoundPointModifier_283.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_129_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_129;
    l1 = self.box_MultipleOR_208;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|876146809", "876146809", "LT02_040_B60", "box_Gate_v3_129.Out", "box_MultipleOR_208.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_NarrativeSceneCleanUp_286_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_165();
    l0 = self.box_NarrativeSceneCleanUp_286;
    l1 = self.box_NarrativeFade_165;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|768619245", "768619245", "LT02_040_B60", "box_NarrativeSceneCleanUp_286.Out", "box_NarrativeFade_165.FadeIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeIn
    l1:Exec(0, params);
end;

function export:f_box_GroupSizeListener_v5_222_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_221();
    l0 = self.box_GroupSizeListener_v5_222;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|521907572", "521907572", "LT02_040_B60", "box_GroupSizeListener_v5_222.MemberRemoved", "box_Compare_Integers_221.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetDistance_42_Out()
    local params, l0;
    self:OnExit_box_GetDistance_42_Out();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_43();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1513313096", "1513313096", "LT02_040_B60", "box_GetDistance_42.Out", "box_Print_v2_43.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_109_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1119908930", "1119908930", "LT02_040_B60", "box_Simple_Node_109.Out", "box_MultipleOR_107.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_266_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_256();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1422747835", "1422747835", "LT02_040_B60", "box_OutputOrder_v2_266.Out", "box_Compare_Integers_256.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_266_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_265();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|781106372", "781106372", "LT02_040_B60", "box_OutputOrder_v2_266.Out", "box_Print_v2_265.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_37_Enabled()
    local l0, l1;
    l0 = self.box_EntityStatusListener_37;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|990060976", "990060976", "LT02_040_B60", "box_EntityStatusListener_37.Enabled", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EntityStatusListener_37_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_198();
    l0 = self.box_EntityStatusListener_37;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|333651519", "333651519", "LT02_040_B60", "box_EntityStatusListener_37.Loaded", "box_OutputOrder_v2_198.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_80_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_108();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|125272293", "125272293", "LT02_040_B60", "box_IsEntityLoaded_v3_80.False", "box_Simple_Node_108.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_80_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetDistance_62();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|923760974", "923760974", "LT02_040_B60", "box_IsEntityLoaded_v3_80.True", "box_GetDistance_62.Distance2D", clone:GetLuaBox(), l0:GetLuaBox());
    -- Distance2D
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundMusicTriggerBox_3_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PostWWiseEventSetState_27();
    l0 = self.box_SoundMusicTriggerBox_3;
    l1 = self.box_PostWWiseEventSetState_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1032743086", "1032743086", "LT02_040_B60", "box_SoundMusicTriggerBox_3.Started", "box_PostWWiseEventSetState_27.SetState", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetState
    l1:Exec(0, params);
end;

function export:f_box_GetEntityInPrefab_v2_36_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableBreaker_38();
    l0 = self.box_GetEntityInPrefab_v2_36;
    l1 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|226217320", "226217320", "LT02_040_B60", "box_GetEntityInPrefab_v2_36.Out", "box_StaticBreakableBreaker_38.Destroy", l0:GetLuaBox(), l1:GetLuaBox());
    -- Destroy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_144_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_138();
    l0 = self.box_EntityStatusListener_144;
    l1 = self.box_EntityStatusListener_138;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|108564636", "108564636", "LT02_040_B60", "box_EntityStatusListener_144.Enabled", "box_EntityStatusListener_138.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_144_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_202();
    l0 = self.box_EntityStatusListener_144;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|207257395", "207257395", "LT02_040_B60", "box_EntityStatusListener_144.Loaded", "box_OutputOrder_v2_202.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_4_Acknowledged()
    local params, l0, l1;
    params = self:OnEnter_box_ColorRemapTextureModifier_v3_150();
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_ColorRemapTextureModifier_v3_150;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|588341062", "588341062", "LT02_040_B60", "box_ActivityAcknowledgeGate_4.Acknowledged", "box_ColorRemapTextureModifier_v3_150.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(1, params);
end;

function export:f_box_ActivityAcknowledgeGate_4_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_39();
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1020365251", "1020365251", "LT02_040_B60", "box_ActivityAcknowledgeGate_4.Reloaded", "box_OutputOrder_v2_39.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LookAtTrigger_v2_44_EnterFOV()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_12();
    l0 = self.box_LookAtTrigger_v2_44;
    l1 = self.box_RequestPhoneCall_v2_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1320430488", "1320430488", "LT02_040_B60", "box_LookAtTrigger_v2_44.EnterFOV", "box_RequestPhoneCall_v2_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_GetEntityInPrefab_v2_132_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableBreaker_131();
    l0 = self.box_GetEntityInPrefab_v2_132;
    l1 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|2070304765", "2070304765", "LT02_040_B60", "box_GetEntityInPrefab_v2_132.Out", "box_StaticBreakableBreaker_131.Destroy", l0:GetLuaBox(), l1:GetLuaBox());
    -- Destroy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_213_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_275();
    l0 = self.box_SpawnAI_213;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|464664626", "464664626", "LT02_040_B60", "box_SpawnAI_213.Spawned", "box_OutputOrder_v2_275.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_TaggingModifier_v3_237_Tagged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_TaggingModifier_v3_239();
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|99079040", "99079040", "LT02_040_B60", "box_TaggingModifier_v3_237.Tagged", "box_TaggingModifier_v3_239.TagEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- TagEntity
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_204_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneCleanUp_286();
    l0 = self.box_Delay_v5_204;
    l1 = self.box_NarrativeSceneCleanUp_286;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1007426348", "1007426348", "LT02_040_B60", "box_Delay_v5_204.TimeElapsed", "box_NarrativeSceneCleanUp_286.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GetEntityInPrefab_v2_182_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_182_Out();
    params = self:OnEnter_box_RemoveEntity_v2_181();
    l0 = self.box_GetEntityInPrefab_v2_182;
    l1 = self.box_RemoveEntity_v2_181;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1680530060", "1680530060", "LT02_040_B60", "box_GetEntityInPrefab_v2_182.Out", "box_RemoveEntity_v2_181.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_276_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_274();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1367291274", "1367291274", "LT02_040_B60", "box_UseContextualActionModifier_v3_276.Enabled", "box_UseContextualActionModifier_v3_274.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_214_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_215();
    l0 = self.box_GroupSizeListener_v5_214;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1632139834", "1632139834", "LT02_040_B60", "box_GroupSizeListener_v5_214.MemberRemoved", "box_Compare_Integers_215.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_96_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1927247159", "1927247159", "LT02_040_B60", "box_Simple_Node_96.Out", "box_MultipleOR_98.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_202_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetEntityInPrefab_v2_143();
    l0 = self.box_GetEntityInPrefab_v2_143;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1600342118", "1600342118", "LT02_040_B60", "box_OutputOrder_v2_202.Out", "box_GetEntityInPrefab_v2_143.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_202_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetEntityInPrefab_v2_184();
    l0 = self.box_GetEntityInPrefab_v2_184;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1067906100", "1067906100", "LT02_040_B60", "box_OutputOrder_v2_202.Out", "box_GetEntityInPrefab_v2_184.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_202_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetEntityInPrefab_v2_186();
    l0 = self.box_GetEntityInPrefab_v2_186;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|824790188", "824790188", "LT02_040_B60", "box_OutputOrder_v2_202.Out", "box_GetEntityInPrefab_v2_186.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_41_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_116;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1181199198", "1181199198", "LT02_040_B60", "box_Simple_Node_41.Out", "box_MultipleOR_116.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetEntity_v2_101_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_101_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_94();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1771834903", "1771834903", "LT02_040_B60", "box_SetEntity_v2_101.Out", "box_SetEntity_v2_94.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_159_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_159;
    l1 = self.box_MultipleOR_163;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|398925422", "398925422", "LT02_040_B60", "box_Delay_v5_159.TimeElapsed", "box_MultipleOR_163.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_147_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneSetup_15();
    l0 = self.box_MultipleOR_147;
    l1 = self.box_NarrativeSceneSetup_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|94995102", "94995102", "LT02_040_B60", "box_MultipleOR_147.Out", "box_NarrativeSceneSetup_15.BasicSetup", l0:GetLuaBox(), l1:GetLuaBox());
    -- BasicSetup
    l1:Exec(0, params);
end;

function export:f_box_GetEntityInPrefab_v2_134_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableBreaker_133();
    l0 = self.box_GetEntityInPrefab_v2_134;
    l1 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1453997454", "1453997454", "LT02_040_B60", "box_GetEntityInPrefab_v2_134.Out", "box_StaticBreakableBreaker_133.Destroy", l0:GetLuaBox(), l1:GetLuaBox());
    -- Destroy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_176_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetEntityInPrefab_v2_132();
    l0 = self.box_GetEntityInPrefab_v2_132;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1634079087", "1634079087", "LT02_040_B60", "box_OutputOrder_v2_176.Out", "box_GetEntityInPrefab_v2_132.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_176_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetEntityInPrefab_v2_174();
    l0 = self.box_GetEntityInPrefab_v2_174;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1843188830", "1843188830", "LT02_040_B60", "box_OutputOrder_v2_176.Out", "box_GetEntityInPrefab_v2_174.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_176_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetEntityInPrefab_v2_177();
    l0 = self.box_GetEntityInPrefab_v2_177;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1675822896", "1675822896", "LT02_040_B60", "box_OutputOrder_v2_176.Out", "box_GetEntityInPrefab_v2_177.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_EntityStatusListener_23_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_126();
    l0 = self.box_EntityStatusListener_23;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|2097758135", "2097758135", "LT02_040_B60", "box_EntityStatusListener_23.Enabled", "box_OutputOrder_v2_126.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_23_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_32();
    l0 = self.box_EntityStatusListener_23;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1036181720", "1036181720", "LT02_040_B60", "box_EntityStatusListener_23.Loaded", "box_SetContextualStrategy_32.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_94_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_94_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_115();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|224722259", "224722259", "LT02_040_B60", "box_SetEntity_v2_94.Out", "box_SetEntity_v2_115.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_252_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_128();
    l0 = self.box_OnceOnly_v3_252;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1575715655", "1575715655", "LT02_040_B60", "box_OnceOnly_v3_252.Out", "box_OutputOrder_v2_128.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_86_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|2071203935", "2071203935", "LT02_040_B60", "box_IsEntityLoaded_v3_86.False", "box_MultipleOR_118.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsEntityLoaded_v3_86_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_75();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1861917967", "1861917967", "LT02_040_B60", "box_IsEntityLoaded_v3_86.True", "box_Simple_Node_75.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_107_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_66();
    l0 = self.box_MultipleOR_107;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1583084447", "1583084447", "LT02_040_B60", "box_MultipleOR_107.Out", "box_IntegerArithmetics_v2_66.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_163_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_158();
    l0 = self.box_MultipleOR_163;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|703521868", "703521868", "LT02_040_B60", "box_MultipleOR_163.Out", "box_SetContextualStrategy_158.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetEntityInPrefab_v2_137_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableBreaker_136();
    l0 = self.box_GetEntityInPrefab_v2_137;
    l1 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1074968840", "1074968840", "LT02_040_B60", "box_GetEntityInPrefab_v2_137.Out", "box_StaticBreakableBreaker_136.Destroy", l0:GetLuaBox(), l1:GetLuaBox());
    -- Destroy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_157_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_212();
    l0 = self.box_SpawnAI_157;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1439583652", "1439583652", "LT02_040_B60", "box_SpawnAI_157.Spawned", "box_OutputOrder_v2_212.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_61_Out()
    self:OnExit_box_IntegerArithmetics_v2_61_Out();
end;

function export:f_box_Gate_v3_227_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_226();
    l0 = self.box_Gate_v3_227;
    l1 = self.box_SpawnAI_226;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1996182105", "1996182105", "LT02_040_B60", "box_Gate_v3_227.Out", "box_SpawnAI_226.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Simple_Node_112_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_111();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1849135522", "1849135522", "LT02_040_B60", "box_Simple_Node_112.Out", "box_Simple_Node_111.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_92_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|702108529", "702108529", "LT02_040_B60", "box_Simple_Node_92.Out", "box_MultipleOR_98.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_EntityStatusListener_141_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_37();
    l0 = self.box_EntityStatusListener_141;
    l1 = self.box_EntityStatusListener_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|194294500", "194294500", "LT02_040_B60", "box_EntityStatusListener_141.Enabled", "box_EntityStatusListener_37.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_141_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_200();
    l0 = self.box_EntityStatusListener_141;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1920880809", "1920880809", "LT02_040_B60", "box_EntityStatusListener_141.Loaded", "box_OutputOrder_v2_200.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_146_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_147;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|2091760634", "2091760634", "LT02_040_B60", "box_IsEntityLoaded_v3_146.False", "box_MultipleOR_147.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_146_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_145();
    l0 = self.box_RemoveEntity_v2_145;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1634729308", "1634729308", "LT02_040_B60", "box_IsEntityLoaded_v3_146.True", "box_RemoveEntity_v2_145.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_ExitZoneWarningListener_v3_11_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_268();
    l0 = self.box_ExitZoneWarningListener_v3_11;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|841377329", "841377329", "LT02_040_B60", "box_ExitZoneWarningListener_v3_11.FailingZoneEntered", "box_ActivityRetry_268.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ExitZoneWarningListener_v3_11_WarningZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_LT02_040_B60_Dialog_45();
    l0 = self.box_ExitZoneWarningListener_v3_11;
    l1 = self.box_LT02_040_B60_Dialog_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|8936482", "8936482", "LT02_040_B60", "box_ExitZoneWarningListener_v3_11.WarningZoneEntered", "box_LT02_040_B60_Dialog_45.PlayLine", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayLine
    l1:Exec(0, params);
end;

function export:f_box_Simple_Node_117_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|661496941", "661496941", "LT02_040_B60", "box_Simple_Node_117.Out", "box_MultipleOR_118.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_203_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetEntityInPrefab_v2_134();
    l0 = self.box_GetEntityInPrefab_v2_134;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1775231674", "1775231674", "LT02_040_B60", "box_OutputOrder_v2_203.Out", "box_GetEntityInPrefab_v2_134.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_203_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetEntityInPrefab_v2_180();
    l0 = self.box_GetEntityInPrefab_v2_180;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|230017427", "230017427", "LT02_040_B60", "box_OutputOrder_v2_203.Out", "box_GetEntityInPrefab_v2_180.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_203_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetEntityInPrefab_v2_182();
    l0 = self.box_GetEntityInPrefab_v2_182;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|2039445438", "2039445438", "LT02_040_B60", "box_OutputOrder_v2_203.Out", "box_GetEntityInPrefab_v2_182.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Compare_Floats_59_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|567293908", "567293908", "LT02_040_B60", "box_Compare_Floats_59.A_lt_B", "box_MultipleOR_104.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_130_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_135();
    l0 = self.box_EntityStatusListener_130;
    l1 = self.box_EntityStatusListener_135;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|663054099", "663054099", "LT02_040_B60", "box_EntityStatusListener_130.Enabled", "box_EntityStatusListener_135.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_130_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_176();
    l0 = self.box_EntityStatusListener_130;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|2053899445", "2053899445", "LT02_040_B60", "box_EntityStatusListener_130.Loaded", "box_OutputOrder_v2_176.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetEntityInPrefab_v2_192_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_192_Out();
    params = self:OnEnter_box_RemoveEntity_v2_191();
    l0 = self.box_GetEntityInPrefab_v2_192;
    l1 = self.box_RemoveEntity_v2_191;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|717488688", "717488688", "LT02_040_B60", "box_GetEntityInPrefab_v2_192.Out", "box_RemoveEntity_v2_191.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IsEntityLoaded_v3_102_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_112();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|2013031652", "2013031652", "LT02_040_B60", "box_IsEntityLoaded_v3_102.False", "box_Simple_Node_112.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_102_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetDistance_63();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|789033247", "789033247", "LT02_040_B60", "box_IsEntityLoaded_v3_102.True", "box_GetDistance_63.Distance2D", clone:GetLuaBox(), l0:GetLuaBox());
    -- Distance2D
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_204();
    l0 = self.box_MultipleOR_1;
    l1 = self.box_Delay_v5_204;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1070860268", "1070860268", "LT02_040_B60", "box_MultipleOR_1.Out", "box_Delay_v5_204.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_TaggingModifier_v3_241_Tagged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_TaggingModifier_v3_240();
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|592721535", "592721535", "LT02_040_B60", "box_TaggingModifier_v3_241.Tagged", "box_TaggingModifier_v3_240.TagEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- TagEntity
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_223_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_216();
    l0 = self.box_Delay_v5_223;
    l1 = self.box_SpawnAI_216;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1439371383", "1439371383", "LT02_040_B60", "box_Delay_v5_223.TimeElapsed", "box_SpawnAI_216.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_209_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostWWiseEventSetState_31();
    l0 = self.box_PostWWiseEventSetState_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|135896778", "135896778", "LT02_040_B60", "box_OutputOrder_v2_209.Out", "box_PostWWiseEventSetState_31.SetState", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetState
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_209_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_254();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|972658890", "972658890", "LT02_040_B60", "box_OutputOrder_v2_209.Out", "box_Simple_Node_254.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_234_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_227();
    l0 = self.box_MultipleOR_234;
    l1 = self.box_Gate_v3_227;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|554966696", "554966696", "LT02_040_B60", "box_MultipleOR_234.Out", "box_Gate_v3_227.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Compare_Integers_70_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_113();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1021817024", "1021817024", "LT02_040_B60", "box_Compare_Integers_70.A_eq_B", "box_IsEntityLoaded_v3_113.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_70_A_gt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_41();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|41151764", "41151764", "LT02_040_B60", "box_Compare_Integers_70.A_gt_B", "box_Simple_Node_41.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_115_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_115_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_92();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|308755202", "308755202", "LT02_040_B60", "box_SetEntity_v2_115.Out", "box_Simple_Node_92.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_261_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_259();
    l0 = self.box_GroupSizeListener_v5_261;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|8381600", "8381600", "LT02_040_B60", "box_GroupSizeListener_v5_261.MemberRemoved", "box_Compare_Integers_259.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_216_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v5_217();
    l0 = self.box_SpawnAI_216;
    l1 = self.box_GroupSizeListener_v5_217;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1377403711", "1377403711", "LT02_040_B60", "box_SpawnAI_216.Spawned", "box_GroupSizeListener_v5_217.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SetEntity_v2_167_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_167_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_95();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|588068945", "588068945", "LT02_040_B60", "box_SetEntity_v2_167.Out", "box_SetEntity_v2_95.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_225_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_220();
    l0 = self.box_Delay_v5_225;
    l1 = self.box_SpawnAI_220;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|747822209", "747822209", "LT02_040_B60", "box_Delay_v5_225.TimeElapsed", "box_SpawnAI_220.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_RemoveEntity_v2_145_Out()
    local l0, l1;
    l0 = self.box_RemoveEntity_v2_145;
    l1 = self.box_MultipleOR_147;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|493356358", "493356358", "LT02_040_B60", "box_RemoveEntity_v2_145.Out", "box_MultipleOR_147.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_47_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_GetNameOfEntity_49();
    l0 = self.box_HealthListener_v6_47;
    l1 = Boxes[GetPathID("Domino/System/Coop/Misc/GetNameOfEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|727680684", "727680684", "LT02_040_B60", "box_HealthListener_v6_47.Killed", "box_GetNameOfEntity_49.Short", l0:GetLuaBox(), l1:GetLuaBox());
    -- Short
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetEntityInPrefab_v2_177_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_177_Out();
    params = self:OnEnter_box_RemoveEntity_v2_178();
    l0 = self.box_GetEntityInPrefab_v2_177;
    l1 = self.box_RemoveEntity_v2_178;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1682353006", "1682353006", "LT02_040_B60", "box_GetEntityInPrefab_v2_177.Out", "box_RemoveEntity_v2_178.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_60_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_60_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_130();
    l0 = self.box_EntityStatusListener_130;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1352997736", "1352997736", "LT02_040_B60", "box_SetBoolean_v2_60.Out", "box_EntityStatusListener_130.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Print_v2_69_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_71();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|11670551", "11670551", "LT02_040_B60", "box_Print_v2_69.PrintedToScreen", "box_Print_v2_71.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TimeOfDayListener_170_HourChanged()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_266();
    l0 = self.box_TimeOfDayListener_170;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|567506640", "567506640", "LT02_040_B60", "box_TimeOfDayListener_170.HourChanged", "box_OutputOrder_v2_266.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_66_Out()
    self:OnExit_box_IntegerArithmetics_v2_66_Out();
end;

function export:f_box_OutputOrder_v2_212_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_214();
    l0 = self.box_GroupSizeListener_v5_214;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|302584372", "302584372", "LT02_040_B60", "box_OutputOrder_v2_212.Out", "box_GroupSizeListener_v5_214.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_212_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_236();
    l0 = self.box_ProximityTrigger_v2_236;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1846664139", "1846664139", "LT02_040_B60", "box_OutputOrder_v2_212.Out", "box_ProximityTrigger_v2_236.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_212_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_243();
    l0 = self.box_ProximityTrigger_v2_243;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1259422741", "1259422741", "LT02_040_B60", "box_OutputOrder_v2_212.Out", "box_ProximityTrigger_v2_243.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_212_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_261();
    l0 = self.box_GroupSizeListener_v5_261;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|2007396266", "2007396266", "LT02_040_B60", "box_OutputOrder_v2_212.Out", "box_GroupSizeListener_v5_261.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_75_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_85();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1103576135", "1103576135", "LT02_040_B60", "box_Simple_Node_75.Out", "box_SetEntity_v2_85.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetEntityInPrefab_v2_180_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_180_Out();
    params = self:OnEnter_box_RemoveEntity_v2_179();
    l0 = self.box_GetEntityInPrefab_v2_180;
    l1 = self.box_RemoveEntity_v2_179;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|2060265683", "2060265683", "LT02_040_B60", "box_GetEntityInPrefab_v2_180.Out", "box_RemoveEntity_v2_179.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SetEntity_v2_84_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_84_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_100();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1077992521", "1077992521", "LT02_040_B60", "box_SetEntity_v2_84.Out", "box_SetEntity_v2_100.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TaggingModifier_v3_210_Tagged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_127();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|550896217", "550896217", "LT02_040_B60", "box_TaggingModifier_v3_210.Tagged", "box_Simple_Node_127.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_262_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_261();
    l0 = self.box_GroupSizeListener_v5_261;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|2127012960", "2127012960", "LT02_040_B60", "box_OutputOrder_v2_262.Out", "box_GroupSizeListener_v5_261.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_262_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_260();
    l0 = self.box_SpawnAI_260;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|459300575", "459300575", "LT02_040_B60", "box_OutputOrder_v2_262.Out", "box_SpawnAI_260.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_247_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_250();
    l0 = self.box_ProximityRadiusListener_v3_247;
    l1 = self.box_ProximityRadiusListener_v3_250;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|630375239", "630375239", "LT02_040_B60", "box_ProximityRadiusListener_v3_247.Enabled", "box_ProximityRadiusListener_v3_250.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_247_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_247;
    l1 = self.box_MultipleOR_251;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|131656347", "131656347", "LT02_040_B60", "box_ProximityRadiusListener_v3_247.SomeoneNear", "box_MultipleOR_251.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_154_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_156();
    l0 = self.box_SpawnAI_154;
    l1 = self.box_SpawnAI_156;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|606539088", "606539088", "LT02_040_B60", "box_SpawnAI_154.Out", "box_SpawnAI_156.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_154_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_162();
    l0 = self.box_SpawnAI_154;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|26217464", "26217464", "LT02_040_B60", "box_SpawnAI_154.Spawned", "box_OutputOrder_v2_162.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_91_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1043226433", "1043226433", "LT02_040_B60", "box_Simple_Node_91.Out", "box_MultipleOR_98.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Integers_256_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_257();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1059442119", "1059442119", "LT02_040_B60", "box_Compare_Integers_256.A_ge_B", "box_OutputOrder_v2_257.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_40_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_GetDistance_42();
    l0 = self.box_Delay_v5_40;
    l1 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|353801541", "353801541", "LT02_040_B60", "box_Delay_v5_40.TimeElapsed", "box_GetDistance_42.Distance2D", l0:GetLuaBox(), l1:GetLuaBox());
    -- Distance2D
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_57_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_79();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|853118907", "853118907", "LT02_040_B60", "box_OutputOrder_v2_57.Out", "box_IsEntityLoaded_v3_79.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_57_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_80();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1570617857", "1570617857", "LT02_040_B60", "box_OutputOrder_v2_57.Out", "box_IsEntityLoaded_v3_80.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_57_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_102();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|457875902", "457875902", "LT02_040_B60", "box_OutputOrder_v2_57.Out", "box_IsEntityLoaded_v3_102.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_155_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_50();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|386463701", "386463701", "LT02_040_B60", "box_Simple_Node_155.Out", "box_OutputOrder_v2_50.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_207_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_13();
    l0 = self.box_HealthListener_v6_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1649173003", "1649173003", "LT02_040_B60", "box_OutputOrder_v2_207.Out", "box_HealthListener_v6_13.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_207_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_205();
    l0 = self.box_HealthListener_v6_205;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1149455226", "1149455226", "LT02_040_B60", "box_OutputOrder_v2_207.Out", "box_HealthListener_v6_205.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_207_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_247();
    l0 = self.box_ProximityRadiusListener_v3_247;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1656584907", "1656584907", "LT02_040_B60", "box_OutputOrder_v2_207.Out", "box_ProximityRadiusListener_v3_247.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_110_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_67();
    l0 = self.box_MultipleOR_110;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|113868090", "113868090", "LT02_040_B60", "box_MultipleOR_110.Out", "box_IntegerArithmetics_v2_67.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_198_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetEntityInPrefab_v2_36();
    l0 = self.box_GetEntityInPrefab_v2_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1418896155", "1418896155", "LT02_040_B60", "box_OutputOrder_v2_198.Out", "box_GetEntityInPrefab_v2_36.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_198_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetEntityInPrefab_v2_196();
    l0 = self.box_GetEntityInPrefab_v2_196;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|263812544", "263812544", "LT02_040_B60", "box_OutputOrder_v2_198.Out", "box_GetEntityInPrefab_v2_196.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_198_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetEntityInPrefab_v2_199();
    l0 = self.box_GetEntityInPrefab_v2_199;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|179575659", "179575659", "LT02_040_B60", "box_OutputOrder_v2_198.Out", "box_GetEntityInPrefab_v2_199.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_IsEntityLoaded_v3_119_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1883130392", "1883130392", "LT02_040_B60", "box_IsEntityLoaded_v3_119.False", "box_MultipleOR_121.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsEntityLoaded_v3_119_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_76();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|653017335", "653017335", "LT02_040_B60", "box_IsEntityLoaded_v3_119.True", "box_Simple_Node_76.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_120_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1632583202", "1632583202", "LT02_040_B60", "box_Simple_Node_120.Out", "box_MultipleOR_121.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_162_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_159();
    l0 = self.box_Delay_v5_159;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|58827901", "58827901", "LT02_040_B60", "box_OutputOrder_v2_162.Out", "box_Delay_v5_159.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_162_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_163;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1327303119", "1327303119", "LT02_040_B60", "box_OutputOrder_v2_162.Out", "box_MultipleOR_163.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_HealthListener_v6_205_Killed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_205;
    l1 = self.box_MultipleOR_208;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|910857418", "910857418", "LT02_040_B60", "box_HealthListener_v6_205.Killed", "box_MultipleOR_208.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_26_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_9();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1799882644", "1799882644", "LT02_040_B60", "box_OutputOrder_v2_26.Out", "box_GetPlayerGroup_v2_9.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_26_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_11();
    l0 = self.box_ExitZoneWarningListener_v3_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|792544932", "792544932", "LT02_040_B60", "box_OutputOrder_v2_26.Out", "box_ExitZoneWarningListener_v3_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_26_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_267();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_267;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1906543195", "1906543195", "LT02_040_B60", "box_OutputOrder_v2_26.Out", "box_CHEAT_SetEnvironmentTimeScale_267.SetTimeScale", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeScale
    l0:Exec(0, params);
end;

function export:f_box_CharacterLoadedIdListener_18_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_18_LoadedIdReceived();
    params = self:OnEnter_box_TaggingModifier_v3_210();
    l0 = self.box_CharacterLoadedIdListener_18;
    l1 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|2112720533", "2112720533", "LT02_040_B60", "box_CharacterLoadedIdListener_18.LoadedIdReceived", "box_TaggingModifier_v3_210.TagEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- TagEntity
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_10_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_238();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|315092342", "315092342", "LT02_040_B60", "box_AddActivityObjective_v2_10.Out", "box_OutputOrder_v2_238.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TaggingModifier_v3_240_Tagged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_TaggingModifier_v3_242();
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|70154764", "70154764", "LT02_040_B60", "box_TaggingModifier_v3_240.Tagged", "box_TaggingModifier_v3_242.TagEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- TagEntity
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_251_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_251;
    l1 = self.box_OnceOnly_v3_252;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1199904311", "1199904311", "LT02_040_B60", "box_MultipleOR_251.Out", "box_OnceOnly_v3_252.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_201_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetEntityInPrefab_v2_137();
    l0 = self.box_GetEntityInPrefab_v2_137;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|146711652", "146711652", "LT02_040_B60", "box_OutputOrder_v2_201.Out", "box_GetEntityInPrefab_v2_137.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_201_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetEntityInPrefab_v2_188();
    l0 = self.box_GetEntityInPrefab_v2_188;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|513999086", "513999086", "LT02_040_B60", "box_OutputOrder_v2_201.Out", "box_GetEntityInPrefab_v2_188.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_201_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetEntityInPrefab_v2_190();
    l0 = self.box_GetEntityInPrefab_v2_190;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|202380863", "202380863", "LT02_040_B60", "box_OutputOrder_v2_201.Out", "box_GetEntityInPrefab_v2_190.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_GetEntityInPrefab_v2_196_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_196_Out();
    params = self:OnEnter_box_RemoveEntity_v2_195();
    l0 = self.box_GetEntityInPrefab_v2_196;
    l1 = self.box_RemoveEntity_v2_195;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|388398274", "388398274", "LT02_040_B60", "box_GetEntityInPrefab_v2_196.Out", "box_RemoveEntity_v2_195.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GetLocalPlayer_v2_29_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_29_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityMiscInfoModifier_v2_105();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1172970681", "1172970681", "LT02_040_B60", "box_GetLocalPlayer_v2_29.Out", "box_ActivityMiscInfoModifier_v2_105.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_24_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_23();
    l0 = self.box_EntityStatusListener_24;
    l1 = self.box_EntityStatusListener_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1836131633", "1836131633", "LT02_040_B60", "box_EntityStatusListener_24.Enabled", "box_EntityStatusListener_23.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_24_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_161();
    l0 = self.box_EntityStatusListener_24;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|458637729", "458637729", "LT02_040_B60", "box_EntityStatusListener_24.Loaded", "box_GroupAddToGroup_v2_161.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_270_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_272();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1574175851", "1574175851", "LT02_040_B60", "box_Compare_Integers_270.A_le_B", "box_OutputOrder_v2_272.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetTimeOfDay_30_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|34743485", "34743485", "LT02_040_B60", "box_SetTimeOfDay_30.Out", "box_ActivityAcknowledgeGate_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_GetDistance_58_Out()
    local params, l0;
    self:OnExit_box_GetDistance_58_Out();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Floats_59();
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|453698796", "453698796", "LT02_040_B60", "box_GetDistance_58.Out", "box_Compare_Floats_59.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NarrativeFade_14_FadedOut()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_173();
    l0 = self.box_NarrativeFade_14;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1119108741", "1119108741", "LT02_040_B60", "box_NarrativeFade_14.FadedOut", "box_HealthModifier_v2_173.Damage", l0:GetLuaBox(), l1:GetLuaBox());
    -- Damage
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_135_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_144();
    l0 = self.box_EntityStatusListener_135;
    l1 = self.box_EntityStatusListener_144;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|549599171", "549599171", "LT02_040_B60", "box_EntityStatusListener_135.Enabled", "box_EntityStatusListener_144.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_135_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_203();
    l0 = self.box_EntityStatusListener_135;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|767884381", "767884381", "LT02_040_B60", "box_EntityStatusListener_135.Loaded", "box_OutputOrder_v2_203.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_104_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_61();
    l0 = self.box_MultipleOR_104;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|242657691", "242657691", "LT02_040_B60", "box_MultipleOR_104.Out", "box_IntegerArithmetics_v2_61.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_125_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_124();
    l0 = self.box_Gate_v3_125;
    l1 = self.box_Delay_v5_124;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1445311678", "1445311678", "LT02_040_B60", "box_Gate_v3_125.Out", "box_Delay_v5_124.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_GroupSizeListener_v5_217_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_218();
    l0 = self.box_GroupSizeListener_v5_217;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|964176055", "964176055", "LT02_040_B60", "box_GroupSizeListener_v5_217.MemberRemoved", "box_Compare_Integers_218.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NarrativeSceneSetup_15_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_14();
    l0 = self.box_NarrativeSceneSetup_15;
    l1 = self.box_NarrativeFade_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|155856428", "155856428", "LT02_040_B60", "box_NarrativeSceneSetup_15.Out", "box_NarrativeFade_14.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_Compare_Integers_228_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_229();
    l0 = self.box_Delay_v5_229;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1174183799", "1174183799", "LT02_040_B60", "box_Compare_Integers_228.A_le_B", "box_Delay_v5_229.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SetEntity_v2_100_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_100_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_89();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1814380501", "1814380501", "LT02_040_B60", "box_SetEntity_v2_100.Out", "box_SetEntity_v2_89.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_224_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_219();
    l0 = self.box_Delay_v5_224;
    l1 = self.box_SpawnAI_219;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|974109188", "974109188", "LT02_040_B60", "box_Delay_v5_224.TimeElapsed", "box_SpawnAI_219.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Compare_Floats_64_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|2017482352", "2017482352", "LT02_040_B60", "box_Compare_Floats_64.A_lt_B", "box_MultipleOR_107.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_272_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_271();
    l0 = self.box_GroupSizeListener_v5_271;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1432406543", "1432406543", "LT02_040_B60", "box_OutputOrder_v2_272.Out", "box_GroupSizeListener_v5_271.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_272_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_251;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|789196500", "789196500", "LT02_040_B60", "box_OutputOrder_v2_272.Out", "box_MultipleOR_251.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_EntityStatusListener_33_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_24();
    l0 = self.box_EntityStatusListener_33;
    l1 = self.box_EntityStatusListener_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|699258958", "699258958", "LT02_040_B60", "box_EntityStatusListener_33.Enabled", "box_EntityStatusListener_24.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_33_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_34();
    l0 = self.box_EntityStatusListener_33;
    l1 = self.box_Bind_v4_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|274457710", "274457710", "LT02_040_B60", "box_EntityStatusListener_33.Loaded", "box_Bind_v4_34.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_Simple_Node_106_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1716281518", "1716281518", "LT02_040_B60", "box_Simple_Node_106.Out", "box_MultipleOR_104.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_NarrativeFade_165_FadedIn()
    local l0, l1;
    l0 = self.box_NarrativeFade_165;
    l1 = self.box_ActivityInitialized_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|218079677", "218079677", "LT02_040_B60", "box_NarrativeFade_165.FadedIn", "box_ActivityInitialized_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Delay_v5_124_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_114();
    l0 = self.box_Delay_v5_124;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|422378882", "422378882", "LT02_040_B60", "box_Delay_v5_124.TimeElapsed", "box_HealthModifier_v2_114.Heal", l0:GetLuaBox(), l1:GetLuaBox());
    -- Heal
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_138_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_141();
    l0 = self.box_EntityStatusListener_138;
    l1 = self.box_EntityStatusListener_141;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1091553291", "1091553291", "LT02_040_B60", "box_EntityStatusListener_138.Enabled", "box_EntityStatusListener_141.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_138_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_201();
    l0 = self.box_EntityStatusListener_138;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|176792523", "176792523", "LT02_040_B60", "box_EntityStatusListener_138.Loaded", "box_OutputOrder_v2_201.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_226_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v5_233();
    l0 = self.box_SpawnAI_226;
    l1 = self.box_GroupSizeListener_v5_233;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|626187982", "626187982", "LT02_040_B60", "box_SpawnAI_226.Spawned", "box_GroupSizeListener_v5_233.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Bind_v4_273_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_LookAtTrigger_v2_44();
    l0 = self.box_Bind_v4_273;
    l1 = self.box_LookAtTrigger_v2_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1692738952", "1692738952", "LT02_040_B60", "box_Bind_v4_273.Bound", "box_LookAtTrigger_v2_44.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_39_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_60();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|2040925077", "2040925077", "LT02_040_B60", "box_OutputOrder_v2_39.Out", "box_SetBoolean_v2_60.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_39_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_123();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|805520755", "805520755", "LT02_040_B60", "box_OutputOrder_v2_39.Out", "box_Simple_Node_123.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityMiscInfoModifier_v2_105_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GunsForHireSystemModifier_148();
    l0 = self.box_GunsForHireSystemModifier_148;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1769400282", "1769400282", "LT02_040_B60", "box_ActivityMiscInfoModifier_v2_105.Out", "box_GunsForHireSystemModifier_148.DisableGFHSystem", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableGFHSystem
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_275_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_235();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|349046254", "349046254", "LT02_040_B60", "box_OutputOrder_v2_275.Out", "box_Simple_Node_235.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_275_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_276();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1994823751", "1994823751", "LT02_040_B60", "box_OutputOrder_v2_275.Out", "box_UseContextualActionModifier_v3_276.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_248_Damaged()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_249();
    l0 = self.box_HealthListener_v6_248;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|2069727652", "2069727652", "LT02_040_B60", "box_HealthListener_v6_248.Damaged", "box_HealthModifier_v2_249.Damage", l0:GetLuaBox(), l1:GetLuaBox());
    -- Damage
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetEntityInPrefab_v2_190_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_190_Out();
    params = self:OnEnter_box_RemoveEntity_v2_189();
    l0 = self.box_GetEntityInPrefab_v2_190;
    l1 = self.box_RemoveEntity_v2_189;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1383769127", "1383769127", "LT02_040_B60", "box_GetEntityInPrefab_v2_190.Out", "box_RemoveEntity_v2_189.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GetEntityInPrefab_v2_140_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableBreaker_139();
    l0 = self.box_GetEntityInPrefab_v2_140;
    l1 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1875700004", "1875700004", "LT02_040_B60", "box_GetEntityInPrefab_v2_140.Out", "box_StaticBreakableBreaker_139.Destroy", l0:GetLuaBox(), l1:GetLuaBox());
    -- Destroy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_16_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_6();
    l0 = self.box_Delay_v5_16;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1144709650", "1144709650", "LT02_040_B60", "box_Delay_v5_16.TimeElapsed", "box_ActivityEnd_6.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetEntityInPrefab_v2_143_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableBreaker_142();
    l0 = self.box_GetEntityInPrefab_v2_143;
    l1 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1857920327", "1857920327", "LT02_040_B60", "box_GetEntityInPrefab_v2_143.Out", "box_StaticBreakableBreaker_142.Destroy", l0:GetLuaBox(), l1:GetLuaBox());
    -- Destroy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_74_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_86();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|2038133039", "2038133039", "LT02_040_B60", "box_Compare_Integers_74.A_eq_B", "box_IsEntityLoaded_v3_86.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_74_A_gt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_117();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1888956183", "1888956183", "LT02_040_B60", "box_Compare_Integers_74.A_gt_B", "box_Simple_Node_117.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_206_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_209();
    l0 = self.box_OnceOnly_v3_206;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1980288769", "1980288769", "LT02_040_B60", "box_OnceOnly_v3_206.Out", "box_OutputOrder_v2_209.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GunsForHireSystemModifier_148_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_28();
    l0 = self.box_GunsForHireSystemModifier_148;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|446383069", "446383069", "LT02_040_B60", "box_GunsForHireSystemModifier_148.Disabled", "box_OutputOrder_v2_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_99_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_99_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_167();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1369920818", "1369920818", "LT02_040_B60", "box_SetEntity_v2_99.Out", "box_SetEntity_v2_167.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_258_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_16();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_258;
    l1 = self.box_Delay_v5_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1471714112", "1471714112", "LT02_040_B60", "box_CHEAT_SetEnvironmentTimeScale_258.Out", "box_Delay_v5_16.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_GroupIter_56_EndIter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_72();
    l0 = self.box_GroupIter_56;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|394716649", "394716649", "LT02_040_B60", "box_GroupIter_56.EndIter", "box_OutputOrder_v2_72.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupIter_56_PawnIter()
    local params, l0, l1;
    self:OnExit_box_GroupIter_56_PawnIter();
    params = self:OnEnter_box_OutputOrder_v2_57();
    l0 = self.box_GroupIter_56;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|577626305", "577626305", "LT02_040_B60", "box_GroupIter_56.PawnIter", "box_OutputOrder_v2_57.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_67_Out()
    self:OnExit_box_IntegerArithmetics_v2_67_Out();
end;

function export:f_box_GetDistance_63_Out()
    local params, l0;
    self:OnExit_box_GetDistance_63_Out();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Floats_65();
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1884539026", "1884539026", "LT02_040_B60", "box_GetDistance_63.Out", "box_Compare_Floats_65.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_121_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Assert_122();
    l0 = self.box_MultipleOR_121;
    l1 = Boxes[GetPathID("Domino/System/Assert.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1550380268", "1550380268", "LT02_040_B60", "box_MultipleOR_121.Out", "box_Assert_122.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_263_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_263;
    l1 = self.box_MultipleOR_264;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1748096428", "1748096428", "LT02_040_B60", "box_Delay_v5_263.TimeElapsed", "box_MultipleOR_264.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_151_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_125();
    l0 = self.box_Gate_v3_125;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|546334368", "546334368", "LT02_040_B60", "box_OutputOrder_v2_151.Out", "box_Gate_v3_125.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_151_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_129();
    l0 = self.box_Gate_v3_129;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1957046466", "1957046466", "LT02_040_B60", "box_OutputOrder_v2_151.Out", "box_Gate_v3_129.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_98_Out()
    local params, l0, l1;
    params = self:OnEnter_box_CharacterLoadedIdListener_18();
    l0 = self.box_MultipleOR_98;
    l1 = self.box_CharacterLoadedIdListener_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|756946764", "756946764", "LT02_040_B60", "box_MultipleOR_98.Out", "box_CharacterLoadedIdListener_18.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ColorRemapTextureModifier_v3_150_Removed()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideEnvironment_v3_149();
    l0 = self.box_ColorRemapTextureModifier_v3_150;
    l1 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|842577057", "842577057", "LT02_040_B60", "box_ColorRemapTextureModifier_v3_150.Removed", "box_OverrideEnvironment_v3_149.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_54_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Entity_55();
    l0 = self.box_HealthListener_v6_54;
    l1 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1159686441", "1159686441", "LT02_040_B60", "box_HealthListener_v6_54.Killed", "box_Compare_Entity_55.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_108_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_109();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|396709428", "396709428", "LT02_040_B60", "box_Simple_Node_108.Out", "box_Simple_Node_109.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PostWWiseEventSetState_31_Set()
    local params, l0, l1;
    params = self:OnEnter_box_TimedSlowMotion_v2_246();
    l0 = self.box_PostWWiseEventSetState_31;
    l1 = self.box_TimedSlowMotion_v2_246;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1702112388", "1702112388", "LT02_040_B60", "box_PostWWiseEventSetState_31.Set", "box_TimedSlowMotion_v2_246.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Compare_Floats_65_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1417660543", "1417660543", "LT02_040_B60", "box_Compare_Floats_65.A_lt_B", "box_MultipleOR_110.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_51_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_154();
    l0 = self.box_SpawnAI_154;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1685151894", "1685151894", "LT02_040_B60", "box_Simple_Node_51.Out", "box_SpawnAI_154.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_SetEntity_v2_90_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_90_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_91();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1163365648", "1163365648", "LT02_040_B60", "box_SetEntity_v2_90.Out", "box_Simple_Node_91.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_87_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_87_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_101();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1979064739", "1979064739", "LT02_040_B60", "box_SetEntity_v2_87.Out", "box_SetEntity_v2_101.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_267_Out()
    local params, l0, l1;
    params = self:OnEnter_box_TimeOfDayListener_170();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_267;
    l1 = self.box_TimeOfDayListener_170;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|627970398", "627970398", "LT02_040_B60", "box_CHEAT_SetEnvironmentTimeScale_267.Out", "box_TimeOfDayListener_170.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_250_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v5_271();
    l0 = self.box_ProximityRadiusListener_v3_250;
    l1 = self.box_GroupSizeListener_v5_271;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1083019750", "1083019750", "LT02_040_B60", "box_ProximityRadiusListener_v3_250.Enabled", "box_GroupSizeListener_v5_271.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_250_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_250;
    l1 = self.box_MultipleOR_251;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|2134227927", "2134227927", "LT02_040_B60", "box_ProximityRadiusListener_v3_250.SomeoneNear", "box_MultipleOR_251.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_118_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_77();
    l0 = self.box_MultipleOR_118;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|139829926", "139829926", "LT02_040_B60", "box_MultipleOR_118.Out", "box_Compare_Integers_77.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_231_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_231;
    l1 = self.box_MultipleOR_234;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|676920725", "676920725", "LT02_040_B60", "box_Delay_v5_231.TimeElapsed", "box_MultipleOR_234.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_73_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_82();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1646549744", "1646549744", "LT02_040_B60", "box_Simple_Node_73.Out", "box_SetEntity_v2_82.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetEntityInPrefab_v2_194_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_194_Out();
    params = self:OnEnter_box_RemoveEntity_v2_193();
    l0 = self.box_GetEntityInPrefab_v2_194;
    l1 = self.box_RemoveEntity_v2_193;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1311801544", "1311801544", "LT02_040_B60", "box_GetEntityInPrefab_v2_194.Out", "box_RemoveEntity_v2_193.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Simple_Node_103_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_106();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|415259131", "415259131", "LT02_040_B60", "box_Simple_Node_103.Out", "box_Simple_Node_106.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_277_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_278();
    l0 = self.box_RemoveEntity_v2_277;
    l1 = self.box_RemoveEntity_v2_278;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|962543833", "962543833", "LT02_040_B60", "box_RemoveEntity_v2_277.Out", "box_RemoveEntity_v2_278.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Print_v2_68_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_69();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|187094633", "187094633", "LT02_040_B60", "box_Print_v2_68.PrintedToScreen", "box_Print_v2_69.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_219_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v5_222();
    l0 = self.box_SpawnAI_219;
    l1 = self.box_GroupSizeListener_v5_222;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1160564687", "1160564687", "LT02_040_B60", "box_SpawnAI_219.Spawned", "box_GroupSizeListener_v5_222.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_257_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TimeOfDayListener_170();
    l0 = self.box_TimeOfDayListener_170;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|735642970", "735642970", "LT02_040_B60", "box_OutputOrder_v2_257.Out", "box_TimeOfDayListener_170.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_257_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_255();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_255;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|512598980", "512598980", "LT02_040_B60", "box_OutputOrder_v2_257.Out", "box_CHEAT_SetEnvironmentTimeScale_255.SetTimeScale", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeScale
    l0:Exec(0, params);
end;

function export:f_box_GetEntityInPrefab_v2_188_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_188_Out();
    params = self:OnEnter_box_RemoveEntity_v2_187();
    l0 = self.box_GetEntityInPrefab_v2_188;
    l1 = self.box_RemoveEntity_v2_187;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|447242244", "447242244", "LT02_040_B60", "box_GetEntityInPrefab_v2_188.Out", "box_RemoveEntity_v2_187.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GetEntityInPrefab_v2_184_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_184_Out();
    params = self:OnEnter_box_RemoveEntity_v2_183();
    l0 = self.box_GetEntityInPrefab_v2_184;
    l1 = self.box_RemoveEntity_v2_183;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|680184780", "680184780", "LT02_040_B60", "box_GetEntityInPrefab_v2_184.Out", "box_RemoveEntity_v2_183.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Compare_Integers_221_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_225();
    l0 = self.box_Delay_v5_225;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|686960883", "686960883", "LT02_040_B60", "box_Compare_Integers_221.A_le_B", "box_Delay_v5_225.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Compare_Integers_218_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_224();
    l0 = self.box_Delay_v5_224;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|262207542", "262207542", "LT02_040_B60", "box_Compare_Integers_218.A_le_B", "box_Delay_v5_224.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_116_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_74();
    l0 = self.box_MultipleOR_116;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|2132643279", "2132643279", "LT02_040_B60", "box_MultipleOR_116.Out", "box_Compare_Integers_74.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_82_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_82_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_83();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|224043979", "224043979", "LT02_040_B60", "box_SetEntity_v2_82.Out", "box_SetEntity_v2_83.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_2_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_5();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1544407908", "1544407908", "LT02_040_B60", "box_OutputOrder_v2_2.Out", "box_Print_v2_5.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_2_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetTimeOfDay_30();
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1343746945", "1343746945", "LT02_040_B60", "box_OutputOrder_v2_2.Out", "box_SetTimeOfDay_30.SetTimeOfDay", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeOfDay
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_113_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_116;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|897829141", "897829141", "LT02_040_B60", "box_IsEntityLoaded_v3_113.False", "box_MultipleOR_116.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsEntityLoaded_v3_113_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_73();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|491055302", "491055302", "LT02_040_B60", "box_IsEntityLoaded_v3_113.True", "box_Simple_Node_73.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_HealthModifier_v2_249_Damaged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_263();
    l0 = self.box_Delay_v5_263;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|182957607", "182957607", "LT02_040_B60", "box_HealthModifier_v2_249.Damaged", "box_Delay_v5_263.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_200_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetEntityInPrefab_v2_140();
    l0 = self.box_GetEntityInPrefab_v2_140;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|49822359", "49822359", "LT02_040_B60", "box_OutputOrder_v2_200.Out", "box_GetEntityInPrefab_v2_140.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_200_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetEntityInPrefab_v2_192();
    l0 = self.box_GetEntityInPrefab_v2_192;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1324624232", "1324624232", "LT02_040_B60", "box_OutputOrder_v2_200.Out", "box_GetEntityInPrefab_v2_192.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_200_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetEntityInPrefab_v2_194();
    l0 = self.box_GetEntityInPrefab_v2_194;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1992727202", "1992727202", "LT02_040_B60", "box_OutputOrder_v2_200.Out", "box_GetEntityInPrefab_v2_194.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_229_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_229;
    l1 = self.box_MultipleOR_234;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1094762862", "1094762862", "LT02_040_B60", "box_Delay_v5_229.TimeElapsed", "box_MultipleOR_234.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UseContextualActionModifier_v3_274_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_277();
    l0 = self.box_RemoveEntity_v2_277;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|180989410", "180989410", "LT02_040_B60", "box_UseContextualActionModifier_v3_274.Disabled", "box_RemoveEntity_v2_277.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Compare_Integers_232_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_231();
    l0 = self.box_Delay_v5_231;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|81186434", "81186434", "LT02_040_B60", "box_Compare_Integers_232.A_le_B", "box_Delay_v5_231.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_RemoveEntity_v2_278_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_279();
    l0 = self.box_RemoveEntity_v2_278;
    l1 = self.box_RemoveEntity_v2_279;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1786842154", "1786842154", "LT02_040_B60", "box_RemoveEntity_v2_278.Out", "box_RemoveEntity_v2_279.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GroupSizeListener_v5_233_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_232();
    l0 = self.box_GroupSizeListener_v5_233;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|195265058", "195265058", "LT02_040_B60", "box_GroupSizeListener_v5_233.MemberRemoved", "box_Compare_Integers_232.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetEntityInPrefab_v2_186_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_186_Out();
    params = self:OnEnter_box_RemoveEntity_v2_185();
    l0 = self.box_GetEntityInPrefab_v2_186;
    l1 = self.box_RemoveEntity_v2_185;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1490133122", "1490133122", "LT02_040_B60", "box_GetEntityInPrefab_v2_186.Out", "box_RemoveEntity_v2_185.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SetEntity_v2_83_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_83_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_99();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1413382878", "1413382878", "LT02_040_B60", "box_SetEntity_v2_83.Out", "box_SetEntity_v2_99.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_243_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_TaggingModifier_v3_245();
    l0 = self.box_ProximityTrigger_v2_243;
    l1 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|2090576627", "2090576627", "LT02_040_B60", "box_ProximityTrigger_v2_243.Enter", "box_TaggingModifier_v3_245.TagEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- TagEntity
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_156_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_157();
    l0 = self.box_SpawnAI_156;
    l1 = self.box_SpawnAI_157;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1468190892", "1468190892", "LT02_040_B60", "box_SpawnAI_156.Out", "box_SpawnAI_157.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_72_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_68();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1267763571", "1267763571", "LT02_040_B60", "box_OutputOrder_v2_72.Out", "box_Print_v2_68.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_72_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_70();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1270246721", "1270246721", "LT02_040_B60", "box_OutputOrder_v2_72.Out", "box_Compare_Integers_70.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_264_Out()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_248();
    l0 = self.box_MultipleOR_264;
    l1 = self.box_HealthListener_v6_248;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1756096021", "1756096021", "LT02_040_B60", "box_MultipleOR_264.Out", "box_HealthListener_v6_248.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GetPlayerGroup_v2_9_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_9_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_29();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|583807730", "583807730", "LT02_040_B60", "box_GetPlayerGroup_v2_9.Out", "box_GetLocalPlayer_v2_29.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_HealthModifier_v2_173_Damaged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_258();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_258;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1665908686", "1665908686", "LT02_040_B60", "box_HealthModifier_v2_173.Damaged", "box_CHEAT_SetEnvironmentTimeScale_258.SetTimeScale", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeScale
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_123_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_153();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1571486326", "1571486326", "LT02_040_B60", "box_Simple_Node_123.Out", "box_OutputOrder_v2_153.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_55_NotEqual()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B60_Dialog_53();
    l0 = self.box_LT02_040_B60_Dialog_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|917792930", "917792930", "LT02_040_B60", "box_Compare_Entity_55.NotEqual", "box_LT02_040_B60_Dialog_53.PlayLine", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayLine
    l0:Exec(0, params);
end;

function export:f_box_SetEntity_v2_88_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_88_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_87();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1635008300", "1635008300", "LT02_040_B60", "box_SetEntity_v2_88.Out", "box_SetEntity_v2_87.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetEntityInPrefab_v2_174_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_174_Out();
    params = self:OnEnter_box_RemoveEntity_v2_175();
    l0 = self.box_GetEntityInPrefab_v2_174;
    l1 = self.box_RemoveEntity_v2_175;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1577869063", "1577869063", "LT02_040_B60", "box_GetEntityInPrefab_v2_174.Out", "box_RemoveEntity_v2_175.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_126_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_207();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|757762609", "757762609", "LT02_040_B60", "box_OutputOrder_v2_126.Out", "box_OutputOrder_v2_207.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_126_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_81();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|2097464670", "2097464670", "LT02_040_B60", "box_OutputOrder_v2_126.Out", "box_Simple_Node_81.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_126_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_51();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1949900184", "1949900184", "LT02_040_B60", "box_OutputOrder_v2_126.Out", "box_Simple_Node_51.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_126_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_155();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|2096693271", "2096693271", "LT02_040_B60", "box_OutputOrder_v2_126.Out", "box_Simple_Node_155.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_126_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_211();
    l0 = self.box_ProximityTrigger_v2_211;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|536440458", "536440458", "LT02_040_B60", "box_OutputOrder_v2_126.Out", "box_ProximityTrigger_v2_211.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_127_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_33();
    l0 = self.box_EntityStatusListener_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1645870411", "1645870411", "LT02_040_B60", "box_Simple_Node_127.Out", "box_EntityStatusListener_33.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetEntity_v2_89_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_89_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_90();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|472904914", "472904914", "LT02_040_B60", "box_SetEntity_v2_89.Out", "box_SetEntity_v2_90.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_208_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_208;
    l1 = self.box_OnceOnly_v3_206;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|999932351", "999932351", "LT02_040_B60", "box_MultipleOR_208.Out", "box_OnceOnly_v3_206.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetEntity_v2_85_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_85_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_84();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1380006553", "1380006553", "LT02_040_B60", "box_SetEntity_v2_85.Out", "box_SetEntity_v2_84.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_7_Out()
    local l0, l1;
    l0 = self.box_ActivityInitialized_7;
    l1 = self.box_PhoneCallExclusivityModifier_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1181424057", "1181424057", "LT02_040_B60", "box_ActivityInitialized_7.Out", "box_PhoneCallExclusivityModifier_17.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_GroupSizeListener_v5_230_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_228();
    l0 = self.box_GroupSizeListener_v5_230;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1352843539", "1352843539", "LT02_040_B60", "box_GroupSizeListener_v5_230.MemberRemoved", "box_Compare_Integers_228.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_271_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_270();
    l0 = self.box_GroupSizeListener_v5_271;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|205845540", "205845540", "LT02_040_B60", "box_GroupSizeListener_v5_271.MemberRemoved", "box_Compare_Integers_270.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_52_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B60_Dialog_46();
    l0 = self.box_LT02_040_B60_Dialog_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|948557860", "948557860", "LT02_040_B60", "box_Compare_Strings_52.A_eq_B", "box_LT02_040_B60_Dialog_46.PlayLine", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayLine
    l0:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_211_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_213();
    l0 = self.box_ProximityTrigger_v2_211;
    l1 = self.box_SpawnAI_213;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|558190733", "558190733", "LT02_040_B60", "box_ProximityTrigger_v2_211.Enter", "box_SpawnAI_213.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_28_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMusicTriggerBox_3();
    l0 = self.box_SoundMusicTriggerBox_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|667182987", "667182987", "LT02_040_B60", "box_OutputOrder_v2_28.Out", "box_SoundMusicTriggerBox_3.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_10();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|371984715", "371984715", "LT02_040_B60", "box_OutputOrder_v2_28.Out", "box_AddActivityObjective_v2_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_79_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_103();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1874398550", "1874398550", "LT02_040_B60", "box_IsEntityLoaded_v3_79.False", "box_Simple_Node_103.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_79_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetDistance_58();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|166623922", "166623922", "LT02_040_B60", "box_IsEntityLoaded_v3_79.True", "box_GetDistance_58.Distance2D", clone:GetLuaBox(), l0:GetLuaBox());
    -- Distance2D
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_111_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1524047036", "1524047036", "LT02_040_B60", "box_Simple_Node_111.Out", "box_MultipleOR_110.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_TimedSlowMotion_v2_246_SlowMotionEnded()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_146();
    l0 = self.box_TimedSlowMotion_v2_246;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1479722195", "1479722195", "LT02_040_B60", "box_TimedSlowMotion_v2_246.SlowMotionEnded", "box_IsEntityLoaded_v3_146.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_77_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_119();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1230240829", "1230240829", "LT02_040_B60", "box_Compare_Integers_77.A_eq_B", "box_IsEntityLoaded_v3_119.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_77_A_gt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_120();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|960785375", "960785375", "LT02_040_B60", "box_Compare_Integers_77.A_gt_B", "box_Simple_Node_120.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_50_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_47();
    l0 = self.box_HealthListener_v6_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|390484029", "390484029", "LT02_040_B60", "box_OutputOrder_v2_50.Out", "box_HealthListener_v6_47.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_50_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_54();
    l0 = self.box_HealthListener_v6_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|2019478203", "2019478203", "LT02_040_B60", "box_OutputOrder_v2_50.Out", "box_HealthListener_v6_54.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_50_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_273();
    l0 = self.box_Bind_v4_273;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|60391107", "60391107", "LT02_040_B60", "box_OutputOrder_v2_50.Out", "box_Bind_v4_273.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_GetDistance_62_Out()
    local params, l0;
    self:OnExit_box_GetDistance_62_Out();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Floats_64();
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|537005292", "537005292", "LT02_040_B60", "box_GetDistance_62.Out", "box_Compare_Floats_64.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_152_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_129();
    l0 = self.box_MultipleOR_152;
    l1 = self.box_Gate_v3_129;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1913688041", "1913688041", "LT02_040_B60", "box_MultipleOR_152.Out", "box_Gate_v3_129.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_78_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_125();
    l0 = self.box_MultipleOR_78;
    l1 = self.box_Gate_v3_125;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1961421992", "1961421992", "LT02_040_B60", "box_MultipleOR_78.Out", "box_Gate_v3_125.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:OnEnter_box_Simple_Node_254()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_254");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|@HeDead");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_254_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_269()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_269");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|@ReadyToDie");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_269_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_235()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_235");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|@StopWolfSpawning");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_235_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_220()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2105542353142971906",
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_199()
    local params;
    params = {
        -- ObjectName,
        [0] = self.sBirdName2,
        -- PrefabEntity,
        [1] = "2104093239425372865",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_268()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_268");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|41920922");
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

function export:OnEnter_box_SetEntity_v2_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|42218043");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_93_Out,
    });
    params = {
        -- Entity,
        [0] = self.ePosition1,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_34()
    local params;
    DrawTextToScreen("Comment: bindLKP", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Bind_v4')-- Comment: bindLKP");
    params = {
        -- BoneName,
        [0] = "spine",
        -- EntityA,
        [1] = self.eHost,
        -- EntityB,
        [2] = self.eLKP,
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_259()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_259");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|81948329");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_259_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v5_261;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_245()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_245");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|83587621");
    l0:SetConnections({
        -- Tagged,
        [2] = self.f_box_TaggingModifier_v3_245_Tagged,
    });
    params = {
        -- Entity,
        [0] = "2105587669928109500",
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B60_Dialog_53()
    local params;
    DrawTextToScreen("Comment: coop death", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'LT02_040_B60_Dialog')-- Comment: coop death");
    params = {
        -- eTarget,
        [0] = self.eJacob,
        -- iNumLines,
        [1] = 2,
        -- Line01,
        [2] = "1658190421",
        -- Line02,
        [3] = "1219233337",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_215()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_215");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|102501021");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_215_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v5_214;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_OverrideEnvironment_v3_149()
    local params, l0;
    DrawTextToScreen("Comment: revert to normal EnvironmentMods", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'OverrideEnvironment_v3')-- Comment: revert to normal EnvironmentMods");
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideEnvironment_v3_149");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|103076328");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_OverrideEnvironment_v3_149_Disabled,
    });
    params = {
        -- fog,
        [6] = "TOR_Zeta:Special.JacobShowDown_Fog",
        -- lighting,
        [7] = "TOR_Zeta:Special.JacobShowDown_Lighting",
        -- ratio,
        [9] = 1,
        -- sky,
        [11] = "TOR_Zeta:Special.JacobShowDown_Sky",
        -- transitionTime,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_76()
    local params, l0;
    DrawTextToScreen("Comment: spawn position 3", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: spawn position 3");
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|118497899");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_76_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_13()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.eJacob,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|127199513");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- float,
        [4] = self._sld_Distance_box_GetDistance_42,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Distance to LKP: ",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_236()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2105586297755170400",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_238()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_238");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|134029366");
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

function export:OnEnter_box_OutputOrder_v2_128()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_128");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|147621364");
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
                [0] = self.f_box_OutputOrder_v2_128_Out_0,
                [1] = self.f_box_OutputOrder_v2_128_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_239()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_239");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|157537209");
    l0:SetConnections({
        -- Tagged,
        [2] = self.f_box_TaggingModifier_v3_239_Tagged,
    });
    params = {
        -- Entity,
        [0] = "2105528751346455640",
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|173278486");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_95_Out,
    });
    params = {
        -- Entity,
        [0] = self.eP1JacobCS,
    };
    return params;
end;

function export:OnEnter_box_GetNameOfEntity_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Misc/GetNameOfEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetNameOfEntity_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|175933316");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetNameOfEntity_49_Out,
    });
    l0 = self.box_HealthListener_v6_47;
    params = {
        -- Entity,
        [0] = l0:GetDataOutValue(4),
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_153()
    local params, l0;
    DrawTextToScreen("Comment: disable all running soundpoints", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'OutputOrder_v2')-- Comment: disable all running soundpoints");
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_153");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|177250663");
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
                [0] = self.f_box_OutputOrder_v2_153_Out_0,
                [1] = self.f_box_OutputOrder_v2_153_Out_1,
                [2] = self.f_box_OutputOrder_v2_153_Out_2,
                [3] = self.f_box_OutputOrder_v2_153_Out_3,
                [4] = self.f_box_OutputOrder_v2_153_Out_4,
                [5] = self.f_box_OutputOrder_v2_153_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_129()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneCleanUp_286()
    local params;
    params = {
        -- KeepBlackBars,
        [0] = false,
        -- KeepGodMode,
        [1] = false,
        -- KeepHUDMode,
        [2] = false,
        -- KeepWeaponHolstered,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_222()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#01C5E0B5",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_181()
    local params, l0;
    l0 = self.box_GetEntityInPrefab_v2_182;
    params = {
        -- Group,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_GetDistance_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetDistance_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|210441466");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetDistance_42_Out,
    });
    params = {
        -- Entity1,
        [0] = self.eHost,
        -- Entity2,
        [1] = self.eLKP,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_109()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|230183510");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_109_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_266()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_266");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|233063870");
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

function export:OnEnter_box_EntityStatusListener_37()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104425287658789750",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|253160280");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_80_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_80_True,
    });
    params = {
        -- entityId,
        [0] = self.ePosition2,
    };
    return params;
end;

function export:OnEnter_box_SoundMusicTriggerBox_3()
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
        [5] = "40681610",
        -- StopEvent,
        [6] = "3037681180",
        -- StopFadeOut,
        [7] = 0.5,
        -- WaitUntilMusicEndMarker,
        [8] = false,
        -- WaitUntilNotInVehicle,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_36()
    local params;
    params = {
        -- ObjectName,
        [0] = self.sGeneratorName,
        -- PrefabEntity,
        [1] = "2104425287658789750",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_260()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2105516359568970133",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_144()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104093259390259931",
    };
    return params;
end;

function export:OnEnter_box_LookAtTrigger_v2_44()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pawns,
        [1] = "#ED455357",
        -- triggerId,
        [2] = "2105708298396267644",
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_132()
    local params;
    params = {
        -- ObjectName,
        [0] = self.sGeneratorName,
        -- PrefabEntity,
        [1] = "2104093206518960802",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_213()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2105518717445097865",
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_237()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_237");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|317949659");
    l0:SetConnections({
        -- Tagged,
        [2] = self.f_box_TaggingModifier_v3_237_Tagged,
    });
    params = {
        -- Entity,
        [0] = "2105528751340164178",
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_204()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_182()
    local params;
    params = {
        -- ObjectName,
        [0] = self.sBirdName2,
        -- PrefabEntity,
        [1] = "2104093239425372865",
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_283()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_283");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|360085783");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = self.eBeaconSoundPoint06,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_276()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_276");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|366789768");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_276_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2105736491438186802",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_214()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#01C5E0B5",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|383283807");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_96_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_202()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_202");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|410658153");
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
                [0] = self.f_box_OutputOrder_v2_202_Out_0,
                [1] = self.f_box_OutputOrder_v2_202_Out_1,
                [2] = self.f_box_OutputOrder_v2_202_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|411729523");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_41_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|413140157");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_101_Out,
    });
    params = {
        -- Entity,
        [0] = self.eP3Bodyguards,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|415364270");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "cyan",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self.iPosition03Players,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "# Players close to position 03: ",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_159()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_134()
    local params;
    params = {
        -- ObjectName,
        [0] = self.sGeneratorName,
        -- PrefabEntity,
        [1] = "2104093239425372865",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_176()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_176");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|444395122");
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
                [0] = self.f_box_OutputOrder_v2_176_Out_0,
                [1] = self.f_box_OutputOrder_v2_176_Out_1,
                [2] = self.f_box_OutputOrder_v2_176_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_23()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.eJacobCS,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|453052740");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_94_Out,
    });
    params = {
        -- Entity,
        [0] = self.eP3JacobCS,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_139()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_139");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|458533573");
    l0:SetConnections({
    });
    l0 = self.box_GetEntityInPrefab_v2_140;
    params = {
        -- entity,
        [0] = l0:GetDataOutValue(0),
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_189()
    local params, l0;
    l0 = self.box_GetEntityInPrefab_v2_190;
    params = {
        -- Group,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|475321303");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_86_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_86_True,
    });
    params = {
        -- entityId,
        [0] = self.ePosition2,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_137()
    local params;
    params = {
        -- ObjectName,
        [0] = self.sGeneratorName,
        -- PrefabEntity,
        [1] = "2104093267088904932",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_157()
    local params;
    DrawTextToScreen("Comment: spawn defender cultists", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI')-- Comment: spawn defender cultists");
    params = {
        -- EntitySpawner,
        [0] = self.eSpawnerBodyguards,
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|493069635");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_61_Out,
    });
    params = {
        -- A,
        [0] = self.iPosition01Players,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_227()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_112()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|511050934");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_112_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|528882925");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_92_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_141()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104093271723610861",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_146()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_146");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|565591204");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_146_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_146_True,
    });
    params = {
        -- entityId,
        [0] = "2104090753889225341",
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_11()
    local params;
    params = {
        -- bShowUI,
        [0] = true,
        -- CoopFailRequiresAllPlayer,
        [1] = false,
        -- FailingZoneTrigger,
        [2] = "2105625361908790176",
        -- WarningZoneTrigger,
        [3] = "2105625340050174879",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_117()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|575818861");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_117_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_203()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_203");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|585547709");
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
                [0] = self.f_box_OutputOrder_v2_203_Out_0,
                [1] = self.f_box_OutputOrder_v2_203_Out_1,
                [2] = self.f_box_OutputOrder_v2_203_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_158()
    local params, l0;
    DrawTextToScreen("Comment: ping player LKP", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SetContextualStrategy')-- Comment: ping player LKP");
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_158");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|594315661");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104135476943277197",
        -- Group,
        [1] = "#B71AC435",
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|600997218");
    l0:SetConnections({
        -- A_lt_B,
        [4] = self.f_box_Compare_Floats_59_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_Distance_box_GetDistance_58,
        -- B,
        [1] = self.fMinSpawnDistance,
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
        [2] = "2104093206518960802",
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_192()
    local params;
    params = {
        -- ObjectName,
        [0] = self.sBirdName,
        -- PrefabEntity,
        [1] = "2104093239425372865",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|606785495");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_102_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_102_True,
    });
    params = {
        -- entityId,
        [0] = self.ePosition3,
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_241()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_241");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|644960033");
    l0:SetConnections({
        -- Tagged,
        [2] = self.f_box_TaggingModifier_v3_241_Tagged,
    });
    params = {
        -- Entity,
        [0] = "2104135432859044648",
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_185()
    local params, l0;
    l0 = self.box_GetEntityInPrefab_v2_186;
    params = {
        -- Group,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_223()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 12,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_209()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_209");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|674540423");
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
                [0] = self.f_box_OutputOrder_v2_209_Out_0,
                [1] = self.f_box_OutputOrder_v2_209_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|687632581");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_70_A_eq_B,
        -- A_gt_B,
        [2] = self.f_box_Compare_Integers_70_A_gt_B,
    });
    params = {
        -- A,
        [0] = self.iPosition01Players,
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_115()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|695011378");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_115_Out,
    });
    params = {
        -- Entity,
        [0] = self.ePosition3,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_197()
    local params, l0;
    l0 = self.box_GetEntityInPrefab_v2_199;
    params = {
        -- Group,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_280()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_280");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|704451490");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = self.eBeaconSoundPoint04,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_261()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#A0E2EAD6",
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_282()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_282");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|730625929");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = self.eBeaconSoundPoint03,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_216()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2105542381678919240",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_167()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_167");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|736903405");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_167_Out,
    });
    params = {
        -- Entity,
        [0] = "2104051722983858698",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_225()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 12,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_145()
    local params;
    params = {
        -- Group,
        [0] = "2104090753889225341",
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_281()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_281");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|855317459");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = self.eBeaconSoundPoint05,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_47()
    local params;
    DrawTextToScreen("Comment: enable health listener", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'HealthListener_v6')-- Comment: enable health listener");
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_177()
    local params;
    params = {
        -- ObjectName,
        [0] = self.sBirdName2,
        -- PrefabEntity,
        [1] = "2104093206518960802",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|864141847");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_60_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|885941372");
    l0:SetConnections({
        -- PrintedToScreen,
        [3] = self.f_box_Print_v2_69_PrintedToScreen,
    });
    params = {
        -- color,
        [1] = "cyan",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self.iPosition02Players,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "# Players close to position 02: ",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|887582847");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_TimeOfDayListener_170()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|902030655");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_66_Out,
    });
    params = {
        -- A,
        [0] = self.iPosition02Players,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_212()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_212");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|909012163");
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
                [0] = self.f_box_OutputOrder_v2_212_Out_0,
                [1] = self.f_box_OutputOrder_v2_212_Out_1,
                [2] = self.f_box_OutputOrder_v2_212_Out_2,
                [3] = self.f_box_OutputOrder_v2_212_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_75()
    local params, l0;
    DrawTextToScreen("Comment: spawn position 2", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: spawn position 2");
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|912415132");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_75_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_180()
    local params;
    params = {
        -- ObjectName,
        [0] = self.sBirdName,
        -- PrefabEntity,
        [1] = "2104093239425372865",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_84()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|917778099");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_84_Out,
    });
    params = {
        -- Entity,
        [0] = self.eP2Spawner02,
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_210()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_210");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|922581804");
    l0:SetConnections({
        -- Tagged,
        [2] = self.f_box_TaggingModifier_v3_210_Tagged,
    });
    params = {
        -- Entity,
        [0] = self.eJacob,
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_262()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_262");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|937328995");
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
                [0] = self.f_box_OutputOrder_v2_262_Out_0,
                [1] = self.f_box_OutputOrder_v2_262_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_265()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_265");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|939991089");
    l0:SetConnections({
    });
    l0 = self.box_TimeOfDayListener_170;
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- int,
        [6] = l0:GetDataOutValue(0),
        -- path,
        [7] = "C:\\Print.log",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_247()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gPlayer,
        -- id2,
        [3] = "2104287077014181347",
        -- nearZone,
        [4] = 6,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_154()
    local params;
    DrawTextToScreen("Comment: spawn aggro cultists", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI')-- Comment: spawn aggro cultists");
    params = {
        -- EntitySpawner,
        [0] = self.eSpawnerAggroCultists,
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_285()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_285");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|952287461");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = self.eBeaconSoundPoint02,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|956188148");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_91_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_256()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_256");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|971424039");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_256_A_ge_B,
    });
    l0 = self.box_TimeOfDayListener_170;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(0),
        -- B,
        [1] = 10,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_40()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|976567796");
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
                [0] = self.f_box_OutputOrder_v2_57_Out_0,
                [1] = self.f_box_OutputOrder_v2_57_Out_1,
                [2] = self.f_box_OutputOrder_v2_57_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_136()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_136");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|987770736");
    l0:SetConnections({
    });
    l0 = self.box_GetEntityInPrefab_v2_137;
    params = {
        -- entity,
        [0] = l0:GetDataOutValue(0),
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_155()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_155");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|997887263");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_155_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_207()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_207");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|998132683");
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
                [0] = self.f_box_OutputOrder_v2_207_Out_0,
                [1] = self.f_box_OutputOrder_v2_207_Out_1,
                [2] = self.f_box_OutputOrder_v2_207_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_187()
    local params, l0;
    l0 = self.box_GetEntityInPrefab_v2_188;
    params = {
        -- Group,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_198()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_198");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|999740118");
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
                [0] = self.f_box_OutputOrder_v2_198_Out_0,
                [1] = self.f_box_OutputOrder_v2_198_Out_1,
                [2] = self.f_box_OutputOrder_v2_198_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_119()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1000740315");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_119_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_119_True,
    });
    params = {
        -- entityId,
        [0] = self.ePosition3,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_120()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1003330973");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_120_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_162()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_162");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1016627583");
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
                [0] = self.f_box_OutputOrder_v2_162_Out_0,
                [1] = self.f_box_OutputOrder_v2_162_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_205()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.eJacob,
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_242()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_242");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1026089082");
    l0:SetConnections({
    });
    params = {
        -- Entity,
        [0] = "2104135432865336110",
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1029354716");
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
                [0] = self.f_box_OutputOrder_v2_26_Out_0,
                [1] = self.f_box_OutputOrder_v2_26_Out_1,
                [2] = self.f_box_OutputOrder_v2_26_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_18()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015198430051478",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1044442731");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_10_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = self.oKillJacob,
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_240()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_240");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1087408809");
    l0:SetConnections({
        -- Tagged,
        [2] = self.f_box_TaggingModifier_v3_240_Tagged,
    });
    params = {
        -- Entity,
        [0] = "2104135432861141802",
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_201()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_201");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1104511334");
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
                [0] = self.f_box_OutputOrder_v2_201_Out_0,
                [1] = self.f_box_OutputOrder_v2_201_Out_1,
                [2] = self.f_box_OutputOrder_v2_201_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_179()
    local params, l0;
    l0 = self.box_GetEntityInPrefab_v2_180;
    params = {
        -- Group,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1111815331");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_196()
    local params;
    params = {
        -- ObjectName,
        [0] = self.sBirdName,
        -- PrefabEntity,
        [1] = "2104093239425372865",
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1128751318");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_29_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_24()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.eTeleportPosition,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_270()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_270");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1139707941");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_270_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v5_271;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1139881242");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_30_Out,
    });
    params = {
        -- Hour,
        [0] = 7,
        -- Minute,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_GetDistance_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetDistance_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1142577550");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetDistance_58_Out,
    });
    params = {
        -- Entity1,
        [0] = self.eCurrentPlayer,
        -- Entity2,
        [1] = self.ePosition1,
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_14()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_135()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104093239425372865",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_125()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_217()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#01C5E0B5",
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_15()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_228()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_228");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1184929572");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_228_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v5_230;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_191()
    local params, l0;
    l0 = self.box_GetEntityInPrefab_v2_192;
    params = {
        -- Group,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1204387471");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_100_Out,
    });
    params = {
        -- Entity,
        [0] = self.eP2Bodyguards,
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_253()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_253");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1209618048");
    l0:SetConnections({
    });
    params = {
        -- Entity,
        [0] = "2105587758782351157",
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_224()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 12,
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1214342413");
    l0:SetConnections({
        -- A_lt_B,
        [4] = self.f_box_Compare_Floats_64_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_Distance_box_GetDistance_62,
        -- B,
        [1] = self.fMinSpawnDistance,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_272()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_272");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1235032053");
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
                [0] = self.f_box_OutputOrder_v2_272_Out_0,
                [1] = self.f_box_OutputOrder_v2_272_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_33()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.eLKP,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_106()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1242514523");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_106_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_165()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_124()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_138()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104093267088904932",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_226()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2105584458609488963",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_273()
    local params;
    params = {
        -- BoneName,
        [0] = "Head",
        -- EntityA,
        [1] = self.eJacob,
        -- EntityB,
        [2] = "2105708298396267644",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1282729772");
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
                [0] = self.f_box_OutputOrder_v2_39_Out_0,
                [1] = self.f_box_OutputOrder_v2_39_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1296230975");
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
        [8] = "LT02_040_B60 script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityMiscInfoModifier_v2_105()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityMiscInfoModifier_v2_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1302079387");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityMiscInfoModifier_v2_105_Out,
    });
    params = {
        -- ActivityAbortAndFastTravelEnabled,
        [0] = false,
        -- SleepingCampEnabled,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_284()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_284");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1305316855");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = self.eBeaconSoundPoint01,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_275()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_275");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1306845936");
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
                [0] = self.f_box_OutputOrder_v2_275_Out_0,
                [1] = self.f_box_OutputOrder_v2_275_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_248()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- pawns,
        [1] = self.eJacob,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_190()
    local params;
    params = {
        -- ObjectName,
        [0] = self.sBirdName2,
        -- PrefabEntity,
        [1] = "2104093239425372865",
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_140()
    local params;
    params = {
        -- ObjectName,
        [0] = self.sGeneratorName,
        -- PrefabEntity,
        [1] = "2104093271723610861",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_175()
    local params, l0;
    l0 = self.box_GetEntityInPrefab_v2_174;
    params = {
        -- Group,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_16()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_143()
    local params;
    params = {
        -- ObjectName,
        [0] = self.sGeneratorName,
        -- PrefabEntity,
        [1] = "2104093259390259931",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1380845341");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_74_A_eq_B,
        -- A_gt_B,
        [2] = self.f_box_Compare_Integers_74_A_gt_B,
    });
    params = {
        -- A,
        [0] = self.iPosition02Players,
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_148()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1407425925");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_99_Out,
    });
    params = {
        -- Entity,
        [0] = self.eP1Bodyguards,
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_258()
    local params;
    params = {
        -- timeScale,
        [0] = 1,
    };
    return params;
end;

function export:OnEnter_box_GroupIter_56()
    local params;
    params = {
        -- entities,
        [0] = self.gPlayer,
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1414153679");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_67_Out,
    });
    params = {
        -- A,
        [0] = self.iPosition03Players,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_GetDistance_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetDistance_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1435094672");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetDistance_63_Out,
    });
    params = {
        -- Entity1,
        [0] = self.eCurrentPlayer,
        -- Entity2,
        [1] = self.ePosition3,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_263()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_183()
    local params, l0;
    l0 = self.box_GetEntityInPrefab_v2_184;
    params = {
        -- Group,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_151()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_151");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1504134050");
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
                [0] = self.f_box_OutputOrder_v2_151_Out_0,
                [1] = self.f_box_OutputOrder_v2_151_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ColorRemapTextureModifier_v3_150()
    local params;
    params = {
        -- colorRemapSettings,
        [0] = "9015281113972950",
        -- playerGroup,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_54()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1534822112");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_108_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PostWWiseEventSetState_31()
    local params;
    params = {
        -- SoundId,
        [0] = "2806627700",
        -- SoundType,
        [1] = 17,
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1550474185");
    l0:SetConnections({
        -- A_lt_B,
        [4] = self.f_box_Compare_Floats_65_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_Distance_box_GetDistance_63,
        -- B,
        [1] = self.fMinSpawnDistance,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1553075199");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_51_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_133()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_133");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1565404676");
    l0:SetConnections({
    });
    l0 = self.box_GetEntityInPrefab_v2_134;
    params = {
        -- entity,
        [0] = l0:GetDataOutValue(0),
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1608831360");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_90_Out,
    });
    params = {
        -- Entity,
        [0] = self.ePosition2,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1622157093");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_87_Out,
    });
    params = {
        -- Entity,
        [0] = self.eP3Spawner02,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_178()
    local params, l0;
    l0 = self.box_GetEntityInPrefab_v2_177;
    params = {
        -- Group,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_267()
    local params;
    params = {
        -- timeScale,
        [0] = 5,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_250()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gPlayer,
        -- id2,
        [3] = "2105587630457611664",
        -- nearZone,
        [4] = 3,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Assert_122()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Assert.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Assert_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1642562397");
    l0:SetConnections({
    });
    params = {
        -- msg,
        [0] = "ERROR: No valid/loaded starting points. Please create a bug for this.",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_231()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 8,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_73()
    local params, l0;
    DrawTextToScreen("Comment: spawn position 1", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: spawn position 1");
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1666437799");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_73_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_194()
    local params;
    params = {
        -- ObjectName,
        [0] = self.sBirdName2,
        -- PrefabEntity,
        [1] = "2104093239425372865",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1674003183");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_103_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_12()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "313712956",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_277()
    local params;
    params = {
        -- Group,
        [0] = "2105516293559004724",
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B60_Dialog_46()
    local params;
    DrawTextToScreen("Comment: killed by judge", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'LT02_040_B60_Dialog')-- Comment: killed by judge");
    params = {
        -- eTarget,
        [0] = self.eJacob,
        -- iNumLines,
        [1] = 4,
        -- Line01,
        [2] = "3493689896",
        -- Line02,
        [3] = "1278626803",
        -- Line03,
        [4] = "1019691150",
        -- Line04,
        [5] = "438456083",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1684072486");
    l0:SetConnections({
        -- PrintedToScreen,
        [3] = self.f_box_Print_v2_68_PrintedToScreen,
    });
    params = {
        -- color,
        [1] = "cyan",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self.iPosition01Players,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "# Players close to position 01: ",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_219()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104051722983858698",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_257()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_257");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1693442652");
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

function export:OnEnter_box_GetEntityInPrefab_v2_188()
    local params;
    params = {
        -- ObjectName,
        [0] = self.sBirdName,
        -- PrefabEntity,
        [1] = "2104093239425372865",
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_184()
    local params;
    params = {
        -- ObjectName,
        [0] = self.sBirdName,
        -- PrefabEntity,
        [1] = "2104093239425372865",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_221()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_221");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1705185217");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_221_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v5_222;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_218()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_218");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1710884846");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_218_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v5_217;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1728903755");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_82_Out,
    });
    params = {
        -- Entity,
        [0] = self.eP1Spawner01,
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_114()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1734992477");
    l0:SetConnections({
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = self.eJacob,
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1739901847");
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
                [0] = self.f_box_OutputOrder_v2_2_Out_0,
                [1] = self.f_box_OutputOrder_v2_2_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_113()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1743766674");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_113_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_113_True,
    });
    params = {
        -- entityId,
        [0] = self.ePosition1,
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_249()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_249");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1746383267");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_249_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = self.eJacob,
        -- value,
        [3] = 50,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_200()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_200");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1778149969");
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
                [0] = self.f_box_OutputOrder_v2_200_Out_0,
                [1] = self.f_box_OutputOrder_v2_200_Out_1,
                [2] = self.f_box_OutputOrder_v2_200_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_229()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 12,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_274()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_274");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1805564828");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_274_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2105735912123036821",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_232()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_232");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1816747594");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_232_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v5_233;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_278()
    local params;
    params = {
        -- Group,
        [0] = "2105586786194465459",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_233()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#01C5E0B5",
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_186()
    local params;
    params = {
        -- ObjectName,
        [0] = self.sBirdName2,
        -- PrefabEntity,
        [1] = "2104093239425372865",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1842086590");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1842091420");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_83_Out,
    });
    params = {
        -- Entity,
        [0] = self.eP1Spawner02,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_243()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2105586373103744679",
    };
    return params;
end;

function export:OnEnter_box_PostWWiseEventSetState_27()
    local params;
    params = {
        -- SoundId,
        [0] = "2102059229",
        -- SoundType,
        [1] = 17,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_131()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_131");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1858303222");
    l0:SetConnections({
    });
    l0 = self.box_GetEntityInPrefab_v2_132;
    params = {
        -- entity,
        [0] = l0:GetDataOutValue(0),
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_156()
    local params;
    DrawTextToScreen("Comment: spawn aggro judges", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI')-- Comment: spawn aggro judges");
    params = {
        -- EntitySpawner,
        [0] = self.eSpawnerAggroJudges,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_279()
    local params;
    params = {
        -- Group,
        [0] = "2105034469516793183",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1874191362");
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
                [0] = self.f_box_OutputOrder_v2_72_Out_0,
                [1] = self.f_box_OutputOrder_v2_72_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1891387222");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_9_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_32()
    local params, l0;
    DrawTextToScreen("Comment: set Jacob CS", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SetContextualStrategy')-- Comment: set Jacob CS");
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1895423446");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = self.eJacobCS,
        -- Group,
        [1] = self.eJacob,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1899128667");
    l0:SetConnections({
    });
    l0 = self.box_GetEntityInPrefab_v2_36;
    params = {
        -- entity,
        [0] = l0:GetDataOutValue(0),
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_173()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_173");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1901751604");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_173_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = "#962EB2D1",
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_195()
    local params, l0;
    l0 = self.box_GetEntityInPrefab_v2_196;
    params = {
        -- Group,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_123()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1979119997");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_123_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1979850900");
    l0:SetConnections({
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_55_NotEqual,
    });
    l0 = self.box_HealthListener_v6_54;
    params = {
        -- Entity1,
        [0] = l0:GetDataOutValue(6),
        -- Entity2,
        [1] = self.eHost,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1984150667");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_88_Out,
    });
    params = {
        -- Entity,
        [0] = self.eP3Spawner01,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_174()
    local params;
    params = {
        -- ObjectName,
        [0] = self.sBirdName,
        -- PrefabEntity,
        [1] = "2104093206518960802",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_142()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_142");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|1993927497");
    l0:SetConnections({
    });
    l0 = self.box_GetEntityInPrefab_v2_143;
    params = {
        -- entity,
        [0] = l0:GetDataOutValue(0),
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_126()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|2011669833");
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
                [0] = self.f_box_OutputOrder_v2_126_Out_0,
                [1] = self.f_box_OutputOrder_v2_126_Out_1,
                [2] = self.f_box_OutputOrder_v2_126_Out_2,
                [3] = self.f_box_OutputOrder_v2_126_Out_3,
                [4] = self.f_box_OutputOrder_v2_126_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_255()
    local params;
    params = {
        -- timeScale,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_244()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_244");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|2019684141");
    l0:SetConnections({
    });
    params = {
        -- Entity,
        [0] = "2105516366449726030",
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_127()
    local params, l0;
    DrawTextToScreen("Comment: jacob loaded", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: jacob loaded");
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_127");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|2024597356");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_127_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|2025450070");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_89_Out,
    });
    params = {
        -- Entity,
        [0] = self.eP2JacobCS,
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_161()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_161");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|2040640230");
    l0:SetConnections({
    });
    params = {
        -- FromGroup,
        [0] = self.eJacob,
        -- ToGroup,
        [1] = "#962EB2D1",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|2040790238");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_85_Out,
    });
    params = {
        -- Entity,
        [0] = self.eP2Spawner01,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_230()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#01C5E0B5",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_271()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#EEED12BA",
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B60_Dialog_45()
    local params;
    params = {
        -- eTarget,
        [0] = self.eJacob,
        -- iNumLines,
        [1] = 2,
        -- Line01,
        [2] = "1345264242",
        -- Line02,
        [3] = "1049444306",
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|2086085809");
    l0:SetConnections({
        -- A_eq_B,
        [1] = self.f_box_Compare_Strings_52_A_eq_B,
    });
    params = {
        -- A,
        [0] = self._sld_Name_box_GetNameOfEntity_49,
        -- B,
        [1] = "Wolf_Grey_Judge",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_211()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2105518736302688765",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|2095842168");
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
                [0] = self.f_box_OutputOrder_v2_28_Out_0,
                [1] = self.f_box_OutputOrder_v2_28_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|2097463405");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_79_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_79_True,
    });
    params = {
        -- entityId,
        [0] = self.ePosition1,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_111()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|2100543983");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_111_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TimedSlowMotion_v2_246()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- BlendInTime,
        [1] = 2,
        -- BlendOutTime,
        [2] = 2,
        -- Duration,
        [3] = 1,
        -- PreDelay,
        [4] = 0,
        -- TimeFactor,
        [5] = 0.25,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|2115983041");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_77_A_eq_B,
        -- A_gt_B,
        [2] = self.f_box_Compare_Integers_77_A_gt_B,
    });
    params = {
        -- A,
        [0] = self.iPosition03Players,
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|2118811639");
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
                [0] = self.f_box_OutputOrder_v2_50_Out_0,
                [1] = self.f_box_OutputOrder_v2_50_Out_1,
                [2] = self.f_box_OutputOrder_v2_50_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetDistance_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetDistance_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B60.domino|@LT02_040_B60|2128680590");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetDistance_62_Out,
    });
    params = {
        -- Entity1,
        [0] = self.eCurrentPlayer,
        -- Entity2,
        [1] = self.ePosition2,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_193()
    local params, l0;
    l0 = self.box_GetEntityInPrefab_v2_194;
    params = {
        -- Group,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnExit_box_GetEntityInPrefab_v2_199_Out()
    local l0, l1;
    l0 = self.box_GetEntityInPrefab_v2_199;
    l1 = self.box_RemoveEntity_v2_197;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_93_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eTeleportPosition = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_95_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eJacobCS = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetNameOfEntity_49_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Misc/GetNameOfEntity.lua")];
    self._sld_Name_box_GetNameOfEntity_49 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetDistance_42_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    self._sld_Distance_box_GetDistance_42 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_182_Out()
    local l0, l1;
    l0 = self.box_GetEntityInPrefab_v2_182;
    l1 = self.box_RemoveEntity_v2_181;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_101_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawnerBodyguards = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_94_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eJacobCS = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_61_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.iPosition01Players = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_192_Out()
    local l0, l1;
    l0 = self.box_GetEntityInPrefab_v2_192;
    l1 = self.box_RemoveEntity_v2_191;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_115_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eTeleportPosition = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_167_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawnerBodyguardJudges = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_177_Out()
    local l0, l1;
    l0 = self.box_GetEntityInPrefab_v2_177;
    l1 = self.box_RemoveEntity_v2_178;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_60_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bReload = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_66_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.iPosition02Players = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_180_Out()
    local l0, l1;
    l0 = self.box_GetEntityInPrefab_v2_180;
    l1 = self.box_RemoveEntity_v2_179;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_84_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawnerAggroJudges = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_18_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_18;
    self.eJacob = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_196_Out()
    local l0, l1;
    l0 = self.box_GetEntityInPrefab_v2_196;
    l1 = self.box_RemoveEntity_v2_195;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_29_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.eHost = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetDistance_58_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    self._sld_Distance_box_GetDistance_58 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_100_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawnerBodyguards = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_190_Out()
    local l0, l1;
    l0 = self.box_GetEntityInPrefab_v2_190;
    l1 = self.box_RemoveEntity_v2_189;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_99_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawnerBodyguards = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupIter_56_PawnIter()
    local l0;
    l0 = self.box_GroupIter_56;
    self.eCurrentPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_67_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.iPosition03Players = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetDistance_63_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    self._sld_Distance_box_GetDistance_63 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_90_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eTeleportPosition = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_87_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawnerAggroJudges = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_194_Out()
    local l0, l1;
    l0 = self.box_GetEntityInPrefab_v2_194;
    l1 = self.box_RemoveEntity_v2_193;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_188_Out()
    local l0, l1;
    l0 = self.box_GetEntityInPrefab_v2_188;
    l1 = self.box_RemoveEntity_v2_187;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_184_Out()
    local l0, l1;
    l0 = self.box_GetEntityInPrefab_v2_184;
    l1 = self.box_RemoveEntity_v2_183;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_82_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawnerAggroCultists = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_186_Out()
    local l0, l1;
    l0 = self.box_GetEntityInPrefab_v2_186;
    l1 = self.box_RemoveEntity_v2_185;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_83_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawnerAggroJudges = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_9_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_88_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawnerAggroCultists = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_174_Out()
    local l0, l1;
    l0 = self.box_GetEntityInPrefab_v2_174;
    l1 = self.box_RemoveEntity_v2_175;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_89_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eJacobCS = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_85_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawnerAggroCultists = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetDistance_62_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    self._sld_Distance_box_GetDistance_62 = l0:GetDataOutValue(0);
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
