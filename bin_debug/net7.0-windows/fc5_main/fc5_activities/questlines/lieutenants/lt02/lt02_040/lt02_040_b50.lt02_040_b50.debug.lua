LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt02/lt02_040/lt02_040_b50.domino
-- User graph: LT02_040_B50
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
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.LockTimeOfDay.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/ColorRemapTextureModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/IsEntityInGroup.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/DynamicLightModifier.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v5.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/MoonModifier.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/OverrideEnvironment_v3.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/AlternateInventoryModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/PostFx_v3.lua");
        cboxRes:RegisterBox("Domino/System/PostWWiseEventSetState.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/RandomFloat_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SoundMusicTrigger.lua");
        cboxRes:RegisterBox("Domino/System/SoundPointModifier.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        cboxRes:RegisterBox("Domino/System/UI/FogOfWarModifier.lua");
        cboxRes:RegisterBox("Domino/System/UI/OverrideMenuAccessibility.lua");
        cboxRes:RegisterBox("Domino/System/VisionModeModifier_v2.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_BeaconGroupManager.debug.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_BeaconListener.debug.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_BeaconRumble.debug.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_LightningStrike.debug.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_RandomWaveSpawner.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[68574539.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3369563951.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3156570066.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3654078088.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4013606668.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2094741458.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1104664796.bnk]], "CSoundResource");
        cboxRes:LoadResource([[985490996.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2142117297.bnk]], "CSoundResource");
        cboxRes:LoadResource([[142145369.bnk]], "CSoundResource");
        cboxRes:LoadResource([[111757131.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4216312394.bnk]], "CSoundResource");
        cboxRes:LoadResource([[40681610.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2957539075.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3037681180.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4076565210.bnk]], "CSoundResource");
        cboxRes:LoadResource([[415685382.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1096964043.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3744134080.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3387366280.bnk]], "CSoundResource");
        cboxRes:LoadResource([[536224832.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1468354901.bnk]], "CSoundResource");
        cboxRes:LoadResource([[588533109.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2878574770.bnk]], "CSoundResource");
        cboxRes:LoadResource([[269496441.bnk]], "CSoundResource");
        cboxRes:LoadResource([[402878705.bnk]], "CSoundResource");
        cboxRes:LoadResource([[375660492.bnk]], "CSoundResource");
        cboxRes:LoadResource([[856875318.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.LockTimeOfDay.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Lock",
            },
            [1] = {
                name = "Unlock",
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
    metadataTable[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")] = {
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
                name = "MarkerTypeId",
                type = "database",
            },
            [1] = {
                name = "ObjectiveId",
                type = "oasis",
            },
            [2] = {
                name = "ProgressDisplayType",
                type = "int",
            },
            [3] = {
                name = "TotalProgress",
                type = "int",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "ProgressId",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")] = {
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
                name = "Progress",
                type = "int",
            },
            [2] = {
                name = "ProgressId",
                type = "int",
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
                name = "vehiclesSpawned",
                type = "list",
            },
        },
        dataOutCount = 2,
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
    metadataTable[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")] = {
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
                name = "Entity",
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
                name = "ResetMoonSize",
            },
            [3] = {
                name = "SetMoonDirection",
            },
            [4] = {
                name = "SetMoonHDRMultiplier",
            },
            [5] = {
                name = "SetMoonSize",
            },
        },
        controlInCount = 6,
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
                name = "OnResetMoonSize",
                delayed = false,
            },
            [3] = {
                name = "OnSetMoonDirection",
                delayed = false,
            },
            [4] = {
                name = "OnSetMoonHDRMultiplier",
                delayed = false,
            },
            [5] = {
                name = "OnSetMoonSize",
                delayed = false,
            },
        },
        controlOutCount = 6,
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
                name = "ResetAfterBeat",
                type = "bool",
            },
            [4] = {
                name = "Size",
                type = "float",
            },
        },
        dataInCount = 5,
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
    metadataTable[GetPathID("Domino/System/Player/AlternateInventoryModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Main",
            },
            [1] = {
                name = "Mission",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Error",
                delayed = false,
            },
            [1] = {
                name = "Switched",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "clearAfterSwitch",
                type = "bool",
            },
            [1] = {
                name = "players",
                type = "group",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/UI/FogOfWarModifier.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "DisableUnfogging",
            },
            [1] = {
                name = "EnableUnfogging",
            },
            [2] = {
                name = "ResetFogOfWar",
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
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/UI/OverrideMenuAccessibility.lua")] = {
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
                name = "LootMenuEnabled",
                type = "bool",
            },
            [5] = {
                name = "OnlineMenuEnabled",
                type = "bool",
            },
            [6] = {
                name = "PerksMenuEnabled",
                type = "bool",
            },
            [7] = {
                name = "ResistanceMenuEnabled",
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
                name = "Stop",
            },
        },
        controlInCount = 8,
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
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 8,
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
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_BeaconGroupManager.debug.lua")] = {
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
                name = "eAnchor",
                type = "entity",
            },
            [1] = {
                name = "gLocalGroup",
                type = "group",
            },
            [2] = {
                name = "gMasterGroup",
                type = "group",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_BeaconListener.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Broken",
                delayed = false,
            },
            [1] = {
                name = "EnemiesRemoved",
                delayed = false,
            },
            [2] = {
                name = "PreviouslyBroken",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "eAttractorSTP01",
                type = "entity",
            },
            [1] = {
                name = "eAttractorSTP02",
                type = "entity",
            },
            [2] = {
                name = "eAttractorSTP03",
                type = "entity",
            },
            [3] = {
                name = "eBeaconPrefab",
                type = "entity",
            },
            [4] = {
                name = "sObjectName",
                type = "string",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_BeaconRumble.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Close",
            },
            [1] = {
                name = "In",
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
                name = "Beacon",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_LightningStrike.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Spawn",
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
                name = "eLight",
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
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_RandomWaveSpawner.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
            [1] = {
                name = "Spawn",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Enabled",
                delayed = false,
            },
            [1] = {
                name = "NoneValid",
                delayed = false,
            },
            [2] = {
                name = "Spawned",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "eSpawner01",
                type = "entity",
            },
            [1] = {
                name = "eSpawner02",
                type = "entity",
            },
            [2] = {
                name = "eSpawner03",
                type = "entity",
            },
            [3] = {
                name = "eSpawner04",
                type = "entity",
            },
            [4] = {
                name = "eSpawner05",
                type = "entity",
            },
            [5] = {
                name = "eSpawner06",
                type = "entity",
            },
            [6] = {
                name = "eSpawner07",
                type = "entity",
            },
            [7] = {
                name = "eSpawner08",
                type = "entity",
            },
            [8] = {
                name = "eSpawner09",
                type = "entity",
            },
            [9] = {
                name = "eSpawner10",
                type = "entity",
            },
            [10] = {
                name = "eSpawner11",
                type = "entity",
            },
            [11] = {
                name = "eSpawner12",
                type = "entity",
            },
            [12] = {
                name = "eSpawner13",
                type = "entity",
            },
            [13] = {
                name = "eSpawner14",
                type = "entity",
            },
            [14] = {
                name = "eSpawner15",
                type = "entity",
            },
            [15] = {
                name = "eSpawner16",
                type = "entity",
            },
            [16] = {
                name = "eSpawner17",
                type = "entity",
            },
            [17] = {
                name = "eSpawner18",
                type = "entity",
            },
            [18] = {
                name = "eSpawner19",
                type = "entity",
            },
            [19] = {
                name = "eSpawner20",
                type = "entity",
            },
            [20] = {
                name = "eSpawner21",
                type = "entity",
            },
            [21] = {
                name = "eSpawner22",
                type = "entity",
            },
            [22] = {
                name = "eSpawner23",
                type = "entity",
            },
            [23] = {
                name = "eSpawner24",
                type = "entity",
            },
            [24] = {
                name = "eSpawner25",
                type = "entity",
            },
            [25] = {
                name = "eSpawner26",
                type = "entity",
            },
            [26] = {
                name = "eSpawner27",
                type = "entity",
            },
            [27] = {
                name = "eSpawner28",
                type = "entity",
            },
            [28] = {
                name = "eSpawner29",
                type = "entity",
            },
            [29] = {
                name = "eSpawner30",
                type = "entity",
            },
            [30] = {
                name = "eSpawner31",
                type = "entity",
            },
            [31] = {
                name = "eSpawner32",
                type = "entity",
            },
            [32] = {
                name = "eSpawner33",
                type = "entity",
            },
            [33] = {
                name = "eSpawner34",
                type = "entity",
            },
            [34] = {
                name = "eSpawner35",
                type = "entity",
            },
            [35] = {
                name = "eSpawner36",
                type = "entity",
            },
            [36] = {
                name = "eSpawner37",
                type = "entity",
            },
            [37] = {
                name = "eSpawner38",
                type = "entity",
            },
            [38] = {
                name = "eSpawner39",
                type = "entity",
            },
            [39] = {
                name = "eSpawner40",
                type = "entity",
            },
            [40] = {
                name = "eSpawner41",
                type = "entity",
            },
            [41] = {
                name = "eSpawner42",
                type = "entity",
            },
            [42] = {
                name = "eSpawner43",
                type = "entity",
            },
            [43] = {
                name = "eSpawner44",
                type = "entity",
            },
            [44] = {
                name = "eSpawner45",
                type = "entity",
            },
            [45] = {
                name = "eSpawner46",
                type = "entity",
            },
            [46] = {
                name = "eSpawner47",
                type = "entity",
            },
            [47] = {
                name = "eSpawner48",
                type = "entity",
            },
            [48] = {
                name = "eSpawner49",
                type = "entity",
            },
            [49] = {
                name = "fMaxDistance",
                type = "float",
            },
            [50] = {
                name = "fMinDistance",
                type = "float",
            },
        },
        dataInCount = 51,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "LT02_040_B50";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50";
    self.gPlayer = nil;
    self.ePlayer = nil;
    self.iBeaconsTotal = 6;
    self.iBeaconsDestroyed = 0;
    self.eHost = nil;
    self.eLKP = "2104050489275466597";
    self.eWolfBeacon01 = "2104093206518960802";
    self.eWolfBeacon02 = "2104093239425372865";
    self.eWolfBeacon03 = "2104093259390259931";
    self.eWolfBeacon04 = "2104093267088904932";
    self.eWolfBeacon05 = "2104093271723610861";
    self.oBeaconObjective = {
        section = "Objectives",
        item = "LT02_040_B10_DestroyBeacons",
        id = "882788",
    };
    self.gBadGuys = "#A7C6A84C";
    self.gWaves = "#8FB0F022";
    self.gJacobClones = "#B5FD1B07";
    self.eHuntCS = "2105543193012478305";
    self.eJacobSpawner = "2104080150225237171";
    self.eJacobSpawner01 = "2104080150225237171";
    self.eJacobSpawner02 = "2104082091907021503";
    self.eJacobSpawner03 = "2104082092294994647";
    self.eJacobSpawner04 = "2104082092580207343";
    self.eJacobSpawner05 = "2104082092861225735";
    self.eWaveSpawner01 = "2104066477234603743";
    self.eWaveSpawner02 = "2104082643697091597";
    self.eWaveSpawner03 = "2104082644418511951";
    self.eWaveSpawner04 = "2104082645045560465";
    self.eWaveSpawner05 = "2104082645444019411";
    self.eBeaconSoundPoint01 = "2104093291845784310";
    self.eBeaconSoundPoint02 = "2104093294574179064";
    self.eBeaconSoundPoint03 = "2104093297252242170";
    self.eBeaconSoundPoint04 = "2104093299577983740";
    self.eBeaconSoundPoint05 = "2104093301782090494";
    self.eBeaconSoundPoint06 = "2104426357806096311";
    self.sGeneratorName = "Generator_01.Generator_01_Beacon_2";
    self.eJacobSpawner06 = "2104150708696650537";
    self.eJacobSpawner07 = "2104150710781219649";
    self.eJacobSpawner08 = "2104151237212509002";
    self.eJacobSpawner09 = "2104151238705681250";
    self.eJacobSpawner10 = "2104151239433393018";
    self.eJacobSpawner11 = "2104151240723141522";
    self.eJacobSpawner12 = "2104151241778009002";
    self.eJacobSpawner13 = "2104151242971288514";
    self.eJacobSpawner14 = "2104151243631891418";
    self.eJacobSpawner15 = "2104151245601117170";
    self.iJacobGroupSize = 0;
    self.eCurrentJacob = nil;
    self.iWavesGroupSize = 0;
    self.bJacobSpeaking = false;
    self.bReloaded = false;
    self.eJacobSpawner16 = "2104230937087741556";
    self.eJacobSpawner17 = "2104230937087741556";
    self.eJacobSpawner18 = "2104230945897877163";
    self.eJacobSpawner19 = "2104230947468644032";
    self.eJacobSpawner20 = "2104230948458499799";
    self.eJacobSpawner21 = "2104230950507417324";
    self.eJacobSpawner22 = "2104230952424214280";
    self.eJacobSpawner23 = "2104230954422800157";
    self.eJacobSpawner24 = "2104230955351838514";
    self.eJacobSpawner25 = "2104230957272829767";
    self.gBeacon1Dudes = "#769BD0B1";
    self.gBeacon3Dudes = "#3B5371BA";
    self.fWaveRespawnDelay = 8;
    self.gB50dudes = "#A7C6A84C";
    self.gBeacon2Dudes = "#F00FA21F";
    self.gBeacon4Dudes = "#26564102";
    self.gBeacon5Dudes = "#ED0A92A7";
    self.eWolfBeacon06 = "2104425287658789750";
    self.gBeacon6Dudes = "#6B9EE009";
    self.eBeaconMarker01 = "2104658680929606903";
    self.eBeaconMarker02 = "2104658690048023803";
    self.eBeaconMarker03 = "2104658690503105791";
    self.eBeaconMarker04 = "2104658690863815939";
    self.eBeaconMarker05 = "2104658691180485895";
    self.eBeaconMarker06 = "2104658691509738763";
    self.iMaxAI = 13;
    self.iCurrentAI = 0;
    self.iBeaconProgressID = 0;
    self.bIsLastBeacon = false;
    self.bIsValidJacobKill = false;
    self.eWaveSpawner06 = "2105214105112570540";
    self.eWaveSpawner07 = "2105214111139785443";
    self.eWaveSpawner08 = "2105214114289707798";
    self.eWaveSpawner09 = "2105214115065654089";
    self.eWaveSpawner10 = "2105214115831114620";
    self.eWaveSpawner11 = "2105214117320092591";
    self.eWaveSpawner12 = "2105214120142859236";
    self.eWaveSpawner13 = "2105214121654905879";
    self.eWaveSpawner14 = "2105214123158563914";
    self.eWaveSpawner15 = "2105214124584627325";
    self.eWaveSpawner16 = "2105214134111989242";
    self.eWaveSpawner17 = "2105214135219285549";
    self.ePosition04Attractor01 = "2105214707139905358";
    self.ePosition04Attractor02 = "2105214792221367972";
    self.ePosition04Attractor03 = "2105214807635435176";
    self.ePosition05Attractor01 = "2105224734550544596";
    self.ePosition05Attractor02 = "2105224734552641752";
    self.ePosition05Attractor03 = "2105224734554738908";
    self.ePosition01Attractor01 = "2105224713243480262";
    self.ePosition01Attractor02 = "2105224713245577418";
    self.ePosition01Attractor03 = "2105224713241383106";
    self.ePosition02Attractor01 = "2105224692448121022";
    self.ePosition02Attractor02 = "2105224692446023866";
    self.ePosition02Attractor03 = "2105224692443926710";
    self.ePosition03Attractor01 = "2105224677208117426";
    self.ePosition03Attractor02 = "2105224675970797742";
    self.ePosition03Attractor03 = "2105224674997719210";
    self.bBeacon01Destroyed = false;
    self.bBeacon02Destroyed = false;
    self.iThreatLevel1 = 3;
    self.ithreatLevel2 = 5;
    self.bBeacon03Destroyed = false;
    self.bBeacon04Destroyed = false;
    self.bBeacon05Destroyed = false;
    self.iDebugGroup = 0;
    self.eWaveSpawner18 = "2105254161403622553";
    self.eWaveSpawner19 = "2105254165826516173";
    self.eWaveSpawner20 = "2105254166921229568";
    self.eWaveSpawner21 = "2105254167592318259";
    self.eWaveSpawner22 = "2105254168838026598";
    self.eWaveSpawner23 = "2105254169928545689";
    self.eWaveSpawner24 = "2105254171172156878";
    self.eWaveSpawner25 = "2105254171302180337";
    self.fSpawnRadius_A = 90;
    self.fSpawnRadius_B = 80;
    self.fSpawnRadius_C = 60;
    self.Rumble_Timer = 0;
    self.box_MultipleOR_104 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2669745");
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
    self.box_MultipleOR_359 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_359;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_359");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|9730663");
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
        [0] = self.f_box_MultipleOR_359_Out,
    });
    self.box_PlayDialog_v6_147 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_147;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_147");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|12394544");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_147_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_147_FinishedInterrupted,
    });
    self.box_MultipleOR_290 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_290;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_290");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|24778455");
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
    self.box_OverrideMenuAccessibility_131 = cbox:CreateBox("Domino/System/UI/OverrideMenuAccessibility.lua");
    l0 = self.box_OverrideMenuAccessibility_131;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideMenuAccessibility_131");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|41761918");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_OverrideMenuAccessibility_131_Out,
    });
    self.box_MultipleOR_124 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_124;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|49794398");
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
        [0] = self.f_box_MultipleOR_124_Out,
    });
    self.box_PlayDialog_v6_122 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_122;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|67779419");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_122_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_122_FinishedInterrupted,
    });
    self.box_LT02_040_B50_LightningStrike_185 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_LightningStrike.debug.lua");
    l0 = self.box_LT02_040_B50_LightningStrike_185;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_LightningStrike_185");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|80003241");
    l0:SetConnections({
        -- Done,
        [0] = self.f_box_LT02_040_B50_LightningStrike_185_Done,
    });
    self.box_ActivityInitialized_7 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|97669360");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_7_Out,
    });
    self.box_MultipleOR_291 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_291;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_291");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|105311458");
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
    self.box_VisionModeModifier_v2_69 = cbox:CreateBox("Domino/System/VisionModeModifier_v2.lua");
    l0 = self.box_VisionModeModifier_v2_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisionModeModifier_v2_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|120384137");
    l0:SetConnections({
        -- StartedCustomIntoxication,
        [1] = self.f_box_VisionModeModifier_v2_69_StartedCustomIntoxication,
    });
    self.box_SoundModifier_v2_177 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_177;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_177");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|121569153");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_177_Started,
    });
    self.box_LT02_040_B50_BeaconListener_12 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_BeaconListener.debug.lua");
    l0 = self.box_LT02_040_B50_BeaconListener_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_BeaconListener_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|132353182");
    l0:SetConnections({
        -- Broken,
        [0] = self.f_box_LT02_040_B50_BeaconListener_12_Broken,
    });
    self.box_SpawnAI_353 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_353;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_353");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|138226374");
    l0:SetConnections({
    });
    self.box_SpawnAI_140 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_140;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_140");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|141545280");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_140_Out,
    });
    self.box_LT02_040_B50_BeaconGroupManager_191 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_BeaconGroupManager.debug.lua");
    l0 = self.box_LT02_040_B50_BeaconGroupManager_191;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_BeaconGroupManager_191");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|179381526");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_LT02_040_B50_BeaconGroupManager_191_Disabled,
    });
    self.box_LT02_040_B50_BeaconListener_11 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_BeaconListener.debug.lua");
    l0 = self.box_LT02_040_B50_BeaconListener_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_BeaconListener_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|182710353");
    l0:SetConnections({
        -- Broken,
        [0] = self.f_box_LT02_040_B50_BeaconListener_11_Broken,
    });
    self.box_LT02_040_B50_BeaconGroupManager_167 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_BeaconGroupManager.debug.lua");
    l0 = self.box_LT02_040_B50_BeaconGroupManager_167;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_BeaconGroupManager_167");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|194317423");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_LT02_040_B50_BeaconGroupManager_167_Disabled,
    });
    self.box_LT02_040_B50_BeaconRumble_391 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_BeaconRumble.debug.lua");
    l0 = self.box_LT02_040_B50_BeaconRumble_391;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_BeaconRumble_391");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|202456758");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_LT02_040_B50_BeaconRumble_391_Out,
    });
    self.box_MultipleOR_123 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_123;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|206747373");
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
    self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|211312350");
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
    self.box_MultipleOR_306 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_306;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_306");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|212907450");
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
        [0] = self.f_box_MultipleOR_306_Out,
    });
    self.box_SpawnAI_498 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_498;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_498");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|214329357");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_498_Out,
    });
    self.box_Delay_v5_136 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_136;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_136");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|216876402");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_136_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_136_TimeElapsed,
    });
    self.box_LT02_040_B50_LightningStrike_179 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_LightningStrike.debug.lua");
    l0 = self.box_LT02_040_B50_LightningStrike_179;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_LightningStrike_179");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|228697884");
    l0:SetConnections({
        -- Done,
        [0] = self.f_box_LT02_040_B50_LightningStrike_179_Done,
    });
    self.box_SoundModifier_v2_175 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_175;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_175");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|231027395");
    l0:SetConnections({
    });
    self.box_MultipleOR_120 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|237209771");
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
    self.box_SpawnAI_352 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_352;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_352");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|268888612");
    l0:SetConnections({
    });
    self.box_MultipleOR_261 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_261;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_261");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|281999085");
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
    self.box_PlayDialog_v6_377 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_377;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_377");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|295074968");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_377_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_377_FinishedInterrupted,
    });
    self.box_SoundModifier_v2_521 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_521;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_521");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|305751159");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_521_Started,
    });
    self.box_PlayDialog_v6_379 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_379;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_379");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|320199763");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_379_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_379_FinishedInterrupted,
    });
    self.box_Delay_v5_523 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_523;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_523");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|326504238");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_523_TimeElapsed,
    });
    self.box_Delay_v5_132 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_132;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_132");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|348087089");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_132_TimeElapsed,
    });
    self.box_PlayDialog_v6_364 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_364;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_364");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|372560228");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_364_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_364_FinishedInterrupted,
    });
    self.box_PlayDialog_v6_365 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_365;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_365");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|373082697");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_365_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_365_FinishedInterrupted,
    });
    self.box_Delay_v5_530 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_530;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_530");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|381620782");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_530_TimeElapsed,
    });
    self.box_Switch_117 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|387710537");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 10,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_Switch_117_Out,
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Switch_117_Output_0,
                [1] = self.f_box_Switch_117_Output_1,
                [2] = self.f_box_Switch_117_Output_2,
                [3] = self.f_box_Switch_117_Output_3,
                [4] = self.f_box_Switch_117_Output_4,
                [5] = self.f_box_Switch_117_Output_5,
                [6] = self.f_box_Switch_117_Output_6,
                [7] = self.f_box_Switch_117_Output_7,
                [8] = self.f_box_Switch_117_Output_8,
                [9] = self.f_box_Switch_117_Output_9,
            },
            count = 10,
        },
    });
    self.box_MultipleOR_127 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_127;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_127");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|391300109");
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
        [0] = self.f_box_MultipleOR_127_Out,
    });
    self.box_PlayDialog_v6_375 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_375;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_375");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|393152258");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_375_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_375_FinishedInterrupted,
    });
    self.box_LT02_040_B50_BeaconGroupManager_170 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_BeaconGroupManager.debug.lua");
    l0 = self.box_LT02_040_B50_BeaconGroupManager_170;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_BeaconGroupManager_170");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|394394532");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_LT02_040_B50_BeaconGroupManager_170_Disabled,
    });
    self.box_ActivityAcknowledgeGate_4 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|398123291");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_4_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_4_Reloaded,
    });
    self.box_PlayDialog_v6_373 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_373;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_373");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|405898537");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_373_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_373_FinishedInterrupted,
    });
    self.box_LT02_040_B50_BeaconRumble_423 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_BeaconRumble.debug.lua");
    l0 = self.box_LT02_040_B50_BeaconRumble_423;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_BeaconRumble_423");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|407428177");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_LT02_040_B50_BeaconRumble_423_Out,
    });
    self.box_GroupSizeListener_v5_86 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|426235686");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_86_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_86_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_86_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_86_MemberRemoved,
    });
    self.box_Delay_v5_489 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_489;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_489");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|445078184");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_489_TimeElapsed,
    });
    self.box_SpawnAI_152 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_152;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_152");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|460006168");
    l0:SetConnections({
    });
    self.box_NarrativeSceneSetup_529 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_529;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_529");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|471769961");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_NarrativeSceneSetup_529_Out,
    });
    self.box_GroupSizeListener_v5_428 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_428;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_428");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|474899132");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_428_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_428_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_428_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_428_MemberRemoved,
    });
    self.box_Bind_v4_361 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_361;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_361");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|491177733");
    l0:SetConnections({
    });
    self.box_Bind_v4_70 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|499142500");
    l0:SetConnections({
    });
    self.box_MultipleOR_139 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_139;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_139");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|505744613");
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
        [0] = self.f_box_MultipleOR_139_Out,
    });
    self.box_SpawnAI_108 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|509127443");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_108_Out,
    });
    self.box_MultipleOR_390 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_390;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_390");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|510852712");
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
        [0] = self.f_box_MultipleOR_390_Out,
    });
    self.box_Switch_54 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|511981066");
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
        -- Out,
        [1] = self.f_box_Switch_54_Out,
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Switch_54_Output_0,
                [1] = self.f_box_Switch_54_Output_1,
                [2] = self.f_box_Switch_54_Output_2,
                [3] = self.f_box_Switch_54_Output_3,
                [4] = self.f_box_Switch_54_Output_4,
                [5] = self.f_box_Switch_54_Output_5,
            },
            count = 8,
        },
    });
    self.box_MultipleOR_67 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|519685699");
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
        [0] = self.f_box_MultipleOR_67_Out,
    });
    self.box_Delay_v5_526 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_526;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_526");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|522812788");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_526_TimeElapsed,
    });
    self.box_SpawnAI_469 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_469;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_469");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|542537598");
    l0:SetConnections({
    });
    self.box_Bind_v4_25 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|549585063");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_25_Bound,
    });
    self.box_SpawnAI_462 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_462;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_462");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|574692149");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_462_Out,
    });
    self.box_Delay_v5_197 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_197;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_197");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|588284894");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_197_TimeElapsed,
    });
    self.box_MultipleOR_98 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|609068904");
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
        [0] = self.f_box_MultipleOR_98_Out,
    });
    self.box_MultipleOR_280 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_280;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_280");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|614662209");
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
    self.box_PlayDialog_v6_126 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_126;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|615942356");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_126_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_126_FinishedInterrupted,
    });
    self.box_GroupSizeListener_v5_96 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|616427100");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_96_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_96_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_96_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_96_MemberRemoved,
    });
    self.box_SpawnAI_468 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_468;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_468");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|618634732");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_468_Out,
    });
    self.box_Delay_v5_357 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_357;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_357");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|637948901");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_357_TimeElapsed,
    });
    self.box_MultipleOR_21 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|640035532");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 6,
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
    self.box_MultipleOR_118 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|642054346");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 10,
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
    self.box_OnceOnly_v3_421 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_421;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_421");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|650872757");
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
    self.box_AlternateInventoryModifier_v2_49 = cbox:CreateBox("Domino/System/Player/AlternateInventoryModifier_v2.lua");
    l0 = self.box_AlternateInventoryModifier_v2_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AlternateInventoryModifier_v2_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|660117490");
    l0:SetConnections({
        -- Switched,
        [1] = self.f_box_AlternateInventoryModifier_v2_49_Switched,
    });
    self.box_SpawnAI_455 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_455;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_455");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|672789890");
    l0:SetConnections({
    });
    self.box_MultipleOR_29 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|675796891");
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
        [0] = self.f_box_MultipleOR_29_Out,
    });
    self.box_Delay_v5_491 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_491;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_491");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|690462303");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_491_TimeElapsed,
    });
    self.box_MultipleOR_372 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_372;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_372");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|700639901");
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
        [0] = self.f_box_MultipleOR_372_Out,
    });
    self.box_Delay_v5_414 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_414;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_414");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|702493543");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_414_TimeElapsed,
    });
    self.box_ProximityRadiusListener_v3_454 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_454;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_454");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|710709974");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_454_SomeoneNear,
    });
    self.box_SpawnAI_438 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_438;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_438");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|711080970");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_438_Out,
    });
    self.box_Delay_v5_386 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_386;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_386");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|726880378");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_386_TimeElapsed,
    });
    self.box_ExitZoneWarningListener_v3_106 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|731532088");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_106_FailingZoneEntered,
    });
    self.box_HealthListener_v6_420 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_420;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_420");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|752475844");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_HealthListener_v6_420_Critical,
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_420_Damaged,
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_420_Disabled,
        -- Downed,
        [3] = self.f_box_HealthListener_v6_420_Downed,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_420_Enabled,
        -- Healed,
        [5] = self.f_box_HealthListener_v6_420_Healed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_420_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_420_Revived,
    });
    self.box_MultipleOR_374 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_374;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_374");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|763400045");
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
        [0] = self.f_box_MultipleOR_374_Out,
    });
    self.box_Delay_v5_330 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_330;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_330");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|773446018");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_330_TimeElapsed,
    });
    self.box_SpawnAI_345 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_345;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_345");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|787783406");
    l0:SetConnections({
    });
    self.box_MultipleOR_430 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_430;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_430");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|845951043");
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
        [0] = self.f_box_MultipleOR_430_Out,
    });
    self.box_GroupSizeListener_v5_387 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_387;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_387");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|855051698");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_387_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_387_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_387_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_387_MemberRemoved,
    });
    self.box_MultipleOR_128 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_128;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_128");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|865946447");
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
    self.box_ColorRemapTextureModifier_v3_48 = cbox:CreateBox("Domino/System/ColorRemapTextureModifier_v3.lua");
    l0 = self.box_ColorRemapTextureModifier_v3_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ColorRemapTextureModifier_v3_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|886191703");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ColorRemapTextureModifier_v3_48_Added,
    });
    self.box_MultipleOR_303 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_303;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_303");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|904426437");
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
        [0] = self.f_box_MultipleOR_303_Out,
    });
    self.box_PlayDialog_v6_55 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|906356188");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_55_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_55_FinishedInterrupted,
    });
    self.box_MultipleOR_358 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_358;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_358");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|907641431");
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
    self.box_RemoveEntity_v2_493 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_493;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_493");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|914983453");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_493_Out,
    });
    self.box_LT02_040_B50_BeaconRumble_425 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_BeaconRumble.debug.lua");
    l0 = self.box_LT02_040_B50_BeaconRumble_425;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_BeaconRumble_425");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|929210631");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_LT02_040_B50_BeaconRumble_425_Out,
    });
    self.box_MultipleOR_114 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|936439167");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 6,
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
        [0] = self.f_box_MultipleOR_114_Out,
    });
    self.box_MoonModifier_141 = cbox:CreateBox("Domino/System/MoonModifier.lua");
    l0 = self.box_MoonModifier_141;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MoonModifier_141");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|937097484");
    l0:SetConnections({
        -- OnSetMoonSize,
        [5] = self.f_box_MoonModifier_141_OnSetMoonSize,
    });
    self.box_SpawnAI_444 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_444;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_444");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|940394119");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_444_Out,
    });
    self.box_MultipleOR_326 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_326;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_326");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|965164916");
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
        [0] = self.f_box_MultipleOR_326_Out,
    });
    self.box_MultipleOR_288 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_288;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_288");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|992003264");
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
        [0] = self.f_box_MultipleOR_288_Out,
    });
    self.box_MultipleOR_110 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1001366583");
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
    self.box_SpawnAI_449 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_449;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_449");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1005576055");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_371 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_371;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_371");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1051285503");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_371_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_371_FinishedInterrupted,
    });
    self.box_SpawnAI_457 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_457;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_457");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1051875603");
    l0:SetConnections({
    });
    self.box_PostFx_v3_499 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_499;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_499");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1055807346");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PostFx_v3_499_Enabled,
    });
    self.box_ProximityRadiusListener_v3_82 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1057464439");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_82_AllFar,
    });
    self.box_ProximityRadiusListener_v3_461 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_461;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_461");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1064283162");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_461_SomeoneNear,
    });
    self.box_SpawnAI_447 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_447;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_447");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1067819468");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_369 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_369;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_369");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1067915765");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_369_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_369_FinishedInterrupted,
    });
    self.box_ProximityRadiusListener_v3_476 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_476;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_476");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1069663644");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_476_SomeoneNear,
    });
    self.box_PlayDialog_v6_144 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_144;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_144");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1083742223");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_144_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_144_FinishedInterrupted,
    });
    self.box_ProximityRadiusListener_v3_432 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_432;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_432");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1092822441");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_432_SomeoneNear,
    });
    self.box_LT02_040_B50_BeaconRumble_419 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_BeaconRumble.debug.lua");
    l0 = self.box_LT02_040_B50_BeaconRumble_419;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_BeaconRumble_419");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1105189552");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_LT02_040_B50_BeaconRumble_419_Out,
    });
    self.box_SpawnAI_348 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_348;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_348");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1121977458");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_382 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_382;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_382");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1128226282");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_382_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_382_FinishedInterrupted,
    });
    self.box_SpawnAI_342 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_342;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_342");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1141926599");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_342_Out,
    });
    self.box_Delay_v5_522 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_522;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_522");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1146421970");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_522_TimeElapsed,
    });
    self.box_SpawnAI_356 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_356;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_356");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1163816365");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_367 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_367;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_367");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1221376985");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_367_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_367_FinishedInterrupted,
    });
    self.box_Delay_v5_524 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_524;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_524");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1240707797");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_524_TimeElapsed,
    });
    self.box_NarrativeFade_350 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_350;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_350");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1248057045");
    l0:SetConnections({
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_350_FadedOut,
    });
    self.box_Delay_v5_150 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_150;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_150");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1249233385");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_150_TimeElapsed,
    });
    self.box_PlayDialog_v6_360 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_360;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_360");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1252095243");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_360_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_360_FinishedInterrupted,
    });
    self.box_Delay_v5_484 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_484;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_484");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1263566086");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_484_TimeElapsed,
    });
    self.box_PhoneCallExclusivityModifier_27 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1275107198");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_27_Enabled,
    });
    self.box_SpawnAI_439 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_439;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_439");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1277604822");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_LightningStrike_216 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_LightningStrike.debug.lua");
    l0 = self.box_LT02_040_B50_LightningStrike_216;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_LightningStrike_216");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1283686880");
    l0:SetConnections({
        -- Done,
        [0] = self.f_box_LT02_040_B50_LightningStrike_216_Done,
    });
    self.box_EntityStatusListener_362 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_362;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_362");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1288476614");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_362_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_362_Loaded,
    });
    self.box_MultipleOR_113 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1308731644");
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
    self.box_MultipleOR_295 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_295;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_295");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1316521161");
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
        [0] = self.f_box_MultipleOR_295_Out,
    });
    self.box_ProximityRadiusListener_v3_480 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_480;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_480");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1320488275");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_480_SomeoneNear,
    });
    self.box_MultipleOR_111 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1333939233");
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
        [0] = self.f_box_MultipleOR_111_Out,
    });
    self.box_PlayDialog_v6_107 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1364937288");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_107_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_107_FinishedInterrupted,
    });
    self.box_Switch_137 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_137;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_137");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1365864012");
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
                [0] = self.f_box_Switch_137_Output_0,
                [1] = self.f_box_Switch_137_Output_1,
                [2] = self.f_box_Switch_137_Output_2,
                [3] = self.f_box_Switch_137_Output_3,
                [4] = self.f_box_Switch_137_Output_4,
            },
            count = 5,
        },
    });
    self.box_MultipleOR_159 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_159;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_159");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1369114437");
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
        [0] = self.f_box_MultipleOR_159_Out,
    });
    self.box_LT02_040_B50_RandomWaveSpawner_62 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_RandomWaveSpawner.debug.lua");
    l0 = self.box_LT02_040_B50_RandomWaveSpawner_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_RandomWaveSpawner_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1375964658");
    l0:SetConnections({
        -- NoneValid,
        [1] = self.f_box_LT02_040_B50_RandomWaveSpawner_62_NoneValid,
        -- Spawned,
        [2] = self.f_box_LT02_040_B50_RandomWaveSpawner_62_Spawned,
    });
    self.box_SpawnAI_344 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_344;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_344");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1377210437");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_BeaconListener_15 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_BeaconListener.debug.lua");
    l0 = self.box_LT02_040_B50_BeaconListener_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_BeaconListener_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1377729842");
    l0:SetConnections({
        -- Broken,
        [0] = self.f_box_LT02_040_B50_BeaconListener_15_Broken,
    });
    self.box_MultipleOR_378 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_378;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_378");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1390042382");
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
        [0] = self.f_box_MultipleOR_378_Out,
    });
    self.box_MultipleOR_370 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_370;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_370");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1394225819");
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
        [0] = self.f_box_MultipleOR_370_Out,
    });
    self.box_SpawnAI_154 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_154;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_154");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1395314650");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_154_Out,
    });
    self.box_MultipleOR_315 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_315;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_315");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1405498911");
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
    self.box_MultipleOR_66 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1411661501");
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
        [0] = self.f_box_MultipleOR_66_Out,
    });
    self.box_Delay_v5_528 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_528;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_528");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1411958461");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_528_TimeElapsed,
    });
    self.box_PostWWiseEventSetState_65 = cbox:CreateBox("Domino/System/PostWWiseEventSetState.lua");
    l0 = self.box_PostWWiseEventSetState_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostWWiseEventSetState_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1430159758");
    l0:SetConnections({
    });
    self.box_MultipleOR_354 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_354;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_354");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1433444949");
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
        [0] = self.f_box_MultipleOR_354_Out,
    });
    self.box_SpawnAI_441 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_441;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_441");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1437063714");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_LightningStrike_166 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_LightningStrike.debug.lua");
    l0 = self.box_LT02_040_B50_LightningStrike_166;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_LightningStrike_166");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1455469267");
    l0:SetConnections({
        -- Done,
        [0] = self.f_box_LT02_040_B50_LightningStrike_166_Done,
    });
    self.box_LT02_040_B50_BeaconListener_14 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_BeaconListener.debug.lua");
    l0 = self.box_LT02_040_B50_BeaconListener_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_BeaconListener_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1469445806");
    l0:SetConnections({
        -- Broken,
        [0] = self.f_box_LT02_040_B50_BeaconListener_14_Broken,
    });
    self.box_EntityStatusListener_495 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_495;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_495");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1473031266");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_495_Loaded,
    });
    self.box_LT02_040_B50_BeaconGroupManager_161 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_BeaconGroupManager.debug.lua");
    l0 = self.box_LT02_040_B50_BeaconGroupManager_161;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_BeaconGroupManager_161");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1473037256");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_LT02_040_B50_BeaconGroupManager_161_Disabled,
    });
    self.box_PlayDialog_v6_146 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_146;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_146");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1479940608");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_146_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_146_FinishedInterrupted,
    });
    self.box_SpawnAI_470 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_470;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_470");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1495127035");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_142 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_142;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_142");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1499004840");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_142_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_142_FinishedInterrupted,
    });
    self.box_MultipleOR_502 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_502;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_502");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1565358366");
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
        [0] = self.f_box_MultipleOR_502_Out,
    });
    self.box_MultipleOR_368 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_368;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_368");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1624043171");
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
        [0] = self.f_box_MultipleOR_368_Out,
    });
    self.box_ProximityRadiusListener_v3_431 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_431;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_431");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1624360894");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_431_SomeoneNear,
    });
    self.box_LockTimeOfDay_28 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.LockTimeOfDay.debug.lua");
    l0 = self.box_LockTimeOfDay_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LockTimeOfDay_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1634059007");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_LockTimeOfDay_28_Out,
    });
    self.box_EntityStatusListener_486 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_486;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_486");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1637550993");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_486_Loaded,
    });
    self.box_ProximityRadiusListener_v3_481 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_481;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_481");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1639767635");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_481_SomeoneNear,
    });
    self.box_SpawnAI_497 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_497;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_497");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1666160155");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_497_Out,
    });
    self.box_Delay_v5_190 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_190;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_190");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1669888433");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_190_TimeElapsed,
    });
    self.box_RemoveEntity_v2_485 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_485;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_485");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1682940111");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_485_Out,
    });
    self.box_LT02_040_B50_BeaconListener_3 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_BeaconListener.debug.lua");
    l0 = self.box_LT02_040_B50_BeaconListener_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_BeaconListener_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1694143077");
    l0:SetConnections({
        -- Broken,
        [0] = self.f_box_LT02_040_B50_BeaconListener_3_Broken,
    });
    self.box_MultipleOR_284 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_284;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_284");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1696122137");
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
        [0] = self.f_box_MultipleOR_284_Out,
    });
    self.box_MultipleOR_145 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_145;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_145");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1701411839");
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
        [0] = self.f_box_MultipleOR_145_Out,
    });
    self.box_SpawnAI_153 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_153;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_153");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1704608965");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_341 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_341;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_341");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1728257280");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_341_AllFar,
    });
    self.box_MultipleOR_129 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_129;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1737223645");
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
        [0] = self.f_box_MultipleOR_129_Out,
    });
    self.box_Delay_v5_487 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_487;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_487");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1742904153");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_487_TimeElapsed,
    });
    self.box_LT02_040_B50_BeaconRumble_501 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_BeaconRumble.debug.lua");
    l0 = self.box_LT02_040_B50_BeaconRumble_501;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_BeaconRumble_501");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1756930125");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_LT02_040_B50_BeaconRumble_501_Out,
    });
    self.box_ProximityRadiusListener_v3_479 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_479;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_479");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1773335289");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_479_SomeoneNear,
    });
    self.box_LT02_040_B50_BeaconGroupManager_217 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_BeaconGroupManager.debug.lua");
    l0 = self.box_LT02_040_B50_BeaconGroupManager_217;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_BeaconGroupManager_217");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1781476200");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_LT02_040_B50_BeaconGroupManager_217_Disabled,
    });
    self.box_MultipleOR_313 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_313;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_313");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1793446652");
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
        [0] = self.f_box_MultipleOR_313_Out,
    });
    self.box_PostFx_v3_496 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_496;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_496");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1821644384");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PostFx_v3_496_Disabled,
    });
    self.box_MultipleOR_321 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_321;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_321");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1829629375");
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
        [0] = self.f_box_MultipleOR_321_Out,
    });
    self.box_Delay_v5_384 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_384;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_384");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1837787537");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_384_TimeElapsed,
    });
    self.box_MultipleOR_388 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_388;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_388");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1840876676");
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
        [0] = self.f_box_MultipleOR_388_Out,
    });
    self.box_SpawnAI_463 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_463;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_463");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1842947170");
    l0:SetConnections({
    });
    self.box_MultipleOR_95 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1848118311");
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
    self.box_MultipleOR_143 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_143;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_143");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1864106975");
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
        [0] = self.f_box_MultipleOR_143_Out,
    });
    self.box_SoundModifier_v2_174 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_174;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_174");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1893256617");
    l0:SetConnections({
    });
    self.box_MultipleOR_309 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_309;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_309");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1895564278");
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
        [0] = self.f_box_MultipleOR_309_Out,
    });
    self.box_MultipleOR_298 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_298;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_298");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1907315277");
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
        [0] = self.f_box_MultipleOR_298_Out,
    });
    self.box_PlayDialog_v6_121 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_121;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1910482251");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_121_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_121_FinishedInterrupted,
    });
    self.box_Delay_v5_155 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_155;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_155");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1920009437");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_155_TimeElapsed,
    });
    self.box_SpawnAI_490 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_490;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_490");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1926091681");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_490_Out,
    });
    self.box_ProximityRadiusListener_v3_453 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_453;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_453");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1932699775");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_453_SomeoneNear,
    });
    self.box_LT02_040_B50_RandomWaveSpawner_52 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_RandomWaveSpawner.debug.lua");
    l0 = self.box_LT02_040_B50_RandomWaveSpawner_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_RandomWaveSpawner_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1945609807");
    l0:SetConnections({
        -- NoneValid,
        [1] = self.f_box_LT02_040_B50_RandomWaveSpawner_52_NoneValid,
        -- Spawned,
        [2] = self.f_box_LT02_040_B50_RandomWaveSpawner_52_Spawned,
    });
    self.box_ProximityRadiusListener_v3_482 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_482;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_482");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1959046995");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_482_SomeoneNear,
    });
    self.box_SoundMusicTriggerBox_64 = cbox:CreateBox("Domino/System/SoundMusicTrigger.lua");
    l0 = self.box_SoundMusicTriggerBox_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMusicTriggerBox_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1975598977");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundMusicTriggerBox_64_Started,
    });
    self.box_SpawnAI_492 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_492;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_492");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1990052577");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_492_Out,
    });
    self.box_MultipleOR_380 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_380;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_380");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1991446171");
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
        [0] = self.f_box_MultipleOR_380_Out,
    });
    self.box_Bind_v4_412 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_412;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_412");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1991659920");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_412_Bound,
    });
    self.box_MultipleOR_158 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_158;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_158");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1994174794");
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
    self.box_MultipleOR_282 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_282;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_282");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1997116082");
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
        [0] = self.f_box_MultipleOR_282_Out,
    });
    self.box_MultipleOR_393 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_393;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_393");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2000373219");
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
        [0] = self.f_box_MultipleOR_393_Out,
    });
    self.box_LT02_040_B50_LightningStrike_180 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_LightningStrike.debug.lua");
    l0 = self.box_LT02_040_B50_LightningStrike_180;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_LightningStrike_180");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2011185826");
    l0:SetConnections({
        -- Done,
        [0] = self.f_box_LT02_040_B50_LightningStrike_180_Done,
    });
    self.box_SpawnAI_458 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_458;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_458");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2014663816");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_458_Out,
    });
    self.box_MultipleOR_363 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_363;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_363");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2040325070");
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
        [0] = self.f_box_MultipleOR_363_Out,
    });
    self.box_SpawnAI_464 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_464;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_464");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2042596775");
    l0:SetConnections({
    });
    self.box_MultipleOR_366 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_366;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_366");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2052178188");
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
        [0] = self.f_box_MultipleOR_366_Out,
    });
    self.box_SpawnAI_347 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_347;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_347");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2057443502");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_BeaconListener_218 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_BeaconListener.debug.lua");
    l0 = self.box_LT02_040_B50_BeaconListener_218;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_BeaconListener_218");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2090580219");
    l0:SetConnections({
        -- Broken,
        [0] = self.f_box_LT02_040_B50_BeaconListener_218_Broken,
    });
    self.box_SpawnAI_343 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_343;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_343");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2091175941");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_343_Out,
    });
    self.box_MultipleOR_376 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_376;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_376");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2097810166");
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
        [0] = self.f_box_MultipleOR_376_Out,
    });
    self.box_GunsForHireSystemModifier_32 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2099478324");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_32_Disabled,
    });
    self.box_PlayDialog_v6_381 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_381;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_381");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2102687705");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_381_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_381_FinishedInterrupted,
    });
    self.box_LT02_040_B50_BeaconGroupManager_169 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_BeaconGroupManager.debug.lua");
    l0 = self.box_LT02_040_B50_BeaconGroupManager_169;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_BeaconGroupManager_169");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2106806029");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_LT02_040_B50_BeaconGroupManager_169_Disabled,
    });
    self.box_MultipleOR_426 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_426;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_426");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2108340792");
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
        [0] = self.f_box_MultipleOR_426_Out,
    });
    self.box_Delay_v5_355 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_355;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_355");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2113124584");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_355_TimeElapsed,
    });
    self.box_Delay_v5_130 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_130;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2117212546");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_130_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_130_TimeElapsed,
    });
    self.box_MultipleOR_88 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2118513731");
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
        [0] = self.f_box_MultipleOR_88_Out,
    });
    self.box_SpawnAI_346 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_346;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_346");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2120376397");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_LightningStrike_171 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_LightningStrike.debug.lua");
    l0 = self.box_LT02_040_B50_LightningStrike_171;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_LightningStrike_171");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2125893378");
    l0:SetConnections({
        -- Done,
        [0] = self.f_box_LT02_040_B50_LightningStrike_171_Done,
    });
    self.box_Delay_v5_102 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2132818701");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_102_TimeElapsed,
    });
    self.box_MultipleOR_416 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_416;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_416");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2144241719");
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
        [0] = self.f_box_MultipleOR_416_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_SetTimeOfDay_43();
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|78941434", "78941434", "LT02_040_B50", "In", "box_SetTimeOfDay_43.SetTimeOfDay", self, l0:GetLuaBox());
    -- SetTimeOfDay
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_176();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1261442737", "1261442737", "LT02_040_B50", "OnLeaveZone", "box_OutputOrder_v2_176.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_268_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_42();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|999818276", "999818276", "LT02_040_B50", "box_Simple_Node_268.Out", "box_ActivityObjectiveMarkerModifier_v3_42.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_269_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_47();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1912955854", "1912955854", "LT02_040_B50", "box_Simple_Node_269.Out", "box_ActivityObjectiveMarkerModifier_v3_47.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_270_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_267();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|204842790", "204842790", "LT02_040_B50", "box_Simple_Node_270.Out", "box_ActivityObjectiveMarkerModifier_v3_267.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_271_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_266();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1386377569", "1386377569", "LT02_040_B50", "box_Simple_Node_271.Out", "box_ActivityObjectiveMarkerModifier_v3_266.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_272_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_265();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1747747889", "1747747889", "LT02_040_B50", "box_Simple_Node_272.Out", "box_ActivityObjectiveMarkerModifier_v3_265.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_273_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_264();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1760871502", "1760871502", "LT02_040_B50", "box_Simple_Node_273.Out", "box_ActivityObjectiveMarkerModifier_v3_264.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_135_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_96();
    l0 = self.box_GroupSizeListener_v5_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|836570152", "836570152", "LT02_040_B50", "box_Simple_Node_135.Out", "box_GroupSizeListener_v5_96.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_GroupSizeListener_v5_86();
    l0 = self.box_GroupSizeListener_v5_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|918213020", "918213020", "LT02_040_B50", "box_Simple_Node_135.Out", "box_GroupSizeListener_v5_86.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_212_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_199();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1366588534", "1366588534", "LT02_040_B50", "box_Simple_Node_212.Out", "box_DynamicLightModifier_199.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_211_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_201();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1869777514", "1869777514", "LT02_040_B50", "box_Simple_Node_211.Out", "box_DynamicLightModifier_201.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_210_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_203();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|288242991", "288242991", "LT02_040_B50", "box_Simple_Node_210.Out", "box_DynamicLightModifier_203.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_214_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_207();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1594289380", "1594289380", "LT02_040_B50", "box_Simple_Node_214.Out", "box_DynamicLightModifier_207.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_258_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_257();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1669843244", "1669843244", "LT02_040_B50", "box_Simple_Node_258.Out", "box_DynamicLightModifier_257.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_213_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_205();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|484672609", "484672609", "LT02_040_B50", "box_Simple_Node_213.Out", "box_DynamicLightModifier_205.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_196_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_BeaconGroupManager_167();
    l0 = self.box_LT02_040_B50_BeaconGroupManager_167;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1899037067", "1899037067", "LT02_040_B50", "box_Simple_Node_196.Out", "box_LT02_040_B50_BeaconGroupManager_167.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_LT02_040_B50_BeaconGroupManager_191();
    l0 = self.box_LT02_040_B50_BeaconGroupManager_191;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|231925553", "231925553", "LT02_040_B50", "box_Simple_Node_196.Out", "box_LT02_040_B50_BeaconGroupManager_191.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_LT02_040_B50_BeaconGroupManager_217();
    l0 = self.box_LT02_040_B50_BeaconGroupManager_217;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1392077715", "1392077715", "LT02_040_B50", "box_Simple_Node_196.Out", "box_LT02_040_B50_BeaconGroupManager_217.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_LT02_040_B50_BeaconGroupManager_170();
    l0 = self.box_LT02_040_B50_BeaconGroupManager_170;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|758067403", "758067403", "LT02_040_B50", "box_Simple_Node_196.Out", "box_LT02_040_B50_BeaconGroupManager_170.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_LT02_040_B50_BeaconGroupManager_169();
    l0 = self.box_LT02_040_B50_BeaconGroupManager_169;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1184248437", "1184248437", "LT02_040_B50", "box_Simple_Node_196.Out", "box_LT02_040_B50_BeaconGroupManager_169.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_LT02_040_B50_BeaconGroupManager_161();
    l0 = self.box_LT02_040_B50_BeaconGroupManager_161;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|170162805", "170162805", "LT02_040_B50", "box_Simple_Node_196.Out", "box_LT02_040_B50_BeaconGroupManager_161.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_194_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_159;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1593444729", "1593444729", "LT02_040_B50", "box_Simple_Node_194.Out", "box_MultipleOR_159.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_195_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_158;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|63960693", "63960693", "LT02_040_B50", "box_Simple_Node_195.Out", "box_MultipleOR_158.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_133_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1651458088", "1651458088", "LT02_040_B50", "box_Simple_Node_133.Out", "box_MultipleOR_88.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_173_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|590755821", "590755821", "LT02_040_B50", "box_Simple_Node_173.Out", "box_MultipleOR_98.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_249_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_238();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1776858228", "1776858228", "LT02_040_B50", "box_Simple_Node_249.Out", "box_OutputOrder_v2_238.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_250_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_239();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1814576547", "1814576547", "LT02_040_B50", "box_Simple_Node_250.Out", "box_OutputOrder_v2_239.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_251_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_240();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|436687772", "436687772", "LT02_040_B50", "box_Simple_Node_251.Out", "box_OutputOrder_v2_240.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_252_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_241();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1609827845", "1609827845", "LT02_040_B50", "box_Simple_Node_252.Out", "box_OutputOrder_v2_241.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_254_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_242();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1274759353", "1274759353", "LT02_040_B50", "box_Simple_Node_254.Out", "box_OutputOrder_v2_242.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_253_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_243();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2063798206", "2063798206", "LT02_040_B50", "box_Simple_Node_253.Out", "box_OutputOrder_v2_243.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_116_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_RandomFloat_v2_189();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1285919798", "1285919798", "LT02_040_B50", "box_Simple_Node_116.Out", "box_RandomFloat_v2_189.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_125_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_94();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1089005122", "1089005122", "LT02_040_B50", "box_Simple_Node_125.Out", "box_Simple_Node_94.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_RandomFloat_v2_193();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|529471363", "529471363", "LT02_040_B50", "box_Simple_Node_125.Out", "box_RandomFloat_v2_193.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_149_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_136();
    l0 = self.box_Delay_v5_136;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1252141821", "1252141821", "LT02_040_B50", "box_Simple_Node_149.Out", "box_Delay_v5_136.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_Simple_Node_138_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_139;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1305034949", "1305034949", "LT02_040_B50", "box_Simple_Node_138.Out", "box_MultipleOR_139.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_504_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_93();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|344332853", "344332853", "LT02_040_B50", "box_Simple_Node_504.Out", "box_OutputOrder_v2_93.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_505_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_514();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|792299749", "792299749", "LT02_040_B50", "box_Simple_Node_505.Out", "box_OutputOrder_v2_514.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_506_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_515();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|968468411", "968468411", "LT02_040_B50", "box_Simple_Node_506.Out", "box_OutputOrder_v2_515.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_507_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_516();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1770951228", "1770951228", "LT02_040_B50", "box_Simple_Node_507.Out", "box_OutputOrder_v2_516.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_508_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_517();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1312412714", "1312412714", "LT02_040_B50", "box_Simple_Node_508.Out", "box_OutputOrder_v2_517.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_97_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_503();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1239765825", "1239765825", "LT02_040_B50", "box_Compare_Integers_97.A_lt_B", "box_Compare_Integers_503.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_104_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_104;
    l1 = self.box_MultipleOR_358;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1490897605", "1490897605", "LT02_040_B50", "box_MultipleOR_104.Out", "box_MultipleOR_358.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_77_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_LightningStrike_179();
    l0 = self.box_LT02_040_B50_LightningStrike_179;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2034077230", "2034077230", "LT02_040_B50", "box_OutputOrder_v2_77.Out", "box_LT02_040_B50_LightningStrike_179.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_77_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_405();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1582940733", "1582940733", "LT02_040_B50", "box_OutputOrder_v2_77.Out", "box_Compare_Boolean_405.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_77_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_506();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2045866705", "2045866705", "LT02_040_B50", "box_OutputOrder_v2_77.Out", "box_Simple_Node_506.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_359_Out()
    local params, l0, l1;
    params = self:OnEnter_box_LT02_040_B50_BeaconRumble_391();
    l0 = self.box_MultipleOR_359;
    l1 = self.box_LT02_040_B50_BeaconRumble_391;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1886439702", "1886439702", "LT02_040_B50", "box_MultipleOR_359.Out", "box_LT02_040_B50_BeaconRumble_391.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_147_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_147;
    l1 = self.box_MultipleOR_111;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|632976503", "632976503", "LT02_040_B50", "box_PlayDialog_v6_147.Finished", "box_MultipleOR_111.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_147_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_147;
    l1 = self.box_MultipleOR_111;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1794296736", "1794296736", "LT02_040_B50", "box_PlayDialog_v6_147.FinishedInterrupted", "box_MultipleOR_111.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_435_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_431();
    l0 = self.box_ProximityRadiusListener_v3_431;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1965753554", "1965753554", "LT02_040_B50", "box_OutputOrder_v2_435.Out", "box_ProximityRadiusListener_v3_431.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_435_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_432();
    l0 = self.box_ProximityRadiusListener_v3_432;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|622976559", "622976559", "LT02_040_B50", "box_OutputOrder_v2_435.Out", "box_ProximityRadiusListener_v3_432.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_435_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_453();
    l0 = self.box_ProximityRadiusListener_v3_453;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1018743291", "1018743291", "LT02_040_B50", "box_OutputOrder_v2_435.Out", "box_ProximityRadiusListener_v3_453.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_435_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_454();
    l0 = self.box_ProximityRadiusListener_v3_454;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2135657884", "2135657884", "LT02_040_B50", "box_OutputOrder_v2_435.Out", "box_ProximityRadiusListener_v3_454.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_435_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_461();
    l0 = self.box_ProximityRadiusListener_v3_461;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1933146011", "1933146011", "LT02_040_B50", "box_OutputOrder_v2_435.Out", "box_ProximityRadiusListener_v3_461.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_290_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_292();
    l0 = self.box_MultipleOR_290;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|829990652", "829990652", "LT02_040_B50", "box_MultipleOR_290.Out", "box_IsEntityLoaded_v3_292.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_18_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjectiveProgress_v2_17();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|582468730", "582468730", "LT02_040_B50", "box_AddActivityObjective_v2_18.Out", "box_AddActivityObjectiveProgress_v2_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OverrideMenuAccessibility_131_Out()
    local params, l0, l1;
    params = self:OnEnter_box_FogOfWarModifier_134();
    l0 = self.box_OverrideMenuAccessibility_131;
    l1 = Boxes[GetPathID("Domino/System/UI/FogOfWarModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1281262674", "1281262674", "LT02_040_B50", "box_OverrideMenuAccessibility_131.Out", "box_FogOfWarModifier_134.EnableUnfogging", l0:GetLuaBox(), l1:GetLuaBox());
    -- EnableUnfogging
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_294_Stopped()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_295;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1115883645", "1115883645", "LT02_040_B50", "box_ParticleSystem_v3_294.Stopped", "box_MultipleOR_295.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_124_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_124;
    l1 = self.box_MultipleOR_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|48077975", "48077975", "LT02_040_B50", "box_MultipleOR_124.Out", "box_MultipleOR_114.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_OutputOrder_v2_209_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_199();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1565746987", "1565746987", "LT02_040_B50", "box_OutputOrder_v2_209.Out", "box_DynamicLightModifier_199.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_209_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_201();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1186011364", "1186011364", "LT02_040_B50", "box_OutputOrder_v2_209.Out", "box_DynamicLightModifier_201.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_209_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_203();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|843797337", "843797337", "LT02_040_B50", "box_OutputOrder_v2_209.Out", "box_DynamicLightModifier_203.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_209_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_205();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|981432560", "981432560", "LT02_040_B50", "box_OutputOrder_v2_209.Out", "box_DynamicLightModifier_205.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_209_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_207();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1786356900", "1786356900", "LT02_040_B50", "box_OutputOrder_v2_209.Out", "box_DynamicLightModifier_207.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_209_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_257();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|573399661", "573399661", "LT02_040_B50", "box_OutputOrder_v2_209.Out", "box_DynamicLightModifier_257.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_122_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_122;
    l1 = self.box_MultipleOR_124;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|33908644", "33908644", "LT02_040_B50", "box_PlayDialog_v6_122.Finished", "box_MultipleOR_124.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_122_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_122;
    l1 = self.box_MultipleOR_124;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|266814128", "266814128", "LT02_040_B50", "box_PlayDialog_v6_122.FinishedInterrupted", "box_MultipleOR_124.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_99_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_RandomWaveSpawner_52();
    l0 = self.box_LT02_040_B50_RandomWaveSpawner_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|289795265", "289795265", "LT02_040_B50", "box_OutputOrder_v2_99.Out", "box_LT02_040_B50_RandomWaveSpawner_52.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_99_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1275082080", "1275082080", "LT02_040_B50", "box_OutputOrder_v2_99.Out", "box_MultipleOR_98.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_LT02_040_B50_LightningStrike_185_Done()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_248();
    l0 = self.box_LT02_040_B50_LightningStrike_185;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1842486251", "1842486251", "LT02_040_B50", "box_LT02_040_B50_LightningStrike_185.Done", "box_OutputOrder_v2_248.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_452_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_475();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2052420541", "2052420541", "LT02_040_B50", "box_Compare_Boolean_452.A_is_False", "box_OutputOrder_v2_475.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_176_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_175();
    l0 = self.box_SoundModifier_v2_175;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1283899732", "1283899732", "LT02_040_B50", "box_OutputOrder_v2_176.Out", "box_SoundModifier_v2_175.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_176_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_8();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1967988408", "1967988408", "LT02_040_B50", "box_OutputOrder_v2_176.Out", "box_ActivityRetry_8.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_7_Out()
    local l0, l1;
    l0 = self.box_ActivityInitialized_7;
    l1 = self.box_PhoneCallExclusivityModifier_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|967700025", "967700025", "LT02_040_B50", "box_ActivityInitialized_7.Out", "box_PhoneCallExclusivityModifier_27.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_MultipleOR_291_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_296();
    l0 = self.box_MultipleOR_291;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1943327507", "1943327507", "LT02_040_B50", "box_MultipleOR_291.Out", "box_IsEntityLoaded_v3_296.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_41_Stopped()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_280;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1452974283", "1452974283", "LT02_040_B50", "box_ParticleSystem_v3_41.Stopped", "box_MultipleOR_280.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ParticleSystem_v3_307_Stopped()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_306;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|198550018", "198550018", "LT02_040_B50", "box_ParticleSystem_v3_307.Stopped", "box_MultipleOR_306.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_241_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_223();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1289414324", "1289414324", "LT02_040_B50", "box_OutputOrder_v2_241.Out", "box_ParticleSystem_v3_223.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_241_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_228();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|902587768", "902587768", "LT02_040_B50", "box_OutputOrder_v2_241.Out", "box_ParticleSystem_v3_228.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_241_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_81();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2042635202", "2042635202", "LT02_040_B50", "box_OutputOrder_v2_241.Out", "box_ParticleSystem_v3_81.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_241_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_226();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1461445959", "1461445959", "LT02_040_B50", "box_OutputOrder_v2_241.Out", "box_ParticleSystem_v3_226.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_241_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_57();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|468191612", "468191612", "LT02_040_B50", "box_OutputOrder_v2_241.Out", "box_ParticleSystem_v3_57.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_241_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_337();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1264556378", "1264556378", "LT02_040_B50", "box_OutputOrder_v2_241.Out", "box_ParticleSystem_v3_337.Clean", clone:GetLuaBox(), l0:GetLuaBox());
    -- Clean
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_241_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_338();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1779810718", "1779810718", "LT02_040_B50", "box_OutputOrder_v2_241.Out", "box_ParticleSystem_v3_338.Clean", clone:GetLuaBox(), l0:GetLuaBox());
    -- Clean
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VisionModeModifier_v2_69_StartedCustomIntoxication()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_286();
    l0 = self.box_VisionModeModifier_v2_69;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1749716011", "1749716011", "LT02_040_B50", "box_VisionModeModifier_v2_69.StartedCustomIntoxication", "box_OutputOrder_v2_286.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_177_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundMusicTriggerBox_64();
    l0 = self.box_SoundModifier_v2_177;
    l1 = self.box_SoundMusicTriggerBox_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1402247639", "1402247639", "LT02_040_B50", "box_SoundModifier_v2_177.Started", "box_SoundMusicTriggerBox_64.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_IsEntityLoaded_v3_292_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_291;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|193657282", "193657282", "LT02_040_B50", "box_IsEntityLoaded_v3_292.False", "box_MultipleOR_291.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_292_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_293();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1748514727", "1748514727", "LT02_040_B50", "box_IsEntityLoaded_v3_292.True", "box_ParticleSystem_v3_293.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_LT02_040_B50_BeaconListener_12_Broken()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_36();
    l0 = self.box_LT02_040_B50_BeaconListener_12;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1841480979", "1841480979", "LT02_040_B50", "box_LT02_040_B50_BeaconListener_12.Broken", "box_SetBoolean_v2_36.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_140_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_346();
    l0 = self.box_SpawnAI_140;
    l1 = self.box_SpawnAI_346;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|82763092", "82763092", "LT02_040_B50", "box_SpawnAI_140.Out", "box_SpawnAI_346.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_101_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_158;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|654139687", "654139687", "LT02_040_B50", "box_OutputOrder_v2_101.Out", "box_MultipleOR_158.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_101_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_341();
    l0 = self.box_ProximityRadiusListener_v3_341;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|545717350", "545717350", "LT02_040_B50", "box_OutputOrder_v2_101.Out", "box_ProximityRadiusListener_v3_341.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_101_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_102();
    l0 = self.box_Delay_v5_102;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1008992125", "1008992125", "LT02_040_B50", "box_OutputOrder_v2_101.Out", "box_Delay_v5_102.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_436_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_431();
    l0 = self.box_ProximityRadiusListener_v3_431;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|671822100", "671822100", "LT02_040_B50", "box_OutputOrder_v2_436.Out", "box_ProximityRadiusListener_v3_431.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_436_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_432();
    l0 = self.box_ProximityRadiusListener_v3_432;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|122912763", "122912763", "LT02_040_B50", "box_OutputOrder_v2_436.Out", "box_ProximityRadiusListener_v3_432.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_436_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_453();
    l0 = self.box_ProximityRadiusListener_v3_453;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2029304688", "2029304688", "LT02_040_B50", "box_OutputOrder_v2_436.Out", "box_ProximityRadiusListener_v3_453.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_436_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_454();
    l0 = self.box_ProximityRadiusListener_v3_454;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1083826830", "1083826830", "LT02_040_B50", "box_OutputOrder_v2_436.Out", "box_ProximityRadiusListener_v3_454.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_436_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_461();
    l0 = self.box_ProximityRadiusListener_v3_461;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1822865842", "1822865842", "LT02_040_B50", "box_OutputOrder_v2_436.Out", "box_ProximityRadiusListener_v3_461.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_53_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2037544065", "2037544065", "LT02_040_B50", "box_OutputOrder_v2_53.Out", "box_MultipleOR_88.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_LT02_040_B50_BeaconGroupManager_191_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_156();
    l0 = self.box_LT02_040_B50_BeaconGroupManager_191;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|126314300", "126314300", "LT02_040_B50", "box_LT02_040_B50_BeaconGroupManager_191.Disabled", "box_OutputOrder_v2_156.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT02_040_B50_BeaconListener_11_Broken()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_38();
    l0 = self.box_LT02_040_B50_BeaconListener_11;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|446159957", "446159957", "LT02_040_B50", "box_LT02_040_B50_BeaconListener_11.Broken", "box_SetBoolean_v2_38.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_248_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_213();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1375625194", "1375625194", "LT02_040_B50", "box_OutputOrder_v2_248.Out", "box_Simple_Node_213.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_248_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_252();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|996055125", "996055125", "LT02_040_B50", "box_OutputOrder_v2_248.Out", "box_Simple_Node_252.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_325_Stopped()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_326;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|522436131", "522436131", "LT02_040_B50", "box_ParticleSystem_v3_325.Stopped", "box_MultipleOR_326.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_LT02_040_B50_BeaconGroupManager_167_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_77();
    l0 = self.box_LT02_040_B50_BeaconGroupManager_167;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1035566117", "1035566117", "LT02_040_B50", "box_LT02_040_B50_BeaconGroupManager_167.Disabled", "box_OutputOrder_v2_77.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT02_040_B50_BeaconRumble_391_Out()
    local l0, l1;
    l0 = self.box_LT02_040_B50_BeaconRumble_391;
    l1 = self.box_MultipleOR_359;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1139560043", "1139560043", "LT02_040_B50", "box_LT02_040_B50_BeaconRumble_391.Out", "box_MultipleOR_359.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_123_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_123;
    l1 = self.box_MultipleOR_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1883293307", "1883293307", "LT02_040_B50", "box_MultipleOR_123.Out", "box_MultipleOR_114.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_MultipleOR_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ColorRemapTextureModifier_v3_48();
    l0 = self.box_MultipleOR_1;
    l1 = self.box_ColorRemapTextureModifier_v3_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1801337069", "1801337069", "LT02_040_B50", "box_MultipleOR_1.Out", "box_ColorRemapTextureModifier_v3_48.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_306_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_312();
    l0 = self.box_MultipleOR_306;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2036774778", "2036774778", "LT02_040_B50", "box_MultipleOR_306.Out", "box_IsEntityLoaded_v3_312.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_498_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_492();
    l0 = self.box_SpawnAI_498;
    l1 = self.box_SpawnAI_492;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|971298296", "971298296", "LT02_040_B50", "box_SpawnAI_498.Out", "box_SpawnAI_492.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_136_Stopped()
    local l0, l1;
    l0 = self.box_Delay_v5_136;
    l1 = self.box_MultipleOR_139;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1911630853", "1911630853", "LT02_040_B50", "box_Delay_v5_136.Stopped", "box_MultipleOR_139.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_136_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_137();
    l0 = self.box_Delay_v5_136;
    l1 = self.box_Switch_137;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1160571030", "1160571030", "LT02_040_B50", "box_Delay_v5_136.TimeElapsed", "box_Switch_137.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IsEntityLoaded_v3_312_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_309;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1592985443", "1592985443", "LT02_040_B50", "box_IsEntityLoaded_v3_312.False", "box_MultipleOR_309.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_312_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_311();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|544637669", "544637669", "LT02_040_B50", "box_IsEntityLoaded_v3_312.True", "box_ParticleSystem_v3_311.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_514_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_510();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1836787124", "1836787124", "LT02_040_B50", "box_OutputOrder_v2_514.Out", "box_OutputOrder_v2_510.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_514_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_BeaconRumble_425();
    l0 = self.box_LT02_040_B50_BeaconRumble_425;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|503652079", "503652079", "LT02_040_B50", "box_OutputOrder_v2_514.Out", "box_LT02_040_B50_BeaconRumble_425.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_LT02_040_B50_LightningStrike_179_Done()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_247();
    l0 = self.box_LT02_040_B50_LightningStrike_179;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|188491337", "188491337", "LT02_040_B50", "box_LT02_040_B50_LightningStrike_179.Done", "box_OutputOrder_v2_247.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_120_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_120;
    l1 = self.box_MultipleOR_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1570561639", "1570561639", "LT02_040_B50", "box_MultipleOR_120.Out", "box_MultipleOR_114.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_465_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_468();
    l0 = self.box_SpawnAI_468;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|58426524", "58426524", "LT02_040_B50", "box_OutputOrder_v2_465.Out", "box_SpawnAI_468.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_465_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_467();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|310107785", "310107785", "LT02_040_B50", "box_OutputOrder_v2_465.Out", "box_Compare_Integers_467.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_465_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_466();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1740610315", "1740610315", "LT02_040_B50", "box_OutputOrder_v2_465.Out", "box_Compare_Integers_466.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_394_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_437();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1853442206", "1853442206", "LT02_040_B50", "box_OutputOrder_v2_394.Out", "box_Compare_Boolean_437.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_394_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_502;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1822050046", "1822050046", "LT02_040_B50", "box_OutputOrder_v2_394.Out", "box_MultipleOR_502.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetBoolean_v2_38_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_38_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_163();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2026636227", "2026636227", "LT02_040_B50", "box_SetBoolean_v2_38.Out", "box_OutputOrder_v2_163.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_287_Stopped()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_288;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1059787410", "1059787410", "LT02_040_B50", "box_ParticleSystem_v3_287.Stopped", "box_MultipleOR_288.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ParticleSystem_v3_316_Stopped()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_315;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1309073961", "1309073961", "LT02_040_B50", "box_ParticleSystem_v3_316.Stopped", "box_MultipleOR_315.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_261_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_496();
    l0 = self.box_MultipleOR_261;
    l1 = self.box_PostFx_v3_496;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1052233383", "1052233383", "LT02_040_B50", "box_MultipleOR_261.Out", "box_PostFx_v3_496.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_478_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_444();
    l0 = self.box_SpawnAI_444;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|986588743", "986588743", "LT02_040_B50", "box_OutputOrder_v2_478.Out", "box_SpawnAI_444.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_478_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_445();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1061177171", "1061177171", "LT02_040_B50", "box_OutputOrder_v2_478.Out", "box_Compare_Integers_445.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_478_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_446();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|164238815", "164238815", "LT02_040_B50", "box_OutputOrder_v2_478.Out", "box_Compare_Integers_446.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_377_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_377;
    l1 = self.box_MultipleOR_376;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|344524226", "344524226", "LT02_040_B50", "box_PlayDialog_v6_377.Finished", "box_MultipleOR_376.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_377_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_377;
    l1 = self.box_MultipleOR_376;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2125689627", "2125689627", "LT02_040_B50", "box_PlayDialog_v6_377.FinishedInterrupted", "box_MultipleOR_376.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_434_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_443();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1201862236", "1201862236", "LT02_040_B50", "box_Compare_Boolean_434.A_is_False", "box_OutputOrder_v2_443.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_521_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_274();
    l0 = self.box_SoundModifier_v2_521;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|821263818", "821263818", "LT02_040_B50", "box_SoundModifier_v2_521.Started", "box_OutputOrder_v2_274.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthModifier_v2_165_Damaged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_BeaconGroupManager_167();
    l0 = self.box_LT02_040_B50_BeaconGroupManager_167;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1511917948", "1511917948", "LT02_040_B50", "box_HealthModifier_v2_165.Damaged", "box_LT02_040_B50_BeaconGroupManager_167.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_400_Out()
    self:OnExit_box_SetBoolean_v2_400_Out();
end;

function export:f_box_OutputOrder_v2_331_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_258();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1919187696", "1919187696", "LT02_040_B50", "box_OutputOrder_v2_331.Out", "box_Simple_Node_258.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_331_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_253();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|660984208", "660984208", "LT02_040_B50", "box_OutputOrder_v2_331.Out", "box_Simple_Node_253.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_240_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_224();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|482302305", "482302305", "LT02_040_B50", "box_OutputOrder_v2_240.Out", "box_ParticleSystem_v3_224.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_240_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_256();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|713128335", "713128335", "LT02_040_B50", "box_OutputOrder_v2_240.Out", "box_ParticleSystem_v3_256.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_240_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_60();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1195044516", "1195044516", "LT02_040_B50", "box_OutputOrder_v2_240.Out", "box_ParticleSystem_v3_60.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_240_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_50();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|613855273", "613855273", "LT02_040_B50", "box_OutputOrder_v2_240.Out", "box_ParticleSystem_v3_50.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_240_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_336();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|759785418", "759785418", "LT02_040_B50", "box_OutputOrder_v2_240.Out", "box_ParticleSystem_v3_336.Clean", clone:GetLuaBox(), l0:GetLuaBox());
    -- Clean
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_511_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_154();
    l0 = self.box_SpawnAI_154;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|980812637", "980812637", "LT02_040_B50", "box_OutputOrder_v2_511.Out", "box_SpawnAI_154.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_511_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_347();
    l0 = self.box_SpawnAI_347;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1655360800", "1655360800", "LT02_040_B50", "box_OutputOrder_v2_511.Out", "box_SpawnAI_347.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_511_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_458();
    l0 = self.box_SpawnAI_458;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1596734518", "1596734518", "LT02_040_B50", "box_OutputOrder_v2_511.Out", "box_SpawnAI_458.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_511_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_352();
    l0 = self.box_SpawnAI_352;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1238607920", "1238607920", "LT02_040_B50", "box_OutputOrder_v2_511.Out", "box_SpawnAI_352.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_511_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_457();
    l0 = self.box_SpawnAI_457;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|685950522", "685950522", "LT02_040_B50", "box_OutputOrder_v2_511.Out", "box_SpawnAI_457.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_511_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_455();
    l0 = self.box_SpawnAI_455;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|194322563", "194322563", "LT02_040_B50", "box_OutputOrder_v2_511.Out", "box_SpawnAI_455.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_PlayDialog_v6_379_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_379;
    l1 = self.box_MultipleOR_378;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1058125916", "1058125916", "LT02_040_B50", "box_PlayDialog_v6_379.Finished", "box_MultipleOR_378.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_379_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_379;
    l1 = self.box_MultipleOR_378;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1038459618", "1038459618", "LT02_040_B50", "box_PlayDialog_v6_379.FinishedInterrupted", "box_MultipleOR_378.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_202_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|216041999", "216041999", "LT02_040_B50", "box_Simple_Node_202.Out", "box_MultipleOR_21.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_Delay_v5_523_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundPointModifier_488();
    l0 = self.box_Delay_v5_523;
    l1 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1235290197", "1235290197", "LT02_040_B50", "box_Delay_v5_523.TimeElapsed", "box_SoundPointModifier_488.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_317_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_315;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1740145501", "1740145501", "LT02_040_B50", "box_IsEntityLoaded_v3_317.False", "box_MultipleOR_315.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_317_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_316();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|30531826", "30531826", "LT02_040_B50", "box_IsEntityLoaded_v3_317.True", "box_ParticleSystem_v3_316.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_132_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_133();
    l0 = self.box_Delay_v5_132;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1966875945", "1966875945", "LT02_040_B50", "box_Delay_v5_132.TimeElapsed", "box_Simple_Node_133.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_47_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_267();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|504535278", "504535278", "LT02_040_B50", "box_ActivityObjectiveMarkerModifier_v3_47.Enabled", "box_ActivityObjectiveMarkerModifier_v3_267.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_302_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_300();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1894647059", "1894647059", "LT02_040_B50", "box_IsEntityLoaded_v3_302.True", "box_ParticleSystem_v3_300.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_364_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_364;
    l1 = self.box_MultipleOR_363;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|742382979", "742382979", "LT02_040_B50", "box_PlayDialog_v6_364.Finished", "box_MultipleOR_363.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_364_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_364;
    l1 = self.box_MultipleOR_363;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|212427051", "212427051", "LT02_040_B50", "box_PlayDialog_v6_364.FinishedInterrupted", "box_MultipleOR_363.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_365_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_365;
    l1 = self.box_MultipleOR_366;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1897541573", "1897541573", "LT02_040_B50", "box_PlayDialog_v6_365.Finished", "box_MultipleOR_366.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_365_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_365;
    l1 = self.box_MultipleOR_366;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2052142631", "2052142631", "LT02_040_B50", "box_PlayDialog_v6_365.FinishedInterrupted", "box_MultipleOR_366.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_89_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_RandomWaveSpawner_62();
    l0 = self.box_LT02_040_B50_RandomWaveSpawner_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1478443591", "1478443591", "LT02_040_B50", "box_OutputOrder_v2_89.Out", "box_LT02_040_B50_RandomWaveSpawner_62.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_89_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1160714049", "1160714049", "LT02_040_B50", "box_OutputOrder_v2_89.Out", "box_MultipleOR_88.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_530_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_530;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1379513330", "1379513330", "LT02_040_B50", "box_Delay_v5_530.TimeElapsed", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_409_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_63();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|913682006", "913682006", "LT02_040_B50", "box_Compare_Boolean_409.A_is_False", "box_SoundPointModifier_63.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Switch_117_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_149();
    l0 = self.box_Switch_117;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2074814966", "2074814966", "LT02_040_B50", "box_Switch_117.Out", "box_Simple_Node_149.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_117_Output_0()
    local l0, l1;
    l0 = self.box_Switch_117;
    l1 = self.box_OnceOnly_v3_421;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1125698005", "1125698005", "LT02_040_B50", "box_Switch_117.Output", "box_OnceOnly_v3_421.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Switch_117_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_369();
    l0 = self.box_Switch_117;
    l1 = self.box_PlayDialog_v6_369;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1245305427", "1245305427", "LT02_040_B50", "box_Switch_117.Output", "box_PlayDialog_v6_369.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_117_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_375();
    l0 = self.box_Switch_117;
    l1 = self.box_PlayDialog_v6_375;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|337933266", "337933266", "LT02_040_B50", "box_Switch_117.Output", "box_PlayDialog_v6_375.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_117_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_365();
    l0 = self.box_Switch_117;
    l1 = self.box_PlayDialog_v6_365;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|444771413", "444771413", "LT02_040_B50", "box_Switch_117.Output", "box_PlayDialog_v6_365.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_117_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_377();
    l0 = self.box_Switch_117;
    l1 = self.box_PlayDialog_v6_377;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2017087698", "2017087698", "LT02_040_B50", "box_Switch_117.Output", "box_PlayDialog_v6_377.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_117_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_371();
    l0 = self.box_Switch_117;
    l1 = self.box_PlayDialog_v6_371;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1388585319", "1388585319", "LT02_040_B50", "box_Switch_117.Output", "box_PlayDialog_v6_371.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_117_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_379();
    l0 = self.box_Switch_117;
    l1 = self.box_PlayDialog_v6_379;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|205457761", "205457761", "LT02_040_B50", "box_Switch_117.Output", "box_PlayDialog_v6_379.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_117_Output_7()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_373();
    l0 = self.box_Switch_117;
    l1 = self.box_PlayDialog_v6_373;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|329652533", "329652533", "LT02_040_B50", "box_Switch_117.Output", "box_PlayDialog_v6_373.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_117_Output_8()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_144();
    l0 = self.box_Switch_117;
    l1 = self.box_PlayDialog_v6_144;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|384726844", "384726844", "LT02_040_B50", "box_Switch_117.Output", "box_PlayDialog_v6_144.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_117_Output_9()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_381();
    l0 = self.box_Switch_117;
    l1 = self.box_PlayDialog_v6_381;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1305746345", "1305746345", "LT02_040_B50", "box_Switch_117.Output", "box_PlayDialog_v6_381.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_127_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_127;
    l1 = self.box_MultipleOR_143;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1740071328", "1740071328", "LT02_040_B50", "box_MultipleOR_127.Out", "box_MultipleOR_143.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_PlayDialog_v6_375_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_375;
    l1 = self.box_MultipleOR_374;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1164442140", "1164442140", "LT02_040_B50", "box_PlayDialog_v6_375.Finished", "box_MultipleOR_374.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_375_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_375;
    l1 = self.box_MultipleOR_374;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1854566328", "1854566328", "LT02_040_B50", "box_PlayDialog_v6_375.FinishedInterrupted", "box_MultipleOR_374.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_LT02_040_B50_BeaconGroupManager_170_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_78();
    l0 = self.box_LT02_040_B50_BeaconGroupManager_170;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1924674301", "1924674301", "LT02_040_B50", "box_LT02_040_B50_BeaconGroupManager_170.Disabled", "box_OutputOrder_v2_78.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_4_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|294435785", "294435785", "LT02_040_B50", "box_ActivityAcknowledgeGate_4.Acknowledged", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_4_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_499();
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_PostFx_v3_499;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|69886993", "69886993", "LT02_040_B50", "box_ActivityAcknowledgeGate_4.Reloaded", "box_PostFx_v3_499.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_373_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_373;
    l1 = self.box_MultipleOR_372;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|494934288", "494934288", "LT02_040_B50", "box_PlayDialog_v6_373.Finished", "box_MultipleOR_372.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_373_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_373;
    l1 = self.box_MultipleOR_372;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|736437050", "736437050", "LT02_040_B50", "box_PlayDialog_v6_373.FinishedInterrupted", "box_MultipleOR_372.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_LT02_040_B50_BeaconRumble_423_Out()
    local l0, l1;
    l0 = self.box_LT02_040_B50_BeaconRumble_423;
    l1 = self.box_MultipleOR_393;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|974186046", "974186046", "LT02_040_B50", "box_LT02_040_B50_BeaconRumble_423.Out", "box_MultipleOR_393.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetBoolean_v2_40_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_40_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_160();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|331646776", "331646776", "LT02_040_B50", "box_SetBoolean_v2_40.Out", "box_OutputOrder_v2_160.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_512_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_342();
    l0 = self.box_SpawnAI_342;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1151212717", "1151212717", "LT02_040_B50", "box_OutputOrder_v2_512.Out", "box_SpawnAI_342.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_512_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_348();
    l0 = self.box_SpawnAI_348;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1481479922", "1481479922", "LT02_040_B50", "box_OutputOrder_v2_512.Out", "box_SpawnAI_348.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_512_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_468();
    l0 = self.box_SpawnAI_468;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|682924488", "682924488", "LT02_040_B50", "box_OutputOrder_v2_512.Out", "box_SpawnAI_468.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_512_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_353();
    l0 = self.box_SpawnAI_353;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|205310282", "205310282", "LT02_040_B50", "box_OutputOrder_v2_512.Out", "box_SpawnAI_353.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_512_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_464();
    l0 = self.box_SpawnAI_464;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|767461770", "767461770", "LT02_040_B50", "box_OutputOrder_v2_512.Out", "box_SpawnAI_464.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_512_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_463();
    l0 = self.box_SpawnAI_463;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1442009933", "1442009933", "LT02_040_B50", "box_OutputOrder_v2_512.Out", "box_SpawnAI_463.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_GroupSizeListener_v5_86_Enabled()
    local params, l0, l1;
    self:OnExit_box_GroupSizeListener_v5_86_Enabled();
    params = self:OnEnter_box_OutputOrder_v2_89();
    l0 = self.box_GroupSizeListener_v5_86;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1718020425", "1718020425", "LT02_040_B50", "box_GroupSizeListener_v5_86.Enabled", "box_OutputOrder_v2_89.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_86_MemberAdded()
    self:OnExit_box_GroupSizeListener_v5_86_MemberAdded();
end;

function export:f_box_GroupSizeListener_v5_86_MemberRemoved()
    local params, l0, l1;
    self:OnExit_box_GroupSizeListener_v5_86_MemberRemoved();
    params = self:OnEnter_box_OutputOrder_v2_53();
    l0 = self.box_GroupSizeListener_v5_86;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1863034557", "1863034557", "LT02_040_B50", "box_GroupSizeListener_v5_86.MemberRemoved", "box_OutputOrder_v2_53.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_FogOfWarModifier_134_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/FogOfWarModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_18();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1084037707", "1084037707", "LT02_040_B50", "box_FogOfWarModifier_134.Out", "box_AddActivityObjective_v2_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_33_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_187();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1007112110", "1007112110", "LT02_040_B50", "box_Simple_Node_33.Out", "box_Simple_Node_187.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_489_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_101();
    l0 = self.box_Delay_v5_489;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|178243575", "178243575", "LT02_040_B50", "box_Delay_v5_489.TimeElapsed", "box_OutputOrder_v2_101.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_396_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_LightningStrike_216();
    l0 = self.box_LT02_040_B50_LightningStrike_216;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|334915141", "334915141", "LT02_040_B50", "box_OutputOrder_v2_396.Out", "box_LT02_040_B50_LightningStrike_216.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_396_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_411();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1459928623", "1459928623", "LT02_040_B50", "box_OutputOrder_v2_396.Out", "box_Compare_Boolean_411.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_275_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_282;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|828493998", "828493998", "LT02_040_B50", "box_IsEntityLoaded_v3_275.False", "box_MultipleOR_282.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_275_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_281();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|302393894", "302393894", "LT02_040_B50", "box_IsEntityLoaded_v3_275.True", "box_ParticleSystem_v3_281.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_304_Stopped()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_303;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|308715886", "308715886", "LT02_040_B50", "box_ParticleSystem_v3_304.Stopped", "box_MultipleOR_303.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_NarrativeSceneSetup_529_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_6();
    l0 = self.box_NarrativeSceneSetup_529;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1852011595", "1852011595", "LT02_040_B50", "box_NarrativeSceneSetup_529.Out", "box_ActivityEnd_6.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_428_Enabled()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v5_428_Enabled();
    l0 = self.box_GroupSizeListener_v5_428;
    l1 = self.box_MultipleOR_430;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|307307398", "307307398", "LT02_040_B50", "box_GroupSizeListener_v5_428.Enabled", "box_MultipleOR_430.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_428_MemberAdded()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v5_428_MemberAdded();
    l0 = self.box_GroupSizeListener_v5_428;
    l1 = self.box_MultipleOR_430;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|657307637", "657307637", "LT02_040_B50", "box_GroupSizeListener_v5_428.MemberAdded", "box_MultipleOR_430.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GroupSizeListener_v5_428_MemberRemoved()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v5_428_MemberRemoved();
    l0 = self.box_GroupSizeListener_v5_428;
    l1 = self.box_MultipleOR_430;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1229652415", "1229652415", "LT02_040_B50", "box_GroupSizeListener_v5_428.MemberRemoved", "box_MultipleOR_430.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Compare_Integers_472_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_469();
    l0 = self.box_SpawnAI_469;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1324073748", "1324073748", "LT02_040_B50", "box_Compare_Integers_472.A_ge_B", "box_SpawnAI_469.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_219_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|514943378", "514943378", "LT02_040_B50", "box_Simple_Node_219.Out", "box_MultipleOR_21.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_OutputOrder_v2_509_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_108();
    l0 = self.box_SpawnAI_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|725849508", "725849508", "LT02_040_B50", "box_OutputOrder_v2_509.Out", "box_SpawnAI_108.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_509_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_438();
    l0 = self.box_SpawnAI_438;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|995188759", "995188759", "LT02_040_B50", "box_OutputOrder_v2_509.Out", "box_SpawnAI_438.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_509_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_345();
    l0 = self.box_SpawnAI_345;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|540980911", "540980911", "LT02_040_B50", "box_OutputOrder_v2_509.Out", "box_SpawnAI_345.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_509_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_152();
    l0 = self.box_SpawnAI_152;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1836138731", "1836138731", "LT02_040_B50", "box_OutputOrder_v2_509.Out", "box_SpawnAI_152.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_509_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_441();
    l0 = self.box_SpawnAI_441;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1358356412", "1358356412", "LT02_040_B50", "box_OutputOrder_v2_509.Out", "box_SpawnAI_441.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_509_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_439();
    l0 = self.box_SpawnAI_439;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1501351863", "1501351863", "LT02_040_B50", "box_OutputOrder_v2_509.Out", "box_SpawnAI_439.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_IsEntityLoaded_v3_299_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_298;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1704695892", "1704695892", "LT02_040_B50", "box_IsEntityLoaded_v3_299.False", "box_MultipleOR_298.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_299_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_297();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1059482837", "1059482837", "LT02_040_B50", "box_IsEntityLoaded_v3_299.True", "box_ParticleSystem_v3_297.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_139_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_136();
    l0 = self.box_MultipleOR_139;
    l1 = self.box_Delay_v5_136;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1189426158", "1189426158", "LT02_040_B50", "box_MultipleOR_139.Out", "box_Delay_v5_136.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Simple_Node_398_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_400();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1999484728", "1999484728", "LT02_040_B50", "box_Simple_Node_398.Out", "box_SetBoolean_v2_400.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_108_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_345();
    l0 = self.box_SpawnAI_108;
    l1 = self.box_SpawnAI_345;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1478916592", "1478916592", "LT02_040_B50", "box_SpawnAI_108.Out", "box_SpawnAI_345.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_390_Out()
    local params, l0, l1;
    params = self:OnEnter_box_LT02_040_B50_BeaconRumble_419();
    l0 = self.box_MultipleOR_390;
    l1 = self.box_LT02_040_B50_BeaconRumble_419;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1838979765", "1838979765", "LT02_040_B50", "box_MultipleOR_390.Out", "box_LT02_040_B50_BeaconRumble_419.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Switch_54_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_149();
    l0 = self.box_Switch_54;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2132333420", "2132333420", "LT02_040_B50", "box_Switch_54.Out", "box_Simple_Node_149.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_54_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_360();
    l0 = self.box_Switch_54;
    l1 = self.box_PlayDialog_v6_360;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1689278147", "1689278147", "LT02_040_B50", "box_Switch_54.Output", "box_PlayDialog_v6_360.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_54_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_147();
    l0 = self.box_Switch_54;
    l1 = self.box_PlayDialog_v6_147;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|210438818", "210438818", "LT02_040_B50", "box_Switch_54.Output", "box_PlayDialog_v6_147.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_54_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_367();
    l0 = self.box_Switch_54;
    l1 = self.box_PlayDialog_v6_367;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1686607225", "1686607225", "LT02_040_B50", "box_Switch_54.Output", "box_PlayDialog_v6_367.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_54_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_122();
    l0 = self.box_Switch_54;
    l1 = self.box_PlayDialog_v6_122;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1423975441", "1423975441", "LT02_040_B50", "box_Switch_54.Output", "box_PlayDialog_v6_122.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_54_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_121();
    l0 = self.box_Switch_54;
    l1 = self.box_PlayDialog_v6_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1635377915", "1635377915", "LT02_040_B50", "box_Switch_54.Output", "box_PlayDialog_v6_121.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_54_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_364();
    l0 = self.box_Switch_54;
    l1 = self.box_PlayDialog_v6_364;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1228810965", "1228810965", "LT02_040_B50", "box_Switch_54.Output", "box_PlayDialog_v6_364.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Simple_Node_187_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|45870406", "45870406", "LT02_040_B50", "box_Simple_Node_187.Out", "box_MultipleOR_21.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MultipleOR_67_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_67;
    l1 = self.box_MultipleOR_143;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|640196522", "640196522", "LT02_040_B50", "box_MultipleOR_67.Out", "box_MultipleOR_143.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_94_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|240035824", "240035824", "LT02_040_B50", "box_Simple_Node_94.Out", "box_MultipleOR_95.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_526_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundPointModifier_520();
    l0 = self.box_Delay_v5_526;
    l1 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1787769842", "1787769842", "LT02_040_B50", "box_Delay_v5_526.TimeElapsed", "box_SoundPointModifier_520.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_109_Out()
    self:OnExit_box_SetBoolean_v2_109_Out();
end;

function export:f_box_OutputOrder_v2_286_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_56();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|765078680", "765078680", "LT02_040_B50", "box_OutputOrder_v2_286.Out", "box_IsEntityLoaded_v3_56.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_286_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_278();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1978798185", "1978798185", "LT02_040_B50", "box_OutputOrder_v2_286.Out", "box_IsEntityLoaded_v3_278.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_286_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_305();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1500656282", "1500656282", "LT02_040_B50", "box_OutputOrder_v2_286.Out", "box_IsEntityLoaded_v3_305.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_286_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_323();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1114334065", "1114334065", "LT02_040_B50", "box_OutputOrder_v2_286.Out", "box_IsEntityLoaded_v3_323.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_286_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_330();
    l0 = self.box_Delay_v5_330;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|700152455", "700152455", "LT02_040_B50", "box_OutputOrder_v2_286.Out", "box_Delay_v5_330.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SetContextualStrategy_83_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_355();
    l0 = self.box_Delay_v5_355;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1479741773", "1479741773", "LT02_040_B50", "box_SetContextualStrategy_83.Out", "box_Delay_v5_355.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_61_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_92();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1840767229", "1840767229", "LT02_040_B50", "box_Simple_Node_61.Out", "box_OutputOrder_v2_92.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_HealthModifier_v2_168_Damaged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_BeaconGroupManager_170();
    l0 = self.box_LT02_040_B50_BeaconGroupManager_170;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|260060045", "260060045", "LT02_040_B50", "box_HealthModifier_v2_168.Damaged", "box_LT02_040_B50_BeaconGroupManager_170.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_39_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_39_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_157();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|264119094", "264119094", "LT02_040_B50", "box_SetBoolean_v2_39.Out", "box_OutputOrder_v2_157.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_515_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_511();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|10699469", "10699469", "LT02_040_B50", "box_OutputOrder_v2_515.Out", "box_OutputOrder_v2_511.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_515_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_BeaconRumble_419();
    l0 = self.box_LT02_040_B50_BeaconRumble_419;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1003240494", "1003240494", "LT02_040_B50", "box_OutputOrder_v2_515.Out", "box_LT02_040_B50_BeaconRumble_419.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Bind_v4_25_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_70();
    l0 = self.box_Bind_v4_25;
    l1 = self.box_Bind_v4_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|999197242", "999197242", "LT02_040_B50", "box_Bind_v4_25.Bound", "box_Bind_v4_70.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_Compare_Boolean_437_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_448();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|779451237", "779451237", "LT02_040_B50", "box_Compare_Boolean_437.A_is_False", "box_OutputOrder_v2_448.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_188_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_202();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|343155066", "343155066", "LT02_040_B50", "box_Simple_Node_188.Out", "box_Simple_Node_202.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_462_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_356();
    l0 = self.box_SpawnAI_462;
    l1 = self.box_SpawnAI_356;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1936485253", "1936485253", "LT02_040_B50", "box_SpawnAI_462.Out", "box_SpawnAI_356.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_274_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_526();
    l0 = self.box_Delay_v5_526;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1609869031", "1609869031", "LT02_040_B50", "box_OutputOrder_v2_274.Out", "box_Delay_v5_526.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_274_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_523();
    l0 = self.box_Delay_v5_523;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1002036836", "1002036836", "LT02_040_B50", "box_OutputOrder_v2_274.Out", "box_Delay_v5_523.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_274_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_528();
    l0 = self.box_Delay_v5_528;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1045080929", "1045080929", "LT02_040_B50", "box_OutputOrder_v2_274.Out", "box_Delay_v5_528.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_274_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_524();
    l0 = self.box_Delay_v5_524;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1755289245", "1755289245", "LT02_040_B50", "box_OutputOrder_v2_274.Out", "box_Delay_v5_524.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_274_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_384();
    l0 = self.box_Delay_v5_384;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|248155553", "248155553", "LT02_040_B50", "box_OutputOrder_v2_274.Out", "box_Delay_v5_384.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_274_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_522();
    l0 = self.box_Delay_v5_522;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1872224945", "1872224945", "LT02_040_B50", "box_OutputOrder_v2_274.Out", "box_Delay_v5_522.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_197_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_117();
    l0 = self.box_Delay_v5_197;
    l1 = self.box_Switch_117;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1163745789", "1163745789", "LT02_040_B50", "box_Delay_v5_197.TimeElapsed", "box_Switch_117.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_98_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_97();
    l0 = self.box_MultipleOR_98;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1140354353", "1140354353", "LT02_040_B50", "box_MultipleOR_98.Out", "box_Compare_Integers_97.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_280_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_275();
    l0 = self.box_MultipleOR_280;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|645693294", "645693294", "LT02_040_B50", "box_MultipleOR_280.Out", "box_IsEntityLoaded_v3_275.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_126_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_126;
    l1 = self.box_MultipleOR_129;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1421882533", "1421882533", "LT02_040_B50", "box_PlayDialog_v6_126.Finished", "box_MultipleOR_129.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_126_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_126;
    l1 = self.box_MultipleOR_129;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1311681994", "1311681994", "LT02_040_B50", "box_PlayDialog_v6_126.FinishedInterrupted", "box_MultipleOR_129.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_239_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_255();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|24042692", "24042692", "LT02_040_B50", "box_OutputOrder_v2_239.Out", "box_ParticleSystem_v3_255.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_239_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_58();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|604173682", "604173682", "LT02_040_B50", "box_OutputOrder_v2_239.Out", "box_ParticleSystem_v3_58.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_239_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_59();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|8802573", "8802573", "LT02_040_B50", "box_OutputOrder_v2_239.Out", "box_ParticleSystem_v3_59.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_239_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_80();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1785708461", "1785708461", "LT02_040_B50", "box_OutputOrder_v2_239.Out", "box_ParticleSystem_v3_80.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_239_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_334();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|76732455", "76732455", "LT02_040_B50", "box_OutputOrder_v2_239.Out", "box_ParticleSystem_v3_334.Clean", clone:GetLuaBox(), l0:GetLuaBox());
    -- Clean
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_239_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_335();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|558648636", "558648636", "LT02_040_B50", "box_OutputOrder_v2_239.Out", "box_ParticleSystem_v3_335.Clean", clone:GetLuaBox(), l0:GetLuaBox());
    -- Clean
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_96_Enabled()
    local params, l0, l1;
    self:OnExit_box_GroupSizeListener_v5_96_Enabled();
    params = self:OnEnter_box_OutputOrder_v2_99();
    l0 = self.box_GroupSizeListener_v5_96;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1786420246", "1786420246", "LT02_040_B50", "box_GroupSizeListener_v5_96.Enabled", "box_OutputOrder_v2_99.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_96_MemberAdded()
    self:OnExit_box_GroupSizeListener_v5_96_MemberAdded();
end;

function export:f_box_GroupSizeListener_v5_96_MemberRemoved()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v5_96_MemberRemoved();
    l0 = self.box_GroupSizeListener_v5_96;
    l1 = self.box_MultipleOR_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2064562247", "2064562247", "LT02_040_B50", "box_GroupSizeListener_v5_96.MemberRemoved", "box_MultipleOR_98.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_SpawnAI_468_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_353();
    l0 = self.box_SpawnAI_468;
    l1 = self.box_SpawnAI_353;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1505991460", "1505991460", "LT02_040_B50", "box_SpawnAI_468.Out", "box_SpawnAI_353.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Compare_Integers_20_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_130();
    l0 = self.box_Delay_v5_130;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1092392205", "1092392205", "LT02_040_B50", "box_Compare_Integers_20.A_ge_B", "box_Delay_v5_130.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_Compare_Integers_20_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_184();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1897987765", "1897987765", "LT02_040_B50", "box_Compare_Integers_20.A_lt_B", "box_OutputOrder_v2_184.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_13_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_13_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_26();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|731227116", "731227116", "LT02_040_B50", "box_GetPlayerGroup_v2_13.Out", "box_GetLocalPlayer_v2_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_157_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_135();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|548219362", "548219362", "LT02_040_B50", "box_OutputOrder_v2_157.Out", "box_Simple_Node_135.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_157_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_268();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1804731817", "1804731817", "LT02_040_B50", "box_OutputOrder_v2_157.Out", "box_Simple_Node_268.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_157_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_200();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1667096594", "1667096594", "LT02_040_B50", "box_OutputOrder_v2_157.Out", "box_Simple_Node_200.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_157_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_192();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|606898666", "606898666", "LT02_040_B50", "box_OutputOrder_v2_157.Out", "box_HealthModifier_v2_192.Damage", clone:GetLuaBox(), l0:GetLuaBox());
    -- Damage
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_357_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_357;
    l1 = self.box_MultipleOR_358;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|689250571", "689250571", "LT02_040_B50", "box_Delay_v5_357.TimeElapsed", "box_MultipleOR_358.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_21_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_115();
    l0 = self.box_MultipleOR_21;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1170871559", "1170871559", "LT02_040_B50", "box_MultipleOR_21.Out", "box_OutputOrder_v2_115.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_118_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_119();
    l0 = self.box_MultipleOR_118;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|681700673", "681700673", "LT02_040_B50", "box_MultipleOR_118.Out", "box_SetBoolean_v2_119.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_475_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_343();
    l0 = self.box_SpawnAI_343;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1785585932", "1785585932", "LT02_040_B50", "box_OutputOrder_v2_475.Out", "box_SpawnAI_343.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_475_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_482();
    l0 = self.box_ProximityRadiusListener_v3_482;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|383173977", "383173977", "LT02_040_B50", "box_OutputOrder_v2_475.Out", "box_ProximityRadiusListener_v3_482.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_421_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_107();
    l0 = self.box_OnceOnly_v3_421;
    l1 = self.box_PlayDialog_v6_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|439203020", "439203020", "LT02_040_B50", "box_OnceOnly_v3_421.Out", "box_PlayDialog_v6_107.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_392_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_451();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|186182811", "186182811", "LT02_040_B50", "box_OutputOrder_v2_392.Out", "box_Compare_Boolean_451.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_392_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_359;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1231894834", "1231894834", "LT02_040_B50", "box_OutputOrder_v2_392.Out", "box_MultipleOR_359.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsEntityLoaded_v3_279_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_290;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1143553090", "1143553090", "LT02_040_B50", "box_IsEntityLoaded_v3_279.False", "box_MultipleOR_290.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_279_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_289();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|482514341", "482514341", "LT02_040_B50", "box_IsEntityLoaded_v3_279.True", "box_ParticleSystem_v3_289.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AlternateInventoryModifier_v2_49_Switched()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_24();
    l0 = self.box_AlternateInventoryModifier_v2_49;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|694246639", "694246639", "LT02_040_B50", "box_AlternateInventoryModifier_v2_49.Switched", "box_OutputOrder_v2_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_78_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_LightningStrike_171();
    l0 = self.box_LT02_040_B50_LightningStrike_171;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|543399320", "543399320", "LT02_040_B50", "box_OutputOrder_v2_78.Out", "box_LT02_040_B50_LightningStrike_171.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_78_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_403();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1789195831", "1789195831", "LT02_040_B50", "box_OutputOrder_v2_78.Out", "box_Compare_Boolean_403.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_78_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_505();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|169569217", "169569217", "LT02_040_B50", "box_OutputOrder_v2_78.Out", "box_Simple_Node_505.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_29_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_16();
    l0 = self.box_MultipleOR_29;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1153195766", "1153195766", "LT02_040_B50", "box_MultipleOR_29.Out", "box_IntegerArithmetics_v2_16.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_446_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_449();
    l0 = self.box_SpawnAI_449;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|637389061", "637389061", "LT02_040_B50", "box_Compare_Integers_446.A_ge_B", "box_SpawnAI_449.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_491_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_51();
    l0 = self.box_Delay_v5_491;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1280596880", "1280596880", "LT02_040_B50", "box_Delay_v5_491.TimeElapsed", "box_OutputOrder_v2_51.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_399_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_397();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1344745922", "1344745922", "LT02_040_B50", "box_OutputOrder_v2_399.Out", "box_Compare_Integers_397.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_399_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_433();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1941637490", "1941637490", "LT02_040_B50", "box_OutputOrder_v2_399.Out", "box_Compare_Integers_433.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_399_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_20();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2065090847", "2065090847", "LT02_040_B50", "box_OutputOrder_v2_399.Out", "box_Compare_Integers_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_24_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_261;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1120311159", "1120311159", "LT02_040_B50", "box_OutputOrder_v2_24.Out", "box_MultipleOR_261.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_24_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_30();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|933624404", "933624404", "LT02_040_B50", "box_OutputOrder_v2_24.Out", "box_Simple_Node_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_24_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_208();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|433075657", "433075657", "LT02_040_B50", "box_OutputOrder_v2_24.Out", "box_Simple_Node_208.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_24_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_138();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1881949384", "1881949384", "LT02_040_B50", "box_OutputOrder_v2_24.Out", "box_Simple_Node_138.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_24_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_196();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|928115451", "928115451", "LT02_040_B50", "box_OutputOrder_v2_24.Out", "box_Simple_Node_196.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_24_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_25();
    l0 = self.box_Bind_v4_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|122874273", "122874273", "LT02_040_B50", "box_OutputOrder_v2_24.Out", "box_Bind_v4_25.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_24_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_428();
    l0 = self.box_GroupSizeListener_v5_428;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1540862477", "1540862477", "LT02_040_B50", "box_OutputOrder_v2_24.Out", "box_GroupSizeListener_v5_428.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_24_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_61();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|797827625", "797827625", "LT02_040_B50", "box_OutputOrder_v2_24.Out", "box_Simple_Node_61.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_372_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_372;
    l1 = self.box_MultipleOR_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1151666235", "1151666235", "LT02_040_B50", "box_MultipleOR_372.Out", "box_MultipleOR_118.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 7);
