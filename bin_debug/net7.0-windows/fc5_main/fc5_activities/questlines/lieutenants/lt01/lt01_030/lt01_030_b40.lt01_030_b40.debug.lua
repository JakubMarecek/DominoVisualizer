LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt01/lt01_030/lt01_030_b40.domino
-- User graph: LT01_030_B40
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_MAIN.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/BinkPlayer_v6.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/PostWWiseEventSetState.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SoundMusicTrigger.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        cboxRes:RegisterBox("Domino/System/UI/ActivityForceAndLockTracking.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.ExitZoneWarningListener_Custom.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_ComputerRoom_Barks.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_PA_Dialog.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_PA_RandomComputer.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_ParticleLoop.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_RumbleBox.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_ShimmerMachine.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.SiloFlap_Breakable.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.SiloFlap_Scripted.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1856814043.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3488215869.bnk]], "CSoundResource");
        cboxRes:LoadResource([[304050177.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3704945205.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3214226643.bnk]], "CSoundResource");
        cboxRes:LoadResource([[77615309.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3391452807.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4012559933.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2806627700.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2967186391.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3302273970.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1573410691.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1138832686.bnk]], "CSoundResource");
        cboxRes:LoadResource([[ui\singleplayer\video\preload\lt01_030_surveillancetv_combined_escape.bik]], "CBinkResource");
        cboxRes:LoadResource([[4070124363.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2338968790.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1106295261.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1544736735.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1715325879.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1480691066.bnk]], "CSoundResource");
        cboxRes:LoadResource([[ui\singleplayer\video\preload\lt01_030_surveillancetv_combined.bik]], "CBinkResource");
        cboxRes:LoadResource([[1635613060.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2451774824.bnk]], "CSoundResource");
        cboxRes:LoadResource([[ui\singleplayer\video\preload\lt01_030_surveillancetv_combined_empty.bik]], "CBinkResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_B40.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_MAIN.debug.lua")] = {
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
                name = "ExtraMarkers",
                delayed = false,
            },
            [2] = {
                name = "ObjectDestroyed",
                delayed = false,
            },
            [3] = {
                name = "Started",
                delayed = false,
            },
            [4] = {
                name = "Success",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "CompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "Destroy_Group",
                type = "group",
            },
            [2] = {
                name = "has_ProgressBar",
                type = "bool",
            },
            [3] = {
                name = "Mission_Objective",
                type = "oasis",
            },
            [4] = {
                name = "opt_Marker_MissionArea",
                type = "entity",
            },
            [5] = {
                name = "Success_Percentage",
                type = "int",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v2.debug.lua")] = {
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
                name = "bRequiresObjective",
                type = "bool",
            },
            [3] = {
                name = "bUse2d_ProximityCheck",
                type = "bool",
            },
            [4] = {
                name = "bUseDetectionModifier",
                type = "bool",
            },
            [5] = {
                name = "eMarker",
                type = "entity",
            },
            [6] = {
                name = "eRadiusTarget",
                type = "entity",
            },
            [7] = {
                name = "eTrigger",
                type = "entity",
            },
            [8] = {
                name = "fDistanceFromTarget",
                type = "float",
            },
            [9] = {
                name = "fObjectiveTimer",
                type = "float",
            },
            [10] = {
                name = "gEnemyGroup",
                type = "group",
            },
            [11] = {
                name = "opt_Objective",
                type = "oasis",
            },
        },
        dataInCount = 12,
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
    metadataTable[GetPathID("Domino/System/BinkPlayer_v6.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Play",
            },
            [1] = {
                name = "Preload",
            },
            [2] = {
                name = "Stop",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Played",
                delayed = false,
            },
            [1] = {
                name = "Preloaded",
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
                name = "BinkAudio",
                type = "Sound",
            },
            [1] = {
                name = "BinkAudioType",
                type = "SoundType",
            },
            [2] = {
                name = "BinkPathID",
                type = "Video",
            },
            [3] = {
                name = "BinkSound",
                type = "Sound",
            },
            [4] = {
                name = "BinkSoundEnd",
                type = "Sound",
            },
            [5] = {
                name = "BinkSoundEndType",
                type = "SoundType",
            },
            [6] = {
                name = "BinkSoundFade",
                type = "float",
            },
            [7] = {
                name = "BinkSoundType",
                type = "SoundType",
            },
            [8] = {
                name = "BinkVolumePercent",
                type = "float",
            },
            [9] = {
                name = "Loop",
                type = "bool",
            },
            [10] = {
                name = "MaterialName",
                type = "string",
            },
            [11] = {
                name = "ScreenEntity",
                type = "entity",
            },
            [12] = {
                name = "TCR_Music",
                type = "bool",
            },
            [13] = {
                name = "WaitAvailableBinding",
                type = "bool",
            },
        },
        dataInCount = 14,
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.ExitZoneWarningListener_Custom.debug.lua")] = {
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
                name = "FailingZoneTrigger",
                type = "entity",
            },
            [2] = {
                name = "WarningZoneTrigger",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "CurrentWarnedPlayer",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_ComputerRoom_Barks.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start_ComputerRoomBarks",
            },
            [1] = {
                name = "Stop_ComputerRoomBarks",
            },
        },
        controlInCount = 2,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "GuardGroup",
                type = "group",
            },
            [1] = {
                name = "MaxDelay",
                type = "float",
            },
            [2] = {
                name = "MinDelay",
                type = "float",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_PA_Dialog.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Play",
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
                name = "Dialog",
                type = "Sound",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_PA_RandomComputer.debug.lua")] = {
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
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "MaxTime",
                type = "float",
            },
            [1] = {
                name = "MinTime",
                type = "float",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_ParticleLoop.debug.lua")] = {
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
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "InitialDelay",
                type = "float",
            },
            [1] = {
                name = "Particle",
                type = "entity",
            },
            [2] = {
                name = "ParticleDelay",
                type = "float",
            },
            [3] = {
                name = "SteamDuration",
                type = "float",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_RumbleBox.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start_HighRumble",
            },
            [1] = {
                name = "Start_LowRumble",
            },
            [2] = {
                name = "Stop_HighRumble",
            },
            [3] = {
                name = "Stop_LowRumble",
            },
            [4] = {
                name = "Trigger_OneHighRumble",
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_ShimmerMachine.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Destroyed",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Machine",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.SiloFlap_Breakable.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "FlapDown",
                delayed = true,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "PrefabID",
                type = "entity",
            },
            [1] = {
                name = "ShimmerLatchBracket",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.SiloFlap_Scripted.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Lower",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "FlapDownCalled",
                delayed = false,
            },
            [1] = {
                name = "FlapDownFinished",
                delayed = true,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "PrefabID",
                type = "entity",
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
    self._name = "LT01_030_B40";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40";
    self.Deputy = nil;
    self.PlayerGroup = nil;
    self.fDelay = 1.5;
    self.TotalObjectDestroyed = 0;
    self.box_EntityStatusListener_164 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_164;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_164");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|10461181");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_164_Loaded,
    });
    self.box_LT01_030_ParticleLoop_52 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_ParticleLoop.debug.lua");
    l0 = self.box_LT01_030_ParticleLoop_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_ParticleLoop_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|17318860");
    l0:SetConnections({
    });
    self.box_LT01_030_ParticleLoop_106 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_ParticleLoop.debug.lua");
    l0 = self.box_LT01_030_ParticleLoop_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_ParticleLoop_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|17518296");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_64 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|21254566");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_146 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_146;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_146");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|36752626");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_118 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|37564582");
    l0:SetConnections({
    });
    self.box_CharacterLoadedIdListener_28 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|54536277");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_28_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_28_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_28_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_28_LoadedIdReceived,
    });
    self.box_Delay_v5_123 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_123;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|55466592");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_123_TimeElapsed,
    });
    self.box_SiloFlap_Scripted_79 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.SiloFlap_Scripted.debug.lua");
    l0 = self.box_SiloFlap_Scripted_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SiloFlap_Scripted_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|58123295");
    l0:SetConnections({
    });
    self.box_Brick_Destroy_ObjectsVehicles_MAIN_9 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_MAIN.debug.lua");
    l0 = self.box_Brick_Destroy_ObjectsVehicles_MAIN_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Destroy_ObjectsVehicles_MAIN_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|65355431");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_Brick_Destroy_ObjectsVehicles_MAIN_9_Disabled,
        -- ObjectDestroyed,
        [2] = self.f_box_Brick_Destroy_ObjectsVehicles_MAIN_9_ObjectDestroyed,
        -- Success,
        [4] = self.f_box_Brick_Destroy_ObjectsVehicles_MAIN_9_Success,
    });
    self.box_LT01_030_ShimmerMachine_31 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_ShimmerMachine.debug.lua");
    l0 = self.box_LT01_030_ShimmerMachine_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_ShimmerMachine_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|69496406");
    l0:SetConnections({
        -- Destroyed,
        [0] = self.f_box_LT01_030_ShimmerMachine_31_Destroyed,
    });
    self.box_SpawnAI_174 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_174;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_174");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|138358109");
    l0:SetConnections({
    });
    self.box_BinkPlayer_v6_112 = cbox:CreateBox("Domino/System/BinkPlayer_v6.lua");
    l0 = self.box_BinkPlayer_v6_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BinkPlayer_v6_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|148164555");
    l0:SetConnections({
    });
    self.box_SiloFlap_Scripted_77 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.SiloFlap_Scripted.debug.lua");
    l0 = self.box_SiloFlap_Scripted_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SiloFlap_Scripted_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|148960520");
    l0:SetConnections({
        -- FlapDownCalled,
        [0] = self.f_box_SiloFlap_Scripted_77_FlapDownCalled,
    });
    self.box_SiloFlap_Breakable_70 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.SiloFlap_Breakable.debug.lua");
    l0 = self.box_SiloFlap_Breakable_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SiloFlap_Breakable_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|187975745");
    l0:SetConnections({
    });
    self.box_PostWWiseEventSetState_96 = cbox:CreateBox("Domino/System/PostWWiseEventSetState.lua");
    l0 = self.box_PostWWiseEventSetState_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostWWiseEventSetState_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|200401125");
    l0:SetConnections({
    });
    self.box_LT01_030_RumbleBox_121 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_RumbleBox.debug.lua");
    l0 = self.box_LT01_030_RumbleBox_121;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_RumbleBox_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|242063865");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_78 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|279023174");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_78_Enter,
    });
    self.box_LT01_030_PA_Dialog_100 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|308842277");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_LT01_030_PA_Dialog_100_Out,
    });
    self.box_SiloFlap_Scripted_87 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.SiloFlap_Scripted.debug.lua");
    l0 = self.box_SiloFlap_Scripted_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SiloFlap_Scripted_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|369363544");
    l0:SetConnections({
        -- FlapDownCalled,
        [0] = self.f_box_SiloFlap_Scripted_87_FlapDownCalled,
    });
    self.box_ProximityTrigger_v2_83 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|384454827");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_83_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_83_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_83_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_83_Leave,
        -- OnEmpty,
        [4] = self.f_box_ProximityTrigger_v2_83_OnEmpty,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_83_OnOccupied,
        -- Use,
        [6] = self.f_box_ProximityTrigger_v2_83_Use,
    });
    self.box_EntityStatusListener_162 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_162;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_162");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|396479788");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_162_Loaded,
    });
    self.box_LT01_030_RumbleBox_55 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_RumbleBox.debug.lua");
    l0 = self.box_LT01_030_RumbleBox_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_RumbleBox_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|403689738");
    l0:SetConnections({
    });
    self.box_SiloFlap_Scripted_41 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.SiloFlap_Scripted.debug.lua");
    l0 = self.box_SiloFlap_Scripted_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SiloFlap_Scripted_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|417298804");
    l0:SetConnections({
    });
    self.box_LT01_030_RumbleBox_111 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_RumbleBox.debug.lua");
    l0 = self.box_LT01_030_RumbleBox_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_RumbleBox_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|425645800");
    l0:SetConnections({
    });
    self.box_LT01_030_ShimmerMachine_8 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_ShimmerMachine.debug.lua");
    l0 = self.box_LT01_030_ShimmerMachine_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_ShimmerMachine_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|433478589");
    l0:SetConnections({
        -- Destroyed,
        [0] = self.f_box_LT01_030_ShimmerMachine_8_Destroyed,
    });
    self.box_PlayDialog_v6_135 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_135;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_135");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|440184104");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_135_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_135_FinishedInterrupted,
    });
    self.box_Gate_v3_175 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_175;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_175");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|446289413");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_175_Out,
    });
    self.box_LT01_030_ParticleLoop_61 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_ParticleLoop.debug.lua");
    l0 = self.box_LT01_030_ParticleLoop_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_ParticleLoop_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|448119576");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_167 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_167;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_167");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|468950227");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_167_Loaded,
    });
    self.box_Switch_44 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|483483541");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 13,
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
                [0] = self.f_box_Switch_44_Output_0,
                [1] = self.f_box_Switch_44_Output_1,
                [2] = self.f_box_Switch_44_Output_2,
                [4] = self.f_box_Switch_44_Output_4,
                [5] = self.f_box_Switch_44_Output_5,
                [6] = self.f_box_Switch_44_Output_6,
                [8] = self.f_box_Switch_44_Output_8,
                [10] = self.f_box_Switch_44_Output_10,
            },
            count = 13,
        },
    });
    self.box_LT01_030_PA_Dialog_75 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|515583770");
    l0:SetConnections({
    });
    self.box_ExitZoneWarningListener_Custom_36 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.ExitZoneWarningListener_Custom.debug.lua");
    l0 = self.box_ExitZoneWarningListener_Custom_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_Custom_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|542359357");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_Custom_36_FailingZoneEntered,
    });
    self.box_LT01_030_ParticleLoop_125 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_ParticleLoop.debug.lua");
    l0 = self.box_LT01_030_ParticleLoop_125;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_ParticleLoop_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|542727263");
    l0:SetConnections({
    });
    self.box_MultipleOR_107 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|586380965");
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
    self.box_LT01_030_ShimmerMachine_17 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_ShimmerMachine.debug.lua");
    l0 = self.box_LT01_030_ShimmerMachine_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_ShimmerMachine_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|646377135");
    l0:SetConnections({
        -- Destroyed,
        [0] = self.f_box_LT01_030_ShimmerMachine_17_Destroyed,
    });
    self.box_PlayDialog_v6_90 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|664594016");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_40 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|678130774");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_40_Enter,
    });
    self.box_EntityStatusListener_169 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_169;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_169");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|705318281");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_169_Loaded,
    });
    self.box_LT01_030_ComputerRoom_Barks_150 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_ComputerRoom_Barks.debug.lua");
    l0 = self.box_LT01_030_ComputerRoom_Barks_150;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_ComputerRoom_Barks_150");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|711589916");
    l0:SetConnections({
    });
    self.box_LT01_030_ParticleLoop_127 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_ParticleLoop.debug.lua");
    l0 = self.box_LT01_030_ParticleLoop_127;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_ParticleLoop_127");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|717917482");
    l0:SetConnections({
    });
    self.box_MultipleOR_181 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_181;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_181");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|739513092");
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
        [0] = self.f_box_MultipleOR_181_Out,
    });
    self.box_LT01_030_ShimmerMachine_29 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_ShimmerMachine.debug.lua");
    l0 = self.box_LT01_030_ShimmerMachine_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_ShimmerMachine_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|740368259");
    l0:SetConnections({
        -- Destroyed,
        [0] = self.f_box_LT01_030_ShimmerMachine_29_Destroyed,
    });
    self.box_PlayDialog_v6_138 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_138;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_138");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|760999814");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_138_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_138_FinishedInterrupted,
    });
    self.box_MultipleOR_178 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_178;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_178");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|764530034");
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
        [0] = self.f_box_MultipleOR_178_Out,
    });
    self.box_EntityStatusListener_159 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_159;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_159");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|768333488");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_159_Loaded,
    });
    self.box_MultipleOR_176 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_176;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_176");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|775062989");
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
    self.box_LT01_030_RumbleBox_113 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_RumbleBox.debug.lua");
    l0 = self.box_LT01_030_RumbleBox_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_RumbleBox_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|793966917");
    l0:SetConnections({
    });
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|834214546");
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
    self.box_EntityStatusListener_166 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_166;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_166");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|855728691");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_166_Loaded,
    });
    self.box_SpawnAI_22 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|889408862");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_22_Spawned,
    });
    self.box_SiloFlap_Scripted_80 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.SiloFlap_Scripted.debug.lua");
    l0 = self.box_SiloFlap_Scripted_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SiloFlap_Scripted_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|891915706");
    l0:SetConnections({
        -- FlapDownCalled,
        [0] = self.f_box_SiloFlap_Scripted_80_FlapDownCalled,
    });
    self.box_ActivityAcknowledgeGate_1 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|903611171");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_1_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_1_Reloaded,
    });
    self.box_EntityStatusListener_158 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_158;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_158");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|922603309");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_158_Loaded,
    });
    self.box_MultipleOR_179 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_179;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_179");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|926836631");
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
        [0] = self.f_box_MultipleOR_179_Out,
    });
    self.box_PlayDialog_v6_144 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_144;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_144");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|927336627");
    l0:SetConnections({
    });
    self.box_LT01_030_RumbleBox_114 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_RumbleBox.debug.lua");
    l0 = self.box_LT01_030_RumbleBox_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_RumbleBox_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|942846323");
    l0:SetConnections({
    });
    self.box_SiloFlap_Scripted_82 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.SiloFlap_Scripted.debug.lua");
    l0 = self.box_SiloFlap_Scripted_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SiloFlap_Scripted_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|950373875");
    l0:SetConnections({
    });
    self.box_SiloFlap_Scripted_81 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.SiloFlap_Scripted.debug.lua");
    l0 = self.box_SiloFlap_Scripted_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SiloFlap_Scripted_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|954893538");
    l0:SetConnections({
        -- FlapDownCalled,
        [0] = self.f_box_SiloFlap_Scripted_81_FlapDownCalled,
    });
    self.box_ProximityTrigger_v2_129 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_129;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|961711282");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_129_Enter,
    });
    self.box_ProximityTrigger_v2_139 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_139;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_139");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|962765541");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_139_Enter,
    });
    self.box_ActivityInitialized_3 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|997378389");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_3_Out,
    });
    self.box_LT01_030_ShimmerMachine_27 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_ShimmerMachine.debug.lua");
    l0 = self.box_LT01_030_ShimmerMachine_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_ShimmerMachine_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1043426347");
    l0:SetConnections({
        -- Destroyed,
        [0] = self.f_box_LT01_030_ShimmerMachine_27_Destroyed,
    });
    self.box_EntityStatusListener_161 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_161;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_161");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1073919235");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_161_Loaded,
    });
    self.box_ProximityTrigger_v2_137 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_137;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_137");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1077873132");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_137_Enter,
    });
    self.box_LT01_030_ShimmerMachine_32 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_ShimmerMachine.debug.lua");
    l0 = self.box_LT01_030_ShimmerMachine_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_ShimmerMachine_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1085922370");
    l0:SetConnections({
        -- Destroyed,
        [0] = self.f_box_LT01_030_ShimmerMachine_32_Destroyed,
    });
    self.box_SiloFlap_Breakable_57 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.SiloFlap_Breakable.debug.lua");
    l0 = self.box_SiloFlap_Breakable_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SiloFlap_Breakable_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1101331011");
    l0:SetConnections({
    });
    self.box_SoundMusicTriggerBox_97 = cbox:CreateBox("Domino/System/SoundMusicTrigger.lua");
    l0 = self.box_SoundMusicTriggerBox_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMusicTriggerBox_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1106608227");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundMusicTriggerBox_97_Started,
    });
    self.box_Delay_v5_47 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1111502827");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_47_TimeElapsed,
    });
    self.box_PlayDialog_v6_16 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1116290137");
    l0:SetConnections({
    });
    self.box_LT01_030_ParticleLoop_104 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_ParticleLoop.debug.lua");
    l0 = self.box_LT01_030_ParticleLoop_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_ParticleLoop_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1175268214");
    l0:SetConnections({
    });
    self.box_LT01_030_ParticleLoop_54 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_ParticleLoop.debug.lua");
    l0 = self.box_LT01_030_ParticleLoop_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_ParticleLoop_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1191082594");
    l0:SetConnections({
    });
    self.box_GunsForHireSystemModifier_86 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1215602230");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_86_Disabled,
    });
    self.box_Delay_v5_67 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1223456552");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_67_TimeElapsed,
    });
    self.box_EntityStatusListener_168 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_168;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_168");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1242961960");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_168_Loaded,
    });
    self.box_BinkPlayer_v6_124 = cbox:CreateBox("Domino/System/BinkPlayer_v6.lua");
    l0 = self.box_BinkPlayer_v6_124;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BinkPlayer_v6_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1290868107");
    l0:SetConnections({
        -- Played,
        [0] = self.f_box_BinkPlayer_v6_124_Played,
    });
    self.box_Reach_GoTo_v2_11 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v2.debug.lua");
    l0 = self.box_Reach_GoTo_v2_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1350263716");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_Reach_GoTo_v2_11_Success,
    });
    self.box_OnceOnly_v3_142 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_142;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_142");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1368254360");
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
                [0] = self.f_box_OnceOnly_v3_142_Out_0,
            },
            count = 2,
        },
    });
    self.box_VisibilityModifier_119 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1384002857");
    l0:SetConnections({
    });
    self.box_SpawnAI_26 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1398348843");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_26_Spawned,
    });
    self.box_Delay_v5_66 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1420066368");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_66_TimeElapsed,
    });
    self.box_MultipleOR_45 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1422749807");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 12,
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
    self.box_Delay_v5_46 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1430327549");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_46_TimeElapsed,
    });
    self.box_LT01_030_PA_Dialog_102 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1433798304");
    l0:SetConnections({
    });
    self.box_LT01_030_ShimmerMachine_10 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_ShimmerMachine.debug.lua");
    l0 = self.box_LT01_030_ShimmerMachine_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_ShimmerMachine_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1439861525");
    l0:SetConnections({
        -- Destroyed,
        [0] = self.f_box_LT01_030_ShimmerMachine_10_Destroyed,
    });
    self.box_LT01_030_ParticleLoop_103 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_ParticleLoop.debug.lua");
    l0 = self.box_LT01_030_ParticleLoop_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_ParticleLoop_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1465872393");
    l0:SetConnections({
    });
    self.box_SiloFlap_Scripted_84 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.SiloFlap_Scripted.debug.lua");
    l0 = self.box_SiloFlap_Scripted_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SiloFlap_Scripted_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1479523430");
    l0:SetConnections({
        -- FlapDownCalled,
        [0] = self.f_box_SiloFlap_Scripted_84_FlapDownCalled,
    });
    self.box_MultipleOR_143 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_143;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_143");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1483054192");
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
        [0] = self.f_box_MultipleOR_143_Out,
    });
    self.box_LT01_030_ParticleLoop_62 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_ParticleLoop.debug.lua");
    l0 = self.box_LT01_030_ParticleLoop_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_ParticleLoop_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1513908503");
    l0:SetConnections({
    });
    self.box_LT01_030_ShimmerMachine_12 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_ShimmerMachine.debug.lua");
    l0 = self.box_LT01_030_ShimmerMachine_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_ShimmerMachine_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1519533378");
    l0:SetConnections({
        -- Destroyed,
        [0] = self.f_box_LT01_030_ShimmerMachine_12_Destroyed,
    });
    self.box_EntityStatusListener_163 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_163;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_163");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1574368459");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_163_Loaded,
    });
    self.box_BinkPlayer_v6_157 = cbox:CreateBox("Domino/System/BinkPlayer_v6.lua");
    l0 = self.box_BinkPlayer_v6_157;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BinkPlayer_v6_157");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1598818195");
    l0:SetConnections({
        -- Played,
        [0] = self.f_box_BinkPlayer_v6_157_Played,
        -- Preloaded,
        [1] = self.f_box_BinkPlayer_v6_157_Preloaded,
    });
    self.box_SpawnAI_35 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1611607837");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_35_Spawned,
    });
    self.box_Delay_v5_51 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1622743737");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_51_TimeElapsed,
    });
    self.box_LT01_030_ParticleLoop_49 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_ParticleLoop.debug.lua");
    l0 = self.box_LT01_030_ParticleLoop_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_ParticleLoop_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1652752840");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_151 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_151;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_151");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1656947026");
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
    });
    self.box_Delay_v5_68 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1658608822");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_68_TimeElapsed,
    });
    self.box_MultipleOR_145 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_145;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_145");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1701183145");
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
    self.box_LT01_030_PA_Dialog_91 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1719390431");
    l0:SetConnections({
    });
    self.box_LT01_030_ShimmerMachine_34 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_ShimmerMachine.debug.lua");
    l0 = self.box_LT01_030_ShimmerMachine_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_ShimmerMachine_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1739365847");
    l0:SetConnections({
        -- Destroyed,
        [0] = self.f_box_LT01_030_ShimmerMachine_34_Destroyed,
    });
    self.box_SpawnAI_131 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_131;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_131");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1749780212");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_88 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1778830676");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_88_Enter,
    });
    self.box_LT01_030_PA_Dialog_89 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1789392408");
    l0:SetConnections({
    });
    self.box_LT01_030_ParticleLoop_50 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_ParticleLoop.debug.lua");
    l0 = self.box_LT01_030_ParticleLoop_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_ParticleLoop_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1790026034");
    l0:SetConnections({
    });
    self.box_LT01_030_ShimmerMachine_14 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_ShimmerMachine.debug.lua");
    l0 = self.box_LT01_030_ShimmerMachine_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_ShimmerMachine_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1807731871");
    l0:SetConnections({
        -- Destroyed,
        [0] = self.f_box_LT01_030_ShimmerMachine_14_Destroyed,
    });
    self.box_PlayDialog_v6_94 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1820275146");
    l0:SetConnections({
    });
    self.box_Delay_v5_117 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1826822832");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_117_TimeElapsed,
    });
    self.box_SoundMusicTriggerBox_133 = cbox:CreateBox("Domino/System/SoundMusicTrigger.lua");
    l0 = self.box_SoundMusicTriggerBox_133;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMusicTriggerBox_133");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1827984271");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundMusicTriggerBox_133_Started,
    });
    self.box_LT01_030_ParticleLoop_93 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_ParticleLoop.debug.lua");
    l0 = self.box_LT01_030_ParticleLoop_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_ParticleLoop_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1846101755");
    l0:SetConnections({
    });
    self.box_LT01_030_PA_Dialog_74 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1884917409");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_136 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_136;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_136");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1892719366");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_136_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_136_FinishedInterrupted,
    });
    self.box_LT01_030_PA_Dialog_73 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_PA_Dialog.debug.lua");
    l0 = self.box_LT01_030_PA_Dialog_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_Dialog_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1910373645");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_39 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1924172889");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_39_Enter,
    });
    self.box_LT01_030_PA_RandomComputer_58 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_PA_RandomComputer.debug.lua");
    l0 = self.box_LT01_030_PA_RandomComputer_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_PA_RandomComputer_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|2021858030");
    l0:SetConnections({
    });
    self.box_SpawnAI_23 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|2026745038");
    l0:SetConnections({
    });
    self.box_MultipleOR_152 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_152;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_152");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|2034061804");
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
        [0] = self.f_box_MultipleOR_152_Out,
    });
    self.box_EntityStatusListener_160 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_160;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_160");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|2047847603");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_160_Loaded,
    });
    self.box_PostWWiseEventSetState_132 = cbox:CreateBox("Domino/System/PostWWiseEventSetState.lua");
    l0 = self.box_PostWWiseEventSetState_132;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostWWiseEventSetState_132");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|2051422766");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_165 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_165;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_165");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|2063799582");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_165_Loaded,
    });
    self.box_Gate_v3_177 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_177;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_177");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|2080169663");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_177_Out,
    });
    self.box_PlayDialog_v6_19 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|2085886041");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_19_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_19_FinishedInterrupted,
    });
    self.box_SpawnAI_173 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_173;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_173");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|2087998271");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_173_Spawned,
    });
    self.box_LT01_030_ParticleLoop_56 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_ParticleLoop.debug.lua");
    l0 = self.box_LT01_030_ParticleLoop_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_ParticleLoop_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|2089987538");
    l0:SetConnections({
    });
    self.box_LT01_030_ShimmerMachine_30 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_ShimmerMachine.debug.lua");
    l0 = self.box_LT01_030_ShimmerMachine_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_ShimmerMachine_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|2094930174");
    l0:SetConnections({
        -- Destroyed,
        [0] = self.f_box_LT01_030_ShimmerMachine_30_Destroyed,
    });
    self.box_ProximityTrigger_v2_85 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|2115211600");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_85_Enter,
    });
    self.box_LT01_030_ShimmerMachine_15 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.LT01_030_ShimmerMachine.debug.lua");
    l0 = self.box_LT01_030_ShimmerMachine_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT01_030_ShimmerMachine_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|2144676244");
    l0:SetConnections({
        -- Destroyed,
        [0] = self.f_box_LT01_030_ShimmerMachine_15_Destroyed,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|81097534", "81097534", "LT01_030_B40", "In", "box_ActivityAcknowledgeGate_1.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_Simple_Node_98_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_95();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1671256510", "1671256510", "LT01_030_B40", "box_Simple_Node_98.Out", "box_OutputOrder_v2_95.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_126();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1434664655", "1434664655", "LT01_030_B40", "box_Simple_Node_98.Out", "box_OutputOrder_v2_126.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_69();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|725007731", "725007731", "LT01_030_B40", "box_Simple_Node_98.Out", "box_OutputOrder_v2_69.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_60();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|341056122", "341056122", "LT01_030_B40", "box_Simple_Node_98.Out", "box_OutputOrder_v2_60.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_LT01_030_ComputerRoom_Barks_150();
    l0 = self.box_LT01_030_ComputerRoom_Barks_150;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|574555972", "574555972", "LT01_030_B40", "box_Simple_Node_98.Out", "box_LT01_030_ComputerRoom_Barks_150.Stop_ComputerRoomBarks", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop_ComputerRoomBarks
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_184_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_BinkPlayer_v6_157();
    l0 = self.box_BinkPlayer_v6_157;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1466661322", "1466661322", "LT01_030_B40", "box_Simple_Node_184.Out", "box_BinkPlayer_v6_157.Preload", clone:GetLuaBox(), l0:GetLuaBox());
    -- Preload
    l0:Exec(1, params);
    params = self:OnEnter_box_BinkPlayer_v6_112();
    l0 = self.box_BinkPlayer_v6_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1059241964", "1059241964", "LT01_030_B40", "box_Simple_Node_184.Out", "box_BinkPlayer_v6_112.Preload", clone:GetLuaBox(), l0:GetLuaBox());
    -- Preload
    l0:Exec(1, params);
    params = self:OnEnter_box_BinkPlayer_v6_124();
    l0 = self.box_BinkPlayer_v6_124;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1122655894", "1122655894", "LT01_030_B40", "box_Simple_Node_184.Out", "box_BinkPlayer_v6_124.Preload", clone:GetLuaBox(), l0:GetLuaBox());
    -- Preload
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_99_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_53();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|425273294", "425273294", "LT01_030_B40", "box_Simple_Node_99.Out", "box_OutputOrder_v2_53.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_183_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_149();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|193182788", "193182788", "LT01_030_B40", "box_Simple_Node_183.Out", "box_OutputOrder_v2_149.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_164_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_162();
    l0 = self.box_EntityStatusListener_164;
    l1 = self.box_EntityStatusListener_162;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1347092123", "1347092123", "LT01_030_B40", "box_EntityStatusListener_164.Loaded", "box_EntityStatusListener_162.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_CharacterLoadedIdListener_28_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_28_LoadedIdReceived();
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = self.box_CharacterLoadedIdListener_28;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|279571728", "279571728", "LT01_030_B40", "box_CharacterLoadedIdListener_28.LoadedIdReceived", "box_OutputOrder_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_123_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_122();
    l0 = self.box_Delay_v5_123;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|2041207853", "2041207853", "LT01_030_B40", "box_Delay_v5_123.TimeElapsed", "box_ParticleSystem_v3_122.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_69_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT01_030_ParticleLoop_61();
    l0 = self.box_LT01_030_ParticleLoop_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1107662724", "1107662724", "LT01_030_B40", "box_OutputOrder_v2_69.Out", "box_LT01_030_ParticleLoop_61.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_69_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT01_030_ParticleLoop_104();
    l0 = self.box_LT01_030_ParticleLoop_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1665598984", "1665598984", "LT01_030_B40", "box_OutputOrder_v2_69.Out", "box_LT01_030_ParticleLoop_104.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_69_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT01_030_ParticleLoop_93();
    l0 = self.box_LT01_030_ParticleLoop_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1853815482", "1853815482", "LT01_030_B40", "box_OutputOrder_v2_69.Out", "box_LT01_030_ParticleLoop_93.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_69_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT01_030_ParticleLoop_62();
    l0 = self.box_LT01_030_ParticleLoop_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1096331949", "1096331949", "LT01_030_B40", "box_OutputOrder_v2_69.Out", "box_LT01_030_ParticleLoop_62.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_Brick_Destroy_ObjectsVehicles_MAIN_9_Disabled()
    local l0, l1;
    l0 = self.box_Brick_Destroy_ObjectsVehicles_MAIN_9;
    l1 = self.box_MultipleOR_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|347470091", "347470091", "LT01_030_B40", "box_Brick_Destroy_ObjectsVehicles_MAIN_9.Disabled", "box_MultipleOR_107.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Brick_Destroy_ObjectsVehicles_MAIN_9_ObjectDestroyed()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_171();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_MAIN_9;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|724394652", "724394652", "LT01_030_B40", "box_Brick_Destroy_ObjectsVehicles_MAIN_9.ObjectDestroyed", "box_IntegerArithmetics_v2_171.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Destroy_ObjectsVehicles_MAIN_9_Success()
    local l0, l1;
    l0 = self.box_Brick_Destroy_ObjectsVehicles_MAIN_9;
    l1 = self.box_MultipleOR_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1356908893", "1356908893", "LT01_030_B40", "box_Brick_Destroy_ObjectsVehicles_MAIN_9.Success", "box_MultipleOR_107.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_LT01_030_ShimmerMachine_31_Destroyed()
    local l0, l1;
    l0 = self.box_LT01_030_ShimmerMachine_31;
    l1 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1748497349", "1748497349", "LT01_030_B40", "box_LT01_030_ShimmerMachine_31.Destroyed", "box_MultipleOR_45.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetTimeOfDay_130();
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|384053004", "384053004", "LT01_030_B40", "box_OutputOrder_v2_18.Out", "box_SetTimeOfDay_130.SetTimeOfDay", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeOfDay
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_135();
    l0 = self.box_PlayDialog_v6_135;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1361217924", "1361217924", "LT01_030_B40", "box_OutputOrder_v2_18.Out", "box_PlayDialog_v6_135.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|2092398559", "2092398559", "LT01_030_B40", "box_OutputOrder_v2_18.Out", "box_OutputOrder_v2_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_99();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|853468657", "853468657", "LT01_030_B40", "box_OutputOrder_v2_18.Out", "box_Simple_Node_99.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_184();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|731288837", "731288837", "LT01_030_B40", "box_OutputOrder_v2_18.Out", "box_Simple_Node_184.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_83();
    l0 = self.box_ProximityTrigger_v2_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|214992549", "214992549", "LT01_030_B40", "box_OutputOrder_v2_18.Out", "box_ProximityTrigger_v2_83.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_24();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|745673456", "745673456", "LT01_030_B40", "box_OutputOrder_v2_18.Out", "box_Simple_Node_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_Custom_36();
    l0 = self.box_ExitZoneWarningListener_Custom_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1690002063", "1690002063", "LT01_030_B40", "box_OutputOrder_v2_18.Out", "box_ExitZoneWarningListener_Custom_36.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_182();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|482806460", "482806460", "LT01_030_B40", "box_OutputOrder_v2_18.Out", "box_UseContextualActionModifier_v3_182.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SiloFlap_Scripted_77_FlapDownCalled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_66();
    l0 = self.box_SiloFlap_Scripted_77;
    l1 = self.box_Delay_v5_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1413103576", "1413103576", "LT01_030_B40", "box_SiloFlap_Scripted_77.FlapDownCalled", "box_Delay_v5_66.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Simple_Node_140_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_141();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|887301697", "887301697", "LT01_030_B40", "box_Simple_Node_140.Out", "box_OutputOrder_v2_141.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_78_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_65();
    l0 = self.box_ProximityTrigger_v2_78;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|927202897", "927202897", "LT01_030_B40", "box_ProximityTrigger_v2_78.Enter", "box_OutputOrder_v2_65.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_43_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_LT01_030_RumbleBox_113;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|2024319387", "2024319387", "LT01_030_B40", "box_OutputOrder_v2_43.Out", "box_LT01_030_RumbleBox_113.Trigger_OneHighRumble", clone:GetLuaBox(), l0:GetLuaBox());
    -- Trigger_OneHighRumble
    l0:Exec(4, {
    });
end;

function export:f_box_OutputOrder_v2_43_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_122();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|820621669", "820621669", "LT01_030_B40", "box_OutputOrder_v2_43.Out", "box_ParticleSystem_v3_122.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_LT01_030_PA_Dialog_100_Out()
    local l0, l1;
    l0 = self.box_LT01_030_PA_Dialog_100;
    l1 = self.box_MultipleOR_181;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1158669129", "1158669129", "LT01_030_B40", "box_LT01_030_PA_Dialog_100.Out", "box_MultipleOR_181.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IntegerArithmetics_v2_171_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_171_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_172();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|262781368", "262781368", "LT01_030_B40", "box_IntegerArithmetics_v2_171.Out", "box_Compare_Integers_172.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SiloFlap_Scripted_87_FlapDownCalled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_158();
    l0 = self.box_SiloFlap_Scripted_87;
    l1 = self.box_EntityStatusListener_158;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|550462958", "550462958", "LT01_030_B40", "box_SiloFlap_Scripted_87.FlapDownCalled", "box_EntityStatusListener_158.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_83_Enabled()
    self:OnExit_box_ProximityTrigger_v2_83_Enabled();
end;

function export:f_box_ProximityTrigger_v2_83_Enter()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v2_83_Enter();
    params = self:OnEnter_box_RemoveEntity_v2_64();
    l0 = self.box_ProximityTrigger_v2_83;
    l1 = self.box_RemoveEntity_v2_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1354396162", "1354396162", "LT01_030_B40", "box_ProximityTrigger_v2_83.Enter", "box_RemoveEntity_v2_64.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_83_Leave()
    self:OnExit_box_ProximityTrigger_v2_83_Leave();
end;

function export:f_box_ProximityTrigger_v2_83_OnEmpty()
    self:OnExit_box_ProximityTrigger_v2_83_OnEmpty();
end;

function export:f_box_ProximityTrigger_v2_83_OnOccupied()
    self:OnExit_box_ProximityTrigger_v2_83_OnOccupied();
end;

function export:f_box_ProximityTrigger_v2_83_Use()
    self:OnExit_box_ProximityTrigger_v2_83_Use();
end;

function export:f_box_EntityStatusListener_162_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_165();
    l0 = self.box_EntityStatusListener_162;
    l1 = self.box_EntityStatusListener_165;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1574688521", "1574688521", "LT01_030_B40", "box_EntityStatusListener_162.Loaded", "box_EntityStatusListener_165.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_LT01_030_ShimmerMachine_8_Destroyed()
    local l0, l1;
    l0 = self.box_LT01_030_ShimmerMachine_8;
    l1 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|835596847", "835596847", "LT01_030_B40", "box_LT01_030_ShimmerMachine_8.Destroyed", "box_MultipleOR_45.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 11);
end;

function export:f_box_PlayDialog_v6_135_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_135;
    l1 = self.box_MultipleOR_145;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|2120339182", "2120339182", "LT01_030_B40", "box_PlayDialog_v6_135.Finished", "box_MultipleOR_145.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_135_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_135;
    l1 = self.box_MultipleOR_145;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|295553941", "295553941", "LT01_030_B40", "box_PlayDialog_v6_135.FinishedInterrupted", "box_MultipleOR_145.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_175_Out()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_102();
    l0 = self.box_Gate_v3_175;
    l1 = self.box_LT01_030_PA_Dialog_102;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|2001645673", "2001645673", "LT01_030_B40", "box_Gate_v3_175.Out", "box_LT01_030_PA_Dialog_102.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_167_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_167;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|87772033", "87772033", "LT01_030_B40", "box_EntityStatusListener_167.Loaded", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Switch_44_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_136();
    l0 = self.box_Switch_44;
    l1 = self.box_PlayDialog_v6_136;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|262875021", "262875021", "LT01_030_B40", "box_Switch_44.Output", "box_PlayDialog_v6_136.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_44_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_175();
    l0 = self.box_Switch_44;
    l1 = self.box_Gate_v3_175;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|109554152", "109554152", "LT01_030_B40", "box_Switch_44.Output", "box_Gate_v3_175.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Switch_44_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_91();
    l0 = self.box_Switch_44;
    l1 = self.box_LT01_030_PA_Dialog_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|210884908", "210884908", "LT01_030_B40", "box_Switch_44.Output", "box_LT01_030_PA_Dialog_91.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Switch_44_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_73();
    l0 = self.box_Switch_44;
    l1 = self.box_LT01_030_PA_Dialog_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|2004236904", "2004236904", "LT01_030_B40", "box_Switch_44.Output", "box_LT01_030_PA_Dialog_73.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Switch_44_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_138();
    l0 = self.box_Switch_44;
    l1 = self.box_PlayDialog_v6_138;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1477792863", "1477792863", "LT01_030_B40", "box_Switch_44.Output", "box_PlayDialog_v6_138.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_44_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_177();
    l0 = self.box_Switch_44;
    l1 = self.box_Gate_v3_177;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|558270100", "558270100", "LT01_030_B40", "box_Switch_44.Output", "box_Gate_v3_177.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Switch_44_Output_8()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_75();
    l0 = self.box_Switch_44;
    l1 = self.box_LT01_030_PA_Dialog_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|236607418", "236607418", "LT01_030_B40", "box_Switch_44.Output", "box_LT01_030_PA_Dialog_75.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Switch_44_Output_10()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_89();
    l0 = self.box_Switch_44;
    l1 = self.box_LT01_030_PA_Dialog_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1539142822", "1539142822", "LT01_030_B40", "box_Switch_44.Output", "box_LT01_030_PA_Dialog_89.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Simple_Node_24_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_25();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|2030995539", "2030995539", "LT01_030_B40", "box_Simple_Node_24.Out", "box_OutputOrder_v2_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ExitZoneWarningListener_Custom_36_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_37();
    l0 = self.box_ExitZoneWarningListener_Custom_36;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|182116253", "182116253", "LT01_030_B40", "box_ExitZoneWarningListener_Custom_36.FailingZoneEntered", "box_ActivityRetry_37.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_107_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = self.box_MultipleOR_107;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|993105303", "993105303", "LT01_030_B40", "box_MultipleOR_107.Out", "box_OutputOrder_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT01_030_ShimmerMachine_17_Destroyed()
    local l0, l1;
    l0 = self.box_LT01_030_ShimmerMachine_17;
    l1 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1303782731", "1303782731", "LT01_030_B40", "box_LT01_030_ShimmerMachine_17.Destroyed", "box_MultipleOR_45.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_40_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_134();
    l0 = self.box_ProximityTrigger_v2_40;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1118895455", "1118895455", "LT01_030_B40", "box_ProximityTrigger_v2_40.Enter", "box_OutputOrder_v2_134.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_169_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_167();
    l0 = self.box_EntityStatusListener_169;
    l1 = self.box_EntityStatusListener_167;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1018141451", "1018141451", "LT01_030_B40", "box_EntityStatusListener_169.Loaded", "box_EntityStatusListener_167.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_181_Out()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_RandomComputer_58();
    l0 = self.box_MultipleOR_181;
    l1 = self.box_LT01_030_PA_RandomComputer_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1020002127", "1020002127", "LT01_030_B40", "box_MultipleOR_181.Out", "box_LT01_030_PA_RandomComputer_58.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_LT01_030_ShimmerMachine_29_Destroyed()
    local l0, l1;
    l0 = self.box_LT01_030_ShimmerMachine_29;
    l1 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1544640572", "1544640572", "LT01_030_B40", "box_LT01_030_ShimmerMachine_29.Destroyed", "box_MultipleOR_45.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_PlayDialog_v6_138_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_138;
    l1 = self.box_MultipleOR_178;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|158102243", "158102243", "LT01_030_B40", "box_PlayDialog_v6_138.Finished", "box_MultipleOR_178.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_138_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_138;
    l1 = self.box_MultipleOR_178;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|286589896", "286589896", "LT01_030_B40", "box_PlayDialog_v6_138.FinishedInterrupted", "box_MultipleOR_178.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_178_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_177();
    l0 = self.box_MultipleOR_178;
    l1 = self.box_Gate_v3_177;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1635581017", "1635581017", "LT01_030_B40", "box_MultipleOR_178.Out", "box_Gate_v3_177.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_EntityStatusListener_159_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_160();
    l0 = self.box_EntityStatusListener_159;
    l1 = self.box_EntityStatusListener_160;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1311951560", "1311951560", "LT01_030_B40", "box_EntityStatusListener_159.Loaded", "box_EntityStatusListener_160.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_176_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_175();
    l0 = self.box_MultipleOR_176;
    l1 = self.box_Gate_v3_175;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1185829840", "1185829840", "LT01_030_B40", "box_MultipleOR_176.Out", "box_Gate_v3_175.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_ActivityForceAndLockTracking_170_Enabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    local clone = l0;
    l0 = self.box_ActivityInitialized_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|58235512", "58235512", "LT01_030_B40", "box_ActivityForceAndLockTracking_170.Enabled", "box_ActivityInitialized_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_MultipleOR_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityMiscInfoModifier_v2_101();
    l0 = self.box_MultipleOR_5;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1248408490", "1248408490", "LT01_030_B40", "box_MultipleOR_5.Out", "box_ActivityMiscInfoModifier_v2_101.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_166_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_169();
    l0 = self.box_EntityStatusListener_166;
    l1 = self.box_EntityStatusListener_169;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1025485132", "1025485132", "LT01_030_B40", "box_EntityStatusListener_166.Loaded", "box_EntityStatusListener_169.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_22_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_22;
    l1 = self.box_MultipleOR_152;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1406984091", "1406984091", "LT01_030_B40", "box_SpawnAI_22.Spawned", "box_MultipleOR_152.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SiloFlap_Scripted_80_FlapDownCalled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_68();
    l0 = self.box_SiloFlap_Scripted_80;
    l1 = self.box_Delay_v5_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|672096783", "672096783", "LT01_030_B40", "box_SiloFlap_Scripted_80.FlapDownCalled", "box_Delay_v5_68.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ActivityAcknowledgeGate_1_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_1;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|2034073946", "2034073946", "LT01_030_B40", "box_ActivityAcknowledgeGate_1.Acknowledged", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_1_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_SiloFlap_Scripted_87();
    l0 = self.box_ActivityAcknowledgeGate_1;
    l1 = self.box_SiloFlap_Scripted_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1354442221", "1354442221", "LT01_030_B40", "box_ActivityAcknowledgeGate_1.Reloaded", "box_SiloFlap_Scripted_87.Lower", l0:GetLuaBox(), l1:GetLuaBox());
    -- Lower
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_158_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_159();
    l0 = self.box_EntityStatusListener_158;
    l1 = self.box_EntityStatusListener_159;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|382011271", "382011271", "LT01_030_B40", "box_EntityStatusListener_158.Loaded", "box_EntityStatusListener_159.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_179_Out()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_100();
    l0 = self.box_MultipleOR_179;
    l1 = self.box_LT01_030_PA_Dialog_100;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1809216202", "1809216202", "LT01_030_B40", "box_MultipleOR_179.Out", "box_LT01_030_PA_Dialog_100.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_SiloFlap_Scripted_81_FlapDownCalled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_51();
    l0 = self.box_SiloFlap_Scripted_81;
    l1 = self.box_Delay_v5_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|509242400", "509242400", "LT01_030_B40", "box_SiloFlap_Scripted_81.FlapDownCalled", "box_Delay_v5_51.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_GetPlayerGroup_v2_2_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_2_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_28();
    l0 = self.box_CharacterLoadedIdListener_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1244294230", "1244294230", "LT01_030_B40", "box_GetPlayerGroup_v2_2.Out", "box_CharacterLoadedIdListener_28.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_129_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_43();
    l0 = self.box_ProximityTrigger_v2_129;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|438128898", "438128898", "LT01_030_B40", "box_ProximityTrigger_v2_129.Enter", "box_OutputOrder_v2_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_139_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_139;
    l1 = self.box_MultipleOR_143;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1389713356", "1389713356", "LT01_030_B40", "box_ProximityTrigger_v2_139.Enter", "box_MultipleOR_143.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ActivityInitialized_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GunsForHireSystemModifier_86();
    l0 = self.box_ActivityInitialized_3;
    l1 = self.box_GunsForHireSystemModifier_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1839042248", "1839042248", "LT01_030_B40", "box_ActivityInitialized_3.Out", "box_GunsForHireSystemModifier_86.DisableGFHSystem", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisableGFHSystem
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_60_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT01_030_ParticleLoop_49();
    l0 = self.box_LT01_030_ParticleLoop_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|676329181", "676329181", "LT01_030_B40", "box_OutputOrder_v2_60.Out", "box_LT01_030_ParticleLoop_49.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_60_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT01_030_ParticleLoop_50();
    l0 = self.box_LT01_030_ParticleLoop_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1441262358", "1441262358", "LT01_030_B40", "box_OutputOrder_v2_60.Out", "box_LT01_030_ParticleLoop_50.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_60_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT01_030_ParticleLoop_52();
    l0 = self.box_LT01_030_ParticleLoop_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|400168595", "400168595", "LT01_030_B40", "box_OutputOrder_v2_60.Out", "box_LT01_030_ParticleLoop_52.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_60_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT01_030_ParticleLoop_54();
    l0 = self.box_LT01_030_ParticleLoop_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|416585505", "416585505", "LT01_030_B40", "box_OutputOrder_v2_60.Out", "box_LT01_030_ParticleLoop_54.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_60_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT01_030_ParticleLoop_56();
    l0 = self.box_LT01_030_ParticleLoop_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|208209065", "208209065", "LT01_030_B40", "box_OutputOrder_v2_60.Out", "box_LT01_030_ParticleLoop_56.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_LT01_030_ShimmerMachine_27_Destroyed()
    local l0, l1;
    l0 = self.box_LT01_030_ShimmerMachine_27;
    l1 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|45794088", "45794088", "LT01_030_B40", "box_LT01_030_ShimmerMachine_27.Destroyed", "box_MultipleOR_45.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_161_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_164();
    l0 = self.box_EntityStatusListener_161;
    l1 = self.box_EntityStatusListener_164;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1019660715", "1019660715", "LT01_030_B40", "box_EntityStatusListener_161.Loaded", "box_EntityStatusListener_164.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_137_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_137;
    l1 = self.box_MultipleOR_143;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1902210229", "1902210229", "LT01_030_B40", "box_ProximityTrigger_v2_137.Enter", "box_MultipleOR_143.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_LT01_030_ShimmerMachine_32_Destroyed()
    local l0, l1;
    l0 = self.box_LT01_030_ShimmerMachine_32;
    l1 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|999074107", "999074107", "LT01_030_B40", "box_LT01_030_ShimmerMachine_32.Destroyed", "box_MultipleOR_45.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_SoundMusicTriggerBox_97_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PostWWiseEventSetState_96();
    l0 = self.box_SoundMusicTriggerBox_97;
    l1 = self.box_PostWWiseEventSetState_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|26611345", "26611345", "LT01_030_B40", "box_SoundMusicTriggerBox_97.Started", "box_PostWWiseEventSetState_96.SetState", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetState
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_47_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_38();
    l0 = self.box_Delay_v5_47;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1615196146", "1615196146", "LT01_030_B40", "box_Delay_v5_47.TimeElapsed", "box_ParticleSystem_v3_38.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityMiscInfoModifier_v2_101_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityForceAndLockTracking_170();
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1374329905", "1374329905", "LT01_030_B40", "box_ActivityMiscInfoModifier_v2_101.Out", "box_ActivityForceAndLockTracking_170.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_95_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_39();
    l0 = self.box_ProximityTrigger_v2_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1950008401", "1950008401", "LT01_030_B40", "box_OutputOrder_v2_95.Out", "box_ProximityTrigger_v2_39.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_95_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_78();
    l0 = self.box_ProximityTrigger_v2_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|671684110", "671684110", "LT01_030_B40", "box_OutputOrder_v2_95.Out", "box_ProximityTrigger_v2_78.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GunsForHireSystemModifier_86_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_2();
    l0 = self.box_GunsForHireSystemModifier_86;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|291063572", "291063572", "LT01_030_B40", "box_GunsForHireSystemModifier_86.Disabled", "box_GetPlayerGroup_v2_2.FriendlyPlayers", l0:GetLuaBox(), l1:GetLuaBox());
    -- FriendlyPlayers
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_67_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SiloFlap_Scripted_79();
    l0 = self.box_Delay_v5_67;
    l1 = self.box_SiloFlap_Scripted_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|2113562739", "2113562739", "LT01_030_B40", "box_Delay_v5_67.TimeElapsed", "box_SiloFlap_Scripted_79.Lower", l0:GetLuaBox(), l1:GetLuaBox());
    -- Lower
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_134_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SiloFlap_Scripted_77();
    l0 = self.box_SiloFlap_Scripted_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|2005084335", "2005084335", "LT01_030_B40", "box_OutputOrder_v2_134.Out", "box_SiloFlap_Scripted_77.Lower", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lower
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_134_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_16();
    l0 = self.box_PlayDialog_v6_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1209176107", "1209176107", "LT01_030_B40", "box_OutputOrder_v2_134.Out", "box_PlayDialog_v6_16.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_6_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SiloFlap_Scripted_80();
    l0 = self.box_SiloFlap_Scripted_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|2006827911", "2006827911", "LT01_030_B40", "box_OutputOrder_v2_6.Out", "box_SiloFlap_Scripted_80.Lower", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lower
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_23();
    l0 = self.box_SpawnAI_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|545617139", "545617139", "LT01_030_B40", "box_OutputOrder_v2_6.Out", "box_SpawnAI_23.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_6_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_146();
    l0 = self.box_PlayDialog_v6_146;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|825388000", "825388000", "LT01_030_B40", "box_OutputOrder_v2_6.Out", "box_PlayDialog_v6_146.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_168_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_166();
    l0 = self.box_EntityStatusListener_168;
    l1 = self.box_EntityStatusListener_166;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1910102396", "1910102396", "LT01_030_B40", "box_EntityStatusListener_168.Loaded", "box_EntityStatusListener_166.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_BinkPlayer_v6_124_Played()
    local params, l0, l1;
    params = self:OnEnter_box_BinkPlayer_v6_112();
    l0 = self.box_BinkPlayer_v6_124;
    l1 = self.box_BinkPlayer_v6_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1065058998", "1065058998", "LT01_030_B40", "box_BinkPlayer_v6_124.Played", "box_BinkPlayer_v6_112.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_126_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT01_030_ParticleLoop_125();
    l0 = self.box_LT01_030_ParticleLoop_125;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1871890028", "1871890028", "LT01_030_B40", "box_OutputOrder_v2_126.Out", "box_LT01_030_ParticleLoop_125.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_126_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT01_030_ParticleLoop_103();
    l0 = self.box_LT01_030_ParticleLoop_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1723453546", "1723453546", "LT01_030_B40", "box_OutputOrder_v2_126.Out", "box_LT01_030_ParticleLoop_103.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_126_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT01_030_ParticleLoop_127();
    l0 = self.box_LT01_030_ParticleLoop_127;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|989225585", "989225585", "LT01_030_B40", "box_OutputOrder_v2_126.Out", "box_LT01_030_ParticleLoop_127.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_126_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT01_030_ParticleLoop_106();
    l0 = self.box_LT01_030_ParticleLoop_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|256672336", "256672336", "LT01_030_B40", "box_OutputOrder_v2_126.Out", "box_LT01_030_ParticleLoop_106.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_116_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_117();
    l0 = self.box_Delay_v5_117;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1161343738", "1161343738", "LT01_030_B40", "box_MissionBlockLayer_116.Disabled", "box_Delay_v5_117.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_42();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1355695460", "1355695460", "LT01_030_B40", "box_OutputOrder_v2_13.Out", "box_Simple_Node_42.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_71();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|771948148", "771948148", "LT01_030_B40", "box_OutputOrder_v2_13.Out", "box_Simple_Node_71.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_128();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|145074922", "145074922", "LT01_030_B40", "box_OutputOrder_v2_13.Out", "box_MissionBlockLayer_128.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_140();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|2109677141", "2109677141", "LT01_030_B40", "box_OutputOrder_v2_13.Out", "box_Simple_Node_140.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMusicTriggerBox_97();
    l0 = self.box_SoundMusicTriggerBox_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|466302801", "466302801", "LT01_030_B40", "box_OutputOrder_v2_13.Out", "box_SoundMusicTriggerBox_97.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_Reach_GoTo_v2_11_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_115();
    l0 = self.box_Reach_GoTo_v2_11;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1283519199", "1283519199", "LT01_030_B40", "box_Reach_GoTo_v2_11.Success", "box_OutputOrder_v2_115.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_142_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_21();
    l0 = self.box_OnceOnly_v3_142;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1052431934", "1052431934", "LT01_030_B40", "box_OnceOnly_v3_142.Out", "box_OutputOrder_v2_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_26_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_26;
    l1 = self.box_MultipleOR_152;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1360136518", "1360136518", "LT01_030_B40", "box_SpawnAI_26.Spawned", "box_MultipleOR_152.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_66_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SiloFlap_Scripted_81();
    l0 = self.box_Delay_v5_66;
    l1 = self.box_SiloFlap_Scripted_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1705849185", "1705849185", "LT01_030_B40", "box_Delay_v5_66.TimeElapsed", "box_SiloFlap_Scripted_81.Lower", l0:GetLuaBox(), l1:GetLuaBox());
    -- Lower
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_45_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_44();
    l0 = self.box_MultipleOR_45;
    l1 = self.box_Switch_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1713700142", "1713700142", "LT01_030_B40", "box_MultipleOR_45.Out", "box_Switch_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_122_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_123();
    l0 = self.box_Delay_v5_123;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|845774745", "845774745", "LT01_030_B40", "box_ParticleSystem_v3_122.Started", "box_Delay_v5_123.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_46_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_48();
    l0 = self.box_Delay_v5_46;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1245458952", "1245458952", "LT01_030_B40", "box_Delay_v5_46.TimeElapsed", "box_ParticleSystem_v3_48.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT01_030_ShimmerMachine_10_Destroyed()
    local l0, l1;
    l0 = self.box_LT01_030_ShimmerMachine_10;
    l1 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1004048534", "1004048534", "LT01_030_B40", "box_LT01_030_ShimmerMachine_10.Destroyed", "box_MultipleOR_45.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 9);
