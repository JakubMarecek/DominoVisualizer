LUAC�3 -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt01/lt01_005/lt01_005_b20.domino
-- User graph: LT01_005_B20
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
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp_V2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Endure_Waves.Brick_Endure_CORE_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v5.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/NoWeaponMode_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PostFx_v3.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/PostWWiseEventSetState.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundMusicTrigger.lua");
        cboxRes:RegisterBox("Domino/System/UI/ActivityForceAndLockTracking.lua");
        cboxRes:RegisterBox("Domino/System/VehicleModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehiclePositionLockModifier.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
        cboxRes:RegisterBox("Domino/System/VisionModeModifier_v2.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_005/LT01_005_B20.GAM_LT01_005_JOHN_SEED_PA_B20.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_005/LT01_005_B20.GAM_LT01_005_Restistant_B20.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1856814043.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3102801332.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2629155463.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_005/LT01_005_B20.LT01_005_B20.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Endure_Waves.Brick_Endure_CORE_v3.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
            [1] = {
                name = "LastWave_Cleanup",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Fail",
                delayed = false,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
            [2] = {
                name = "Success",
                delayed = false,
            },
            [3] = {
                name = "Waves",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "Attacker_Group",
                type = "group",
            },
            [1] = {
                name = "bRequiresObjective",
                type = "bool",
            },
            [2] = {
                name = "CompletePreviousObjective",
                type = "bool",
            },
            [3] = {
                name = "FailArea",
                type = "entity",
            },
            [4] = {
                name = "Marker",
                type = "entity",
            },
            [5] = {
                name = "Objective",
                type = "oasis",
            },
            [6] = {
                name = "opt_ObjectiveFail",
                type = "oasis",
            },
            [7] = {
                name = "WarningArea",
                type = "entity",
            },
        },
        dataInCount = 8,
        dataOut = {
            [0] = {
                name = "FailReason",
                type = "oasis",
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
                name = "useSmallestAngleDiff",
                type = "bool",
            },
        },
        dataInCount = 8,
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
    metadataTable[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")] = {
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
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/VehiclePositionLockModifier.lua")] = {
        stateless = true,
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
                name = "Locked",
                delayed = false,
            },
            [1] = {
                name = "Unlocked",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "VehicleEntity",
                type = "entity",
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_005/LT01_005_B20.GAM_LT01_005_JOHN_SEED_PA_B20.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_005/LT01_005_B20.GAM_LT01_005_Restistant_B20.debug.lua")] = {
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
end;

function export:Init(cbox)
    local l0;
    self._name = "LT01_005_B20";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20";
    self.gFriendlyPlayer = nil;
    self.eNickRye = nil;
    self.IsReloaded = false;
    self.character = nil;
    self.box_PositionModifier_v2_56 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|28383405");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_56_Done,
    });
    self.box_PostFx_v3_73 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|36705046");
    l0:SetConnections({
    });
    self.box_GAM_LT01_005_JOHN_SEED_PA_B20_18 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_005/LT01_005_B20.GAM_LT01_005_JOHN_SEED_PA_B20.debug.lua");
    l0 = self.box_GAM_LT01_005_JOHN_SEED_PA_B20_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GAM_LT01_005_JOHN_SEED_PA_B20_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|38775191");
    l0:SetConnections({
    });
    self.box_SpawnAI_Wave_v2_37 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|232091634");
    l0:SetConnections({
        -- LastWave_Cleanup,
        [1] = self.f_box_SpawnAI_Wave_v2_37_LastWave_Cleanup,
    });
    self.box_VisibilityModifier_58 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|266022306");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_58_Disabled,
    });
    self.box_Delay_v5_57 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|298035897");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_57_TimeElapsed,
    });
    self.box_EntityStatusListener_54 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|332819372");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_54_Loaded,
    });
    self.box_ProximityTrigger_v2_31 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|449933571");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_31_Enter,
    });
    self.box_Delay_v5_45 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|462327321");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_45_TimeElapsed,
    });
    self.box_CharacterLoadedIdListener_62 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|552261753");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_62_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_62_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_62_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_62_LoadedIdReceived,
    });
    self.box_PostWWiseEventSetState_22 = cbox:CreateBox("Domino/System/PostWWiseEventSetState.lua");
    l0 = self.box_PostWWiseEventSetState_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostWWiseEventSetState_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|564542465");
    l0:SetConnections({
    });
    self.box_NarrativeSceneCleanUp_V2_50 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp_V2.debug.lua");
    l0 = self.box_NarrativeSceneCleanUp_V2_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneCleanUp_V2_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|582516604");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_NarrativeSceneCleanUp_V2_50_Out,
    });
    self.box_NoWeaponMode_v3_20 = cbox:CreateBox("Domino/System/NoWeaponMode_v3.lua");
    l0 = self.box_NoWeaponMode_v3_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NoWeaponMode_v3_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|604451900");
    l0:SetConnections({
        -- OnLeave,
        [1] = self.f_box_NoWeaponMode_v3_20_OnLeave,
    });
    self.box_Delay_v5_68 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|630877131");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_68_TimeElapsed,
    });
    self.box_ActivityInitialized_3 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|672210380");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_3_Out,
    });
    self.box_Delay_v5_55 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|733560531");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_55_TimeElapsed,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_72 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|748550799");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_72_Out,
    });
    self.box_MultipleOR_33 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|925936614");
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
        [0] = self.f_box_MultipleOR_33_Out,
    });
    self.box_SpawnAI_23 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|945883897");
    l0:SetConnections({
    });
    self.box_Brick_Endure_CORE_v3_13 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Endure_Waves.Brick_Endure_CORE_v3.debug.lua");
    l0 = self.box_Brick_Endure_CORE_v3_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Endure_CORE_v3_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1092662491");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_Brick_Endure_CORE_v3_13_Fail,
        -- Out,
        [1] = self.f_box_Brick_Endure_CORE_v3_13_Out,
        -- Success,
        [2] = self.f_box_Brick_Endure_CORE_v3_13_Success,
        -- Waves,
        [3] = self.f_box_Brick_Endure_CORE_v3_13_Waves,
    });
    self.box_Delay_v5_34 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1113190965");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_34_TimeElapsed,
    });
    self.box_PostFx_v3_43 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1137089665");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PostFx_v3_43_Enabled,
    });
    self.box_Random_12 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1186094037");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 2,
        },
        dataIn = {
            [1] = 2,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_12_Output_0,
                [1] = self.f_box_Random_12_Output_1,
            },
            count = 2,
        },
    });
    self.box_PostFx_v3_71 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1186463391");
    l0:SetConnections({
    });
    self.box_MultipleOR_46 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1200308080");
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
    self.box_VisionModeModifier_v2_29 = cbox:CreateBox("Domino/System/VisionModeModifier_v2.lua");
    l0 = self.box_VisionModeModifier_v2_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisionModeModifier_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1221449767");
    l0:SetConnections({
    });
    self.box_GAM_LT01_005_Restistant_B20_16 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_005/LT01_005_B20.GAM_LT01_005_Restistant_B20.debug.lua");
    l0 = self.box_GAM_LT01_005_Restistant_B20_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GAM_LT01_005_Restistant_B20_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1291990449");
    l0:SetConnections({
    });
    self.box_SpawnAI_38 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1375544187");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_38_Out,
    });
    self.box_SpawnAI_Wave_v2_9 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1388849443");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_9_NextWave,
    });
    self.box_GroupSizeListener_v5_36 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1420502256");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_36_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_36_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_36_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_36_MemberRemoved,
    });
    self.box_PostFx_v3_70 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1439684007");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PostFx_v3_70_Disabled,
    });
    self.box_SpawnAI_14 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1462329367");
    l0:SetConnections({
    });
    self.box_VisionModeModifier_v2_61 = cbox:CreateBox("Domino/System/VisionModeModifier_v2.lua");
    l0 = self.box_VisionModeModifier_v2_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisionModeModifier_v2_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1522811287");
    l0:SetConnections({
        -- StartedScopolamine,
        [4] = self.f_box_VisionModeModifier_v2_61_StartedScopolamine,
    });
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1631871601");
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
    self.box_GunsForHireSystemModifier_42 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1666833672");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_42_Disabled,
    });
    self.box_SpawnAI_15 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1672225755");
    l0:SetConnections({
    });
    self.box_Delay_v5_69 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1705293973");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_69_TimeElapsed,
    });
    self.box_SpawnAI_7 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1810262779");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_7_Out,
    });
    self.box_PostFx_v3_49 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1819574367");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PostFx_v3_49_Disabled,
    });
    self.box_SoundMusicTriggerBox_19 = cbox:CreateBox("Domino/System/SoundMusicTrigger.lua");
    l0 = self.box_SoundMusicTriggerBox_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMusicTriggerBox_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1851657970");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundMusicTriggerBox_19_Started,
    });
    self.box_ActivityAcknowledgeGate_1 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1965079297");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_1_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_1_Reloaded,
    });
    self.box_ProximityRadiusListener_v3_40 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|2093643643");
    l0:SetConnections({
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_40_Enabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_40_SomeoneNear,
    });
    self.box_Delay_v5_28 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|2096002653");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_28_TimeElapsed,
    });
    self.box_PostFx_v3_75 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|2113303691");
    l0:SetConnections({
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|362570208", "362570208", "LT01_005_B20", "In", "box_ActivityAcknowledgeGate_1.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    
end;

function export:f_box_PositionModifier_v2_56_Done()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_57();
    l0 = self.box_PositionModifier_v2_56;
    l1 = self.box_Delay_v5_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|571990678", "571990678", "LT01_005_B20", "box_PositionModifier_v2_56.Done", "box_Delay_v5_57.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ActivityForceAndLockTracking_66_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_41();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1493197130", "1493197130", "LT01_005_B20", "box_ActivityForceAndLockTracking_66.Enabled", "box_OutputOrder_v2_41.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_Wave_v2_37_LastWave_Cleanup()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Endure_CORE_v3_13();
    l0 = self.box_SpawnAI_Wave_v2_37;
    l1 = self.box_Brick_Endure_CORE_v3_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1666664510", "1666664510", "LT01_005_B20", "box_SpawnAI_Wave_v2_37.LastWave_Cleanup", "box_Brick_Endure_CORE_v3_13.LastWave_Cleanup", l0:GetLuaBox(), l1:GetLuaBox());
    -- LastWave_Cleanup
    l1:Exec(1, params);
end;

function export:f_box_VisibilityModifier_58_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_24();
    l0 = self.box_VisibilityModifier_58;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|966392118", "966392118", "LT01_005_B20", "box_VisibilityModifier_58.Disabled", "box_OutputOrder_v2_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_57_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_VehiclePositionLockModifier_53();
    l0 = self.box_Delay_v5_57;
    l1 = Boxes[GetPathID("Domino/System/VehiclePositionLockModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|2101362555", "2101362555", "LT01_005_B20", "box_Delay_v5_57.TimeElapsed", "box_VehiclePositionLockModifier_53.Lock", l0:GetLuaBox(), l1:GetLuaBox());
    -- Lock
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_54_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_55();
    l0 = self.box_EntityStatusListener_54;
    l1 = self.box_Delay_v5_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|130040236", "130040236", "LT01_005_B20", "box_EntityStatusListener_54.Loaded", "box_Delay_v5_55.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v2_31_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_26();
    l0 = self.box_ProximityTrigger_v2_31;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1031528003", "1031528003", "LT01_005_B20", "box_ProximityTrigger_v2_31.Enter", "box_UseContextualActionModifier_v3_26.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_45_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_45;
    l1 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|358970283", "358970283", "LT01_005_B20", "box_Delay_v5_45.TimeElapsed", "box_MultipleOR_46.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_39_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_38();
    l0 = self.box_SpawnAI_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|810480957", "810480957", "LT01_005_B20", "box_OutputOrder_v2_39.Out", "box_SpawnAI_38.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_39_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityInitialized_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1136016032", "1136016032", "LT01_005_B20", "box_OutputOrder_v2_39.Out", "box_ActivityInitialized_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_39_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_69();
    l0 = self.box_Delay_v5_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|382108647", "382108647", "LT01_005_B20", "box_OutputOrder_v2_39.Out", "box_Delay_v5_69.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_VehicleModifier_v2_52_OnSetAsUnusable()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_56();
    l0 = self.box_PositionModifier_v2_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1374858886", "1374858886", "LT01_005_B20", "box_VehicleModifier_v2_52.OnSetAsUnusable", "box_PositionModifier_v2_56.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_CharacterLoadedIdListener_62_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_62_LoadedIdReceived();
    params = self:OnEnter_box_ActivityMiscInfoModifier_v2_35();
    l0 = self.box_CharacterLoadedIdListener_62;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|56015983", "56015983", "LT01_005_B20", "box_CharacterLoadedIdListener_62.LoadedIdReceived", "box_ActivityMiscInfoModifier_v2_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NarrativeSceneCleanUp_V2_50_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_21();
    l0 = self.box_NarrativeSceneCleanUp_V2_50;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|793464314", "793464314", "LT01_005_B20", "box_NarrativeSceneCleanUp_V2_50.Out", "box_OutputOrder_v2_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_48_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_Wave_v2_37();
    l0 = self.box_SpawnAI_Wave_v2_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|806032766", "806032766", "LT01_005_B20", "box_OutputOrder_v2_48.Out", "box_SpawnAI_Wave_v2_37.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_48_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_45();
    l0 = self.box_Delay_v5_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1571071066", "1571071066", "LT01_005_B20", "box_OutputOrder_v2_48.Out", "box_Delay_v5_45.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_NoWeaponMode_v3_20_OnLeave()
    local l0, l1;
    l0 = self.box_NoWeaponMode_v3_20;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1131484949", "1131484949", "LT01_005_B20", "box_NoWeaponMode_v3_20.OnLeave", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_68_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneCleanUp_V2_50();
    l0 = self.box_Delay_v5_68;
    l1 = self.box_NarrativeSceneCleanUp_V2_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|2109558707", "2109558707", "LT01_005_B20", "box_Delay_v5_68.TimeElapsed", "box_NarrativeSceneCleanUp_V2_50.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ActivityInitialized_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_25();
    l0 = self.box_ActivityInitialized_3;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|913618034", "913618034", "LT01_005_B20", "box_ActivityInitialized_3.Out", "box_OutputOrder_v2_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_55_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_58();
    l0 = self.box_Delay_v5_55;
    l1 = self.box_VisibilityModifier_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1597257668", "1597257668", "LT01_005_B20", "box_Delay_v5_55.TimeElapsed", "box_VisibilityModifier_58.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_72_Out()
    local params, l0, l1;
    params = self:OnEnter_box_VisionModeModifier_v2_61();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_72;
    l1 = self.box_VisionModeModifier_v2_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1439749360", "1439749360", "LT01_005_B20", "box_CHEAT_SetEnvironmentTimeScale_72.Out", "box_VisionModeModifier_v2_61.StartScopolamine", l0:GetLuaBox(), l1:GetLuaBox());
    -- StartScopolamine
    l1:Exec(4, params);
end;

function export:f_box_OutputOrder_v2_59_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetTimeOfDay_11();
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|205852820", "205852820", "LT01_005_B20", "box_OutputOrder_v2_59.Out", "box_SetTimeOfDay_11.SetTimeOfDay", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeOfDay
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_59_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_54();
    l0 = self.box_EntityStatusListener_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1003407313", "1003407313", "LT01_005_B20", "box_OutputOrder_v2_59.Out", "box_EntityStatusListener_54.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_59_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMusicTriggerBox_19();
    l0 = self.box_SoundMusicTriggerBox_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|2020896270", "2020896270", "LT01_005_B20", "box_OutputOrder_v2_59.Out", "box_SoundMusicTriggerBox_19.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_41_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_28();
    l0 = self.box_Delay_v5_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|470689675", "470689675", "LT01_005_B20", "box_OutputOrder_v2_41.Out", "box_Delay_v5_28.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_41_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_40();
    l0 = self.box_ProximityRadiusListener_v3_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|5661153", "5661153", "LT01_005_B20", "box_OutputOrder_v2_41.Out", "box_ProximityRadiusListener_v3_40.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_33_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_32();
    l0 = self.box_MultipleOR_33;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|27014435", "27014435", "LT01_005_B20", "box_MultipleOR_33.Out", "box_Compare_Integers_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehiclePositionLockModifier_53_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehiclePositionLockModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_60();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|187278167", "187278167", "LT01_005_B20", "box_VehiclePositionLockModifier_53.Locked", "box_Simple_Node_60.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Endure_CORE_v3_13_Fail()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_17();
    l0 = self.box_Brick_Endure_CORE_v3_13;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|852347556", "852347556", "LT01_005_B20", "box_Brick_Endure_CORE_v3_13.Fail", "box_ActivityRetry_17.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Endure_CORE_v3_13_Out()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_8();
    l0 = self.box_Brick_Endure_CORE_v3_13;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|467061713", "467061713", "LT01_005_B20", "box_Brick_Endure_CORE_v3_13.Out", "box_VehicleModifier_v2_8.SetEngineDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEngineDisabled
    l1:Exec(12, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Endure_CORE_v3_13_Success()
    local l0, l1;
    l0 = self.box_Brick_Endure_CORE_v3_13;
    l1 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|848936189", "848936189", "LT01_005_B20", "box_Brick_Endure_CORE_v3_13.Success", "box_MultipleOR_46.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Endure_CORE_v3_13_Waves()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_Wave_v2_9();
    l0 = self.box_Brick_Endure_CORE_v3_13;
    l1 = self.box_SpawnAI_Wave_v2_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|930494801", "930494801", "LT01_005_B20", "box_Brick_Endure_CORE_v3_13.Waves", "box_SpawnAI_Wave_v2_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_25_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_62();
    l0 = self.box_CharacterLoadedIdListener_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1716391334", "1716391334", "LT01_005_B20", "box_OutputOrder_v2_25.Out", "box_CharacterLoadedIdListener_62.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_34_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_44();
    l0 = self.box_Delay_v5_34;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|702043100", "702043100", "LT01_005_B20", "box_Delay_v5_34.TimeElapsed", "box_UseContextualActionModifier_v3_44.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PostFx_v3_43_Enabled()
    local l0, l1;
    l0 = self.box_PostFx_v3_43;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1741048061", "1741048061", "LT01_005_B20", "box_PostFx_v3_43.Enabled", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Random_12_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_23();
    l0 = self.box_Random_12;
    l1 = self.box_SpawnAI_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|719338213", "719338213", "LT01_005_B20", "box_Random_12.Output", "box_SpawnAI_23.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Random_12_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_14();
    l0 = self.box_Random_12;
    l1 = self.box_SpawnAI_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|2105788022", "2105788022", "LT01_005_B20", "box_Random_12.Output", "box_SpawnAI_14.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_65_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_47();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|82651319", "82651319", "LT01_005_B20", "box_UseContextualActionModifier_v3_65.Disabled", "box_ActivityEnd_47.EndSoftSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndSoftSave
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_46_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_63();
    l0 = self.box_MultipleOR_46;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|2060773751", "2060773751", "LT01_005_B20", "box_MultipleOR_46.Out", "box_UseContextualActionModifier_v3_63.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_32_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_12();
    l0 = self.box_Random_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|534014852", "534014852", "LT01_005_B20", "box_Compare_Integers_32.A_le_B", "box_Random_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_SpawnAI_38_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_7();
    l0 = self.box_SpawnAI_38;
    l1 = self.box_SpawnAI_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1163210412", "1163210412", "LT01_005_B20", "box_SpawnAI_38.Out", "box_SpawnAI_7.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_Wave_v2_9_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_48();
    l0 = self.box_SpawnAI_Wave_v2_9;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1424503127", "1424503127", "LT01_005_B20", "box_SpawnAI_Wave_v2_9.NextWave", "box_OutputOrder_v2_48.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleModifier_v2_8_OnSetEngineDisabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleModifier_v2_8();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1860602455", "1860602455", "LT01_005_B20", "box_VehicleModifier_v2_8.OnSetEngineDisabled", "box_VehicleModifier_v2_8.SetEngineBroken", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEngineBroken
    l0:Exec(11, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_36_Enabled()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_36;
    l1 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1532953189", "1532953189", "LT01_005_B20", "box_GroupSizeListener_v5_36.Enabled", "box_MultipleOR_33.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_36_MemberRemoved()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_36;
    l1 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1741917636", "1741917636", "LT01_005_B20", "box_GroupSizeListener_v5_36.MemberRemoved", "box_MultipleOR_33.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_21_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_GAM_LT01_005_JOHN_SEED_PA_B20_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|275633901", "275633901", "LT01_005_B20", "box_OutputOrder_v2_21.Out", "box_GAM_LT01_005_JOHN_SEED_PA_B20_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_21_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Endure_CORE_v3_13();
    l0 = self.box_Brick_Endure_CORE_v3_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1938056342", "1938056342", "LT01_005_B20", "box_OutputOrder_v2_21.Out", "box_Brick_Endure_CORE_v3_13.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_21_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_36();
    l0 = self.box_GroupSizeListener_v5_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1835153757", "1835153757", "LT01_005_B20", "box_OutputOrder_v2_21.Out", "box_GroupSizeListener_v5_36.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_21_Out_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_GAM_LT01_005_Restistant_B20_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1594230148", "1594230148", "LT01_005_B20", "box_OutputOrder_v2_21.Out", "box_GAM_LT01_005_Restistant_B20_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_21_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_31();
    l0 = self.box_ProximityTrigger_v2_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|865024709", "865024709", "LT01_005_B20", "box_OutputOrder_v2_21.Out", "box_ProximityTrigger_v2_31.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PostFx_v3_70_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_68();
    l0 = self.box_PostFx_v3_70;
    l1 = self.box_Delay_v5_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1062676830", "1062676830", "LT01_005_B20", "box_PostFx_v3_70.Disabled", "box_Delay_v5_68.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_UseContextualActionModifier_v3_64_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_65();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1217773901", "1217773901", "LT01_005_B20", "box_UseContextualActionModifier_v3_64.Disabled", "box_UseContextualActionModifier_v3_65.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VisionModeModifier_v2_61_StartedScopolamine()
    local params, l0, l1;
    params = self:OnEnter_box_GunsForHireSystemModifier_42();
    l0 = self.box_VisionModeModifier_v2_61;
    l1 = self.box_GunsForHireSystemModifier_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|540721221", "540721221", "LT01_005_B20", "box_VisionModeModifier_v2_61.StartedScopolamine", "box_GunsForHireSystemModifier_42.DisableGFHSystem", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisableGFHSystem
    l1:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_26_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_27();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|248975602", "248975602", "LT01_005_B20", "box_UseContextualActionModifier_v3_26.Disabled", "box_UseContextualActionModifier_v3_27.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_59();
    l0 = self.box_MultipleOR_4;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1595190696", "1595190696", "LT01_005_B20", "box_MultipleOR_4.Out", "box_OutputOrder_v2_59.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_6_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_6_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityForceAndLockTracking_66();
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|729592022", "729592022", "LT01_005_B20", "box_GetPlayerGroup_v2_6.Out", "box_ActivityForceAndLockTracking_66.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GunsForHireSystemModifier_42_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_39();
    l0 = self.box_GunsForHireSystemModifier_42;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1549242804", "1549242804", "LT01_005_B20", "box_GunsForHireSystemModifier_42.Disabled", "box_OutputOrder_v2_39.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_24_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleModifier_v2_52();
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1195029033", "1195029033", "LT01_005_B20", "box_OutputOrder_v2_24.Out", "box_VehicleModifier_v2_52.SetAsUnusable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsUnusable
    l0:Exec(6, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_24_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleModifier_v2_67();
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1451211555", "1451211555", "LT01_005_B20", "box_OutputOrder_v2_24.Out", "box_VehicleModifier_v2_67.SetAsUnusable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsUnusable
    l0:Exec(6, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_74_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostFx_v3_70();
    l0 = self.box_PostFx_v3_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|2098735552", "2098735552", "LT01_005_B20", "box_OutputOrder_v2_74.Out", "box_PostFx_v3_70.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_74_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostFx_v3_73();
    l0 = self.box_PostFx_v3_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1222637797", "1222637797", "LT01_005_B20", "box_OutputOrder_v2_74.Out", "box_PostFx_v3_73.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_74_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostFx_v3_71();
    l0 = self.box_PostFx_v3_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|434008651", "434008651", "LT01_005_B20", "box_OutputOrder_v2_74.Out", "box_PostFx_v3_71.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_74_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostFx_v3_75();
    l0 = self.box_PostFx_v3_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1751115891", "1751115891", "LT01_005_B20", "box_OutputOrder_v2_74.Out", "box_PostFx_v3_75.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_63_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_64();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1037424967", "1037424967", "LT01_005_B20", "box_UseContextualActionModifier_v3_63.Disabled", "box_UseContextualActionModifier_v3_64.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_69_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_VisionModeModifier_v2_29();
    l0 = self.box_Delay_v5_69;
    l1 = self.box_VisionModeModifier_v2_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1485475050", "1485475050", "LT01_005_B20", "box_Delay_v5_69.TimeElapsed", "box_VisionModeModifier_v2_29.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(7, params);
end;

function export:f_box_UseContextualActionModifier_v3_27_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_34();
    l0 = self.box_Delay_v5_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|2067101572", "2067101572", "LT01_005_B20", "box_UseContextualActionModifier_v3_27.Enabled", "box_Delay_v5_34.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SpawnAI_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_15();
    l0 = self.box_SpawnAI_7;
    l1 = self.box_SpawnAI_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1074892066", "1074892066", "LT01_005_B20", "box_SpawnAI_7.Out", "box_SpawnAI_15.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SetTimeOfDay_11_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_72();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|447571651", "447571651", "LT01_005_B20", "box_SetTimeOfDay_11.Out", "box_CHEAT_SetEnvironmentTimeScale_72.SetTimeScale", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeScale
    l0:Exec(0, params);
end;

function export:f_box_PostFx_v3_49_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_74();
    l0 = self.box_PostFx_v3_49;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|358990783", "358990783", "LT01_005_B20", "box_PostFx_v3_49.Disabled", "box_OutputOrder_v2_74.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundMusicTriggerBox_19_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PostWWiseEventSetState_22();
    l0 = self.box_SoundMusicTriggerBox_19;
    l1 = self.box_PostWWiseEventSetState_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|534829734", "534829734", "LT01_005_B20", "box_SoundMusicTriggerBox_19.Started", "box_PostWWiseEventSetState_22.SetState", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetState
    l1:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_44_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_51();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|498809200", "498809200", "LT01_005_B20", "box_UseContextualActionModifier_v3_44.Disabled", "box_UseContextualActionModifier_v3_51.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_1_Acknowledged()
    local params, l0, l1;
    params = self:OnEnter_box_NoWeaponMode_v3_20();
    l0 = self.box_ActivityAcknowledgeGate_1;
    l1 = self.box_NoWeaponMode_v3_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|719251732", "719251732", "LT01_005_B20", "box_ActivityAcknowledgeGate_1.Acknowledged", "box_NoWeaponMode_v3_20.Off", l0:GetLuaBox(), l1:GetLuaBox());
    -- Off
    l1:Exec(0, params);
end;

function export:f_box_ActivityAcknowledgeGate_1_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_43();
    l0 = self.box_ActivityAcknowledgeGate_1;
    l1 = self.box_PostFx_v3_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|542063055", "542063055", "LT01_005_B20", "box_ActivityAcknowledgeGate_1.Reloaded", "box_PostFx_v3_43.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_40_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_30();
    l0 = self.box_ProximityRadiusListener_v3_40;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|325913944", "325913944", "LT01_005_B20", "box_ProximityRadiusListener_v3_40.Enabled", "box_VehicleModifier_v2_30.SetEngineMajorDamage", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEngineMajorDamage
    l1:Exec(13, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_40_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_30();
    l0 = self.box_ProximityRadiusListener_v3_40;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|248467595", "248467595", "LT01_005_B20", "box_ProximityRadiusListener_v3_40.SomeoneNear", "box_VehicleModifier_v2_30.SetExplosion", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetExplosion
    l1:Exec(17, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_28_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_49();
    l0 = self.box_Delay_v5_28;
    l1 = self.box_PostFx_v3_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|66703281", "66703281", "LT01_005_B20", "box_Delay_v5_28.TimeElapsed", "box_PostFx_v3_49.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ActivityMiscInfoModifier_v2_35_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_6();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1332443390", "1332443390", "LT01_005_B20", "box_ActivityMiscInfoModifier_v2_35.Out", "box_GetPlayerGroup_v2_6.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_PositionModifier_v2_56()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2102780965582565033",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2100787525116245362",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_73()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "cinematicfadewhiteto60",
    };
    return params;
end;

function export:OnEnter_box_ActivityForceAndLockTracking_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityForceAndLockTracking_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|226066816");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityForceAndLockTracking_66_Enabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_37()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 2,
        -- AttackerSpawner_1,
        [1] = "2102062086700937222",
        -- CoreNPCGroup,
        [2] = "#FB9F5AA9",
        -- IsLastWave,
        [3] = true,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_58()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2102780965582565033",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_57()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_54()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2100787525116245362",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_31()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104494605671086935",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_45()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|524595890");
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
                [0] = self.f_box_OutputOrder_v2_39_Out_0,
                [1] = self.f_box_OutputOrder_v2_39_Out_1,
                [2] = self.f_box_OutputOrder_v2_39_Out_2,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|545023635");
    l0:SetConnections({
        -- OnSetAsUnusable,
        [6] = self.f_box_VehicleModifier_v2_52_OnSetAsUnusable,
    });
    params = {
        -- targets,
        [0] = "2100787525116245362",
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_62()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015202430234855",
    };
    return params;
end;

function export:OnEnter_box_PostWWiseEventSetState_22()
    local params;
    params = {
        -- SoundId,
        [0] = "1856814043",
        -- SoundType,
        [1] = 17,
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneCleanUp_V2_50()
    local params;
    params = {
        -- KeepBlackBars,
        [0] = false,
        -- KeepGFHDisabled,
        [1] = true,
        -- KeepGodMode,
        [2] = false,
        -- KeepHUDMode,
        [3] = false,
        -- KeepWeaponHolstered,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|587815212");
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

function export:OnEnter_box_NoWeaponMode_v3_20()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- useAnims,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_68()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_55()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_72()
    local params;
    params = {
        -- timeScale,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|812280611");
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
                [0] = self.f_box_OutputOrder_v2_59_Out_0,
                [1] = self.f_box_OutputOrder_v2_59_Out_1,
                [2] = self.f_box_OutputOrder_v2_59_Out_2,
            },
            count = 3,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|822061566");
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

function export:OnEnter_box_SpawnAI_23()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101767430555587813",
    };
    return params;
end;

function export:OnEnter_box_VehiclePositionLockModifier_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehiclePositionLockModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehiclePositionLockModifier_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1034030749");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_VehiclePositionLockModifier_53_Locked,
    });
    params = {
        -- VehicleEntity,
        [0] = "2100787525116245362",
    };
    return params;
end;

function export:OnEnter_box_Brick_Endure_CORE_v3_13()
    local params;
    params = {
        -- Attacker_Group,
        [0] = "#FB9F5AA9",
        -- bRequiresObjective,
        [1] = false,
        -- CompletePreviousObjective,
        [2] = false,
        -- FailArea,
        [3] = "2101575885726435899",
        -- Marker,
        [4] = "2100168459756249727",
        -- Objective,
        [5] = {
            section = "Objectives",
            item = "LT01_005_B20",
            id = "555223",
        },
        -- opt_ObjectiveFail,
        [6] = {
            section = "BRICK_Endure_Waves",
            item = "BRICK_Endure_ExitWarning",
            id = "426332",
        },
        -- WarningArea,
        [7] = "2101575869291055674",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1107892541");
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
                [0] = self.f_box_OutputOrder_v2_25_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_34()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1119508677");
    l0:SetConnections({
    });
    params = {
        -- targets,
        [0] = "2102780965582565033",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_43()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_Random_12()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
                [0] = 0.5,
                [1] = 0.5,
            },
            count = 2,
        },
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_71()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "whitetoblack",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1187171640");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_65_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104328262252519690",
    };
    return params;
end;

function export:OnEnter_box_VisionModeModifier_v2_29()
    local params;
    params = {
        -- intoxicationAmount,
        [0] = 10,
        -- players,
        [1] = "#ED455357",
        -- useAsPercent,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1318321698");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_32_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v5_36;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_38()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101767430555587813",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_9()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 2,
        -- AttackerSpawner_1,
        [1] = "2101767471397623412",
        -- CoreNPCGroup,
        [2] = "#FB9F5AA9",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2102062086700937222",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1391081991");
    l0:SetConnections({
        -- OnSetEngineDisabled,
        [12] = self.f_box_VehicleModifier_v2_8_OnSetEngineDisabled,
    });
    params = {
        -- targets,
        [0] = "#8E09F976",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1405325864");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_36()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#0382900D",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1434015183");
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
                [0] = self.f_box_OutputOrder_v2_21_Out_0,
                [1] = self.f_box_OutputOrder_v2_21_Out_1,
                [2] = self.f_box_OutputOrder_v2_21_Out_2,
                [3] = self.f_box_OutputOrder_v2_21_Out_3,
                [4] = self.f_box_OutputOrder_v2_21_Out_4,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_70()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "cinematicfade60frames",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_14()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2102034127554354253",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1467887504");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_64_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104328256795730182",
    };
    return params;
end;

function export:OnEnter_box_VisionModeModifier_v2_61()
    local params;
    params = {
        -- intoxicationAmount,
        [0] = 100,
        -- players,
        [1] = "#ED455357",
        -- useAsPercent,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1541978140");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_26_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104328208884195559",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1637331380");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_6_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_42()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_15()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2102018989805828807",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1674477907");
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
                [0] = self.f_box_OutputOrder_v2_24_Out_0,
                [1] = self.f_box_OutputOrder_v2_24_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1679579515");
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
                [0] = self.f_box_OutputOrder_v2_74_Out_0,
                [1] = self.f_box_OutputOrder_v2_74_Out_1,
                [2] = self.f_box_OutputOrder_v2_74_Out_2,
                [3] = self.f_box_OutputOrder_v2_74_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1680464826");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_63_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104328208884195559",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_69()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1798276719");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2104328262252519690",
        -- Entity,
        [1] = self.character,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1803708985");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_27_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104328256795730182",
        -- Entity,
        [1] = self.character,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_7()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2102058046355152515",
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1814160818");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_11_Out,
    });
    params = {
        -- Hour,
        [0] = 23,
        -- Minute,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_49()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_SoundMusicTriggerBox_19()
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
        [5] = "3102801332",
        -- StopEvent,
        [6] = "2629155463",
        -- StopFadeOut,
        [7] = 0.5,
        -- WaitUntilMusicEndMarker,
        [8] = false,
        -- WaitUntilNotInVehicle,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1853107875");
    l0:SetConnections({
    });
    params = {
        -- targets,
        [0] = "2100787692255066500",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1896632913");
    l0:SetConnections({
    });
    l0 = self.box_Brick_Endure_CORE_v3_13;
    params = {
        -- ReasonId,
        [0] = l0:GetDataOutValue(0),
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|1915794971");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_44_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104328256795730182",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|2001589604");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_40()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.gFriendlyPlayer,
        -- id2,
        [3] = "2100787692255066500",
        -- nearZone,
        [4] = 30,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_28()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_75()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "cinematiccutoblack60",
    };
    return params;
end;

function export:OnEnter_box_ActivityMiscInfoModifier_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityMiscInfoModifier_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@LT01_005_B20|2134758765");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityMiscInfoModifier_v2_35_Out,
    });
    params = {
        -- ActivityAbortAndFastTravelEnabled,
        [0] = false,
        -- SleepingCampEnabled,
        [1] = true,
    };
    return params;
end;

function export:OnExit_box_CharacterLoadedIdListener_62_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_62;
    self.character = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_6_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gFriendlyPlayer = l0:GetDataOutValue(0);
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