end;

function export:f_box_Delay_v5_414_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_413();
    l0 = self.box_Delay_v5_414;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|172522811", "172522811", "LT02_040_B50", "box_Delay_v5_414.TimeElapsed", "box_ParticleSystem_v3_413.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_467_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_464();
    l0 = self.box_SpawnAI_464;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1020885984", "1020885984", "LT02_040_B50", "box_Compare_Integers_467.A_ge_B", "box_SpawnAI_464.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_454_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_392();
    l0 = self.box_ProximityRadiusListener_v3_454;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1443819035", "1443819035", "LT02_040_B50", "box_ProximityRadiusListener_v3_454.SomeoneNear", "box_OutputOrder_v2_392.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_438_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_152();
    l0 = self.box_SpawnAI_438;
    l1 = self.box_SpawnAI_152;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1940667888", "1940667888", "LT02_040_B50", "box_SpawnAI_438.Out", "box_SpawnAI_152.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_386_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_385();
    l0 = self.box_Delay_v5_386;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1912380906", "1912380906", "LT02_040_B50", "box_Delay_v5_386.TimeElapsed", "box_Print_v2_385.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ExitZoneWarningListener_v3_106_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_105();
    l0 = self.box_ExitZoneWarningListener_v3_106;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1665806308", "1665806308", "LT02_040_B50", "box_ExitZoneWarningListener_v3_106.FailingZoneEntered", "box_ActivityRetry_105.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_247_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_210();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1589411437", "1589411437", "LT02_040_B50", "box_OutputOrder_v2_247.Out", "box_Simple_Node_210.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_247_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_251();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1623165397", "1623165397", "LT02_040_B50", "box_OutputOrder_v2_247.Out", "box_Simple_Node_251.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_420_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityInGroup_34();
    l0 = self.box_HealthListener_v6_420;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1898545159", "1898545159", "LT02_040_B50", "box_HealthListener_v6_420.Killed", "box_IsEntityInGroup_34.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjectiveProgress_v2_17_Out()
    local params, l0;
    self:OnExit_box_AddActivityObjectiveProgress_v2_17_Out();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_45();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|820385693", "820385693", "LT02_040_B50", "box_AddActivityObjectiveProgress_v2_17.Out", "box_OutputOrder_v2_45.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_277_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_285();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|514320095", "514320095", "LT02_040_B50", "box_IsEntityLoaded_v3_277.True", "box_ParticleSystem_v3_285.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_374_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_374;
    l1 = self.box_MultipleOR_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|924096936", "924096936", "LT02_040_B50", "box_MultipleOR_374.Out", "box_MultipleOR_118.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Delay_v5_330_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_350();
    l0 = self.box_Delay_v5_330;
    l1 = self.box_NarrativeFade_350;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|544442511", "544442511", "LT02_040_B50", "box_Delay_v5_330.TimeElapsed", "box_NarrativeFade_350.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_322_Stopped()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_321;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1671580406", "1671580406", "LT02_040_B50", "box_ParticleSystem_v3_322.Stopped", "box_MultipleOR_321.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_466_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_463();
    l0 = self.box_SpawnAI_463;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1305092943", "1305092943", "LT02_040_B50", "box_Compare_Integers_466.A_ge_B", "box_SpawnAI_463.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_430_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_429();
    l0 = self.box_MultipleOR_430;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|388637973", "388637973", "LT02_040_B50", "box_MultipleOR_430.Out", "box_Compare_Integers_429.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_387_Enabled()
    local params, l0, l1;
    self:OnExit_box_GroupSizeListener_v5_387_Enabled();
    params = self:OnEnter_box_Delay_v5_386();
    l0 = self.box_GroupSizeListener_v5_387;
    l1 = self.box_Delay_v5_386;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|356302619", "356302619", "LT02_040_B50", "box_GroupSizeListener_v5_387.Enabled", "box_Delay_v5_386.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_GroupSizeListener_v5_387_MemberAdded()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v5_387_MemberAdded();
    l0 = self.box_GroupSizeListener_v5_387;
    l1 = self.box_MultipleOR_388;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1721389068", "1721389068", "LT02_040_B50", "box_GroupSizeListener_v5_387.MemberAdded", "box_MultipleOR_388.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_387_MemberRemoved()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v5_387_MemberRemoved();
    l0 = self.box_GroupSizeListener_v5_387;
    l1 = self.box_MultipleOR_388;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1204191425", "1204191425", "LT02_040_B50", "box_GroupSizeListener_v5_387.MemberRemoved", "box_MultipleOR_388.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_200_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1452979060", "1452979060", "LT02_040_B50", "box_Simple_Node_200.Out", "box_MultipleOR_21.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_401_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_44();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1010642472", "1010642472", "LT02_040_B50", "box_Compare_Boolean_401.A_is_False", "box_SoundPointModifier_44.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_320_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_319();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|301668997", "301668997", "LT02_040_B50", "box_IsEntityLoaded_v3_320.True", "box_ParticleSystem_v3_319.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_128_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_128;
    l1 = self.box_MultipleOR_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1206740546", "1206740546", "LT02_040_B50", "box_MultipleOR_128.Out", "box_MultipleOR_118.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 8);