end;

function export:f_box_SiloFlap_Scripted_84_FlapDownCalled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_67();
    l0 = self.box_SiloFlap_Scripted_84;
    l1 = self.box_Delay_v5_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|2052701413", "2052701413", "LT01_030_B40", "box_SiloFlap_Scripted_84.FlapDownCalled", "box_Delay_v5_67.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_143_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_143;
    l1 = self.box_OnceOnly_v3_142;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1872901028", "1872901028", "LT01_030_B40", "box_MultipleOR_143.Out", "box_OnceOnly_v3_142.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_92_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SiloFlap_Scripted_41();
    l0 = self.box_SiloFlap_Scripted_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1917877220", "1917877220", "LT01_030_B40", "box_OutputOrder_v2_92.Out", "box_SiloFlap_Scripted_41.Lower", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lower
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_92_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_94();
    l0 = self.box_PlayDialog_v6_94;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|239364466", "239364466", "LT01_030_B40", "box_OutputOrder_v2_92.Out", "box_PlayDialog_v6_94.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_LT01_030_ShimmerMachine_12_Destroyed()
    local l0, l1;
    l0 = self.box_LT01_030_ShimmerMachine_12;
    l1 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|788749274", "788749274", "LT01_030_B40", "box_LT01_030_ShimmerMachine_12.Destroyed", "box_MultipleOR_45.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 10);