end;

function export:f_box_OutputOrder_v2_246_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_211();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1712073804", "1712073804", "LT02_040_B50", "box_OutputOrder_v2_246.Out", "box_Simple_Node_211.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_246_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_250();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1812606830", "1812606830", "LT02_040_B50", "box_OutputOrder_v2_246.Out", "box_Simple_Node_250.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_45_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LockTimeOfDay_28();
    l0 = self.box_LockTimeOfDay_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1496911080", "1496911080", "LT02_040_B50", "box_OutputOrder_v2_45.Out", "box_LockTimeOfDay_28.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_45_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_106();
    l0 = self.box_ExitZoneWarningListener_v3_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1314147766", "1314147766", "LT02_040_B50", "box_OutputOrder_v2_45.Out", "box_ExitZoneWarningListener_v3_106.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_45_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_387();
    l0 = self.box_GroupSizeListener_v5_387;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1288913328", "1288913328", "LT02_040_B50", "box_OutputOrder_v2_45.Out", "box_GroupSizeListener_v5_387.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ColorRemapTextureModifier_v3_48_Added()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideEnvironment_v3_10();
    l0 = self.box_ColorRemapTextureModifier_v3_48;
    l1 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1998309085", "1998309085", "LT02_040_B50", "box_ColorRemapTextureModifier_v3_48.Added", "box_OverrideEnvironment_v3_10.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_517_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_513();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|348344258", "348344258", "LT02_040_B50", "box_OutputOrder_v2_517.Out", "box_OutputOrder_v2_513.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_517_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_BeaconRumble_423();
    l0 = self.box_LT02_040_B50_BeaconRumble_423;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2046480960", "2046480960", "LT02_040_B50", "box_OutputOrder_v2_517.Out", "box_LT02_040_B50_BeaconRumble_423.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_178_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_219();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1880051425", "1880051425", "LT02_040_B50", "box_Simple_Node_178.Out", "box_Simple_Node_219.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RandomFloat_v2_189_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_189_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_190();
    l0 = self.box_Delay_v5_190;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|906184175", "906184175", "LT02_040_B50", "box_RandomFloat_v2_189.Out", "box_Delay_v5_190.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_303_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_308();
    l0 = self.box_MultipleOR_303;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|287441632", "287441632", "LT02_040_B50", "box_MultipleOR_303.Out", "box_IsEntityLoaded_v3_308.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_55_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_55;
    l1 = self.box_MultipleOR_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1600242131", "1600242131", "LT02_040_B50", "box_PlayDialog_v6_55.Finished", "box_MultipleOR_67.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_55_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_55;
    l1 = self.box_MultipleOR_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|226866276", "226866276", "LT02_040_B50", "box_PlayDialog_v6_55.FinishedInterrupted", "box_MultipleOR_67.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_358_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_100();
    l0 = self.box_MultipleOR_358;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1035160814", "1035160814", "LT02_040_B50", "box_MultipleOR_358.Out", "box_SetContextualStrategy_100.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_493_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_486();
    l0 = self.box_RemoveEntity_v2_493;
    l1 = self.box_EntityStatusListener_486;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1883809630", "1883809630", "LT02_040_B50", "box_RemoveEntity_v2_493.Out", "box_EntityStatusListener_486.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_242_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_233();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|98404843", "98404843", "LT02_040_B50", "box_OutputOrder_v2_242.Out", "box_ParticleSystem_v3_233.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_242_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_232();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|774683711", "774683711", "LT02_040_B50", "box_OutputOrder_v2_242.Out", "box_ParticleSystem_v3_232.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_242_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_229();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1741641257", "1741641257", "LT02_040_B50", "box_OutputOrder_v2_242.Out", "box_ParticleSystem_v3_229.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_242_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_231();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|628899302", "628899302", "LT02_040_B50", "box_OutputOrder_v2_242.Out", "box_ParticleSystem_v3_231.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_242_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_339();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1125595639", "1125595639", "LT02_040_B50", "box_OutputOrder_v2_242.Out", "box_ParticleSystem_v3_339.Clean", clone:GetLuaBox(), l0:GetLuaBox());
    -- Clean
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_327_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_329();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1398019093", "1398019093", "LT02_040_B50", "box_IsEntityLoaded_v3_327.True", "box_ParticleSystem_v3_329.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_LT02_040_B50_BeaconRumble_425_Out()
    local l0, l1;
    l0 = self.box_LT02_040_B50_BeaconRumble_425;
    l1 = self.box_MultipleOR_502;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|85189843", "85189843", "LT02_040_B50", "box_LT02_040_B50_BeaconRumble_425.Out", "box_MultipleOR_502.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_296_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_295;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1500755380", "1500755380", "LT02_040_B50", "box_IsEntityLoaded_v3_296.False", "box_MultipleOR_295.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_296_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_294();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|153704770", "153704770", "LT02_040_B50", "box_IsEntityLoaded_v3_296.True", "box_ParticleSystem_v3_294.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_208_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_209();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|955485798", "955485798", "LT02_040_B50", "box_Simple_Node_208.Out", "box_OutputOrder_v2_209.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_114_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_109();
    l0 = self.box_MultipleOR_114;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|947024150", "947024150", "LT02_040_B50", "box_MultipleOR_114.Out", "box_SetBoolean_v2_109.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MoonModifier_141_OnSetMoonSize()
    local params, l0;
    params = self:OnEnter_box_MoonModifier_141();
    l0 = self.box_MoonModifier_141;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1474702264", "1474702264", "LT02_040_B50", "box_MoonModifier_141.OnSetMoonSize", "box_MoonModifier_141.SetMoonHDRMultiplier", l0:GetLuaBox(), l0:GetLuaBox());
    -- SetMoonHDRMultiplier
    l0:Exec(4, params);