end;

function export:f_box_OutputOrder_v2_63_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_88();
    l0 = self.box_ProximityTrigger_v2_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1903819044", "1903819044", "LT01_030_B40", "box_OutputOrder_v2_63.Out", "box_ProximityTrigger_v2_88.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_63_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_40();
    l0 = self.box_ProximityTrigger_v2_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|46964547", "46964547", "LT01_030_B40", "box_OutputOrder_v2_63.Out", "box_ProximityTrigger_v2_40.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_63_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_85();
    l0 = self.box_ProximityTrigger_v2_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|211428887", "211428887", "LT01_030_B40", "box_OutputOrder_v2_63.Out", "box_ProximityTrigger_v2_85.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_63_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_129();
    l0 = self.box_ProximityTrigger_v2_129;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1544549899", "1544549899", "LT01_030_B40", "box_OutputOrder_v2_63.Out", "box_ProximityTrigger_v2_129.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_42_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_33();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|2131894646", "2131894646", "LT01_030_B40", "box_Simple_Node_42.Out", "box_OutputOrder_v2_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_163_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_168();
    l0 = self.box_EntityStatusListener_163;
    l1 = self.box_EntityStatusListener_168;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|916758130", "916758130", "LT01_030_B40", "box_EntityStatusListener_163.Loaded", "box_EntityStatusListener_168.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_BinkPlayer_v6_157_Played()
    local params, l0, l1;
    params = self:OnEnter_box_BinkPlayer_v6_124();
    l0 = self.box_BinkPlayer_v6_157;
    l1 = self.box_BinkPlayer_v6_124;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|60243630", "60243630", "LT01_030_B40", "box_BinkPlayer_v6_157.Played", "box_BinkPlayer_v6_124.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_BinkPlayer_v6_157_Preloaded()
    local params, l0;
    params = self:OnEnter_box_BinkPlayer_v6_157();
    l0 = self.box_BinkPlayer_v6_157;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1719047800", "1719047800", "LT01_030_B40", "box_BinkPlayer_v6_157.Preloaded", "box_BinkPlayer_v6_157.Play", l0:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_SpawnAI_35_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_35;
    l1 = self.box_MultipleOR_152;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|242924475", "242924475", "LT01_030_B40", "box_SpawnAI_35.Spawned", "box_MultipleOR_152.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Delay_v5_51_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SiloFlap_Scripted_84();
    l0 = self.box_Delay_v5_51;
    l1 = self.box_SiloFlap_Scripted_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1647391016", "1647391016", "LT01_030_B40", "box_Delay_v5_51.TimeElapsed", "box_SiloFlap_Scripted_84.Lower", l0:GetLuaBox(), l1:GetLuaBox());
    -- Lower
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_151_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_ComputerRoom_Barks_150();
    l0 = self.box_OnceOnly_v3_151;
    l1 = self.box_LT01_030_ComputerRoom_Barks_150;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1095705066", "1095705066", "LT01_030_B40", "box_OnceOnly_v3_151.Out", "box_LT01_030_ComputerRoom_Barks_150.Start_ComputerRoomBarks", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start_ComputerRoomBarks
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_68_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SiloFlap_Scripted_82();
    l0 = self.box_Delay_v5_68;
    l1 = self.box_SiloFlap_Scripted_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|119439385", "119439385", "LT01_030_B40", "box_Delay_v5_68.TimeElapsed", "box_SiloFlap_Scripted_82.Lower", l0:GetLuaBox(), l1:GetLuaBox());
    -- Lower
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_21_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_90();
    l0 = self.box_PlayDialog_v6_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1326516847", "1326516847", "LT01_030_B40", "box_OutputOrder_v2_21.Out", "box_PlayDialog_v6_90.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_21_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_MAIN_9();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_MAIN_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|769394921", "769394921", "LT01_030_B40", "box_OutputOrder_v2_21.Out", "box_Brick_Destroy_ObjectsVehicles_MAIN_9.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_21_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityFact_153();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1120711677", "1120711677", "LT01_030_B40", "box_OutputOrder_v2_21.Out", "box_SetActivityFact_153.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_25_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_22();
    l0 = self.box_SpawnAI_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1875539637", "1875539637", "LT01_030_B40", "box_OutputOrder_v2_25.Out", "box_SpawnAI_22.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_25_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_26();
    l0 = self.box_SpawnAI_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1319267427", "1319267427", "LT01_030_B40", "box_OutputOrder_v2_25.Out", "box_SpawnAI_26.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_25_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_35();
    l0 = self.box_SpawnAI_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1330759475", "1330759475", "LT01_030_B40", "box_OutputOrder_v2_25.Out", "box_SpawnAI_35.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_145_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_144();
    l0 = self.box_MultipleOR_145;
    l1 = self.box_PlayDialog_v6_144;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1807651553", "1807651553", "LT01_030_B40", "box_MultipleOR_145.Out", "box_PlayDialog_v6_144.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_59_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_20();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1364220409", "1364220409", "LT01_030_B40", "box_OutputOrder_v2_59.Out", "box_MissionBlockLayer_20.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_59_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_118();
    l0 = self.box_SoundModifier_v2_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1044951220", "1044951220", "LT01_030_B40", "box_OutputOrder_v2_59.Out", "box_SoundModifier_v2_118.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_33_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT01_030_ShimmerMachine_27();
    l0 = self.box_LT01_030_ShimmerMachine_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|514276792", "514276792", "LT01_030_B40", "box_OutputOrder_v2_33.Out", "box_LT01_030_ShimmerMachine_27.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_33_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT01_030_ShimmerMachine_17();
    l0 = self.box_LT01_030_ShimmerMachine_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|925471144", "925471144", "LT01_030_B40", "box_OutputOrder_v2_33.Out", "box_LT01_030_ShimmerMachine_17.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_33_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT01_030_ShimmerMachine_30();
    l0 = self.box_LT01_030_ShimmerMachine_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|73145317", "73145317", "LT01_030_B40", "box_OutputOrder_v2_33.Out", "box_LT01_030_ShimmerMachine_30.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_33_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT01_030_ShimmerMachine_29();
    l0 = self.box_LT01_030_ShimmerMachine_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1016931246", "1016931246", "LT01_030_B40", "box_OutputOrder_v2_33.Out", "box_LT01_030_ShimmerMachine_29.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_33_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT01_030_ShimmerMachine_32();
    l0 = self.box_LT01_030_ShimmerMachine_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|119992890", "119992890", "LT01_030_B40", "box_OutputOrder_v2_33.Out", "box_LT01_030_ShimmerMachine_32.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_33_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT01_030_ShimmerMachine_31();
    l0 = self.box_LT01_030_ShimmerMachine_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1991315951", "1991315951", "LT01_030_B40", "box_OutputOrder_v2_33.Out", "box_LT01_030_ShimmerMachine_31.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_33_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT01_030_ShimmerMachine_34();
    l0 = self.box_LT01_030_ShimmerMachine_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1094377595", "1094377595", "LT01_030_B40", "box_OutputOrder_v2_33.Out", "box_LT01_030_ShimmerMachine_34.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_33_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT01_030_ShimmerMachine_14();
    l0 = self.box_LT01_030_ShimmerMachine_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1080363842", "1080363842", "LT01_030_B40", "box_OutputOrder_v2_33.Out", "box_LT01_030_ShimmerMachine_14.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_33_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT01_030_ShimmerMachine_15();
    l0 = self.box_LT01_030_ShimmerMachine_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|415309769", "415309769", "LT01_030_B40", "box_OutputOrder_v2_33.Out", "box_LT01_030_ShimmerMachine_15.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_33_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT01_030_ShimmerMachine_10();
    l0 = self.box_LT01_030_ShimmerMachine_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1014982853", "1014982853", "LT01_030_B40", "box_OutputOrder_v2_33.Out", "box_LT01_030_ShimmerMachine_10.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_33_Out_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT01_030_ShimmerMachine_12();
    l0 = self.box_LT01_030_ShimmerMachine_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|43169418", "43169418", "LT01_030_B40", "box_OutputOrder_v2_33.Out", "box_LT01_030_ShimmerMachine_12.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_33_Out_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT01_030_ShimmerMachine_8();
    l0 = self.box_LT01_030_ShimmerMachine_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1272232811", "1272232811", "LT01_030_B40", "box_OutputOrder_v2_33.Out", "box_LT01_030_ShimmerMachine_8.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_LT01_030_ShimmerMachine_34_Destroyed()
    local l0, l1;
    l0 = self.box_LT01_030_ShimmerMachine_34;
    l1 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|282652798", "282652798", "LT01_030_B40", "box_LT01_030_ShimmerMachine_34.Destroyed", "box_MultipleOR_45.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 6);