end;

function export:f_box_SpawnAI_444_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_153();
    l0 = self.box_SpawnAI_444;
    l1 = self.box_SpawnAI_153;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1418596257", "1418596257", "LT02_040_B50", "box_SpawnAI_444.Out", "box_SpawnAI_153.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SetTimeOfDay_43_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_2();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1636246087", "1636246087", "LT02_040_B50", "box_SetTimeOfDay_43.Out", "box_OutputOrder_v2_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_HealthModifier_v2_35_Damaged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_395();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|798719789", "798719789", "LT02_040_B50", "box_HealthModifier_v2_35.Damaged", "box_OutputOrder_v2_395.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_471_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_462();
    l0 = self.box_SpawnAI_462;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|581433450", "581433450", "LT02_040_B50", "box_OutputOrder_v2_471.Out", "box_SpawnAI_462.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_471_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_473();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|971251815", "971251815", "LT02_040_B50", "box_OutputOrder_v2_471.Out", "box_Compare_Integers_473.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_471_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_472();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|555701036", "555701036", "LT02_040_B50", "box_OutputOrder_v2_471.Out", "box_Compare_Integers_472.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_326_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_327();
    l0 = self.box_MultipleOR_326;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|697789040", "697789040", "LT02_040_B50", "box_MultipleOR_326.Out", "box_IsEntityLoaded_v3_327.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_76_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_LightningStrike_185();
    l0 = self.box_LT02_040_B50_LightningStrike_185;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|857784141", "857784141", "LT02_040_B50", "box_OutputOrder_v2_76.Out", "box_LT02_040_B50_LightningStrike_185.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_76_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_407();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1089487332", "1089487332", "LT02_040_B50", "box_OutputOrder_v2_76.Out", "box_Compare_Boolean_407.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_76_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_507();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|329604455", "329604455", "LT02_040_B50", "box_OutputOrder_v2_76.Out", "box_Simple_Node_507.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_483_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_154();
    l0 = self.box_SpawnAI_154;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|376589593", "376589593", "LT02_040_B50", "box_OutputOrder_v2_483.Out", "box_SpawnAI_154.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_483_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_480();
    l0 = self.box_ProximityRadiusListener_v3_480;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|622487629", "622487629", "LT02_040_B50", "box_OutputOrder_v2_483.Out", "box_ProximityRadiusListener_v3_480.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_267_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_266();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|82254057", "82254057", "LT02_040_B50", "box_ActivityObjectiveMarkerModifier_v3_267.Enabled", "box_ActivityObjectiveMarkerModifier_v3_266.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_450_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_483();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|680945798", "680945798", "LT02_040_B50", "box_Compare_Boolean_450.A_is_False", "box_OutputOrder_v2_483.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_288_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_279();
    l0 = self.box_MultipleOR_288;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2036844896", "2036844896", "LT02_040_B50", "box_MultipleOR_288.Out", "box_IsEntityLoaded_v3_279.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_110_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_110;
    l1 = self.box_MultipleOR_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1420729509", "1420729509", "LT02_040_B50", "box_MultipleOR_110.Out", "box_MultipleOR_118.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_2_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1851059141", "1851059141", "LT02_040_B50", "box_OutputOrder_v2_2.Out", "box_ActivityAcknowledgeGate_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_2_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_5();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|890603915", "890603915", "LT02_040_B50", "box_OutputOrder_v2_2.Out", "box_Print_v2_5.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_164_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_135();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|971917897", "971917897", "LT02_040_B50", "box_OutputOrder_v2_164.Out", "box_Simple_Node_135.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_164_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_271();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|390728654", "390728654", "LT02_040_B50", "box_OutputOrder_v2_164.Out", "box_Simple_Node_271.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_164_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_188();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1404197547", "1404197547", "LT02_040_B50", "box_OutputOrder_v2_164.Out", "box_Simple_Node_188.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_164_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_162();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1054892587", "1054892587", "LT02_040_B50", "box_OutputOrder_v2_164.Out", "box_HealthModifier_v2_162.Damage", clone:GetLuaBox(), l0:GetLuaBox());
    -- Damage
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_92_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_491();
    l0 = self.box_Delay_v5_491;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|830842067", "830842067", "LT02_040_B50", "box_OutputOrder_v2_92.Out", "box_Delay_v5_491.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_92_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_91();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|742730730", "742730730", "LT02_040_B50", "box_OutputOrder_v2_92.Out", "box_Simple_Node_91.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_477_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_438();
    l0 = self.box_SpawnAI_438;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|962548584", "962548584", "LT02_040_B50", "box_OutputOrder_v2_477.Out", "box_SpawnAI_438.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_477_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_442();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|416982119", "416982119", "LT02_040_B50", "box_OutputOrder_v2_477.Out", "box_Compare_Integers_442.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_477_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_440();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|402968366", "402968366", "LT02_040_B50", "box_OutputOrder_v2_477.Out", "box_Compare_Integers_440.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_405_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_260();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1476516745", "1476516745", "LT02_040_B50", "box_Compare_Boolean_405.A_is_False", "box_SoundPointModifier_260.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_403_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_46();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|826801941", "826801941", "LT02_040_B50", "box_Compare_Boolean_403.A_is_False", "box_SoundPointModifier_46.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_324_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_326;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1325667278", "1325667278", "LT02_040_B50", "box_IsEntityLoaded_v3_324.False", "box_MultipleOR_326.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_324_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_325();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1252003793", "1252003793", "LT02_040_B50", "box_IsEntityLoaded_v3_324.True", "box_ParticleSystem_v3_325.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_93_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_509();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1054984826", "1054984826", "LT02_040_B50", "box_OutputOrder_v2_93.Out", "box_OutputOrder_v2_509.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_93_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_BeaconRumble_501();
    l0 = self.box_LT02_040_B50_BeaconRumble_501;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|38558862", "38558862", "LT02_040_B50", "box_OutputOrder_v2_93.Out", "box_LT02_040_B50_BeaconRumble_501.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_PlayDialog_v6_371_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_371;
    l1 = self.box_MultipleOR_370;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|209156563", "209156563", "LT02_040_B50", "box_PlayDialog_v6_371.Finished", "box_MultipleOR_370.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_371_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_371;
    l1 = self.box_MultipleOR_370;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1933333372", "1933333372", "LT02_040_B50", "box_PlayDialog_v6_371.FinishedInterrupted", "box_MultipleOR_370.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetBoolean_v2_37_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_37_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_182();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|228140702", "228140702", "LT02_040_B50", "box_SetBoolean_v2_37.Out", "box_OutputOrder_v2_182.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PostFx_v3_499_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_530();
    l0 = self.box_PostFx_v3_499;
    l1 = self.box_Delay_v5_530;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1318483891", "1318483891", "LT02_040_B50", "box_PostFx_v3_499.Enabled", "box_Delay_v5_530.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ProximityRadiusListener_v3_82_AllFar()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_90();
    l0 = self.box_ProximityRadiusListener_v3_82;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1396594072", "1396594072", "LT02_040_B50", "box_ProximityRadiusListener_v3_82.AllFar", "box_HealthModifier_v2_90.Damage", l0:GetLuaBox(), l1:GetLuaBox());
    -- Damage
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_30_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_42();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1563528438", "1563528438", "LT02_040_B50", "box_Simple_Node_30.Out", "box_ActivityObjectiveMarkerModifier_v3_42.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_461_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_424();
    l0 = self.box_ProximityRadiusListener_v3_461;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1500783575", "1500783575", "LT02_040_B50", "box_ProximityRadiusListener_v3_461.SomeoneNear", "box_OutputOrder_v2_424.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetActivityObjectiveProgress_v2_19_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_399();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|289742476", "289742476", "LT02_040_B50", "box_SetActivityObjectiveProgress_v2_19.Out", "box_OutputOrder_v2_399.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RandomFloat_v2_193_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_193_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_197();
    l0 = self.box_Delay_v5_197;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1665497980", "1665497980", "LT02_040_B50", "box_RandomFloat_v2_193.Out", "box_Delay_v5_197.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_369_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_369;
    l1 = self.box_MultipleOR_368;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1515223258", "1515223258", "LT02_040_B50", "box_PlayDialog_v6_369.Finished", "box_MultipleOR_368.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_369_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_369;
    l1 = self.box_MultipleOR_368;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|302707277", "302707277", "LT02_040_B50", "box_PlayDialog_v6_369.FinishedInterrupted", "box_MultipleOR_368.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityRadiusListener_v3_476_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_477();
    l0 = self.box_ProximityRadiusListener_v3_476;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|839670739", "839670739", "LT02_040_B50", "box_ProximityRadiusListener_v3_476.SomeoneNear", "box_OutputOrder_v2_477.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_144_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_144;
    l1 = self.box_MultipleOR_128;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1538247824", "1538247824", "LT02_040_B50", "box_PlayDialog_v6_144.Finished", "box_MultipleOR_128.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_144_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_144;
    l1 = self.box_MultipleOR_128;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1041005860", "1041005860", "LT02_040_B50", "box_PlayDialog_v6_144.FinishedInterrupted", "box_MultipleOR_128.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityRadiusListener_v3_432_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_394();
    l0 = self.box_ProximityRadiusListener_v3_432;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1585533643", "1585533643", "LT02_040_B50", "box_ProximityRadiusListener_v3_432.SomeoneNear", "box_OutputOrder_v2_394.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthModifier_v2_162_Damaged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_BeaconGroupManager_169();
    l0 = self.box_LT02_040_B50_BeaconGroupManager_169;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|341739604", "341739604", "LT02_040_B50", "box_HealthModifier_v2_162.Damaged", "box_LT02_040_B50_BeaconGroupManager_169.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_LT02_040_B50_BeaconRumble_419_Out()
    local l0, l1;
    l0 = self.box_LT02_040_B50_BeaconRumble_419;
    l1 = self.box_MultipleOR_390;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1030464624", "1030464624", "LT02_040_B50", "box_LT02_040_B50_BeaconRumble_419.Out", "box_MultipleOR_390.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetBoolean_v2_36_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_36_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_164();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1499266952", "1499266952", "LT02_040_B50", "box_SetBoolean_v2_36.Out", "box_OutputOrder_v2_164.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_382_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_382;
    l1 = self.box_MultipleOR_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|550984388", "550984388", "LT02_040_B50", "box_PlayDialog_v6_382.Finished", "box_MultipleOR_66.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_382_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_382;
    l1 = self.box_MultipleOR_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1441788789", "1441788789", "LT02_040_B50", "box_PlayDialog_v6_382.FinishedInterrupted", "box_MultipleOR_66.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_115_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|528022974", "528022974", "LT02_040_B50", "box_OutputOrder_v2_115.Out", "box_MultipleOR_29.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_115_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_116();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|828586918", "828586918", "LT02_040_B50", "box_OutputOrder_v2_115.Out", "box_Simple_Node_116.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_342_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_348();
    l0 = self.box_SpawnAI_342;
    l1 = self.box_SpawnAI_348;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|910255560", "910255560", "LT02_040_B50", "box_SpawnAI_342.Out", "box_SpawnAI_348.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Compare_Integers_503_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_484();
    l0 = self.box_Delay_v5_484;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1968084381", "1968084381", "LT02_040_B50", "box_Compare_Integers_503.A_lt_B", "box_Delay_v5_484.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_516_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_512();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|605684777", "605684777", "LT02_040_B50", "box_OutputOrder_v2_516.Out", "box_OutputOrder_v2_512.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_516_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_BeaconRumble_391();
    l0 = self.box_LT02_040_B50_BeaconRumble_391;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1334509211", "1334509211", "LT02_040_B50", "box_OutputOrder_v2_516.Out", "box_LT02_040_B50_BeaconRumble_391.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_522_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundPointModifier_527();
    l0 = self.box_Delay_v5_522;
    l1 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|219437212", "219437212", "LT02_040_B50", "box_Delay_v5_522.TimeElapsed", "box_SoundPointModifier_527.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_510_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_140();
    l0 = self.box_SpawnAI_140;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|806892983", "806892983", "LT02_040_B50", "box_OutputOrder_v2_510.Out", "box_SpawnAI_140.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_510_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_346();
    l0 = self.box_SpawnAI_346;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|830400826", "830400826", "LT02_040_B50", "box_OutputOrder_v2_510.Out", "box_SpawnAI_346.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_510_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_444();
    l0 = self.box_SpawnAI_444;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|233299012", "233299012", "LT02_040_B50", "box_OutputOrder_v2_510.Out", "box_SpawnAI_444.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_510_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_153();
    l0 = self.box_SpawnAI_153;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|675962892", "675962892", "LT02_040_B50", "box_OutputOrder_v2_510.Out", "box_SpawnAI_153.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_510_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_447();
    l0 = self.box_SpawnAI_447;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|423142036", "423142036", "LT02_040_B50", "box_OutputOrder_v2_510.Out", "box_SpawnAI_447.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_510_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_449();
    l0 = self.box_SpawnAI_449;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1830696531", "1830696531", "LT02_040_B50", "box_OutputOrder_v2_510.Out", "box_SpawnAI_449.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_IsEntityLoaded_v3_276_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_284;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2102599103", "2102599103", "LT02_040_B50", "box_IsEntityLoaded_v3_276.False", "box_MultipleOR_284.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_276_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_283();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|678737070", "678737070", "LT02_040_B50", "box_IsEntityLoaded_v3_276.True", "box_ParticleSystem_v3_283.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_443_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_108();
    l0 = self.box_SpawnAI_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1965467344", "1965467344", "LT02_040_B50", "box_OutputOrder_v2_443.Out", "box_SpawnAI_108.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_443_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_476();
    l0 = self.box_ProximityRadiusListener_v3_476;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1939842995", "1939842995", "LT02_040_B50", "box_OutputOrder_v2_443.Out", "box_ProximityRadiusListener_v3_476.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_206_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1298297086", "1298297086", "LT02_040_B50", "box_Simple_Node_206.Out", "box_MultipleOR_21.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_Compare_Integers_456_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_455();
    l0 = self.box_SpawnAI_455;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|626007531", "626007531", "LT02_040_B50", "box_Compare_Integers_456.A_ge_B", "box_SpawnAI_455.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_323_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_321;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|152117728", "152117728", "LT02_040_B50", "box_IsEntityLoaded_v3_323.False", "box_MultipleOR_321.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_323_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_322();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1338149566", "1338149566", "LT02_040_B50", "box_IsEntityLoaded_v3_323.True", "box_ParticleSystem_v3_322.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_397_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_398();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2120297852", "2120297852", "LT02_040_B50", "box_Compare_Integers_397.A_eq_B", "box_Simple_Node_398.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_367_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_367;
    l1 = self.box_MultipleOR_113;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1189244036", "1189244036", "LT02_040_B50", "box_PlayDialog_v6_367.Finished", "box_MultipleOR_113.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_367_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_367;
    l1 = self.box_MultipleOR_113;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|721947874", "721947874", "LT02_040_B50", "box_PlayDialog_v6_367.FinishedInterrupted", "box_MultipleOR_113.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetLocalPlayer_v2_26_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_26_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_362();
    l0 = self.box_EntityStatusListener_362;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|236902024", "236902024", "LT02_040_B50", "box_GetLocalPlayer_v2_26.Out", "box_EntityStatusListener_362.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_91_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_490();
    l0 = self.box_SpawnAI_490;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1469868812", "1469868812", "LT02_040_B50", "box_Simple_Node_91.Out", "box_SpawnAI_490.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_HealthModifier_v2_192_Damaged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_BeaconGroupManager_191();
    l0 = self.box_LT02_040_B50_BeaconGroupManager_191;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1180254702", "1180254702", "LT02_040_B50", "box_HealthModifier_v2_192.Damaged", "box_LT02_040_B50_BeaconGroupManager_191.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_448_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_140();
    l0 = self.box_SpawnAI_140;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|198861804", "198861804", "LT02_040_B50", "box_OutputOrder_v2_448.Out", "box_SpawnAI_140.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_448_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_479();
    l0 = self.box_ProximityRadiusListener_v3_479;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|524443143", "524443143", "LT02_040_B50", "box_OutputOrder_v2_448.Out", "box_ProximityRadiusListener_v3_479.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_524_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundPointModifier_519();
    l0 = self.box_Delay_v5_524;
    l1 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|803244184", "803244184", "LT02_040_B50", "box_Delay_v5_524.TimeElapsed", "box_SoundPointModifier_519.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NarrativeFade_350_FadedOut()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneSetup_529();
    l0 = self.box_NarrativeFade_350;
    l1 = self.box_NarrativeSceneSetup_529;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|652287008", "652287008", "LT02_040_B50", "box_NarrativeFade_350.FadedOut", "box_NarrativeSceneSetup_529.BasicSetup", l0:GetLuaBox(), l1:GetLuaBox());
    -- BasicSetup
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_150_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_LT02_040_B50_RandomWaveSpawner_62();
    l0 = self.box_Delay_v5_150;
    l1 = self.box_LT02_040_B50_RandomWaveSpawner_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1735784110", "1735784110", "LT02_040_B50", "box_Delay_v5_150.TimeElapsed", "box_LT02_040_B50_RandomWaveSpawner_62.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_360_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_360;
    l1 = self.box_MultipleOR_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|831522627", "831522627", "LT02_040_B50", "box_PlayDialog_v6_360.Finished", "box_MultipleOR_120.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_360_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_360;
    l1 = self.box_MultipleOR_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1873355252", "1873355252", "LT02_040_B50", "box_PlayDialog_v6_360.FinishedInterrupted", "box_MultipleOR_120.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_160_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_135();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2093894758", "2093894758", "LT02_040_B50", "box_OutputOrder_v2_160.Out", "box_Simple_Node_135.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_160_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_269();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1297309825", "1297309825", "LT02_040_B50", "box_OutputOrder_v2_160.Out", "box_Simple_Node_269.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_160_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_186();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1385308517", "1385308517", "LT02_040_B50", "box_OutputOrder_v2_160.Out", "box_Simple_Node_186.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_160_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_168();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|916515949", "916515949", "LT02_040_B50", "box_OutputOrder_v2_160.Out", "box_HealthModifier_v2_168.Damage", clone:GetLuaBox(), l0:GetLuaBox());
    -- Damage
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_484_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_LT02_040_B50_RandomWaveSpawner_52();
    l0 = self.box_Delay_v5_484;
    l1 = self.box_LT02_040_B50_RandomWaveSpawner_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2066927834", "2066927834", "LT02_040_B50", "box_Delay_v5_484.TimeElapsed", "box_LT02_040_B50_RandomWaveSpawner_52.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Compare_Integers_87_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_151();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1208712285", "1208712285", "LT02_040_B50", "box_Compare_Integers_87.A_eq_B", "box_Compare_Integers_151.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PhoneCallExclusivityModifier_27_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideMenuAccessibility_131();
    l0 = self.box_PhoneCallExclusivityModifier_27;
    l1 = self.box_OverrideMenuAccessibility_131;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2044576873", "2044576873", "LT02_040_B50", "box_PhoneCallExclusivityModifier_27.Enabled", "box_OverrideMenuAccessibility_131.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_LT02_040_B50_LightningStrike_216_Done()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_331();
    l0 = self.box_LT02_040_B50_LightningStrike_216;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1580646663", "1580646663", "LT02_040_B50", "box_LT02_040_B50_LightningStrike_216.Done", "box_OutputOrder_v2_331.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_362_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_AlternateInventoryModifier_v2_49();
    l0 = self.box_EntityStatusListener_362;
    l1 = self.box_AlternateInventoryModifier_v2_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1643163161", "1643163161", "LT02_040_B50", "box_EntityStatusListener_362.Enabled", "box_AlternateInventoryModifier_v2_49.Main", l0:GetLuaBox(), l1:GetLuaBox());
    -- Main
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_362_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_361();
    l0 = self.box_EntityStatusListener_362;
    l1 = self.box_Bind_v4_361;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2069002971", "2069002971", "LT02_040_B50", "box_EntityStatusListener_362.Loaded", "box_Bind_v4_361.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_283_Stopped()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_284;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1763906283", "1763906283", "LT02_040_B50", "box_ParticleSystem_v3_283.Stopped", "box_MultipleOR_284.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_460_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_457();
    l0 = self.box_SpawnAI_457;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|898605525", "898605525", "LT02_040_B50", "box_Compare_Integers_460.A_ge_B", "box_SpawnAI_457.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_HealthModifier_v2_220_Damaged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_BeaconGroupManager_217();
    l0 = self.box_LT02_040_B50_BeaconGroupManager_217;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|762390378", "762390378", "LT02_040_B50", "box_HealthModifier_v2_220.Damaged", "box_LT02_040_B50_BeaconGroupManager_217.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_113_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_113;
    l1 = self.box_MultipleOR_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1795878716", "1795878716", "LT02_040_B50", "box_MultipleOR_113.Out", "box_MultipleOR_114.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Simple_Node_186_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_181();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1421304519", "1421304519", "LT02_040_B50", "box_Simple_Node_186.Out", "box_Simple_Node_181.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_295_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_302();
    l0 = self.box_MultipleOR_295;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1148352021", "1148352021", "LT02_040_B50", "box_MultipleOR_295.Out", "box_IsEntityLoaded_v3_302.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_265_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_264();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2023042394", "2023042394", "LT02_040_B50", "box_ActivityObjectiveMarkerModifier_v3_265.Enabled", "box_ActivityObjectiveMarkerModifier_v3_264.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_480_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_459();
    l0 = self.box_ProximityRadiusListener_v3_480;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1015564553", "1015564553", "LT02_040_B50", "box_ProximityRadiusListener_v3_480.SomeoneNear", "box_OutputOrder_v2_459.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_111_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_111;
    l1 = self.box_MultipleOR_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|255307811", "255307811", "LT02_040_B50", "box_MultipleOR_111.Out", "box_MultipleOR_114.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_500_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_434();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1150957098", "1150957098", "LT02_040_B50", "box_OutputOrder_v2_500.Out", "box_Compare_Boolean_434.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_500_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_426;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1569697147", "1569697147", "LT02_040_B50", "box_OutputOrder_v2_500.Out", "box_MultipleOR_426.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_459_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_458();
    l0 = self.box_SpawnAI_458;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|745872023", "745872023", "LT02_040_B50", "box_OutputOrder_v2_459.Out", "box_SpawnAI_458.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_459_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_460();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1403835163", "1403835163", "LT02_040_B50", "box_OutputOrder_v2_459.Out", "box_Compare_Integers_460.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_459_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_456();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|167303625", "167303625", "LT02_040_B50", "box_OutputOrder_v2_459.Out", "box_Compare_Integers_456.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_244_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_214();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1160780698", "1160780698", "LT02_040_B50", "box_OutputOrder_v2_244.Out", "box_Simple_Node_214.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_244_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_254();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1034060010", "1034060010", "LT02_040_B50", "box_OutputOrder_v2_244.Out", "box_Simple_Node_254.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_107_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_107;
    l1 = self.box_MultipleOR_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1809364805", "1809364805", "LT02_040_B50", "box_PlayDialog_v6_107.Finished", "box_MultipleOR_110.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_107_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_107;
    l1 = self.box_MultipleOR_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|704963037", "704963037", "LT02_040_B50", "box_PlayDialog_v6_107.FinishedInterrupted", "box_MultipleOR_110.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Switch_137_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_126();
    l0 = self.box_Switch_137;
    l1 = self.box_PlayDialog_v6_126;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1812316973", "1812316973", "LT02_040_B50", "box_Switch_137.Output", "box_PlayDialog_v6_126.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_137_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_55();
    l0 = self.box_Switch_137;
    l1 = self.box_PlayDialog_v6_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1330924519", "1330924519", "LT02_040_B50", "box_Switch_137.Output", "box_PlayDialog_v6_55.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_137_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_382();
    l0 = self.box_Switch_137;
    l1 = self.box_PlayDialog_v6_382;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1314358884", "1314358884", "LT02_040_B50", "box_Switch_137.Output", "box_PlayDialog_v6_382.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_137_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_146();
    l0 = self.box_Switch_137;
    l1 = self.box_PlayDialog_v6_146;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1448552085", "1448552085", "LT02_040_B50", "box_Switch_137.Output", "box_PlayDialog_v6_146.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_137_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_142();
    l0 = self.box_Switch_137;
    l1 = self.box_PlayDialog_v6_142;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1043310651", "1043310651", "LT02_040_B50", "box_Switch_137.Output", "box_PlayDialog_v6_142.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_159_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v5_86();
    l0 = self.box_MultipleOR_159;
    l1 = self.box_GroupSizeListener_v5_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1360922766", "1360922766", "LT02_040_B50", "box_MultipleOR_159.Out", "box_GroupSizeListener_v5_86.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_LT02_040_B50_RandomWaveSpawner_62_NoneValid()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_132();
    l0 = self.box_LT02_040_B50_RandomWaveSpawner_62;
    l1 = self.box_Delay_v5_132;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2118252688", "2118252688", "LT02_040_B50", "box_LT02_040_B50_RandomWaveSpawner_62.NoneValid", "box_Delay_v5_132.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_LT02_040_B50_RandomWaveSpawner_62_Spawned()
    local l0, l1;
    l0 = self.box_LT02_040_B50_RandomWaveSpawner_62;
    l1 = self.box_MultipleOR_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|119790701", "119790701", "LT02_040_B50", "box_LT02_040_B50_RandomWaveSpawner_62.Spawned", "box_MultipleOR_95.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_451_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_427();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1398483524", "1398483524", "LT02_040_B50", "box_Compare_Boolean_451.A_is_False", "box_OutputOrder_v2_427.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_LT02_040_B50_BeaconListener_15_Broken()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_39();
    l0 = self.box_LT02_040_B50_BeaconListener_15;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|943523146", "943523146", "LT02_040_B50", "box_LT02_040_B50_BeaconListener_15.Broken", "box_SetBoolean_v2_39.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_42_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_47();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|597775660", "597775660", "LT02_040_B50", "box_ActivityObjectiveMarkerModifier_v3_42.Enabled", "box_ActivityObjectiveMarkerModifier_v3_47.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_151_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_150();
    l0 = self.box_Delay_v5_150;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1098757543", "1098757543", "LT02_040_B50", "box_Compare_Integers_151.A_lt_B", "box_Delay_v5_150.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_494_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_495();
    l0 = self.box_EntityStatusListener_495;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|920828632", "920828632", "LT02_040_B50", "box_OutputOrder_v2_494.Out", "box_EntityStatusListener_495.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_494_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_486();
    l0 = self.box_EntityStatusListener_486;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1558023312", "1558023312", "LT02_040_B50", "box_OutputOrder_v2_494.Out", "box_EntityStatusListener_486.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_378_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_378;
    l1 = self.box_MultipleOR_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|984925865", "984925865", "LT02_040_B50", "box_MultipleOR_378.Out", "box_MultipleOR_118.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 6);
end;

function export:f_box_MultipleOR_370_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_370;
    l1 = self.box_MultipleOR_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1692169922", "1692169922", "LT02_040_B50", "box_MultipleOR_370.Out", "box_MultipleOR_118.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_SpawnAI_154_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_347();
    l0 = self.box_SpawnAI_154;
    l1 = self.box_SpawnAI_347;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|535375826", "535375826", "LT02_040_B50", "box_SpawnAI_154.Out", "box_SpawnAI_347.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_238_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_222();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|371508429", "371508429", "LT02_040_B50", "box_OutputOrder_v2_238.Out", "box_ParticleSystem_v3_222.Clean", clone:GetLuaBox(), l0:GetLuaBox());
    -- Clean
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_238_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_225();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1937802833", "1937802833", "LT02_040_B50", "box_OutputOrder_v2_238.Out", "box_ParticleSystem_v3_225.Clean", clone:GetLuaBox(), l0:GetLuaBox());
    -- Clean
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_238_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_230();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1775769627", "1775769627", "LT02_040_B50", "box_OutputOrder_v2_238.Out", "box_ParticleSystem_v3_230.Clean", clone:GetLuaBox(), l0:GetLuaBox());
    -- Clean
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_238_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_332();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|512988653", "512988653", "LT02_040_B50", "box_OutputOrder_v2_238.Out", "box_ParticleSystem_v3_332.Clean", clone:GetLuaBox(), l0:GetLuaBox());
    -- Clean
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_238_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_333();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2031446194", "2031446194", "LT02_040_B50", "box_OutputOrder_v2_238.Out", "box_ParticleSystem_v3_333.Clean", clone:GetLuaBox(), l0:GetLuaBox());
    -- Clean
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_315_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_320();
    l0 = self.box_MultipleOR_315;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|825550751", "825550751", "LT02_040_B50", "box_MultipleOR_315.Out", "box_IsEntityLoaded_v3_320.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_66_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_66;
    l1 = self.box_MultipleOR_143;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1789184132", "1789184132", "LT02_040_B50", "box_MultipleOR_66.Out", "box_MultipleOR_143.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Delay_v5_528_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundPointModifier_415();
    l0 = self.box_Delay_v5_528;
    l1 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|784965476", "784965476", "LT02_040_B50", "box_Delay_v5_528.TimeElapsed", "box_SoundPointModifier_415.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_311_Stopped()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_309;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|514269356", "514269356", "LT02_040_B50", "box_ParticleSystem_v3_311.Stopped", "box_MultipleOR_309.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_354_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_83();
    l0 = self.box_MultipleOR_354;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2139549864", "2139549864", "LT02_040_B50", "box_MultipleOR_354.Out", "box_SetContextualStrategy_83.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_198_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityInitialized_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|756695106", "756695106", "LT02_040_B50", "box_OutputOrder_v2_198.Out", "box_ActivityInitialized_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_198_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MoonModifier_141();
    l0 = self.box_MoonModifier_141;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1908564456", "1908564456", "LT02_040_B50", "box_OutputOrder_v2_198.Out", "box_MoonModifier_141.SetMoonSize", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetMoonSize
    l0:Exec(5, params);
end;