end;

function export:f_box_Compare_Integers_172_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_173();
    l0 = self.box_SpawnAI_173;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|25338557", "25338557", "LT01_030_B40", "box_Compare_Integers_172.A_ge_B", "box_SpawnAI_173.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_88_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_92();
    l0 = self.box_ProximityTrigger_v2_88;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|592945547", "592945547", "LT01_030_B40", "box_ProximityTrigger_v2_88.Enter", "box_OutputOrder_v2_92.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT01_030_ShimmerMachine_14_Destroyed()
    local l0, l1;
    l0 = self.box_LT01_030_ShimmerMachine_14;
    l1 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|762670161", "762670161", "LT01_030_B40", "box_LT01_030_ShimmerMachine_14.Destroyed", "box_MultipleOR_45.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 7);
end;

function export:f_box_Delay_v5_117_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_59();
    l0 = self.box_Delay_v5_117;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1192916032", "1192916032", "LT01_030_B40", "box_Delay_v5_117.TimeElapsed", "box_OutputOrder_v2_59.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundMusicTriggerBox_133_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PostWWiseEventSetState_132();
    l0 = self.box_SoundMusicTriggerBox_133;
    l1 = self.box_PostWWiseEventSetState_132;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|525359029", "525359029", "LT01_030_B40", "box_SoundMusicTriggerBox_133.Started", "box_PostWWiseEventSetState_132.SetState", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetState
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_65_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_LT01_030_RumbleBox_111;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|121597982", "121597982", "LT01_030_B40", "box_OutputOrder_v2_65.Out", "box_LT01_030_RumbleBox_111.Trigger_OneHighRumble", clone:GetLuaBox(), l0:GetLuaBox());
    -- Trigger_OneHighRumble
    l0:Exec(4, {
    });