function export:f_box_OutputOrder_v2_198_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_487();
    l0 = self.box_Delay_v5_487;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|27422320", "27422320", "LT02_040_B50", "box_OutputOrder_v2_198.Out", "box_Delay_v5_487.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_IsEntityLoaded_v3_56_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_280;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|874989609", "874989609", "LT02_040_B50", "box_IsEntityLoaded_v3_56.False", "box_MultipleOR_280.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_56_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_41();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|525654839", "525654839", "LT02_040_B50", "box_IsEntityLoaded_v3_56.True", "box_ParticleSystem_v3_41.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_LT02_040_B50_LightningStrike_166_Done()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_245();
    l0 = self.box_LT02_040_B50_LightningStrike_166;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1041415086", "1041415086", "LT02_040_B50", "box_LT02_040_B50_LightningStrike_166.Done", "box_OutputOrder_v2_245.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_417_Stopped()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_416;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|344325410", "344325410", "LT02_040_B50", "box_ParticleSystem_v3_417.Stopped", "box_MultipleOR_416.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_LT02_040_B50_BeaconListener_14_Broken()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_37();
    l0 = self.box_LT02_040_B50_BeaconListener_14;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|270686300", "270686300", "LT02_040_B50", "box_LT02_040_B50_BeaconListener_14.Broken", "box_SetBoolean_v2_37.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_308_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_306;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1768793097", "1768793097", "LT02_040_B50", "box_IsEntityLoaded_v3_308.False", "box_MultipleOR_306.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_308_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_307();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|953189125", "953189125", "LT02_040_B50", "box_IsEntityLoaded_v3_308.True", "box_ParticleSystem_v3_307.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_495_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_485();
    l0 = self.box_EntityStatusListener_495;
    l1 = self.box_RemoveEntity_v2_485;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|270865953", "270865953", "LT02_040_B50", "box_EntityStatusListener_495.Loaded", "box_RemoveEntity_v2_485.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_LT02_040_B50_BeaconGroupManager_161_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_79();
    l0 = self.box_LT02_040_B50_BeaconGroupManager_161;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|501557454", "501557454", "LT02_040_B50", "box_LT02_040_B50_BeaconGroupManager_161.Disabled", "box_OutputOrder_v2_79.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_146_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_146;
    l1 = self.box_MultipleOR_127;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1835475520", "1835475520", "LT02_040_B50", "box_PlayDialog_v6_146.Finished", "box_MultipleOR_127.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_146_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_146;
    l1 = self.box_MultipleOR_127;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|606894312", "606894312", "LT02_040_B50", "box_PlayDialog_v6_146.FinishedInterrupted", "box_MultipleOR_127.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_142_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_142;
    l1 = self.box_MultipleOR_145;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|500641727", "500641727", "LT02_040_B50", "box_PlayDialog_v6_142.Finished", "box_MultipleOR_145.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_142_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_142;
    l1 = self.box_MultipleOR_145;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1651593963", "1651593963", "LT02_040_B50", "box_PlayDialog_v6_142.FinishedInterrupted", "box_MultipleOR_145.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ParticleSystem_v3_310_Stopped()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_313;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1406418987", "1406418987", "LT02_040_B50", "box_ParticleSystem_v3_310.Stopped", "box_MultipleOR_313.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthModifier_v2_183_Damaged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_BeaconGroupManager_161();
    l0 = self.box_LT02_040_B50_BeaconGroupManager_161;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1032050261", "1032050261", "LT02_040_B50", "box_HealthModifier_v2_183.Damaged", "box_LT02_040_B50_BeaconGroupManager_161.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Compare_Integers_442_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_441();
    l0 = self.box_SpawnAI_441;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2074008988", "2074008988", "LT02_040_B50", "box_Compare_Integers_442.A_ge_B", "box_SpawnAI_441.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_407_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_262();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1421321686", "1421321686", "LT02_040_B50", "box_Compare_Boolean_407.A_is_False", "box_SoundPointModifier_262.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_424_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_452();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1674041576", "1674041576", "LT02_040_B50", "box_OutputOrder_v2_424.Out", "box_Compare_Boolean_452.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_424_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_393;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2127170350", "2127170350", "LT02_040_B50", "box_OutputOrder_v2_424.Out", "box_MultipleOR_393.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_518_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_521();
    l0 = self.box_SoundModifier_v2_521;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|478108719", "478108719", "LT02_040_B50", "box_Simple_Node_518.Out", "box_SoundModifier_v2_521.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_502_Out()
    local params, l0, l1;
    params = self:OnEnter_box_LT02_040_B50_BeaconRumble_425();
    l0 = self.box_MultipleOR_502;
    l1 = self.box_LT02_040_B50_BeaconRumble_425;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|829585410", "829585410", "LT02_040_B50", "box_MultipleOR_502.Out", "box_LT02_040_B50_BeaconRumble_425.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Compare_Integers_433_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_474();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1277206294", "1277206294", "LT02_040_B50", "box_Compare_Integers_433.A_eq_B", "box_Simple_Node_474.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_395_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisionModeModifier_v2_69();
    l0 = self.box_VisionModeModifier_v2_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1901436585", "1901436585", "LT02_040_B50", "box_OutputOrder_v2_395.Out", "box_VisionModeModifier_v2_69.StartCustomIntoxication", clone:GetLuaBox(), l0:GetLuaBox());
    -- StartCustomIntoxication
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_395_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_174();
    l0 = self.box_SoundModifier_v2_174;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1086464241", "1086464241", "LT02_040_B50", "box_OutputOrder_v2_395.Out", "box_SoundModifier_v2_174.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_395_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_412();
    l0 = self.box_Bind_v4_412;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|953130993", "953130993", "LT02_040_B50", "box_OutputOrder_v2_395.Out", "box_Bind_v4_412.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_395_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_518();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1653267047", "1653267047", "LT02_040_B50", "box_OutputOrder_v2_395.Out", "box_Simple_Node_518.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_204_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_206();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1275175044", "1275175044", "LT02_040_B50", "box_Simple_Node_204.Out", "box_Simple_Node_206.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_368_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_368;
    l1 = self.box_MultipleOR_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1447767725", "1447767725", "LT02_040_B50", "box_MultipleOR_368.Out", "box_MultipleOR_118.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityRadiusListener_v3_431_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_500();
    l0 = self.box_ProximityRadiusListener_v3_431;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1637747026", "1637747026", "LT02_040_B50", "box_ProximityRadiusListener_v3_431.SomeoneNear", "box_OutputOrder_v2_500.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LockTimeOfDay_28_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GunsForHireSystemModifier_32();
    l0 = self.box_LockTimeOfDay_28;
    l1 = self.box_GunsForHireSystemModifier_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1580944023", "1580944023", "LT02_040_B50", "box_LockTimeOfDay_28.Out", "box_GunsForHireSystemModifier_32.DisableGFHSystem", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisableGFHSystem
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_486_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_493();
    l0 = self.box_EntityStatusListener_486;
    l1 = self.box_RemoveEntity_v2_493;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1514488424", "1514488424", "LT02_040_B50", "box_EntityStatusListener_486.Loaded", "box_RemoveEntity_v2_493.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Simple_Node_103_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1301426279", "1301426279", "LT02_040_B50", "box_Simple_Node_103.Out", "box_MultipleOR_104.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityRadiusListener_v3_481_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_465();
    l0 = self.box_ProximityRadiusListener_v3_481;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1580780851", "1580780851", "LT02_040_B50", "box_ProximityRadiusListener_v3_481.SomeoneNear", "box_OutputOrder_v2_465.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_163_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_135();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1851984579", "1851984579", "LT02_040_B50", "box_OutputOrder_v2_163.Out", "box_Simple_Node_135.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_163_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_270();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|186417113", "186417113", "LT02_040_B50", "box_OutputOrder_v2_163.Out", "box_Simple_Node_270.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_163_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_33();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1403406557", "1403406557", "LT02_040_B50", "box_OutputOrder_v2_163.Out", "box_Simple_Node_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_163_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_165();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|470845423", "470845423", "LT02_040_B50", "box_OutputOrder_v2_163.Out", "box_HealthModifier_v2_165.Damage", clone:GetLuaBox(), l0:GetLuaBox());
    -- Damage
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_497_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_498();
    l0 = self.box_SpawnAI_497;
    l1 = self.box_SpawnAI_498;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|263748200", "263748200", "LT02_040_B50", "box_SpawnAI_497.Out", "box_SpawnAI_498.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_190_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_54();
    l0 = self.box_Delay_v5_190;
    l1 = self.box_Switch_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1750176722", "1750176722", "LT02_040_B50", "box_Delay_v5_190.TimeElapsed", "box_Switch_54.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_289_Stopped()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_290;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|467274222", "467274222", "LT02_040_B50", "box_ParticleSystem_v3_289.Stopped", "box_MultipleOR_290.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RemoveEntity_v2_485_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_495();
    l0 = self.box_RemoveEntity_v2_485;
    l1 = self.box_EntityStatusListener_495;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1096864792", "1096864792", "LT02_040_B50", "box_RemoveEntity_v2_485.Out", "box_EntityStatusListener_495.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_LT02_040_B50_BeaconListener_3_Broken()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_40();
    l0 = self.box_LT02_040_B50_BeaconListener_3;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|172738754", "172738754", "LT02_040_B50", "box_LT02_040_B50_BeaconListener_3.Broken", "box_SetBoolean_v2_40.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_284_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_418();
    l0 = self.box_MultipleOR_284;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|637945527", "637945527", "LT02_040_B50", "box_MultipleOR_284.Out", "box_IsEntityLoaded_v3_418.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_184_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_194();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|216097971", "216097971", "LT02_040_B50", "box_OutputOrder_v2_184.Out", "box_Simple_Node_194.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_184_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_130();
    l0 = self.box_Delay_v5_130;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|100422456", "100422456", "LT02_040_B50", "box_OutputOrder_v2_184.Out", "box_Delay_v5_130.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_145_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_145;
    l1 = self.box_MultipleOR_143;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|844764527", "844764527", "LT02_040_B50", "box_MultipleOR_145.Out", "box_MultipleOR_143.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_IsEntityLoaded_v3_278_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_288;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1530717513", "1530717513", "LT02_040_B50", "box_IsEntityLoaded_v3_278.False", "box_MultipleOR_288.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_278_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_287();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|489872537", "489872537", "LT02_040_B50", "box_IsEntityLoaded_v3_278.True", "box_ParticleSystem_v3_287.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_418_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_416;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1981112360", "1981112360", "LT02_040_B50", "box_IsEntityLoaded_v3_418.False", "box_MultipleOR_416.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_418_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_417();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|176233135", "176233135", "LT02_040_B50", "box_IsEntityLoaded_v3_418.True", "box_ParticleSystem_v3_417.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_341_AllFar()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_340();
    l0 = self.box_ProximityRadiusListener_v3_341;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|986276209", "986276209", "LT02_040_B50", "box_ProximityRadiusListener_v3_341.AllFar", "box_HealthModifier_v2_340.Damage", l0:GetLuaBox(), l1:GetLuaBox());
    -- Damage
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_129_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_129;
    l1 = self.box_MultipleOR_143;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|30169395", "30169395", "LT02_040_B50", "box_MultipleOR_129.Out", "box_MultipleOR_143.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_487_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_494();
    l0 = self.box_Delay_v5_487;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1363462935", "1363462935", "LT02_040_B50", "box_Delay_v5_487.TimeElapsed", "box_OutputOrder_v2_494.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_148_Out()
    self:OnExit_box_SetBoolean_v2_148_Out();
end;

function export:f_box_ActivityMiscInfoModifier_v2_22_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_383();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|794543907", "794543907", "LT02_040_B50", "box_ActivityMiscInfoModifier_v2_22.Out", "box_OutputOrder_v2_383.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_LT02_040_B50_BeaconRumble_501_Out()
    local l0, l1;
    l0 = self.box_LT02_040_B50_BeaconRumble_501;
    l1 = self.box_MultipleOR_426;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|339869677", "339869677", "LT02_040_B50", "box_LT02_040_B50_BeaconRumble_501.Out", "box_MultipleOR_426.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_411_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_259();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1536091331", "1536091331", "LT02_040_B50", "box_Compare_Boolean_411.A_is_False", "box_SoundPointModifier_259.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_305_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_303;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|729632797", "729632797", "LT02_040_B50", "box_IsEntityLoaded_v3_305.False", "box_MultipleOR_303.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_305_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_304();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1179805543", "1179805543", "LT02_040_B50", "box_IsEntityLoaded_v3_305.True", "box_ParticleSystem_v3_304.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_181_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1849874884", "1849874884", "LT02_040_B50", "box_Simple_Node_181.Out", "box_MultipleOR_21.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityRadiusListener_v3_479_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_478();
    l0 = self.box_ProximityRadiusListener_v3_479;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1268021206", "1268021206", "LT02_040_B50", "box_ProximityRadiusListener_v3_479.SomeoneNear", "box_OutputOrder_v2_478.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT02_040_B50_BeaconGroupManager_217_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_396();
    l0 = self.box_LT02_040_B50_BeaconGroupManager_217;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|359355192", "359355192", "LT02_040_B50", "box_LT02_040_B50_BeaconGroupManager_217.Disabled", "box_OutputOrder_v2_396.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_313_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_299();
    l0 = self.box_MultipleOR_313;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1701052615", "1701052615", "LT02_040_B50", "box_MultipleOR_313.Out", "box_IsEntityLoaded_v3_299.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_266_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_265();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2062680496", "2062680496", "LT02_040_B50", "box_ActivityObjectiveMarkerModifier_v3_266.Enabled", "box_ActivityObjectiveMarkerModifier_v3_265.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PostFx_v3_496_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_9();
    l0 = self.box_PostFx_v3_496;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2070894391", "2070894391", "LT02_040_B50", "box_PostFx_v3_496.Disabled", "box_OutputOrder_v2_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_429_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_436();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|249260988", "249260988", "LT02_040_B50", "box_Compare_Integers_429.A_ge_B", "box_OutputOrder_v2_436.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_429_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_435();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1517435215", "1517435215", "LT02_040_B50", "box_Compare_Integers_429.A_lt_B", "box_OutputOrder_v2_435.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_473_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_470();
    l0 = self.box_SpawnAI_470;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1944773680", "1944773680", "LT02_040_B50", "box_Compare_Integers_473.A_ge_B", "box_SpawnAI_470.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_321_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_314();
    l0 = self.box_MultipleOR_321;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|655101096", "655101096", "LT02_040_B50", "box_MultipleOR_321.Out", "box_IsEntityLoaded_v3_314.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_293_Stopped()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_291;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|529878298", "529878298", "LT02_040_B50", "box_ParticleSystem_v3_293.Stopped", "box_MultipleOR_291.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_427_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_342();
    l0 = self.box_SpawnAI_342;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1381898501", "1381898501", "LT02_040_B50", "box_OutputOrder_v2_427.Out", "box_SpawnAI_342.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_427_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_481();
    l0 = self.box_ProximityRadiusListener_v3_481;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1857564314", "1857564314", "LT02_040_B50", "box_OutputOrder_v2_427.Out", "box_ProximityRadiusListener_v3_481.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_384_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundPointModifier_525();
    l0 = self.box_Delay_v5_384;
    l1 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|558882300", "558882300", "LT02_040_B50", "box_Delay_v5_384.TimeElapsed", "box_SoundPointModifier_525.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_388_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_389();
    l0 = self.box_MultipleOR_388;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1349194298", "1349194298", "LT02_040_B50", "box_MultipleOR_388.Out", "box_Simple_Node_389.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_95_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_95;
    l1 = self.box_MultipleOR_354;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1246173195", "1246173195", "LT02_040_B50", "box_MultipleOR_95.Out", "box_MultipleOR_354.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_9_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_BeaconListener_15();
    l0 = self.box_LT02_040_B50_BeaconListener_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|720066385", "720066385", "LT02_040_B50", "box_OutputOrder_v2_9.Out", "box_LT02_040_B50_BeaconListener_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_9_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_BeaconListener_3();
    l0 = self.box_LT02_040_B50_BeaconListener_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|627884256", "627884256", "LT02_040_B50", "box_OutputOrder_v2_9.Out", "box_LT02_040_B50_BeaconListener_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_9_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_BeaconListener_11();
    l0 = self.box_LT02_040_B50_BeaconListener_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|109455157", "109455157", "LT02_040_B50", "box_OutputOrder_v2_9.Out", "box_LT02_040_B50_BeaconListener_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_9_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_BeaconListener_12();
    l0 = self.box_LT02_040_B50_BeaconListener_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|192429847", "192429847", "LT02_040_B50", "box_OutputOrder_v2_9.Out", "box_LT02_040_B50_BeaconListener_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_9_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_BeaconListener_14();
    l0 = self.box_LT02_040_B50_BeaconListener_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1501739597", "1501739597", "LT02_040_B50", "box_OutputOrder_v2_9.Out", "box_LT02_040_B50_BeaconListener_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_9_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_BeaconListener_218();
    l0 = self.box_LT02_040_B50_BeaconListener_218;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1085352879", "1085352879", "LT02_040_B50", "box_OutputOrder_v2_9.Out", "box_LT02_040_B50_BeaconListener_218.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_156_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_LightningStrike_166();
    l0 = self.box_LT02_040_B50_LightningStrike_166;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|969450200", "969450200", "LT02_040_B50", "box_OutputOrder_v2_156.Out", "box_LT02_040_B50_LightningStrike_166.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_156_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_401();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|959701287", "959701287", "LT02_040_B50", "box_OutputOrder_v2_156.Out", "box_Compare_Boolean_401.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_156_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_504();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1983395422", "1983395422", "LT02_040_B50", "box_OutputOrder_v2_156.Out", "box_Simple_Node_504.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_143_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_148();
    l0 = self.box_MultipleOR_143;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|119042444", "119042444", "LT02_040_B50", "box_MultipleOR_143.Out", "box_SetBoolean_v2_148.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityInGroup_34_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_125();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1422661658", "1422661658", "LT02_040_B50", "box_IsEntityInGroup_34.True", "box_Simple_Node_125.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_119_Out()
    self:OnExit_box_SetBoolean_v2_119_Out();
end;

function export:f_box_OutputOrder_v2_513_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_343();
    l0 = self.box_SpawnAI_343;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1349472190", "1349472190", "LT02_040_B50", "box_OutputOrder_v2_513.Out", "box_SpawnAI_343.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_513_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_344();
    l0 = self.box_SpawnAI_344;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1410501629", "1410501629", "LT02_040_B50", "box_OutputOrder_v2_513.Out", "box_SpawnAI_344.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_513_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_462();
    l0 = self.box_SpawnAI_462;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|925796490", "925796490", "LT02_040_B50", "box_OutputOrder_v2_513.Out", "box_SpawnAI_462.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_513_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_356();
    l0 = self.box_SpawnAI_356;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1682310665", "1682310665", "LT02_040_B50", "box_OutputOrder_v2_513.Out", "box_SpawnAI_356.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_513_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_470();
    l0 = self.box_SpawnAI_470;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|352202519", "352202519", "LT02_040_B50", "box_OutputOrder_v2_513.Out", "box_SpawnAI_470.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_513_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_469();
    l0 = self.box_SpawnAI_469;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2134468635", "2134468635", "LT02_040_B50", "box_OutputOrder_v2_513.Out", "box_SpawnAI_469.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_309_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_317();
    l0 = self.box_MultipleOR_309;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1277253957", "1277253957", "LT02_040_B50", "box_MultipleOR_309.Out", "box_IsEntityLoaded_v3_317.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_422_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_450();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|975076042", "975076042", "LT02_040_B50", "box_OutputOrder_v2_422.Out", "box_Compare_Boolean_450.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_422_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_390;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1934046553", "1934046553", "LT02_040_B50", "box_OutputOrder_v2_422.Out", "box_MultipleOR_390.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ParticleSystem_v3_281_Stopped()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_282;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1039316400", "1039316400", "LT02_040_B50", "box_ParticleSystem_v3_281.Stopped", "box_MultipleOR_282.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_298_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_324();
    l0 = self.box_MultipleOR_298;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1679512553", "1679512553", "LT02_040_B50", "box_MultipleOR_298.Out", "box_IsEntityLoaded_v3_324.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_16_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_16_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_19();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|339369224", "339369224", "LT02_040_B50", "box_IntegerArithmetics_v2_16.Out", "box_SetActivityObjectiveProgress_v2_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_51_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_159;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1406004862", "1406004862", "LT02_040_B50", "box_OutputOrder_v2_51.Out", "box_MultipleOR_159.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_51_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_82();
    l0 = self.box_ProximityRadiusListener_v3_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|439423842", "439423842", "LT02_040_B50", "box_OutputOrder_v2_51.Out", "box_ProximityRadiusListener_v3_82.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_51_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_420();
    l0 = self.box_HealthListener_v6_420;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|313226070", "313226070", "LT02_040_B50", "box_OutputOrder_v2_51.Out", "box_HealthListener_v6_420.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_121_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_121;
    l1 = self.box_MultipleOR_123;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1472917956", "1472917956", "LT02_040_B50", "box_PlayDialog_v6_121.Finished", "box_MultipleOR_123.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_121_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_121;
    l1 = self.box_MultipleOR_123;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|321201205", "321201205", "LT02_040_B50", "box_PlayDialog_v6_121.FinishedInterrupted", "box_MultipleOR_123.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Integers_440_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_439();
    l0 = self.box_SpawnAI_439;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1143260142", "1143260142", "LT02_040_B50", "box_Compare_Integers_440.A_ge_B", "box_SpawnAI_439.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_155_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_173();
    l0 = self.box_Delay_v5_155;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1860107214", "1860107214", "LT02_040_B50", "box_Delay_v5_155.TimeElapsed", "box_Simple_Node_173.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_490_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_497();
    l0 = self.box_SpawnAI_490;
    l1 = self.box_SpawnAI_497;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2060028069", "2060028069", "LT02_040_B50", "box_SpawnAI_490.Out", "box_SpawnAI_497.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_453_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_422();
    l0 = self.box_ProximityRadiusListener_v3_453;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|675239500", "675239500", "LT02_040_B50", "box_ProximityRadiusListener_v3_453.SomeoneNear", "box_OutputOrder_v2_422.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_245_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_212();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|987216658", "987216658", "LT02_040_B50", "box_OutputOrder_v2_245.Out", "box_Simple_Node_212.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_245_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_249();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1946409449", "1946409449", "LT02_040_B50", "box_OutputOrder_v2_245.Out", "box_Simple_Node_249.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_LT02_040_B50_RandomWaveSpawner_52_NoneValid()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_155();
    l0 = self.box_LT02_040_B50_RandomWaveSpawner_52;
    l1 = self.box_Delay_v5_155;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1106346387", "1106346387", "LT02_040_B50", "box_LT02_040_B50_RandomWaveSpawner_52.NoneValid", "box_Delay_v5_155.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_LT02_040_B50_RandomWaveSpawner_52_Spawned()
    local l0, l1;
    l0 = self.box_LT02_040_B50_RandomWaveSpawner_52;
    l1 = self.box_MultipleOR_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|421825782", "421825782", "LT02_040_B50", "box_LT02_040_B50_RandomWaveSpawner_52.Spawned", "box_MultipleOR_104.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ParticleSystem_v3_297_Stopped()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_298;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1005410565", "1005410565", "LT02_040_B50", "box_ParticleSystem_v3_297.Stopped", "box_MultipleOR_298.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_482_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_471();
    l0 = self.box_ProximityRadiusListener_v3_482;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2006027732", "2006027732", "LT02_040_B50", "box_ProximityRadiusListener_v3_482.SomeoneNear", "box_OutputOrder_v2_471.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundMusicTriggerBox_64_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PostWWiseEventSetState_65();
    l0 = self.box_SoundMusicTriggerBox_64;
    l1 = self.box_PostWWiseEventSetState_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1120851206", "1120851206", "LT02_040_B50", "box_SoundMusicTriggerBox_64.Started", "box_PostWWiseEventSetState_65.SetState", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetState
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_383_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_13();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|667532702", "667532702", "LT02_040_B50", "box_OutputOrder_v2_383.Out", "box_GetPlayerGroup_v2_13.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_383_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_177();
    l0 = self.box_SoundModifier_v2_177;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|730992773", "730992773", "LT02_040_B50", "box_OutputOrder_v2_383.Out", "box_SoundModifier_v2_177.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_243_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_234();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1637126505", "1637126505", "LT02_040_B50", "box_OutputOrder_v2_243.Out", "box_ParticleSystem_v3_234.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_243_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_236();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|636781225", "636781225", "LT02_040_B50", "box_OutputOrder_v2_243.Out", "box_ParticleSystem_v3_236.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_243_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_237();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1020482597", "1020482597", "LT02_040_B50", "box_OutputOrder_v2_243.Out", "box_ParticleSystem_v3_237.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_243_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_235();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1097424607", "1097424607", "LT02_040_B50", "box_OutputOrder_v2_243.Out", "box_ParticleSystem_v3_235.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_243_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_227();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|47442796", "47442796", "LT02_040_B50", "box_OutputOrder_v2_243.Out", "box_ParticleSystem_v3_227.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_492_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_489();
    l0 = self.box_SpawnAI_492;
    l1 = self.box_Delay_v5_489;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|908413737", "908413737", "LT02_040_B50", "box_SpawnAI_492.Out", "box_Delay_v5_489.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_380_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_380;
    l1 = self.box_MultipleOR_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1617480134", "1617480134", "LT02_040_B50", "box_MultipleOR_380.Out", "box_MultipleOR_118.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 9);
end;

function export:f_box_Bind_v4_412_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_414();
    l0 = self.box_Bind_v4_412;
    l1 = self.box_Delay_v5_414;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|685927908", "685927908", "LT02_040_B50", "box_Bind_v4_412.Bound", "box_Delay_v5_414.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_158_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v5_96();
    l0 = self.box_MultipleOR_158;
    l1 = self.box_GroupSizeListener_v5_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2097773618", "2097773618", "LT02_040_B50", "box_MultipleOR_158.Out", "box_GroupSizeListener_v5_96.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_282_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_276();
    l0 = self.box_MultipleOR_282;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1191290911", "1191290911", "LT02_040_B50", "box_MultipleOR_282.Out", "box_IsEntityLoaded_v3_276.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_393_Out()
    local params, l0, l1;
    params = self:OnEnter_box_LT02_040_B50_BeaconRumble_423();
    l0 = self.box_MultipleOR_393;
    l1 = self.box_LT02_040_B50_BeaconRumble_423;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|962482372", "962482372", "LT02_040_B50", "box_MultipleOR_393.Out", "box_LT02_040_B50_BeaconRumble_423.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_LT02_040_B50_LightningStrike_180_Done()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_244();
    l0 = self.box_LT02_040_B50_LightningStrike_180;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1869999666", "1869999666", "LT02_040_B50", "box_LT02_040_B50_LightningStrike_180.Done", "box_OutputOrder_v2_244.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_445_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_447();
    l0 = self.box_SpawnAI_447;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|968546406", "968546406", "LT02_040_B50", "box_Compare_Integers_445.A_ge_B", "box_SpawnAI_447.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_SpawnAI_458_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_352();
    l0 = self.box_SpawnAI_458;
    l1 = self.box_SpawnAI_352;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1341772785", "1341772785", "LT02_040_B50", "box_SpawnAI_458.Out", "box_SpawnAI_352.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_182_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_135();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1549932381", "1549932381", "LT02_040_B50", "box_OutputOrder_v2_182.Out", "box_Simple_Node_135.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_182_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_272();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|212397076", "212397076", "LT02_040_B50", "box_OutputOrder_v2_182.Out", "box_Simple_Node_272.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_182_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_204();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|184033344", "184033344", "LT02_040_B50", "box_OutputOrder_v2_182.Out", "box_Simple_Node_204.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_182_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_183();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|630494860", "630494860", "LT02_040_B50", "box_OutputOrder_v2_182.Out", "box_HealthModifier_v2_183.Damage", clone:GetLuaBox(), l0:GetLuaBox());
    -- Damage
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_363_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_363;
    l1 = self.box_MultipleOR_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1794760089", "1794760089", "LT02_040_B50", "box_MultipleOR_363.Out", "box_MultipleOR_114.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_MultipleOR_366_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_366;
    l1 = self.box_MultipleOR_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|481017068", "481017068", "LT02_040_B50", "box_MultipleOR_366.Out", "box_MultipleOR_118.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_IsEntityLoaded_v3_314_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_313;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1216057290", "1216057290", "LT02_040_B50", "box_IsEntityLoaded_v3_314.False", "box_MultipleOR_313.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_314_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_310();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|899299761", "899299761", "LT02_040_B50", "box_IsEntityLoaded_v3_314.True", "box_ParticleSystem_v3_310.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_100_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_357();
    l0 = self.box_Delay_v5_357;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|85291503", "85291503", "LT02_040_B50", "box_SetContextualStrategy_100.Out", "box_Delay_v5_357.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_LT02_040_B50_BeaconListener_218_Broken()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_215();
    l0 = self.box_LT02_040_B50_BeaconListener_218;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|976387153", "976387153", "LT02_040_B50", "box_LT02_040_B50_BeaconListener_218.Broken", "box_OutputOrder_v2_215.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_343_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_344();
    l0 = self.box_SpawnAI_343;
    l1 = self.box_SpawnAI_344;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|260218041", "260218041", "LT02_040_B50", "box_SpawnAI_343.Out", "box_SpawnAI_344.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_79_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_LightningStrike_180();
    l0 = self.box_LT02_040_B50_LightningStrike_180;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1971851612", "1971851612", "LT02_040_B50", "box_OutputOrder_v2_79.Out", "box_LT02_040_B50_LightningStrike_180.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_79_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_409();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|76574511", "76574511", "LT02_040_B50", "box_OutputOrder_v2_79.Out", "box_Compare_Boolean_409.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_79_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_508();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1280767968", "1280767968", "LT02_040_B50", "box_OutputOrder_v2_79.Out", "box_Simple_Node_508.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_376_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_376;
    l1 = self.box_MultipleOR_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1880243465", "1880243465", "LT02_040_B50", "box_MultipleOR_376.Out", "box_MultipleOR_118.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_GunsForHireSystemModifier_32_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityMiscInfoModifier_v2_22();
    l0 = self.box_GunsForHireSystemModifier_32;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1548502056", "1548502056", "LT02_040_B50", "box_GunsForHireSystemModifier_32.Disabled", "box_ActivityMiscInfoModifier_v2_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_215_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_135();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1914210197", "1914210197", "LT02_040_B50", "box_OutputOrder_v2_215.Out", "box_Simple_Node_135.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_215_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_273();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1759267924", "1759267924", "LT02_040_B50", "box_OutputOrder_v2_215.Out", "box_Simple_Node_273.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_215_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_178();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|191915267", "191915267", "LT02_040_B50", "box_OutputOrder_v2_215.Out", "box_Simple_Node_178.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_215_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_220();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|575616639", "575616639", "LT02_040_B50", "box_OutputOrder_v2_215.Out", "box_HealthModifier_v2_220.Damage", clone:GetLuaBox(), l0:GetLuaBox());
    -- Damage
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_381_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_381;
    l1 = self.box_MultipleOR_380;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|331978493", "331978493", "LT02_040_B50", "box_PlayDialog_v6_381.Finished", "box_MultipleOR_380.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_381_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_381;
    l1 = self.box_MultipleOR_380;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1874445151", "1874445151", "LT02_040_B50", "box_PlayDialog_v6_381.FinishedInterrupted", "box_MultipleOR_380.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_LT02_040_B50_BeaconGroupManager_169_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_76();
    l0 = self.box_LT02_040_B50_BeaconGroupManager_169;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1764641059", "1764641059", "LT02_040_B50", "box_LT02_040_B50_BeaconGroupManager_169.Disabled", "box_OutputOrder_v2_76.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_426_Out()
    local params, l0, l1;
    params = self:OnEnter_box_LT02_040_B50_BeaconRumble_501();
    l0 = self.box_MultipleOR_426;
    l1 = self.box_LT02_040_B50_BeaconRumble_501;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1093050416", "1093050416", "LT02_040_B50", "box_MultipleOR_426.Out", "box_LT02_040_B50_BeaconRumble_501.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_355_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_355;
    l1 = self.box_MultipleOR_354;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|494553853", "494553853", "LT02_040_B50", "box_Delay_v5_355.TimeElapsed", "box_MultipleOR_354.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_130_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_35();
    l0 = self.box_Delay_v5_130;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1524671855", "1524671855", "LT02_040_B50", "box_Delay_v5_130.Stopped", "box_HealthModifier_v2_35.Damage", l0:GetLuaBox(), l1:GetLuaBox());
    -- Damage
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_130_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_195();
    l0 = self.box_Delay_v5_130;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1653964266", "1653964266", "LT02_040_B50", "box_Delay_v5_130.TimeElapsed", "box_Simple_Node_195.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_88_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_87();
    l0 = self.box_MultipleOR_88;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|167397795", "167397795", "LT02_040_B50", "box_MultipleOR_88.Out", "box_Compare_Integers_87.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT02_040_B50_LightningStrike_171_Done()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_246();
    l0 = self.box_LT02_040_B50_LightningStrike_171;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|365610301", "365610301", "LT02_040_B50", "box_LT02_040_B50_LightningStrike_171.Done", "box_OutputOrder_v2_246.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_102_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_103();
    l0 = self.box_Delay_v5_102;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1279974003", "1279974003", "LT02_040_B50", "box_Delay_v5_102.TimeElapsed", "box_Simple_Node_103.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OverrideEnvironment_v3_10_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_198();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|476538021", "476538021", "LT02_040_B50", "box_OverrideEnvironment_v3_10.Enabled", "box_OutputOrder_v2_198.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_416_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_277();
    l0 = self.box_MultipleOR_416;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|588308996", "588308996", "LT02_040_B50", "box_MultipleOR_416.Out", "box_IsEntityLoaded_v3_277.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_268()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_268");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|@disableBeacon01");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_268_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|@disableBeacon02");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_269_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_270()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_270");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|@disableBeacon03");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_270_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_271()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_271");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|@disableBeacon04");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_271_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|@disableBeacon05");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_272_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|@disableBeacon06");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_273_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|@disableRespawners");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_135_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_212()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_212");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|@disableUplight1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_212_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_211()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_211");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|@disableUplight2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_211_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_210()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_210");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|@disableUplight3");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_210_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_214()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_214");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|@disableUplight5");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_214_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_258()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_258");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|@disableUplight6");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_258_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_213()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_213");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|@disablueUplight4");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_213_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_196()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_196");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|@enableBeaconGroupManagers");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_196_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|@enableJacobRespawner");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_194_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_195()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_195");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|@enableWaveRespawner");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_195_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|@retryJacobSpawn");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_133_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|@retryWaveSpawn");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_173_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|@stopFire1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_249_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_250()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_250");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|@stopFire2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_250_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_251()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_251");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|@stopFire3");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_251_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_252()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_252");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|@stopFire4");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_252_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_254()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_254");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|@stopFire5");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_254_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_253()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_253");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|@stopFire6");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_253_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_116()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|@VOBeaconDestroyed");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_116_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|@VOJacobDestroyed");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_125_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_149()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_149");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|@VORestartRandom");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_149_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_138()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_138");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|@VOStartRandom");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_138_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_504()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_504");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|@WolfBeacon01_Destroyed");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_504_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_505()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_505");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|@WolfBeacon02_Destroyed");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_505_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_506()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_506");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|@WolfBeacon03_Destroyed");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_506_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_507()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_507");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|@WolfBeacon04_Destroyed");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_507_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_508()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_508");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|@WolfBeacon05_Destroyed");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_508_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|249640");
    l0:SetConnections({
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_97_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.iWavesGroupSize,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|6081191");
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

function export:OnEnter_box_PlayDialog_v6_147()
    local params;
    params = {
        -- Group,
        [0] = "2104909610650455533",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3387366280",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_435()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_435");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|20691409");
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
                [0] = self.f_box_OutputOrder_v2_435_Out_0,
                [1] = self.f_box_OutputOrder_v2_435_Out_1,
                [2] = self.f_box_OutputOrder_v2_435_Out_2,
                [3] = self.f_box_OutputOrder_v2_435_Out_3,
                [4] = self.f_box_OutputOrder_v2_435_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|37705037");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_18_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = self.oBeaconObjective,
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_389()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_389");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|38732240");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OverrideMenuAccessibility_131()
    local params;
    params = {
        -- ActivityLogMenuEnabled,
        [0] = true,
        -- AvatarCreationMenuEnabled,
        [1] = true,
        -- AvatarCustomizationMenuEnabled,
        [2] = true,
        -- ChallengeMenuEnabled,
        [3] = true,
        -- LootMenuEnabled,
        [4] = true,
        -- OnlineMenuEnabled,
        [5] = true,
        -- PerksMenuEnabled,
        [6] = true,
        -- ResistanceMenuEnabled,
        [7] = true,
        -- SquadMenuEnabled,
        [8] = true,
        -- WorldmapMenuEnabled,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_294()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_294");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|47804039");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_294_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2104161528923055346",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_338()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_338");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|58644444");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104547934721810267",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_209()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_209");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|59949706");
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
                [0] = self.f_box_OutputOrder_v2_209_Out_0,
                [1] = self.f_box_OutputOrder_v2_209_Out_1,
                [2] = self.f_box_OutputOrder_v2_209_Out_2,
                [3] = self.f_box_OutputOrder_v2_209_Out_3,
                [4] = self.f_box_OutputOrder_v2_209_Out_4,
                [5] = self.f_box_OutputOrder_v2_209_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_122()
    local params;
    params = {
        -- Group,
        [0] = "2104909610650455533",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3369563951",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|68308753");
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
                [0] = self.f_box_OutputOrder_v2_99_Out_0,
                [1] = self.f_box_OutputOrder_v2_99_Out_1,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|72348151");
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
        [8] = "LT02_040_B50 script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_LightningStrike_185()
    local params;
    params = {
        -- eLight,
        [0] = "2104147511095616148",
        -- eTarget,
        [1] = "2104370191052900644",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_452()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_452");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|84503176");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_452_A_is_False,
    });
    params = {
        -- A,
        [0] = self.bBeacon05Destroyed,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_176()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_176");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|94215767");
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

function export:OnEnter_box_ParticleSystem_v3_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|106565102");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_41_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2104826881051221256",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_307()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_307");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|114971011");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_307_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2104547794720136997",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_241()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_241");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|118021367");
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
                [0] = self.f_box_OutputOrder_v2_241_Out_0,
                [1] = self.f_box_OutputOrder_v2_241_Out_1,
                [2] = self.f_box_OutputOrder_v2_241_Out_2,
                [3] = self.f_box_OutputOrder_v2_241_Out_3,
                [4] = self.f_box_OutputOrder_v2_241_Out_4,
                [5] = self.f_box_OutputOrder_v2_241_Out_5,
                [6] = self.f_box_OutputOrder_v2_241_Out_6,
            },
            count = 7,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VisionModeModifier_v2_69()
    local params;
    params = {
        -- intoxicationAmount,
        [0] = 200,
        -- players,
        [1] = "#ED455357",
        -- useAsPercent,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_177()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "1468354901",
        -- SoundType,
        [2] = 0,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_292()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_292");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|132167862");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_292_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_292_True,
    });
    params = {
        -- entityId,
        [0] = "2104161487667881200",
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_BeaconListener_12()
    local params;
    params = {
        -- eAttractorSTP01,
        [0] = self.ePosition04Attractor01,
        -- eAttractorSTP02,
        [1] = self.ePosition04Attractor02,
        -- eAttractorSTP03,
        [2] = self.ePosition04Attractor03,
        -- eBeaconPrefab,
        [3] = self.eWolfBeacon04,
        -- sObjectName,
        [4] = self.sGeneratorName,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_353()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2105544833729831324",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_140()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2105516918554267653",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|145546658");
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
                [0] = self.f_box_OutputOrder_v2_101_Out_0,
                [1] = self.f_box_OutputOrder_v2_101_Out_1,
                [2] = self.f_box_OutputOrder_v2_101_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_436()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_436");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|146991888");
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
                [0] = self.f_box_OutputOrder_v2_436_Out_0,
                [1] = self.f_box_OutputOrder_v2_436_Out_1,
                [2] = self.f_box_OutputOrder_v2_436_Out_2,
                [3] = self.f_box_OutputOrder_v2_436_Out_3,
                [4] = self.f_box_OutputOrder_v2_436_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|154110681");
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
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_337()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_337");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|156957194");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104547517306773073",
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_BeaconGroupManager_191()
    local params;
    params = {
        -- eAnchor,
        [0] = self.eWolfBeacon01,
        -- gLocalGroup,
        [1] = self.gBeacon1Dudes,
        -- gMasterGroup,
        [2] = self.gB50dudes,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|182456035");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_BeaconListener_11()
    local params;
    params = {
        -- eAttractorSTP01,
        [0] = self.ePosition03Attractor01,
        -- eAttractorSTP02,
        [1] = self.ePosition03Attractor02,
        -- eAttractorSTP03,
        [2] = self.ePosition03Attractor03,
        -- eBeaconPrefab,
        [3] = self.eWolfBeacon03,
        -- sObjectName,
        [4] = self.sGeneratorName,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_248()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_248");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|185941229");
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
                [0] = self.f_box_OutputOrder_v2_248_Out_0,
                [1] = self.f_box_OutputOrder_v2_248_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_226()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_226");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|188990645");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104162664235151650",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_325()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_325");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|192851358");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_325_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2104443328203353585",
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_BeaconGroupManager_167()
    local params;
    params = {
        -- eAnchor,
        [0] = self.eWolfBeacon03,
        -- gLocalGroup,
        [1] = self.gBeacon3Dudes,
        -- gMasterGroup,
        [2] = self.gB50dudes,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_BeaconRumble_391()
    local params;
    params = {
        -- Beacon,
        [0] = "2104093267088904932",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_498()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2105601495736023258",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_136()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 30,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_312()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_312");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|226287350");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_312_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_312_True,
    });
    params = {
        -- entityId,
        [0] = "2104161777993390238",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_514()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_514");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|227947122");
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
                [0] = self.f_box_OutputOrder_v2_514_Out_0,
                [1] = self.f_box_OutputOrder_v2_514_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_LightningStrike_179()
    local params;
    params = {
        -- eLight,
        [0] = "2104147500326740624",
        -- eTarget,
        [1] = "2104370190700579106",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_228()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_228");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|228853233");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104160029702644946",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_175()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "3156570066",
        -- SoundType,
        [2] = 0,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_465()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_465");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|240393222");
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
                [0] = self.f_box_OutputOrder_v2_465_Out_0,
                [1] = self.f_box_OutputOrder_v2_465_Out_1,
                [2] = self.f_box_OutputOrder_v2_465_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_394()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_394");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|244602204");
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

function export:OnEnter_box_SetBoolean_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|249473875");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_38_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_287()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_287");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|253756745");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_287_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2104826899403398418",
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|265766870");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = self.eBeaconSoundPoint05,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_352()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2105544713462357944",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_316()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_316");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|279560390");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_316_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2104443290733538791",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_478()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_478");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|291065231");
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
                [0] = self.f_box_OutputOrder_v2_478_Out_0,
                [1] = self.f_box_OutputOrder_v2_478_Out_1,
                [2] = self.f_box_OutputOrder_v2_478_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_377()
    local params;
    params = {
        -- Group,
        [0] = "2104909610650455533",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "985490996",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_434()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_434");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|297761523");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_434_A_is_False,
    });
    params = {
        -- A,
        [0] = self.bBeacon01Destroyed,
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|303932941");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = self.eBeaconSoundPoint01,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_521()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "68574539",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_165()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_165");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|306648992");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_165_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- origin,
        [1] = self.eLKP,
        -- pawns,
        [2] = self.gBeacon3Dudes,
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_400()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_400");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|309736967");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_400_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_331()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_331");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|310347694");
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
                [0] = self.f_box_OutputOrder_v2_331_Out_0,
                [1] = self.f_box_OutputOrder_v2_331_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_240()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_240");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|313709570");
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
                [0] = self.f_box_OutputOrder_v2_240_Out_0,
                [1] = self.f_box_OutputOrder_v2_240_Out_1,
                [2] = self.f_box_OutputOrder_v2_240_Out_2,
                [3] = self.f_box_OutputOrder_v2_240_Out_3,
                [4] = self.f_box_OutputOrder_v2_240_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_511()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_511");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|318122945");
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
                [0] = self.f_box_OutputOrder_v2_511_Out_0,
                [1] = self.f_box_OutputOrder_v2_511_Out_1,
                [2] = self.f_box_OutputOrder_v2_511_Out_2,
                [3] = self.f_box_OutputOrder_v2_511_Out_3,
                [4] = self.f_box_OutputOrder_v2_511_Out_4,
                [5] = self.f_box_OutputOrder_v2_511_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_379()
    local params;
    params = {
        -- Group,
        [0] = "2104909610650455533",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "142145369",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_227()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_227");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|320731198");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104161127962272988",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_202()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_202");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|321986544");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_202_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_523()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_317()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_317");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|327517261");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_317_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_317_True,
    });
    params = {
        -- entityId,
        [0] = "2104443290733538791",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_413()
    local params, l0;
    DrawTextToScreen("Comment: trigger player FX", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ParticleSystem_v3')-- Comment: trigger player FX");
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_413");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|344714221");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104952444977993875",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_205()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_205");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|345122488");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2104257052313413334",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_132()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|362017795");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_47_Enabled,
    });
    params = {
        -- Marker,
        [1] = self.eBeaconMarker02,
        -- ObjectiveId,
        [2] = self.oBeaconObjective,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_302()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_302");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|364054970");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_302_True,
    });
    params = {
        -- entityId,
        [0] = "2104547214597561713",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_364()
    local params;
    params = {
        -- Group,
        [0] = "2104909610650455533",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "111757131",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_365()
    local params;
    params = {
        -- Group,
        [0] = "2104909610650455533",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "856875318",
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_519()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_519");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|374261062");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = self.eBeaconSoundPoint04,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|377062508");
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
                [0] = self.f_box_OutputOrder_v2_89_Out_0,
                [1] = self.f_box_OutputOrder_v2_89_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_530()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_255()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_255");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|382772779");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104443128472694241",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_409()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_409");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|385968680");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_409_A_is_False,
    });
    params = {
        -- A,
        [0] = self.bIsLastBeacon,
    };
    return params;
end;

function export:OnEnter_box_Switch_117()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_375()
    local params;
    params = {
        -- Group,
        [0] = "2104909610650455533",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2957539075",
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_BeaconGroupManager_170()
    local params;
    params = {
        -- eAnchor,
        [0] = self.eWolfBeacon02,
        -- gLocalGroup,
        [1] = self.gBeacon2Dudes,
        -- gMasterGroup,
        [2] = self.gB50dudes,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_373()
    local params;
    params = {
        -- Group,
        [0] = "2104909610650455533",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "588533109",
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_BeaconRumble_423()
    local params;
    params = {
        -- Beacon,
        [0] = "2104093271723610861",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|410983354");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_40_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_512()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_512");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|416673980");
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
                [0] = self.f_box_OutputOrder_v2_512_Out_0,
                [1] = self.f_box_OutputOrder_v2_512_Out_1,
                [2] = self.f_box_OutputOrder_v2_512_Out_2,
                [3] = self.f_box_OutputOrder_v2_512_Out_3,
                [4] = self.f_box_OutputOrder_v2_512_Out_4,
                [5] = self.f_box_OutputOrder_v2_512_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_86()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = self.gJacobClones,
    };
    return params;
end;

function export:OnEnter_box_FogOfWarModifier_134()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/FogOfWarModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FogOfWarModifier_134");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|430938599");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FogOfWarModifier_134_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|432375146");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_33_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_232()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_232");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|440720243");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104161696430954646",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_489()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 60,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_396()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_396");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|454402749");
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
                [0] = self.f_box_OutputOrder_v2_396_Out_0,
                [1] = self.f_box_OutputOrder_v2_396_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_152()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2105544599584905694",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_275()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_275");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|461907615");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_275_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_275_True,
    });
    params = {
        -- entityId,
        [0] = "2104826886925344010",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_304()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_304");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|462609887");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_304_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2104547781579382563",
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_529()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_428()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = self.gB50dudes,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_472()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_472");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|477344983");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_472_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iBeaconsDestroyed,
        -- B,
        [1] = self.ithreatLevel2,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_219()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_219");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|477539190");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_219_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_361()
    local params;
    DrawTextToScreen("Comment: dialog point bound", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Bind_v4')-- Comment: dialog point bound");
    params = {
        -- BoneName,
        [0] = "Spine",
        -- EntityA,
        [1] = self.eHost,
        -- EntityB,
        [2] = "2104909610650455533",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_509()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_509");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|493965225");
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
                [0] = self.f_box_OutputOrder_v2_509_Out_0,
                [1] = self.f_box_OutputOrder_v2_509_Out_1,
                [2] = self.f_box_OutputOrder_v2_509_Out_2,
                [3] = self.f_box_OutputOrder_v2_509_Out_3,
                [4] = self.f_box_OutputOrder_v2_509_Out_4,
                [5] = self.f_box_OutputOrder_v2_509_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_70()
    local params;
    params = {
        -- BoneName,
        [0] = "Spine",
        -- EntityA,
        [1] = self.eHost,
        -- EntityB,
        [2] = self.eHuntCS,
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_299()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_299");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|501677784");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_299_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_299_True,
    });
    params = {
        -- entityId,
        [0] = "2104443319879757295",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_398()
    local params, l0;
    DrawTextToScreen("Comment: second last beacon", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: second last beacon");
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_398");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|508550354");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_398_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_108()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2105516497563584457",
    };
    return params;
end;

function export:OnEnter_box_Switch_54()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_187()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_187");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|512352339");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_187_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|520050060");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_94_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|521028070");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104161169418773728",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_526()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_109()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|528617874");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_109_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_286()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_286");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|533194397");
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
                [0] = self.f_box_OutputOrder_v2_286_Out_0,
                [1] = self.f_box_OutputOrder_v2_286_Out_1,
                [2] = self.f_box_OutputOrder_v2_286_Out_2,
                [3] = self.f_box_OutputOrder_v2_286_Out_3,
                [4] = self.f_box_OutputOrder_v2_286_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|535047993");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_83_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104080105455236226",
        -- Group,
        [1] = self.gJacobClones,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|537744700");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_61_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_469()
    local params;
    DrawTextToScreen("Comment: spawn heavy", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI')-- Comment: spawn heavy");
    params = {
        -- EntitySpawner,
        [0] = "2105229057774853698",
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_168()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_168");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|543804681");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_168_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- origin,
        [1] = self.eLKP,
        -- pawns,
        [2] = self.gBeacon2Dudes,
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|544118302");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_39_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_515()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_515");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|549343114");
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
                [0] = self.f_box_OutputOrder_v2_515_Out_0,
                [1] = self.f_box_OutputOrder_v2_515_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_25()
    local params;
    params = {
        -- BoneName,
        [0] = "Spine",
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

function export:OnEnter_box_ParticleSystem_v3_237()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_237");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|554516002");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104162622401163550",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_437()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_437");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|557881422");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_437_A_is_False,
    });
    params = {
        -- A,
        [0] = self.bBeacon02Destroyed,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_334()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_334");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|564157589");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104547811312803623",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_188()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_188");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|564871106");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_188_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_462()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104052246336512771",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_274()
    local params, l0;
    DrawTextToScreen("Comment: disable all running soundpoints", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'OutputOrder_v2')-- Comment: disable all running soundpoints");
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_274");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|575531197");
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
                [0] = self.f_box_OutputOrder_v2_274_Out_0,
                [1] = self.f_box_OutputOrder_v2_274_Out_1,
                [2] = self.f_box_OutputOrder_v2_274_Out_2,
                [3] = self.f_box_OutputOrder_v2_274_Out_3,
                [4] = self.f_box_OutputOrder_v2_274_Out_4,
                [5] = self.f_box_OutputOrder_v2_274_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_197()
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

function export:OnEnter_box_PlayDialog_v6_126()
    local params;
    params = {
        -- Group,
        [0] = "2104909610650455533",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "269496441",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_239()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_239");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|615979456");
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
                [0] = self.f_box_OutputOrder_v2_239_Out_0,
                [1] = self.f_box_OutputOrder_v2_239_Out_1,
                [2] = self.f_box_OutputOrder_v2_239_Out_2,
                [3] = self.f_box_OutputOrder_v2_239_Out_3,
                [4] = self.f_box_OutputOrder_v2_239_Out_4,
                [5] = self.f_box_OutputOrder_v2_239_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_96()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = self.gWaves,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_468()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104052245084512973",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|619614097");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_20_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_20_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.iBeaconsDestroyed,
        -- B,
        [1] = self.iBeaconsTotal,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|633325488");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_13_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_157()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_157");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|633845084");
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
                [0] = self.f_box_OutputOrder_v2_157_Out_0,
                [1] = self.f_box_OutputOrder_v2_157_Out_1,
                [2] = self.f_box_OutputOrder_v2_157_Out_2,
                [3] = self.f_box_OutputOrder_v2_157_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_357()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_475()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_475");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|644866046");
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
                [0] = self.f_box_OutputOrder_v2_475_Out_0,
                [1] = self.f_box_OutputOrder_v2_475_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_392()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_392");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|656301987");
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
                [0] = self.f_box_OutputOrder_v2_392_Out_0,
                [1] = self.f_box_OutputOrder_v2_392_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|657266936");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104161154474468574",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_279()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_279");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|658069970");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_279_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_279_True,
    });
    params = {
        -- entityId,
        [0] = "2104443402534809077",
    };
    return params;
end;

function export:OnEnter_box_AlternateInventoryModifier_v2_49()
    local params;
    params = {
        -- clearAfterSwitch,
        [0] = false,
        -- players,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|662886928");
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
                [0] = self.f_box_OutputOrder_v2_78_Out_0,
                [1] = self.f_box_OutputOrder_v2_78_Out_1,
                [2] = self.f_box_OutputOrder_v2_78_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_105()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|668641646");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "E7_CultLocation_01_QUEST_B10_FAIL",
            id = "592364",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_455()
    local params;
    DrawTextToScreen("Comment: spawn heavy", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI')-- Comment: spawn heavy");
    params = {
        -- EntitySpawner,
        [0] = "2105227757297357110",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_446()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_446");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|683836939");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_446_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iBeaconsDestroyed,
        -- B,
        [1] = self.ithreatLevel2,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_491()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 30,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_399()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_399");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|693705602");
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
                [0] = self.f_box_OutputOrder_v2_399_Out_0,
                [1] = self.f_box_OutputOrder_v2_399_Out_1,
                [2] = self.f_box_OutputOrder_v2_399_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|694916918");
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
                [0] = self.f_box_OutputOrder_v2_24_Out_0,
                [1] = self.f_box_OutputOrder_v2_24_Out_1,
                [2] = self.f_box_OutputOrder_v2_24_Out_2,
                [3] = self.f_box_OutputOrder_v2_24_Out_3,
                [4] = self.f_box_OutputOrder_v2_24_Out_4,
                [5] = self.f_box_OutputOrder_v2_24_Out_5,
                [6] = self.f_box_OutputOrder_v2_24_Out_6,
                [7] = self.f_box_OutputOrder_v2_24_Out_7,
            },
            count = 8,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_336()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_336");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|699141780");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104547920465370969",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_385()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_385");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|699574899");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "yellow",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self.iDebugGroup,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "AI count: ",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_257()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_257");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|701036455");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2104439650119610074",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_414()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.95,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_467()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_467");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|704311353");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_467_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iBeaconsDestroyed,
        -- B,
        [1] = self.iThreatLevel1,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_454()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.gPlayer,
        -- id2,
        [3] = "2105532670871138308",
        -- nearZone,
        [4] = self.fSpawnRadius_A,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_438()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104052217318220140",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_386()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_106()
    local params;
    params = {
        -- bShowUI,
        [0] = true,
        -- CoopFailRequiresAllPlayer,
        [1] = false,
        -- FailingZoneTrigger,
        [2] = "2104078562748281950",
        -- WarningZoneTrigger,
        [3] = "2104090836812712611",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_247()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_247");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|751099363");
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
                [0] = self.f_box_OutputOrder_v2_247_Out_0,
                [1] = self.f_box_OutputOrder_v2_247_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_420()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.gJacobClones,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjectiveProgress_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjectiveProgress_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|754156533");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjectiveProgress_v2_17_Out,
    });
    params = {
        -- MarkerTypeId,
        [0] = nil,
        -- ObjectiveId,
        [1] = self.oBeaconObjective,
        -- ProgressDisplayType,
        [2] = 0,
        -- TotalProgress,
        [3] = self.iBeaconsTotal,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_277()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_277");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|759459538");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_277_True,
    });
    params = {
        -- entityId,
        [0] = "2104826896914078992",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_330()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_322()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_322");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|779768933");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_322_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2104443303054306795",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_345()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2105518369615683523",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_224()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_224");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|808447567");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104161263729796328",
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_527()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_527");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|819911594");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = self.eBeaconSoundPoint06,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_466()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_466");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|827323722");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_466_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iBeaconsDestroyed,
        -- B,
        [1] = self.ithreatLevel2,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_387()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = self.gB50dudes,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_200()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_200");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|857275811");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_200_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_401()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_401");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|857320788");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_401_A_is_False,
    });
    params = {
        -- A,
        [0] = self.bIsLastBeacon,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_320()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_320");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|862263164");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_320_True,
    });
    params = {
        -- entityId,
        [0] = "2104443294277725673",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_246()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_246");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|873761730");
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
                [0] = self.f_box_OutputOrder_v2_246_Out_0,
                [1] = self.f_box_OutputOrder_v2_246_Out_1,
            },
            count = 2,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|883932147");
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
                [0] = self.f_box_OutputOrder_v2_45_Out_0,
                [1] = self.f_box_OutputOrder_v2_45_Out_1,
                [2] = self.f_box_OutputOrder_v2_45_Out_2,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ColorRemapTextureModifier_v3_48()
    local params;
    params = {
        -- colorRemapSettings,
        [0] = "9015281113972950",
        -- playerGroup,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_517()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_517");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|886987903");
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
                [0] = self.f_box_OutputOrder_v2_517_Out_0,
                [1] = self.f_box_OutputOrder_v2_517_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_178()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_178");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|890521951");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_178_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_189()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_189");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|897243999");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_189_Out,
    });
    params = {
        -- Max,
        [0] = 4,
        -- Min,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_55()
    local params;
    params = {
        -- Group,
        [0] = "2104909610650455533",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2142117297",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_230()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_230");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|911393477");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104443200021229027",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_493()
    local params;
    params = {
        -- Group,
        [0] = "2100290092015823211",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_242()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_242");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|916111238");
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
                [0] = self.f_box_OutputOrder_v2_242_Out_0,
                [1] = self.f_box_OutputOrder_v2_242_Out_1,
                [2] = self.f_box_OutputOrder_v2_242_Out_2,
                [3] = self.f_box_OutputOrder_v2_242_Out_3,
                [4] = self.f_box_OutputOrder_v2_242_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_327()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_327");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|926704952");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_327_True,
    });
    params = {
        -- entityId,
        [0] = "2104443334161362419",
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_BeaconRumble_425()
    local params;
    params = {
        -- Beacon,
        [0] = "2104093239425372865",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_296()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_296");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|929566514");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_296_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_296_True,
    });
    params = {
        -- entityId,
        [0] = "2104161528923055346",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_208()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_208");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|929750696");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_208_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MoonModifier_141()
    local params;
    params = {
        -- Azimuth,
        [0] = -80,
        -- Elevation,
        [1] = 20,
        -- HDRMultiplier,
        [2] = 2.5,
        -- ResetAfterBeat,
        [3] = true,
        -- Size,
        [4] = 10,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_444()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104052234030424601",
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|948975594");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_43_Out,
    });
    params = {
        -- Hour,
        [0] = 22,
        -- Minute,
        [1] = 45,
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_35()
    local params, l0;
    DrawTextToScreen("Comment: kill all remaining b50 guys", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'HealthModifier_v2')-- Comment: kill all remaining b50 guys");
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|949685616");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_35_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = "#A7C6A84C",
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_233()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_233");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|956871138");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104161689277569172",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_229()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_229");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|959518999");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104161712555956376",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_471()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_471");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|964712389");
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
                [0] = self.f_box_OutputOrder_v2_471_Out_0,
                [1] = self.f_box_OutputOrder_v2_471_Out_1,
                [2] = self.f_box_OutputOrder_v2_471_Out_2,
            },
            count = 3,
        },
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|977271749");
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
                [0] = self.f_box_OutputOrder_v2_76_Out_0,
                [1] = self.f_box_OutputOrder_v2_76_Out_1,
                [2] = self.f_box_OutputOrder_v2_76_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_222()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_222");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|979848196");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104161727863068826",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_483()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_483");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|983451430");
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
                [0] = self.f_box_OutputOrder_v2_483_Out_0,
                [1] = self.f_box_OutputOrder_v2_483_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_267()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_267");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|983903136");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_267_Enabled,
    });
    params = {
        -- Marker,
        [1] = self.eBeaconMarker03,
        -- ObjectiveId,
        [2] = self.oBeaconObjective,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_450()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_450");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|986633647");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_450_A_is_False,
    });
    params = {
        -- A,
        [0] = self.bBeacon03Destroyed,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_449()
    local params;
    DrawTextToScreen("Comment: spawn heavy", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI')-- Comment: spawn heavy");
    params = {
        -- EntitySpawner,
        [0] = "2105229012608490676",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1012747067");
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

function export:OnEnter_box_OutputOrder_v2_164()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_164");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1020704350");
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
                [0] = self.f_box_OutputOrder_v2_164_Out_0,
                [1] = self.f_box_OutputOrder_v2_164_Out_1,
                [2] = self.f_box_OutputOrder_v2_164_Out_2,
                [3] = self.f_box_OutputOrder_v2_164_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1030441264");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104161231238620390",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1031406673");
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
                [0] = self.f_box_OutputOrder_v2_92_Out_0,
                [1] = self.f_box_OutputOrder_v2_92_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_477()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_477");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1031630269");
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
                [0] = self.f_box_OutputOrder_v2_477_Out_0,
                [1] = self.f_box_OutputOrder_v2_477_Out_1,
                [2] = self.f_box_OutputOrder_v2_477_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_405()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_405");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1033388011");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_405_A_is_False,
    });
    params = {
        -- A,
        [0] = self.bIsLastBeacon,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_403()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_403");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1041751833");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_403_A_is_False,
    });
    params = {
        -- A,
        [0] = self.bIsLastBeacon,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_324()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_324");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1045955803");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_324_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_324_True,
    });
    params = {
        -- entityId,
        [0] = "2104443328203353585",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1046984365");
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

function export:OnEnter_box_PlayDialog_v6_371()
    local params;
    params = {
        -- Group,
        [0] = "2104909610650455533",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2878574770",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_457()
    local params;
    DrawTextToScreen("Comment: spawn RPG", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI')-- Comment: spawn RPG");
    params = {
        -- EntitySpawner,
        [0] = "2105227778673627517",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1054398215");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_37_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_499()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_82()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.gJacobClones,
        -- farZone,
        [2] = 64,
        -- id2,
        [3] = self.eHost,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1062455964");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_30_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_461()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.gPlayer,
        -- id2,
        [3] = "2105532673207365638",
        -- nearZone,
        [4] = self.fSpawnRadius_A,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1064760896");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_19_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = self.oBeaconObjective,
        -- Progress,
        [1] = self.iBeaconsDestroyed,
        -- ProgressId,
        [2] = self.iBeaconProgressID,
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_193()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_193");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1066562688");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_193_Out,
    });
    params = {
        -- Max,
        [0] = 2,
        -- Min,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_447()
    local params;
    DrawTextToScreen("Comment: spawn RPG", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI')-- Comment: spawn RPG");
    params = {
        -- EntitySpawner,
        [0] = "2105229008743439477",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_369()
    local params;
    params = {
        -- Group,
        [0] = "2104909610650455533",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1096964043",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_476()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gPlayer,
        -- id2,
        [3] = "2104093206518960802",
        -- nearZone,
        [4] = self.fSpawnRadius_A,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_144()
    local params;
    params = {
        -- Group,
        [0] = "2104909610650455533",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3744134080",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1088046922");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104161217149953252",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_432()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.gPlayer,
        -- id2,
        [3] = "2105532658219020151",
        -- nearZone,
        [4] = self.fSpawnRadius_A,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_162()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_162");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1094264331");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_162_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- origin,
        [1] = self.eLKP,
        -- pawns,
        [2] = self.gBeacon4Dudes,
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_BeaconRumble_419()
    local params;
    params = {
        -- Beacon,
        [0] = "2104093259390259931",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1111125679");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_36_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_348()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2105532231664579976",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_382()
    local params;
    params = {
        -- Group,
        [0] = "2104909610650455533",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4216312394",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_115()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1134450765");
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

function export:OnEnter_box_SpawnAI_342()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2105517936226627962",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_300()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_300");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1143608962");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104547214597561713",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_503()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_503");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1144223275");
    l0:SetConnections({
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_503_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.iBeaconsDestroyed,
        -- B,
        [1] = self.ithreatLevel2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_516()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_516");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1144328422");
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
                [0] = self.f_box_OutputOrder_v2_516_Out_0,
                [1] = self.f_box_OutputOrder_v2_516_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_201()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_201");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1144596144");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2104256989952501454",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_522()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_510()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_510");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1150096300");
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
                [0] = self.f_box_OutputOrder_v2_510_Out_0,
                [1] = self.f_box_OutputOrder_v2_510_Out_1,
                [2] = self.f_box_OutputOrder_v2_510_Out_2,
                [3] = self.f_box_OutputOrder_v2_510_Out_3,
                [4] = self.f_box_OutputOrder_v2_510_Out_4,
                [5] = self.f_box_OutputOrder_v2_510_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_276()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_276");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1158401029");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_276_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_276_True,
    });
    params = {
        -- entityId,
        [0] = "2104826890496793868",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_443()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_443");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1159342154");
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
                [0] = self.f_box_OutputOrder_v2_443_Out_0,
                [1] = self.f_box_OutputOrder_v2_443_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_356()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2105542724512931365",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_206()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_206");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1181819602");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_206_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_456()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_456");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1187747444");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_456_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iBeaconsDestroyed,
        -- B,
        [1] = self.ithreatLevel2,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_329()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_329");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1193218595");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104443334161362419",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_323()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_323");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1197582977");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_323_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_323_True,
    });
    params = {
        -- entityId,
        [0] = "2104443303054306795",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_397()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_397");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1206369284");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_397_A_eq_B,
    });
    params = {
        -- A,
        [0] = self.iBeaconsDestroyed,
        -- B,
        [1] = 6,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_367()
    local params;
    params = {
        -- Group,
        [0] = "2104909610650455533",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4076565210",
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1228383416");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_26_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1229952797");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_91_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_192()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_192");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1231872023");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_192_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- origin,
        [1] = self.eLKP,
        -- pawns,
        [2] = self.gBeacon1Dudes,
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_448()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_448");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1234085686");
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
                [0] = self.f_box_OutputOrder_v2_448_Out_0,
                [1] = self.f_box_OutputOrder_v2_448_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_524()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_319()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_319");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1242841928");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104443294277725673",
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_350()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_150()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_360()
    local params;
    DrawTextToScreen("Comment: play bound dialog", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: play bound dialog");
    params = {
        -- Group,
        [0] = "2104909610650455533",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "402878705",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_160()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_160");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1258108525");
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
                [0] = self.f_box_OutputOrder_v2_160_Out_0,
                [1] = self.f_box_OutputOrder_v2_160_Out_1,
                [2] = self.f_box_OutputOrder_v2_160_Out_2,
                [3] = self.f_box_OutputOrder_v2_160_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_484()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1269254924");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_87_A_eq_B,
    });
    params = {
        -- A,
        [0] = self.iJacobGroupSize,
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_199()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_199");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1272472204");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2104256471584761546",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_439()
    local params;
    DrawTextToScreen("Comment: spawn heavy", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI')-- Comment: spawn heavy");
    params = {
        -- EntitySpawner,
        [0] = "2105229039827426701",
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_LightningStrike_216()
    local params;
    params = {
        -- eLight,
        [0] = "2104439666219445982",
        -- eTarget,
        [1] = "2104452145502784516",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_231()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_231");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1287544844");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104162593850536114",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_362()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104909610650455533",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_283()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_283");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1296439231");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_283_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2104826890496793868",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_460()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_460");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1297132769");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_460_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iBeaconsDestroyed,
        -- B,
        [1] = self.iThreatLevel1,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1303228947");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104161189282997474",
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_220()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_220");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1303737524");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_220_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- origin,
        [1] = self.eLKP,
        -- pawns,
        [2] = self.gBeacon6Dudes,
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_186()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_186");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1310877942");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_186_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_223()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_223");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1316902147");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104160123313218772",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_265()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_265");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1319701934");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_265_Enabled,
    });
    params = {
        -- Marker,
        [1] = self.eBeaconMarker05,
        -- ObjectiveId,
        [2] = self.oBeaconObjective,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_480()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.gPlayer,
        -- id2,
        [3] = "2104093259390259931",
        -- nearZone,
        [4] = self.fSpawnRadius_A,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_225()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_225");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1332511216");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104161755977488540",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_500()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_500");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1338228852");
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
                [0] = self.f_box_OutputOrder_v2_500_Out_0,
                [1] = self.f_box_OutputOrder_v2_500_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_459()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_459");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1344822727");
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
                [0] = self.f_box_OutputOrder_v2_459_Out_0,
                [1] = self.f_box_OutputOrder_v2_459_Out_1,
                [2] = self.f_box_OutputOrder_v2_459_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_244()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_244");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1348052452");
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
                [0] = self.f_box_OutputOrder_v2_244_Out_0,
                [1] = self.f_box_OutputOrder_v2_244_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_107()
    local params;
    params = {
        -- Group,
        [0] = "2104909610650455533",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1104664796",
    };
    return params;