end;

function export:f_box_OutputOrder_v2_65_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_120();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|2129543861", "2129543861", "LT01_030_B40", "box_OutputOrder_v2_65.Out", "box_ParticleSystem_v3_120.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_65_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_47();
    l0 = self.box_Delay_v5_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|57723380", "57723380", "LT01_030_B40", "box_OutputOrder_v2_65.Out", "box_Delay_v5_47.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_65_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_46();
    l0 = self.box_Delay_v5_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|645785868", "645785868", "LT01_030_B40", "box_OutputOrder_v2_65.Out", "box_Delay_v5_46.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_136_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_136;
    l1 = self.box_MultipleOR_176;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1964746954", "1964746954", "LT01_030_B40", "box_PlayDialog_v6_136.Finished", "box_MultipleOR_176.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_136_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_136;
    l1 = self.box_MultipleOR_176;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|866211433", "866211433", "LT01_030_B40", "box_PlayDialog_v6_136.FinishedInterrupted", "box_MultipleOR_176.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_39_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_63();
    l0 = self.box_ProximityTrigger_v2_39;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|946064416", "946064416", "LT01_030_B40", "box_ProximityTrigger_v2_39.Enter", "box_OutputOrder_v2_63.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_141_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_137();
    l0 = self.box_ProximityTrigger_v2_137;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|210494687", "210494687", "LT01_030_B40", "box_OutputOrder_v2_141.Out", "box_ProximityTrigger_v2_137.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_141_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_139();
    l0 = self.box_ProximityTrigger_v2_139;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1650829377", "1650829377", "LT01_030_B40", "box_OutputOrder_v2_141.Out", "box_ProximityTrigger_v2_139.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_180_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_181;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|298365004", "298365004", "LT01_030_B40", "box_Simple_Node_180.Out", "box_MultipleOR_181.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_115_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_LT01_030_RumbleBox_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1638785823", "1638785823", "LT01_030_B40", "box_OutputOrder_v2_115.Out", "box_LT01_030_RumbleBox_114.Trigger_OneHighRumble", clone:GetLuaBox(), l0:GetLuaBox());
    -- Trigger_OneHighRumble
    l0:Exec(4, {
    });