end;

function export:OnEnter_box_Switch_137()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_RandomWaveSpawner_62()
    local params;
    params = {
        -- eSpawner01,
        [0] = self.eJacobSpawner01,
        -- eSpawner02,
        [1] = self.eJacobSpawner02,
        -- eSpawner03,
        [2] = self.eJacobSpawner03,
        -- eSpawner04,
        [3] = self.eJacobSpawner04,
        -- eSpawner05,
        [4] = self.eJacobSpawner05,
        -- eSpawner06,
        [5] = self.eJacobSpawner06,
        -- eSpawner07,
        [6] = self.eJacobSpawner07,
        -- eSpawner08,
        [7] = self.eJacobSpawner08,
        -- eSpawner09,
        [8] = self.eJacobSpawner09,
        -- eSpawner10,
        [9] = self.eJacobSpawner10,
        -- eSpawner11,
        [10] = self.eJacobSpawner11,
        -- eSpawner12,
        [11] = self.eJacobSpawner12,
        -- eSpawner13,
        [12] = self.eJacobSpawner13,
        -- eSpawner14,
        [13] = self.eJacobSpawner14,
        -- eSpawner15,
        [14] = self.eJacobSpawner15,
        -- eSpawner16,
        [15] = self.eJacobSpawner16,
        -- eSpawner17,
        [16] = self.eJacobSpawner17,
        -- eSpawner18,
        [17] = self.eJacobSpawner18,
        -- eSpawner19,
        [18] = self.eJacobSpawner19,
        -- eSpawner20,
        [19] = self.eJacobSpawner20,
        -- eSpawner21,
        [20] = self.eJacobSpawner21,
        -- eSpawner22,
        [21] = self.eJacobSpawner22,
        -- eSpawner23,
        [22] = self.eJacobSpawner23,
        -- eSpawner24,
        [23] = self.eJacobSpawner24,
        -- eSpawner25,
        [24] = self.eJacobSpawner25,
        -- fMaxDistance,
        [49] = 48,
        -- fMinDistance,
        [50] = 16,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_344()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2105518233743302362",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_451()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_451");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1377425952");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_451_A_is_False,
    });
    params = {
        -- A,
        [0] = self.bBeacon04Destroyed,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_BeaconListener_15()
    local params;
    params = {
        -- eAttractorSTP01,
        [0] = self.ePosition01Attractor01,
        -- eAttractorSTP02,
        [1] = self.ePosition01Attractor02,
        -- eAttractorSTP03,
        [2] = self.ePosition01Attractor03,
        -- eBeaconPrefab,
        [3] = self.eWolfBeacon01,
        -- sObjectName,
        [4] = self.sGeneratorName,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1381280686");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_42_Enabled,
    });
    params = {
        -- Marker,
        [1] = self.eBeaconMarker01,
        -- ObjectiveId,
        [2] = self.oBeaconObjective,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_151()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_151");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1384086792");
    l0:SetConnections({
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_151_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.iBeaconsDestroyed,
        -- B,
        [1] = self.ithreatLevel2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_494()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_494");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1388271086");
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
                [0] = self.f_box_OutputOrder_v2_494_Out_0,
                [1] = self.f_box_OutputOrder_v2_494_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_154()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2105517291356562852",
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_90()
    local params, l0;
    DrawTextToScreen("Comment: distance kill jacob", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'HealthModifier_v2')-- Comment: distance kill jacob");
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1396956261");
    l0:SetConnections({
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- origin,
        [1] = self.eLKP,
        -- pawns,
        [2] = self.gJacobClones,
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_238()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_238");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1400738825");
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
                [0] = self.f_box_OutputOrder_v2_238_Out_0,
                [1] = self.f_box_OutputOrder_v2_238_Out_1,
                [2] = self.f_box_OutputOrder_v2_238_Out_2,
                [3] = self.f_box_OutputOrder_v2_238_Out_3,
                [4] = self.f_box_OutputOrder_v2_238_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_236()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_236");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1409826562");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104161390773167340",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_528()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_311()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_311");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1417029129");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_311_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2104161777993390238",
    };
    return params;
end;

function export:OnEnter_box_PostWWiseEventSetState_65()
    local params;
    params = {
        -- SoundId,
        [0] = "4013606668",
        -- SoundType,
        [1] = 17,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_198()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_198");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1436271140");
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

function export:OnEnter_box_SpawnAI_441()
    local params;
    DrawTextToScreen("Comment: spawn RPG", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI')-- Comment: spawn RPG");
    params = {
        -- EntitySpawner,
        [0] = "2105229035316452678",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1445682387");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_56_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_56_True,
    });
    params = {
        -- entityId,
        [0] = "2104826881051221256",
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_LightningStrike_166()
    local params;
    params = {
        -- eLight,
        [0] = "2104147364190118536",
        -- eTarget,
        [1] = "2104260583084796721",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_417()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_417");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1469357201");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_417_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2104826894166809870",
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_BeaconListener_14()
    local params;
    params = {
        -- eAttractorSTP01,
        [0] = self.ePosition05Attractor01,
        -- eAttractorSTP02,
        [1] = self.ePosition05Attractor02,
        -- eAttractorSTP03,
        [2] = self.ePosition05Attractor03,
        -- eBeaconPrefab,
        [3] = self.eWolfBeacon05,
        -- sObjectName,
        [4] = self.sGeneratorName,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_308()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_308");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1472075201");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_308_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_308_True,
    });
    params = {
        -- entityId,
        [0] = "2104547794720136997",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_495()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2100650700993211263",
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_BeaconGroupManager_161()
    local params;
    params = {
        -- eAnchor,
        [0] = self.eWolfBeacon05,
        -- gLocalGroup,
        [1] = self.gBeacon5Dudes,
        -- gMasterGroup,
        [2] = self.gB50dudes,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_146()
    local params;
    params = {
        -- Group,
        [0] = "2104909610650455533",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3654078088",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_470()
    local params;
    DrawTextToScreen("Comment: spawn RPG", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI')-- Comment: spawn RPG");
    params = {
        -- EntitySpawner,
        [0] = "2105229054754954757",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_142()
    local params;
    params = {
        -- Group,
        [0] = "2104909610650455533",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "375660492",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1510420044");
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

function export:OnEnter_box_ParticleSystem_v3_310()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_310");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1520880141");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_310_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2104443312233541101",
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_183()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_183");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1548647466");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_183_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- origin,
        [1] = self.eLKP,
        -- pawns,
        [2] = self.gBeacon5Dudes,
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_442()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_442");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1549565792");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_442_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iBeaconsDestroyed,
        -- B,
        [1] = self.iThreatLevel1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_407()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_407");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1552485801");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_407_A_is_False,
    });
    params = {
        -- A,
        [0] = self.bIsLastBeacon,
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_340()
    local params, l0;
    DrawTextToScreen("Comment: Distance kill wave", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'HealthModifier_v2')-- Comment: Distance kill wave");
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_340");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1555647747");
    l0:SetConnections({
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- origin,
        [1] = self.eLKP,
        -- pawns,
        [2] = self.gWaves,
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_424()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_424");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1561758350");
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
                [0] = self.f_box_OutputOrder_v2_424_Out_0,
                [1] = self.f_box_OutputOrder_v2_424_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_518()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_518");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1563676675");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_518_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_433()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_433");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1566085304");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_433_A_eq_B,
    });
    params = {
        -- A,
        [0] = self.iBeaconsDestroyed,
        -- B,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_332()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_332");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1572848915");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104547493751561786",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_395()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_395");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1583960865");
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
                [0] = self.f_box_OutputOrder_v2_395_Out_0,
                [1] = self.f_box_OutputOrder_v2_395_Out_1,
                [2] = self.f_box_OutputOrder_v2_395_Out_2,
                [3] = self.f_box_OutputOrder_v2_395_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_204()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_204");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1608191203");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_204_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_415()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_415");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1612958671");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = self.eBeaconSoundPoint03,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_207()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_207");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1614899189");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2104257063774349018",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_431()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.gPlayer,
        -- id2,
        [3] = "2105532661519937401",
        -- nearZone,
        [4] = self.fSpawnRadius_A,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_LockTimeOfDay_28()
    local params;
    params = {
        -- Hour,
        [0] = 23,
        -- Minute,
        [1] = 45,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_486()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2100290092015823211",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1639524860");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_103_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_481()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.gPlayer,
        -- id2,
        [3] = "2104093267088904932",
        -- nearZone,
        [4] = self.fSpawnRadius_A,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_163()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_163");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1640496665");
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
                [0] = self.f_box_OutputOrder_v2_163_Out_0,
                [1] = self.f_box_OutputOrder_v2_163_Out_1,
                [2] = self.f_box_OutputOrder_v2_163_Out_2,
                [3] = self.f_box_OutputOrder_v2_163_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_235()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_235");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1661436371");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104162635669844256",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_497()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2105601124233910364",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_190()
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

function export:OnEnter_box_SoundPointModifier_520()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_520");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1674654862");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = self.eBeaconSoundPoint01,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_289()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_289");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1681405745");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_289_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2104443402534809077",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_485()
    local params;
    params = {
        -- Group,
        [0] = "2100650700993211263",
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_BeaconListener_3()
    local params;
    params = {
        -- eAttractorSTP01,
        [0] = self.ePosition02Attractor01,
        -- eAttractorSTP02,
        [1] = self.ePosition02Attractor02,
        -- eAttractorSTP03,
        [2] = self.ePosition02Attractor03,
        -- eBeaconPrefab,
        [3] = self.eWolfBeacon02,
        -- sObjectName,
        [4] = self.sGeneratorName,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_184()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_184");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1696592552");
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

function export:OnEnter_box_IsEntityLoaded_v3_278()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_278");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1702019101");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_278_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_278_True,
    });
    params = {
        -- entityId,
        [0] = "2104826899403398418",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_153()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2105518713754142670",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_264()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_264");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1718254128");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = self.eBeaconMarker06,
        -- ObjectiveId,
        [2] = self.oBeaconObjective,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_418()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_418");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1720429710");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_418_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_418_True,
    });
    params = {
        -- entityId,
        [0] = "2104826894166809870",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_203()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_203");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1727364840");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2104257041060095698",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_341()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.gWaves,
        -- farZone,
        [2] = 64,
        -- id2,
        [3] = self.eHost,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_487()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1746276257");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104160242016216282",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_148()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_148");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1748323450");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_148_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityMiscInfoModifier_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityMiscInfoModifier_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1752190791");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityMiscInfoModifier_v2_22_Out,
    });
    params = {
        -- ActivityAbortAndFastTravelEnabled,
        [0] = false,
        -- SleepingCampEnabled,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_256()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_256");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1754047798");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104443077897776607",
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_BeaconRumble_501()
    local params;
    params = {
        -- Beacon,
        [0] = "2104093206518960802",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_411()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_411");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1759029155");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_411_A_is_False,
    });
    params = {
        -- A,
        [0] = self.bIsLastBeacon,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_305()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_305");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1768234469");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_305_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_305_True,
    });
    params = {
        -- entityId,
        [0] = "2104547781579382563",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_181()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_181");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1769692930");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_181_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_479()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.gPlayer,
        -- id2,
        [3] = "2104093239425372865",
        -- nearZone,
        [4] = self.fSpawnRadius_A,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1777869649");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104160231566107864",
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_BeaconGroupManager_217()
    local params;
    params = {
        -- eAnchor,
        [0] = self.eWolfBeacon06,
        -- gLocalGroup,
        [1] = self.gBeacon6Dudes,
        -- gMasterGroup,
        [2] = self.gB50dudes,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_266()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_266");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1794674030");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_266_Enabled,
    });
    params = {
        -- Marker,
        [1] = self.eBeaconMarker04,
        -- ObjectiveId,
        [2] = self.oBeaconObjective,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_234()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_234");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1818045619");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104161355169817834",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_496()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_429()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_429");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1825770177");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_429_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_429_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.iCurrentAI,
        -- B,
        [1] = self.iMaxAI,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_473()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_473");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1826470058");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_473_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iBeaconsDestroyed,
        -- B,
        [1] = self.iThreatLevel1,
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_488()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_488");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1830977334");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = self.eBeaconSoundPoint02,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_293()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_293");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1831737821");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_293_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2104161487667881200",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_427()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_427");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1836172977");
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
                [0] = self.f_box_OutputOrder_v2_427_Out_0,
                [1] = self.f_box_OutputOrder_v2_427_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_384()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_259()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_259");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1838884944");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = self.eBeaconSoundPoint06,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_463()
    local params;
    DrawTextToScreen("Comment: spawn heavy", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI')-- Comment: spawn heavy");
    params = {
        -- EntitySpawner,
        [0] = "2105229074138930899",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_474()
    local params, l0;
    DrawTextToScreen("Comment: 2 beacons dead. spawn chopper", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: 2 beacons dead. spawn chopper");
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_474");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1858395537");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1859012396");
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
                [0] = self.f_box_OutputOrder_v2_9_Out_0,
                [1] = self.f_box_OutputOrder_v2_9_Out_1,
                [2] = self.f_box_OutputOrder_v2_9_Out_2,
                [3] = self.f_box_OutputOrder_v2_9_Out_3,
                [4] = self.f_box_OutputOrder_v2_9_Out_4,
                [5] = self.f_box_OutputOrder_v2_9_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_156()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_156");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1859465736");
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
                [0] = self.f_box_OutputOrder_v2_156_Out_0,
                [1] = self.f_box_OutputOrder_v2_156_Out_1,
                [2] = self.f_box_OutputOrder_v2_156_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_525()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_525");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1862373731");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = self.eBeaconSoundPoint05,
    };
    return params;
end;

function export:OnEnter_box_IsEntityInGroup_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityInGroup_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1864416010");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityInGroup_34_True,
    });
    l0 = self.box_HealthListener_v6_420;
    params = {
        -- Entity,
        [0] = l0:GetDataOutValue(4),
        -- Group,
        [1] = self.gPlayer,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_119()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1868140636");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_119_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_513()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_513");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1892012621");
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
                [0] = self.f_box_OutputOrder_v2_513_Out_0,
                [1] = self.f_box_OutputOrder_v2_513_Out_1,
                [2] = self.f_box_OutputOrder_v2_513_Out_2,
                [3] = self.f_box_OutputOrder_v2_513_Out_3,
                [4] = self.f_box_OutputOrder_v2_513_Out_4,
                [5] = self.f_box_OutputOrder_v2_513_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_174()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "536224832",
        -- SoundType,
        [2] = 0,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_422()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_422");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1898904015");
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
                [0] = self.f_box_OutputOrder_v2_422_Out_0,
                [1] = self.f_box_OutputOrder_v2_422_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_281()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_281");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1899755548");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_281_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2104826886925344010",
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1907644418");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_16_Out,
    });
    params = {
        -- A,
        [0] = self.iBeaconsDestroyed,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_333()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_333");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1908091833");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104547541910560339",
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1909330921");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = self.eBeaconSoundPoint02,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1910351232");
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
                [0] = self.f_box_OutputOrder_v2_51_Out_0,
                [1] = self.f_box_OutputOrder_v2_51_Out_1,
                [2] = self.f_box_OutputOrder_v2_51_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_121()
    local params;
    params = {
        -- Group,
        [0] = "2104909610650455533",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2094741458",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_440()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_440");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1911112558");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_440_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iBeaconsDestroyed,
        -- B,
        [1] = self.ithreatLevel2,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_155()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_490()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2105598510962335980",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_453()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.gPlayer,
        -- id2,
        [3] = "2105532670866944002",
        -- nearZone,
        [4] = self.fSpawnRadius_A,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_262()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_262");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1938132156");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = self.eBeaconSoundPoint04,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_245()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_245");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1945016340");
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
                [0] = self.f_box_OutputOrder_v2_245_Out_0,
                [1] = self.f_box_OutputOrder_v2_245_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_RandomWaveSpawner_52()
    local params;
    params = {
        -- eSpawner01,
        [0] = self.eWaveSpawner01,
        -- eSpawner02,
        [1] = self.eWaveSpawner02,
        -- eSpawner03,
        [2] = self.eWaveSpawner03,
        -- eSpawner04,
        [3] = self.eWaveSpawner04,
        -- eSpawner05,
        [4] = self.eWaveSpawner05,
        -- eSpawner06,
        [5] = self.eWaveSpawner06,
        -- eSpawner07,
        [6] = self.eWaveSpawner07,
        -- eSpawner08,
        [7] = self.eWaveSpawner08,
        -- eSpawner09,
        [8] = self.eWaveSpawner09,
        -- eSpawner10,
        [9] = self.eWaveSpawner10,
        -- eSpawner11,
        [10] = self.eWaveSpawner11,
        -- eSpawner12,
        [11] = self.eWaveSpawner12,
        -- eSpawner13,
        [12] = self.eWaveSpawner13,
        -- eSpawner14,
        [13] = self.eWaveSpawner14,
        -- eSpawner15,
        [14] = self.eWaveSpawner15,
        -- eSpawner16,
        [15] = self.eWaveSpawner16,
        -- eSpawner17,
        [16] = self.eWaveSpawner17,
        -- eSpawner18,
        [17] = self.eWaveSpawner18,
        -- eSpawner19,
        [18] = self.eWaveSpawner19,
        -- eSpawner20,
        [19] = self.eWaveSpawner20,
        -- eSpawner21,
        [20] = self.eWaveSpawner21,
        -- eSpawner22,
        [21] = self.eWaveSpawner22,
        -- eSpawner23,
        [22] = self.eWaveSpawner23,
        -- eSpawner24,
        [23] = self.eWaveSpawner24,
        -- eSpawner25,
        [24] = self.eWaveSpawner25,
        -- fMaxDistance,
        [49] = 48,
        -- fMinDistance,
        [50] = 16,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_285()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_285");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1956943366");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104826896914078992",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_297()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_297");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1958970649");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_297_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2104443319879757295",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_482()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.gPlayer,
        -- id2,
        [3] = "2104093271723610861",
        -- nearZone,
        [4] = self.fSpawnRadius_A,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_335()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_335");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1975509720");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104547825325973289",
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

function export:OnEnter_box_OutputOrder_v2_383()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_383");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1976704275");
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
                [0] = self.f_box_OutputOrder_v2_383_Out_0,
                [1] = self.f_box_OutputOrder_v2_383_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_243()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_243");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1982598310");
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
                [0] = self.f_box_OutputOrder_v2_243_Out_0,
                [1] = self.f_box_OutputOrder_v2_243_Out_1,
                [2] = self.f_box_OutputOrder_v2_243_Out_2,
                [3] = self.f_box_OutputOrder_v2_243_Out_3,
                [4] = self.f_box_OutputOrder_v2_243_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_492()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2105601498091124995",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_412()
    local params;
    params = {
        -- BoneName,
        [0] = "Spine",
        -- EntityA,
        [1] = self.eHost,
        -- EntityB,
        [2] = "2104952444977993875",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_260()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_260");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|1995925005");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = self.eBeaconSoundPoint03,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_LightningStrike_180()
    local params;
    params = {
        -- eLight,
        [0] = "2104147519970763416",
        -- eTarget,
        [1] = "2104370191321336102",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_445()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_445");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2013330033");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_445_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iBeaconsDestroyed,
        -- B,
        [1] = self.iThreatLevel1,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_458()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104052243656352407",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_182()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_182");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2016141190");
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
                [0] = self.f_box_OutputOrder_v2_182_Out_0,
                [1] = self.f_box_OutputOrder_v2_182_Out_1,
                [2] = self.f_box_OutputOrder_v2_182_Out_2,
                [3] = self.f_box_OutputOrder_v2_182_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_464()
    local params;
    DrawTextToScreen("Comment: spawn RPG", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI')-- Comment: spawn RPG");
    params = {
        -- EntitySpawner,
        [0] = "2105229076462575373",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_314()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_314");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2054999957");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_314_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_314_True,
    });
    params = {
        -- entityId,
        [0] = "2104443312233541101",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_347()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2105518847630035816",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2065290028");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_100_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2105585960096947704",
        -- Group,
        [1] = self.gWaves,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_339()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_339");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2087735881");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104547440697810393",
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_BeaconListener_218()
    local params;
    params = {
        -- eBeaconPrefab,
        [3] = self.eWolfBeacon06,
        -- sObjectName,
        [4] = self.sGeneratorName,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_343()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2105518054766048351",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2091339220");
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
                [0] = self.f_box_OutputOrder_v2_79_Out_0,
                [1] = self.f_box_OutputOrder_v2_79_Out_1,
                [2] = self.f_box_OutputOrder_v2_79_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_32()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_215()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_215");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2099810155");
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
                [0] = self.f_box_OutputOrder_v2_215_Out_0,
                [1] = self.f_box_OutputOrder_v2_215_Out_1,
                [2] = self.f_box_OutputOrder_v2_215_Out_2,
                [3] = self.f_box_OutputOrder_v2_215_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_381()
    local params;
    params = {
        -- Group,
        [0] = "2104909610650455533",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "415685382",
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_BeaconGroupManager_169()
    local params;
    params = {
        -- eAnchor,
        [0] = self.eWolfBeacon04,
        -- gLocalGroup,
        [1] = self.gBeacon4Dudes,
        -- gMasterGroup,
        [2] = self.gB50dudes,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_355()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_130()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = self.fWaveRespawnDelay,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_346()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2105544684433579434",
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_LightningStrike_171()
    local params;
    params = {
        -- eLight,
        [0] = "2104147474854732428",
        -- eTarget,
        [1] = "2104370190176291104",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_102()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_OverrideEnvironment_v3_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideEnvironment_v3_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50|2143453966");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_OverrideEnvironment_v3_10_Enabled,
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

function export:OnExit_box_SetBoolean_v2_38_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bBeacon03Destroyed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_400_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bIsLastBeacon = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_40_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bBeacon02Destroyed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupSizeListener_v5_86_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v5_86;
    self.iJacobGroupSize = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_86_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v5_86;
    self.iJacobGroupSize = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_86_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v5_86;
    self.iJacobGroupSize = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_428_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v5_428;
    self.iCurrentAI = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_428_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v5_428;
    self.iCurrentAI = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_428_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v5_428;
    self.iCurrentAI = l0:GetDataOutValue(1);
end;

function export:OnExit_box_SetBoolean_v2_109_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bJacobSpeaking = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_39_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bBeacon01Destroyed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupSizeListener_v5_96_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v5_96;
    self.iWavesGroupSize = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_96_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v5_96;
    self.iWavesGroupSize = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_96_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v5_96;
    self.iWavesGroupSize = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GetPlayerGroup_v2_13_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_AddActivityObjectiveProgress_v2_17_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    self.iBeaconProgressID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupSizeListener_v5_387_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v5_387;
    self.iDebugGroup = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_387_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v5_387;
    self.iDebugGroup = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_387_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v5_387;
    self.iDebugGroup = l0:GetDataOutValue(1);
end;

function export:OnExit_box_RandomFloat_v2_189_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_190;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_37_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bBeacon05Destroyed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_193_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_197;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_36_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bBeacon04Destroyed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_26_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.eHost = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_148_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bJacobSpeaking = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_119_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bJacobSpeaking = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_16_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.iBeaconsDestroyed = l0:GetDataOutValue(0);
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