end;

function export:f_box_OutputOrder_v2_115_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_183();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1115572100", "1115572100", "LT01_030_B40", "box_OutputOrder_v2_115.Out", "box_Simple_Node_183.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_115_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_4();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|64627298", "64627298", "LT01_030_B40", "box_OutputOrder_v2_115.Out", "box_ActivityEnd_4.EndSoftSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndSoftSave
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_53_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SiloFlap_Breakable_70();
    l0 = self.box_SiloFlap_Breakable_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1829817680", "1829817680", "LT01_030_B40", "box_OutputOrder_v2_53.Out", "box_SiloFlap_Breakable_70.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_53_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SiloFlap_Breakable_57();
    l0 = self.box_SiloFlap_Breakable_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|986817830", "986817830", "LT01_030_B40", "box_OutputOrder_v2_53.Out", "box_SiloFlap_Breakable_57.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_152_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_152;
    l1 = self.box_OnceOnly_v3_151;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|158329335", "158329335", "LT01_030_B40", "box_MultipleOR_152.Out", "box_OnceOnly_v3_151.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_160_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_161();
    l0 = self.box_EntityStatusListener_160;
    l1 = self.box_EntityStatusListener_161;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1024012265", "1024012265", "LT01_030_B40", "box_EntityStatusListener_160.Loaded", "box_EntityStatusListener_161.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_165_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_163();
    l0 = self.box_EntityStatusListener_165;
    l1 = self.box_EntityStatusListener_163;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1267828042", "1267828042", "LT01_030_B40", "box_EntityStatusListener_165.Loaded", "box_EntityStatusListener_163.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_177_Out()
    local params, l0, l1;
    params = self:OnEnter_box_LT01_030_PA_Dialog_74();
    l0 = self.box_Gate_v3_177;
    l1 = self.box_LT01_030_PA_Dialog_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1120421588", "1120421588", "LT01_030_B40", "box_Gate_v3_177.Out", "box_LT01_030_PA_Dialog_74.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_PlayDialog_v6_19_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_19;
    l1 = self.box_MultipleOR_179;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|994620777", "994620777", "LT01_030_B40", "box_PlayDialog_v6_19.Finished", "box_MultipleOR_179.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_19_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_19;
    l1 = self.box_MultipleOR_179;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|623097058", "623097058", "LT01_030_B40", "box_PlayDialog_v6_19.FinishedInterrupted", "box_MultipleOR_179.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SpawnAI_173_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_174();
    l0 = self.box_SpawnAI_173;
    l1 = self.box_SpawnAI_174;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|72809007", "72809007", "LT01_030_B40", "box_SpawnAI_173.Spawned", "box_SpawnAI_174.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_LT01_030_ShimmerMachine_30_Destroyed()
    local l0, l1;
    l0 = self.box_LT01_030_ShimmerMachine_30;
    l1 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|376061293", "376061293", "LT01_030_B40", "box_LT01_030_ShimmerMachine_30.Destroyed", "box_MultipleOR_45.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_ProximityTrigger_v2_85_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_6();
    l0 = self.box_ProximityTrigger_v2_85;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1255796466", "1255796466", "LT01_030_B40", "box_ProximityTrigger_v2_85.Enter", "box_OutputOrder_v2_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Reach_GoTo_v2_11();
    l0 = self.box_Reach_GoTo_v2_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|758112817", "758112817", "LT01_030_B40", "box_OutputOrder_v2_7.Out", "box_Reach_GoTo_v2_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_98();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1851428460", "1851428460", "LT01_030_B40", "box_OutputOrder_v2_7.Out", "box_Simple_Node_98.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_LT01_030_RumbleBox_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1587629484", "1587629484", "LT01_030_B40", "box_OutputOrder_v2_7.Out", "box_LT01_030_RumbleBox_55.Start_LowRumble", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start_LowRumble
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_7_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_108();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|602884959", "602884959", "LT01_030_B40", "box_OutputOrder_v2_7.Out", "box_MissionBlockLayer_108.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_19();
    l0 = self.box_PlayDialog_v6_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1096770438", "1096770438", "LT01_030_B40", "box_OutputOrder_v2_7.Out", "box_PlayDialog_v6_19.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_7_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_116();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|2109817443", "2109817443", "LT01_030_B40", "box_OutputOrder_v2_7.Out", "box_MissionBlockLayer_116.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_6()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_LT01_030_RumbleBox_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1852426689", "1852426689", "LT01_030_B40", "box_OutputOrder_v2_7.Out", "box_LT01_030_RumbleBox_121.Trigger_OneHighRumble", clone:GetLuaBox(), l0:GetLuaBox());
    -- Trigger_OneHighRumble
    l0:Exec(4, {
    });
end;

function export:f_box_OutputOrder_v2_7_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMusicTriggerBox_133();
    l0 = self.box_SoundMusicTriggerBox_133;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|158747589", "158747589", "LT01_030_B40", "box_OutputOrder_v2_7.Out", "box_SoundMusicTriggerBox_133.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_7_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_180();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1407515647", "1407515647", "LT01_030_B40", "box_OutputOrder_v2_7.Out", "box_Simple_Node_180.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_131();
    l0 = self.box_SpawnAI_131;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|38037625", "38037625", "LT01_030_B40", "box_OutputOrder_v2_7.Out", "box_SpawnAI_131.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_7_Out_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BinkPlayer_v6_157();
    l0 = self.box_BinkPlayer_v6_157;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1256395651", "1256395651", "LT01_030_B40", "box_OutputOrder_v2_7.Out", "box_BinkPlayer_v6_157.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_149_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_119();
    l0 = self.box_VisibilityModifier_119;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1038452499", "1038452499", "LT01_030_B40", "box_OutputOrder_v2_149.Out", "box_VisibilityModifier_119.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_149_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BinkPlayer_v6_112();
    l0 = self.box_BinkPlayer_v6_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|99332819", "99332819", "LT01_030_B40", "box_OutputOrder_v2_149.Out", "box_BinkPlayer_v6_112.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_LT01_030_ShimmerMachine_15_Destroyed()
    local l0, l1;
    l0 = self.box_LT01_030_ShimmerMachine_15;
    l1 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|793268937", "793268937", "LT01_030_B40", "box_LT01_030_ShimmerMachine_15.Destroyed", "box_MultipleOR_45.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 8);
end;

function export:OnEnter_box_Simple_Node_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|@ComputersDestroyed");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_98_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_184()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_184");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|@PreloadBinks");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_184_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|@StartFlaps");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_99_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|@StopEntranceCivs");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_183()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_183");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|@StopEverything");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_183_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_164()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103472633895982745",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|13536220");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160240312250006",
        -- missionLayerId,
        [1] = "45174638822543463",
    };
    return params;
end;

function export:OnEnter_box_LT01_030_ParticleLoop_52()
    local params;
    params = {
        -- InitialDelay,
        [0] = 0,
        -- Particle,
        [1] = "2103841067410397982",
        -- ParticleDelay,
        [2] = 10,
        -- SteamDuration,
        [3] = 3.2,
    };
    return params;
end;

function export:OnEnter_box_LT01_030_ParticleLoop_106()
    local params;
    params = {
        -- InitialDelay,
        [0] = 6,
        -- Particle,
        [1] = "2103841096678251304",
        -- ParticleDelay,
        [2] = 10,
        -- SteamDuration,
        [3] = 2,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_64()
    local params, l0;
    l0 = self.box_ProximityTrigger_v2_83;
    params = {
        -- Group,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_146()
    local params;
    params = {
        -- Group,
        [0] = self.Deputy,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2451774824",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_118()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "4070124363",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_28()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- CharacterId,
        [1] = "9015205801304650",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_123()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.75,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|56860856");
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
                [0] = self.f_box_OutputOrder_v2_69_Out_0,
                [1] = self.f_box_OutputOrder_v2_69_Out_1,
                [2] = self.f_box_OutputOrder_v2_69_Out_2,
                [3] = self.f_box_OutputOrder_v2_69_Out_3,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SiloFlap_Scripted_79()
    local params;
    params = {
        -- PrefabID,
        [0] = "2102019616894108924",
    };
    return params;
end;

function export:OnEnter_box_Brick_Destroy_ObjectsVehicles_MAIN_9()
    local params;
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- Destroy_Group,
        [1] = "#AF0A3085",
        -- has_ProgressBar,
        [2] = true,
        -- Mission_Objective,
        [3] = {
            section = "Objectives",
            item = "LT01_030_B30_OBJ_DestroyComputers",
            id = "567347",
        },
        -- opt_Marker_MissionArea,
        [4] = "2103291476845817644",
        -- Success_Percentage,
        [5] = 80,
    };
    return params;
end;

function export:OnEnter_box_LT01_030_ShimmerMachine_31()
    local params;
    params = {
        -- Machine,
        [0] = "2103414672026768929",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|104578124");
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
                [0] = self.f_box_OutputOrder_v2_18_Out_0,
                [1] = self.f_box_OutputOrder_v2_18_Out_1,
                [2] = self.f_box_OutputOrder_v2_18_Out_2,
                [3] = self.f_box_OutputOrder_v2_18_Out_3,
                [4] = self.f_box_OutputOrder_v2_18_Out_4,
                [5] = self.f_box_OutputOrder_v2_18_Out_5,
                [6] = self.f_box_OutputOrder_v2_18_Out_6,
                [7] = self.f_box_OutputOrder_v2_18_Out_7,
                [8] = self.f_box_OutputOrder_v2_18_Out_8,
            },
            count = 9,
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
        [0] = "2104451256566179715",
    };
    return params;
end;

function export:OnEnter_box_BinkPlayer_v6_112()
    local params;
    params = {
        -- BinkPathID,
        [2] = [[ui\singleplayer\video\preload\lt01_030_surveillancetv_combined_empty.bik]],
        -- BinkSoundFade,
        [6] = 0,
        -- BinkVolumePercent,
        [8] = 1,
        -- Loop,
        [9] = true,
        -- MaterialName,
        [10] = "BinkInvisible",
        -- ScreenEntity,
        [11] = "2103911769691940775",
        -- TCR_Music,
        [12] = false,
        -- WaitAvailableBinding,
        [13] = true,
    };
    return params;
end;

function export:OnEnter_box_SiloFlap_Scripted_77()
    local params;
    params = {
        -- PrefabID,
        [0] = "2103287839031578330",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_140()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_140");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|163479001");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_140_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SiloFlap_Breakable_70()
    local params;
    params = {
        -- PrefabID,
        [0] = "2103288049103294211",
        -- ShimmerLatchBracket,
        [1] = "2103896074818174859",
    };
    return params;
end;

function export:OnEnter_box_PostWWiseEventSetState_96()
    local params;
    DrawTextToScreen("Comment: MUS_MIS_Step_03", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PostWWiseEventSetState')-- Comment: MUS_MIS_Step_03");
    params = {
        -- SoundId,
        [0] = "2806627700",
        -- SoundType,
        [1] = 17,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_78()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103911407547331296",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|284094530");
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
                [0] = self.f_box_OutputOrder_v2_43_Out_0,
                [1] = self.f_box_OutputOrder_v2_43_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|293722440");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "72196239147067048",
        -- missionLayerId,
        [1] = "81203438401808040",
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_Dialog_100()
    local params;
    params = {
        -- Dialog,
        [0] = "3704945205",
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_171()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_171");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|333266121");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_171_Out,
    });
    params = {
        -- A,
        [0] = self.TotalObjectDestroyed,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_SiloFlap_Scripted_87()
    local params;
    params = {
        -- PrefabID,
        [0] = "2102019405325026387",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_83()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = "#0AF3E3C6",
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104480663303370849",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_162()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103414672026768929",
    };
    return params;
end;

function export:OnEnter_box_SiloFlap_Scripted_41()
    local params;
    params = {
        -- PrefabID,
        [0] = "2103208801430723257",
    };
    return params;
end;

function export:OnEnter_box_LT01_030_ShimmerMachine_8()
    local params;
    params = {
        -- Machine,
        [0] = "2103482386195958861",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_135()
    local params;
    params = {
        -- Group,
        [0] = self.Deputy,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3214226643",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_175()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_LT01_030_ParticleLoop_61()
    local params;
    params = {
        -- InitialDelay,
        [0] = 3,
        -- Particle,
        [1] = "2103841150526823216",
        -- ParticleDelay,
        [2] = 10,
        -- SteamDuration,
        [3] = 5,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_167()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103482386195958861",
    };
    return params;
end;

function export:OnEnter_box_Switch_44()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_182()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_182");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|506817568");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2103471869066745243",
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_Dialog_75()
    local params;
    params = {
        -- Dialog,
        [0] = "1480691066",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|537812003");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_24_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_Custom_36()
    local params;
    params = {
        -- bShowUI,
        [0] = true,
        -- FailingZoneTrigger,
        [1] = "2103264585468411901",
        -- WarningZoneTrigger,
        [2] = "2103264540593553401",
    };
    return params;
end;

function export:OnEnter_box_LT01_030_ParticleLoop_125()
    local params;
    params = {
        -- InitialDelay,
        [0] = 6,
        -- Particle,
        [1] = "2103841153875974962",
        -- ParticleDelay,
        [2] = 10,
        -- SteamDuration,
        [3] = 3.9,
    };
    return params;
end;

function export:OnEnter_box_LT01_030_ShimmerMachine_17()
    local params;
    params = {
        -- Machine,
        [0] = "2103080262591073386",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_90()
    local params;
    params = {
        -- Group,
        [0] = self.Deputy,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "77615309",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_153()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_153");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|670956864");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "lt01_030_findcomputerroom_finished",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_40()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103288714754019049",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_169()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103472700837074612",
    };
    return params;
end;

function export:OnEnter_box_LT01_030_ComputerRoom_Barks_150()
    local params;
    params = {
        -- GuardGroup,
        [0] = "#1952AEB8",
        -- MaxDelay,
        [1] = 11,
        -- MinDelay,
        [2] = 6,
    };
    return params;
end;

function export:OnEnter_box_LT01_030_ParticleLoop_127()
    local params;
    params = {
        -- InitialDelay,
        [0] = 6,
        -- Particle,
        [1] = "2103841089485019942",
        -- ParticleDelay,
        [2] = 10,
        -- SteamDuration,
        [3] = 3.2,
    };
    return params;
end;

function export:OnEnter_box_LT01_030_ShimmerMachine_29()
    local params;
    params = {
        -- Machine,
        [0] = "2103472633898079899",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_138()
    local params;
    params = {
        -- Group,
        [0] = self.Deputy,
        -- RelevancyTime,
        [1] = 5,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "4012559933",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_159()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103080262591073386",
    };
    return params;
end;

function export:OnEnter_box_ActivityForceAndLockTracking_170()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityForceAndLockTracking_170");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|788670574");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityForceAndLockTracking_170_Enabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_120()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|823180941");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103911507231257366",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_166()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103472670600337062",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_22()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103082867614579016",
    };
    return params;
end;

function export:OnEnter_box_SiloFlap_Scripted_80()
    local params;
    params = {
        -- PrefabID,
        [0] = "2102614587881860223",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_158()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103484511026156760",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_144()
    local params;
    params = {
        -- Group,
        [0] = self.Deputy,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1635613060",
    };
    return params;
end;

function export:OnEnter_box_SiloFlap_Scripted_82()
    local params;
    params = {
        -- PrefabID,
        [0] = "2102614584436239481",
    };
    return params;
end;

function export:OnEnter_box_SiloFlap_Scripted_81()
    local params;
    params = {
        -- PrefabID,
        [0] = "2098191698852062204",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|960294828");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_2_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_129()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103841622492991159",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|962234180");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "BRICK_Endure_Waves",
            item = "BRICK_Endure_ExitWarning",
            id = "426332",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_139()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103896808410343149",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1027701072");
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
                [0] = self.f_box_OutputOrder_v2_60_Out_0,
                [1] = self.f_box_OutputOrder_v2_60_Out_1,
                [2] = self.f_box_OutputOrder_v2_60_Out_2,
                [3] = self.f_box_OutputOrder_v2_60_Out_3,
                [4] = self.f_box_OutputOrder_v2_60_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_LT01_030_ShimmerMachine_27()
    local params;
    params = {
        -- Machine,
        [0] = "2103484511026156760",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_161()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103472633898079899",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_137()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103896821874058995",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1083427809");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_LT01_030_ShimmerMachine_32()
    local params;
    params = {
        -- Machine,
        [0] = "2103472633895982745",
    };
    return params;
end;

function export:OnEnter_box_SiloFlap_Breakable_57()
    local params;
    params = {
        -- PrefabID,
        [0] = "2099254560815064017",
        -- ShimmerLatchBracket,
        [1] = "2103968967805647163",
    };
    return params;
end;

function export:OnEnter_box_SoundMusicTriggerBox_97()
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
        [5] = "1106295261",
        -- StopEvent,
        [6] = "1544736735",
        -- StopFadeOut,
        [7] = 0.5,
        -- WaitUntilMusicEndMarker,
        [8] = false,
        -- WaitUntilNotInVehicle,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_47()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.9,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_16()
    local params;
    params = {
        -- Group,
        [0] = self.Deputy,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2967186391",
    };
    return params;
end;

function export:OnEnter_box_ActivityMiscInfoModifier_v2_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityMiscInfoModifier_v2_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1136364539");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityMiscInfoModifier_v2_101_Out,
    });
    params = {
        -- ActivityAbortAndFastTravelEnabled,
        [0] = false,
        -- SleepingCampEnabled,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_LT01_030_ParticleLoop_104()
    local params;
    params = {
        -- InitialDelay,
        [0] = 3,
        -- Particle,
        [1] = "2103841033325386524",
        -- ParticleDelay,
        [2] = 10,
        -- SteamDuration,
        [3] = 8,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1179480473");
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
                [0] = self.f_box_OutputOrder_v2_95_Out_0,
                [1] = self.f_box_OutputOrder_v2_95_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_LT01_030_ParticleLoop_54()
    local params;
    params = {
        -- InitialDelay,
        [0] = 0,
        -- Particle,
        [1] = "2103841078078610210",
        -- ParticleDelay,
        [2] = 10,
        -- SteamDuration,
        [3] = 6,
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_86()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_67()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = self.fDelay,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_134()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_134");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1234556407");
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
                [0] = self.f_box_OutputOrder_v2_134_Out_0,
                [1] = self.f_box_OutputOrder_v2_134_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1236299983");
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
                [0] = self.f_box_OutputOrder_v2_6_Out_0,
                [1] = self.f_box_OutputOrder_v2_6_Out_1,
                [2] = self.f_box_OutputOrder_v2_6_Out_2,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_168()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103472418140984914",
    };
    return params;
end;

function export:OnEnter_box_BinkPlayer_v6_124()
    local params;
    params = {
        -- BinkPathID,
        [2] = [[ui\singleplayer\video\preload\lt01_030_surveillancetv_combined_escape.bik]],
        -- BinkSoundFade,
        [6] = 0,
        -- BinkVolumePercent,
        [8] = 1,
        -- Loop,
        [9] = false,
        -- MaterialName,
        [10] = "BinkInvisible",
        -- ScreenEntity,
        [11] = "2103911769691940775",
        -- TCR_Music,
        [12] = false,
        -- WaitAvailableBinding,
        [13] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_126()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1306598241");
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
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_116()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1317746180");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_116_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160240312250006",
        -- missionLayerId,
        [1] = "27160242741872048",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1346859655");
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
                [1] = self.f_box_OutputOrder_v2_13_Out_1,
                [2] = self.f_box_OutputOrder_v2_13_Out_2,
                [3] = self.f_box_OutputOrder_v2_13_Out_3,
                [4] = self.f_box_OutputOrder_v2_13_Out_4,
                [5] = self.f_box_OutputOrder_v2_13_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v2_11()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bIsTrigger,
        [1] = true,
        -- bRequiresObjective,
        [2] = true,
        -- bUse2d_ProximityCheck,
        [3] = true,
        -- bUseDetectionModifier,
        [4] = false,
        -- eMarker,
        [5] = "2102696926154652823",
        -- eTrigger,
        [7] = "2100100336782968598",
        -- fDistanceFromTarget,
        [8] = 5,
        -- fObjectiveTimer,
        [9] = 0,
        -- opt_Objective,
        [11] = {
            section = "Objectives",
            item = "LT01_030_B50_GOAL_OpenSiloHatch",
            id = "666765",
        },
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_119()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103911769691940775",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_26()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103082861790787669",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_66()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = self.fDelay,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_122()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1424509802");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_122_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2103791770459479088",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_46()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.1,
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_Dialog_102()
    local params;
    params = {
        -- Dialog,
        [0] = "1138832686",
    };
    return params;
end;

function export:OnEnter_box_LT01_030_ShimmerMachine_10()
    local params;
    params = {
        -- Machine,
        [0] = "2103472670600337062",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_128()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_128");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1448441048");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160244197314166",
        -- missionLayerId,
        [1] = "36167443452055159",
    };
    return params;
end;

function export:OnEnter_box_LT01_030_ParticleLoop_103()
    local params;
    params = {
        -- InitialDelay,
        [0] = 6,
        -- Particle,
        [1] = "2103841071197854496",
        -- ParticleDelay,
        [2] = 10,
        -- SteamDuration,
        [3] = 3.5,
    };
    return params;
end;

function export:OnEnter_box_SiloFlap_Scripted_84()
    local params;
    params = {
        -- PrefabID,
        [0] = "2099337215933948382",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1498721183");
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
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_LT01_030_ParticleLoop_62()
    local params;
    params = {
        -- InitialDelay,
        [0] = 3,
        -- Particle,
        [1] = "2103841104198638380",
        -- ParticleDelay,
        [2] = 10,
        -- SteamDuration,
        [3] = 4.3,
    };
    return params;
end;

function export:OnEnter_box_LT01_030_ShimmerMachine_12()
    local params;
    params = {
        -- Machine,
        [0] = "2103472700837074612",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1546395132");
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
                [1] = self.f_box_OutputOrder_v2_63_Out_1,
                [2] = self.f_box_OutputOrder_v2_63_Out_2,
                [3] = self.f_box_OutputOrder_v2_63_Out_3,
                [4] = self.f_box_OutputOrder_v2_63_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1548458191");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_42_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_163()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103472418138887760",
    };
    return params;
end;

function export:OnEnter_box_BinkPlayer_v6_157()
    local params;
    params = {
        -- BinkPathID,
        [2] = [[ui\singleplayer\video\preload\lt01_030_surveillancetv_combined.bik]],
        -- BinkSoundFade,
        [6] = 0,
        -- BinkVolumePercent,
        [8] = 1,
        -- Loop,
        [9] = true,
        -- MaterialName,
        [10] = "BinkInvisible",
        -- ScreenEntity,
        [11] = "2103911769691940775",
        -- TCR_Music,
        [12] = false,
        -- WaitAvailableBinding,
        [13] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_35()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103265513659444899",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_51()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = self.fDelay,
    };
    return params;
end;

function export:OnEnter_box_LT01_030_ParticleLoop_49()
    local params;
    params = {
        -- InitialDelay,
        [0] = 0,
        -- Particle,
        [1] = "2103841156411431732",
        -- ParticleDelay,
        [2] = 10,
        -- SteamDuration,
        [3] = 3.5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_68()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = self.fDelay,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1677888738");
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

function export:OnEnter_box_OutputOrder_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1690814195");
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
                [0] = self.f_box_OutputOrder_v2_25_Out_0,
                [1] = self.f_box_OutputOrder_v2_25_Out_1,
                [2] = self.f_box_OutputOrder_v2_25_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1715592300");
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
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_Dialog_91()
    local params;
    params = {
        -- Dialog,
        [0] = "3302273970",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1738755979");
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
                [0] = self.f_box_OutputOrder_v2_33_Out_0,
                [1] = self.f_box_OutputOrder_v2_33_Out_1,
                [2] = self.f_box_OutputOrder_v2_33_Out_2,
                [3] = self.f_box_OutputOrder_v2_33_Out_3,
                [4] = self.f_box_OutputOrder_v2_33_Out_4,
                [5] = self.f_box_OutputOrder_v2_33_Out_5,
                [6] = self.f_box_OutputOrder_v2_33_Out_6,
                [7] = self.f_box_OutputOrder_v2_33_Out_7,
                [8] = self.f_box_OutputOrder_v2_33_Out_8,
                [9] = self.f_box_OutputOrder_v2_33_Out_9,
                [10] = self.f_box_OutputOrder_v2_33_Out_10,
                [11] = self.f_box_OutputOrder_v2_33_Out_11,
            },
            count = 12,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_LT01_030_ShimmerMachine_34()
    local params;
    params = {
        -- Machine,
        [0] = "2103482387057888338",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_131()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103843908801803882",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_172()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_172");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1773238448");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_172_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.TotalObjectDestroyed,
        -- B,
        [1] = 4,
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
        [3] = "2103288705205685989",
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_Dialog_89()
    local params;
    params = {
        -- Dialog,
        [0] = "1715325879",
    };
    return params;
end;

function export:OnEnter_box_LT01_030_ParticleLoop_50()
    local params;
    params = {
        -- InitialDelay,
        [0] = 0,
        -- Particle,
        [1] = "2103841147968297774",
        -- ParticleDelay,
        [2] = 10,
        -- SteamDuration,
        [3] = 3.8,
    };
    return params;
end;

function export:OnEnter_box_LT01_030_ShimmerMachine_14()
    local params;
    params = {
        -- Machine,
        [0] = "2103472418138887760",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_94()
    local params;
    params = {
        -- Group,
        [0] = self.Deputy,
        -- RelevancyTime,
        [1] = 3,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "2338968790",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_117()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.54,
    };
    return params;
end;

function export:OnEnter_box_SoundMusicTriggerBox_133()
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
        [5] = "1106295261",
        -- StopEvent,
        [6] = "1544736735",
        -- StopFadeOut,
        [7] = 0.5,
        -- WaitUntilMusicEndMarker,
        [8] = false,
        -- WaitUntilNotInVehicle,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_LT01_030_ParticleLoop_93()
    local params;
    params = {
        -- InitialDelay,
        [0] = 3,
        -- Particle,
        [1] = "2103841083094997796",
        -- ParticleDelay,
        [2] = 10,
        -- SteamDuration,
        [3] = 3.5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1849925592");
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
                [0] = self.f_box_OutputOrder_v2_65_Out_0,
                [1] = self.f_box_OutputOrder_v2_65_Out_1,
                [2] = self.f_box_OutputOrder_v2_65_Out_2,
                [3] = self.f_box_OutputOrder_v2_65_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_Dialog_74()
    local params;
    params = {
        -- Dialog,
        [0] = "304050177",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_136()
    local params;
    params = {
        -- Group,
        [0] = self.Deputy,
        -- RelevancyTime,
        [1] = 5,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "3391452807",
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_Dialog_73()
    local params;
    params = {
        -- Dialog,
        [0] = "1573410691",
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
        [3] = "2104173217450040656",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_141()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_141");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1938822297");
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
                [0] = self.f_box_OutputOrder_v2_141_Out_0,
                [1] = self.f_box_OutputOrder_v2_141_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1947560765");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103791748009466186",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_180()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_180");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1974018685");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_180_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1985270059");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103911496384787220",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_115()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1990157714");
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
                [0] = self.f_box_OutputOrder_v2_115_Out_0,
                [1] = self.f_box_OutputOrder_v2_115_Out_1,
                [2] = self.f_box_OutputOrder_v2_115_Out_2,
            },
            count = 3,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|1999418824");
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
                [1] = self.f_box_OutputOrder_v2_53_Out_1,
                [2] = self.f_box_OutputOrder_v2_53_Out_2,
            },
            count = 8,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_LT01_030_PA_RandomComputer_58()
    local params;
    params = {
        -- MaxTime,
        [0] = 12,
        -- MinTime,
        [1] = 7,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_23()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2098243222124891601",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_160()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103484618895267060",
    };
    return params;
end;

function export:OnEnter_box_PostWWiseEventSetState_132()
    local params;
    DrawTextToScreen("Comment: MUS_MIS_Step_04", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PostWWiseEventSetState')-- Comment: MUS_MIS_Step_04");
    params = {
        -- SoundId,
        [0] = "1856814043",
        -- SoundType,
        [1] = 17,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_165()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103482387057888338",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_177()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_130()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|2081225314");
    l0:SetConnections({
    });
    params = {
        -- Hour,
        [0] = 22,
        -- Minute,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_19()
    local params;
    params = {
        -- Group,
        [0] = self.Deputy,
        -- RelevancyTime,
        [1] = 5,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "3488215869",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_173()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104451248632653623",
    };
    return params;
end;

function export:OnEnter_box_LT01_030_ParticleLoop_56()
    local params;
    params = {
        -- InitialDelay,
        [0] = 0,
        -- Particle,
        [1] = "2103841100161620778",
        -- ParticleDelay,
        [2] = 10,
        -- SteamDuration,
        [3] = 2.5,
    };
    return params;
end;

function export:OnEnter_box_LT01_030_ShimmerMachine_30()
    local params;
    params = {
        -- Machine,
        [0] = "2103484618895267060",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_85()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103288741111025389",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|2135068536");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 11,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Out,
        [0] = {
            connections = {
                [0] = self.f_box_OutputOrder_v2_7_Out_0,
                [1] = self.f_box_OutputOrder_v2_7_Out_1,
                [2] = self.f_box_OutputOrder_v2_7_Out_2,
                [3] = self.f_box_OutputOrder_v2_7_Out_3,
                [4] = self.f_box_OutputOrder_v2_7_Out_4,
                [5] = self.f_box_OutputOrder_v2_7_Out_5,
                [6] = self.f_box_OutputOrder_v2_7_Out_6,
                [7] = self.f_box_OutputOrder_v2_7_Out_7,
                [8] = self.f_box_OutputOrder_v2_7_Out_8,
                [9] = self.f_box_OutputOrder_v2_7_Out_9,
                [10] = self.f_box_OutputOrder_v2_7_Out_10,
            },
            count = 11,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_149()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_149");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@LT01_030_B40|2138099158");
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
                [0] = self.f_box_OutputOrder_v2_149_Out_0,
                [1] = self.f_box_OutputOrder_v2_149_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_LT01_030_ShimmerMachine_15()
    local params;
    params = {
        -- Machine,
        [0] = "2103472418140984914",
    };
    return params;
end;

function export:OnExit_box_CharacterLoadedIdListener_28_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_28;
    self.Deputy = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_171_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.TotalObjectDestroyed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_83_Enabled()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_83;
    l1 = self.box_RemoveEntity_v2_64;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_83_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_83;
    l1 = self.box_RemoveEntity_v2_64;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_83_Leave()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_83;
    l1 = self.box_RemoveEntity_v2_64;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_83_OnEmpty()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_83;
    l1 = self.box_RemoveEntity_v2_64;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_83_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_83;
    l1 = self.box_RemoveEntity_v2_64;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_83_Use()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_83;
    l1 = self.box_RemoveEntity_v2_64;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
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
