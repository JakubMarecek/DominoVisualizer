LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni07/uni07_010_b20.domino
-- User graph: UNI07_010_B20
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Defend_Object.Brick_Defend_Object_CORE_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityState_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/BroadcastMessage.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v5.lua");
        cboxRes:RegisterBox("Domino/System/MetaBreakableModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/PostWWiseEventSetState.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetInteger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SoundMusicTrigger.lua");
        cboxRes:RegisterBox("Domino/System/Spawner_v2.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableBreaker.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        cboxRes:RegisterBox("Domino/System/UI/ActivityForceAndLockTracking.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI07/UNI07_010_B20._BARKS_MANAGER.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI07/UNI07_010_B20._BRAWLER_MANAGER.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI07/UNI07_010_B20._DAMAGE_MONITOR.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI07/UNI07_010_B20._ENEMY_BARKS_MANAGER.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI07/UNI07_010_B20._FEEDBAK_MANAGER.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI07/UNI07_010_B20._SMOKE_MANAGER.debug.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI07/UNI07_010_B20.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1397967538.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3465726992.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1199723764.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2367254800.bnk]], "CSoundResource");
        cboxRes:LoadResource([[898699445.bnk]], "CSoundResource");
        cboxRes:LoadResource([[504422272.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1787269119.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3308985615.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1061805380.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2701139570.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2145560885.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2576691150.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1178601565.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2102059229.bnk]], "CSoundResource");
        cboxRes:LoadResource([[entityarchetypeslibrary/9015283639702979.ark.fcb]], "CEntityArchetypeRes");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI07/UNI07_010_B20.UNI07_010_B20.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Defend_Object.Brick_Defend_Object_CORE_v3.debug.lua")] = {
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
                name = "CompletePreviousObjective",
                type = "bool",
            },
            [2] = {
                name = "DisplayObjectHealthBar",
                type = "bool",
            },
            [3] = {
                name = "Entities_Group",
                type = "group",
            },
            [4] = {
                name = "Entity_Single",
                type = "entity",
            },
            [5] = {
                name = "IsGroup",
                type = "bool",
            },
            [6] = {
                name = "IsVehicle",
                type = "bool",
            },
            [7] = {
                name = "Marker",
                type = "entity",
            },
            [8] = {
                name = "MinimumIntactRequired",
                type = "int",
            },
            [9] = {
                name = "Objective",
                type = "oasis",
            },
            [10] = {
                name = "opt_ObjectiveFail",
                type = "oasis",
            },
        },
        dataInCount = 11,
        dataOut = {
            [0] = {
                name = "FailReason",
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
    metadataTable[GetPathID("Domino/System/MetaBreakableModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetDamageable",
            },
            [1] = {
                name = "SetDisabled",
            },
            [2] = {
                name = "SetEnabled",
            },
            [3] = {
                name = "SetUnDamageable",
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
                name = "OnSetDamageable",
                delayed = false,
            },
            [3] = {
                name = "OnSetUnDamageable",
                delayed = false,
            },
        },
        controlOutCount = 4,
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
    metadataTable[GetPathID("Domino/System/SetInteger_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "FromFloat",
            },
            [1] = {
                name = "FromInteger",
            },
            [2] = {
                name = "FromString",
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
            [0] = {
                name = "Float",
                type = "float",
            },
            [1] = {
                name = "Integer",
                type = "int",
            },
            [2] = {
                name = "String",
                type = "string",
            },
            [3] = {
                name = "UseFloor",
                type = "bool",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "Target",
                type = "int",
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
    metadataTable[GetPathID("Domino/System/Spawner_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Error",
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
                name = "archetype",
                type = "archetype",
            },
            [1] = {
                name = "pitch",
                type = "float",
            },
            [2] = {
                name = "roll",
                type = "float",
            },
            [3] = {
                name = "target",
                type = "entity",
            },
            [4] = {
                name = "xPos",
                type = "float",
            },
            [5] = {
                name = "yaw",
                type = "float",
            },
            [6] = {
                name = "yPos",
                type = "float",
            },
            [7] = {
                name = "zPos",
                type = "float",
            },
        },
        dataInCount = 8,
        dataOut = {
            [0] = {
                name = "errorMsg",
                type = "string",
            },
            [1] = {
                name = "spawned",
                type = "entity",
            },
        },
        dataOutCount = 2,
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI07/UNI07_010_B20._BARKS_MANAGER.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Central",
            },
            [1] = {
                name = "East",
            },
            [2] = {
                name = "GetOutOfTower_Start",
            },
            [3] = {
                name = "GetOutOfTower_Stop",
            },
            [4] = {
                name = "InitBox",
            },
            [5] = {
                name = "PlayerDamage",
            },
            [6] = {
                name = "South",
            },
        },
        controlInCount = 7,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Delay",
                type = "float",
            },
            [1] = {
                name = "Grace",
                type = "entity",
            },
            [2] = {
                name = "RelevencyTime",
                type = "float",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI07/UNI07_010_B20._BRAWLER_MANAGER.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "StopInfiniteBrawler",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Brawler_Dead",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "BrawlerGroup",
                type = "group",
            },
            [1] = {
                name = "BrawlerSpawner",
                type = "entity",
            },
            [2] = {
                name = "InfiniteBrawlerRespawner",
                type = "entity",
            },
            [3] = {
                name = "InfiniteSpawnerTimer",
                type = "float",
            },
            [4] = {
                name = "IsBrawlerInfiniteRespawner",
                type = "bool",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI07/UNI07_010_B20._DAMAGE_MONITOR.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "CentralBroken",
                delayed = false,
            },
            [1] = {
                name = "CentralDamage",
                delayed = false,
            },
            [2] = {
                name = "EastBroken",
                delayed = false,
            },
            [3] = {
                name = "EastDamage",
                delayed = false,
            },
            [4] = {
                name = "Out",
                delayed = false,
            },
            [5] = {
                name = "PlayerDidDamage",
                delayed = false,
            },
            [6] = {
                name = "SouthBroken",
                delayed = false,
            },
            [7] = {
                name = "SouthDamage",
                delayed = false,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "CentralBreakable",
                type = "entity",
            },
            [1] = {
                name = "CentralSoundPoint",
                type = "entity",
            },
            [2] = {
                name = "EastBreakable",
                type = "entity",
            },
            [3] = {
                name = "EastSoundPoint",
                type = "entity",
            },
            [4] = {
                name = "RestartDelay",
                type = "float",
            },
            [5] = {
                name = "SouthBreakable",
                type = "entity",
            },
            [6] = {
                name = "SouthSoundPoint",
                type = "entity",
            },
        },
        dataInCount = 7,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI07/UNI07_010_B20._ENEMY_BARKS_MANAGER.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start_OutsideBarks",
            },
            [1] = {
                name = "Stop_OutsideBarks",
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI07/UNI07_010_B20._FEEDBAK_MANAGER.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "DisalbeFeedbackOnly",
            },
            [2] = {
                name = "In",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Disabled",
                delayed = false,
            },
            [1] = {
                name = "DisabledFeedbackOnly",
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
                name = "ObjectiveMarker",
                type = "entity",
            },
            [1] = {
                name = "ObjevtiveID",
                type = "oasis",
            },
            [2] = {
                name = "WarningMessage",
                type = "oasis",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI07/UNI07_010_B20._SMOKE_MANAGER.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
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
                name = "Central_Smoke",
                type = "entity",
            },
            [1] = {
                name = "CentralTrigger",
                type = "entity",
            },
            [2] = {
                name = "East_Smoke",
                type = "entity",
            },
            [3] = {
                name = "EastTrigger",
                type = "entity",
            },
            [4] = {
                name = "Hostiles",
                type = "group",
            },
            [5] = {
                name = "RestartDelay",
                type = "float",
            },
            [6] = {
                name = "South_Smoke",
                type = "entity",
            },
            [7] = {
                name = "SouthTrigger",
                type = "entity",
            },
            [8] = {
                name = "StartDelay",
                type = "float",
            },
        },
        dataInCount = 9,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI07_010_B20";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20";
    self.e_Grace = nil;
    self.gPlayerGroup = nil;
    self.roofberserker = 0;
    self.roofberserker_potentials = 0;
    self.var_FailureReason = {
        section = "",
        item = "",
        id = "",
    };
    self.var_LootSniper = nil;
    self.var_RoofBerserker = nil;
    self.BetweenWave_Tmer = 11;
    self.AIList = {
    };
    self.box_SpawnAI_Wave_v2_55 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|2326397");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_55_NextWave,
    });
    self.box_Delay_v5_166 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_166;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_166");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|32568312");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_166_TimeElapsed,
    });
    self.box_SoundModifier_v2_124 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_124;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|57404307");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_124_Started,
    });
    self.box_Delay_v5_4 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|106122045");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_4_TimeElapsed,
    });
    self.box__BARKS_MANAGER_76 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI07/UNI07_010_B20._BARKS_MANAGER.debug.lua");
    l0 = self.box__BARKS_MANAGER_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__BARKS_MANAGER_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|117628532");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box__BARKS_MANAGER_76_Out,
    });
    self.box_Delay_v5_209 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_209;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_209");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|118128445");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_209_TimeElapsed,
    });
    self.box_Delay_v5_45 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|125188028");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_45_TimeElapsed,
    });
    self.box_CharacterLoadedIdListener_11 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|153745913");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_11_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_11_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_11_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_11_LoadedIdReceived,
    });
    self.box_SpawnAI_Wave_v2_53 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|182602508");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_53_NextWave,
    });
    self.box__BRAWLER_MANAGER_107 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI07/UNI07_010_B20._BRAWLER_MANAGER.debug.lua");
    l0 = self.box__BRAWLER_MANAGER_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__BRAWLER_MANAGER_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|202985863");
    l0:SetConnections({
    });
    self.box_Brick_Defend_Object_CORE_v3_49 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Defend_Object.Brick_Defend_Object_CORE_v3.debug.lua");
    l0 = self.box_Brick_Defend_Object_CORE_v3_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Defend_Object_CORE_v3_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|270706269");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_Brick_Defend_Object_CORE_v3_49_Fail,
        -- Out,
        [1] = self.f_box_Brick_Defend_Object_CORE_v3_49_Out,
        -- Success,
        [2] = self.f_box_Brick_Defend_Object_CORE_v3_49_Success,
        -- Waves,
        [3] = self.f_box_Brick_Defend_Object_CORE_v3_49_Waves,
    });
    self.box_PlayDialog_v6_174 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_174;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_174");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|275579601");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_211 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_211;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_211");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|280515055");
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
    self.box_SpawnAI_Wave_v2_68 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|356410795");
    l0:SetConnections({
        -- LastWave_Cleanup,
        [1] = self.f_box_SpawnAI_Wave_v2_68_LastWave_Cleanup,
    });
    self.box_Gate_v3_189 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_189;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_189");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|401276329");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_189_Out,
    });
    self.box_MetaBreakableModifier_v2_159 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_159;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_159");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|414846825");
    l0:SetConnections({
    });
    self.box_Delay_v5_190 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_190;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_190");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|418951500");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_190_TimeElapsed,
    });
    self.box_MultipleOR_208 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_208;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_208");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|428504578");
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
        [0] = self.f_box_MultipleOR_208_Out,
    });
    self.box_MultipleAND_v2_16 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|447702145");
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
        [0] = self.f_box_MultipleAND_v2_16_Out,
    });
    self.box_PlayDialog_v6_51 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|462641271");
    l0:SetConnections({
    });
    self.box_MultipleOR_30 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|495549291");
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
        [0] = self.f_box_MultipleOR_30_Out,
    });
    self.box_ProximityTrigger_v2_176 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_176;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_176");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|554360710");
    l0:SetConnections({
        -- OnEmpty,
        [4] = self.f_box_ProximityTrigger_v2_176_OnEmpty,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_176_OnOccupied,
    });
    self.box_EntityStatusListener_42 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|555609255");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_42_Loaded,
    });
    self.box_ActivityInitialized_3 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|569363151");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_3_Out,
    });
    self.box__BARKS_MANAGER_77 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI07/UNI07_010_B20._BARKS_MANAGER.debug.lua");
    l0 = self.box__BARKS_MANAGER_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__BARKS_MANAGER_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|572474100");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box__BARKS_MANAGER_77_Out,
    });
    self.box_SoundModifier_v2_125 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_125;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|573504698");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_125_Started,
    });
    self.box__SMOKE_MANAGER_12 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI07/UNI07_010_B20._SMOKE_MANAGER.debug.lua");
    l0 = self.box__SMOKE_MANAGER_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__SMOKE_MANAGER_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|596712798");
    l0:SetConnections({
    });
    self.box_Delay_v5_225 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_225;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_225");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|631849086");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_225_TimeElapsed,
    });
    self.box_MetaBreakableModifier_v2_155 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_155;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_155");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|706060029");
    l0:SetConnections({
    });
    self.box_ActivityAcknowledgeGate_6 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|724421645");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_6_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_6_Reloaded,
    });
    self.box_PostWWiseEventSetState_90 = cbox:CreateBox("Domino/System/PostWWiseEventSetState.lua");
    l0 = self.box_PostWWiseEventSetState_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostWWiseEventSetState_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|740753266");
    l0:SetConnections({
    });
    self.box_MultipleOR_131 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_131;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_131");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|775027400");
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
        [0] = self.f_box_MultipleOR_131_Out,
    });
    self.box_PlayDialog_v6_91 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|775997536");
    l0:SetConnections({
    });
    self.box__DAMAGE_MONITOR_50 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI07/UNI07_010_B20._DAMAGE_MONITOR.debug.lua");
    l0 = self.box__DAMAGE_MONITOR_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__DAMAGE_MONITOR_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|779142174");
    l0:SetConnections({
        -- CentralBroken,
        [0] = self.f_box__DAMAGE_MONITOR_50_CentralBroken,
        -- CentralDamage,
        [1] = self.f_box__DAMAGE_MONITOR_50_CentralDamage,
        -- EastBroken,
        [2] = self.f_box__DAMAGE_MONITOR_50_EastBroken,
        -- EastDamage,
        [3] = self.f_box__DAMAGE_MONITOR_50_EastDamage,
        -- Out,
        [4] = self.f_box__DAMAGE_MONITOR_50_Out,
        -- PlayerDidDamage,
        [5] = self.f_box__DAMAGE_MONITOR_50_PlayerDidDamage,
        -- SouthBroken,
        [6] = self.f_box__DAMAGE_MONITOR_50_SouthBroken,
        -- SouthDamage,
        [7] = self.f_box__DAMAGE_MONITOR_50_SouthDamage,
    });
    self.box_MetaBreakableModifier_v2_203 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_203;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_203");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|845601418");
    l0:SetConnections({
    });
    self.box_Delay_v5_86 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|845996161");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_86_TimeElapsed,
    });
    self.box_Delay_v5_24 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|871648472");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_24_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_24_TimeElapsed,
    });
    self.box_MultipleOR_8 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|893342314");
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
        [0] = self.f_box_MultipleOR_8_Out,
    });
    self.box__ENEMY_BARKS_MANAGER_177 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI07/UNI07_010_B20._ENEMY_BARKS_MANAGER.debug.lua");
    l0 = self.box__ENEMY_BARKS_MANAGER_177;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__ENEMY_BARKS_MANAGER_177");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|908972356");
    l0:SetConnections({
    });
    self.box__BARKS_MANAGER_75 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI07/UNI07_010_B20._BARKS_MANAGER.debug.lua");
    l0 = self.box__BARKS_MANAGER_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__BARKS_MANAGER_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|917171046");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box__BARKS_MANAGER_75_Out,
    });
    self.box_EntityStatusListener_38 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|923549086");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_38_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_38_Loaded,
    });
    self.box_Brick_Defend_Object_CORE_v3_19 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Defend_Object.Brick_Defend_Object_CORE_v3.debug.lua");
    l0 = self.box_Brick_Defend_Object_CORE_v3_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Defend_Object_CORE_v3_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|992276608");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_Brick_Defend_Object_CORE_v3_19_Fail,
        -- Out,
        [1] = self.f_box_Brick_Defend_Object_CORE_v3_19_Out,
        -- Success,
        [2] = self.f_box_Brick_Defend_Object_CORE_v3_19_Success,
        -- Waves,
        [3] = self.f_box_Brick_Defend_Object_CORE_v3_19_Waves,
    });
    self.box_SpawnAI_Wave_v2_109 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1009633971");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_109_NextWave,
    });
    self.box_PlayDialog_v6_113 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1040236566");
    l0:SetConnections({
    });
    self.box_Delay_v5_170 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_170;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_170");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1040400253");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_170_TimeElapsed,
    });
    self.box_MetaBreakableModifier_v2_193 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_193;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_193");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1056110344");
    l0:SetConnections({
    });
    self.box_Delay_v5_83 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1062995939");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_83_TimeElapsed,
    });
    self.box_Delay_v5_171 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_171;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_171");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1078630131");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_171_TimeElapsed,
    });
    self.box_MultipleOR_194 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_194;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_194");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1128563315");
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
        [0] = self.f_box_MultipleOR_194_Out,
    });
    self.box_MultipleOR_21 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1197791876");
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
        [0] = self.f_box_MultipleOR_21_Out,
    });
    self.box_EntityStatusListener_204 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_204;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_204");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1199378900");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_204_Loaded,
    });
    self.box__FEEDBAK_MANAGER_54 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI07/UNI07_010_B20._FEEDBAK_MANAGER.debug.lua");
    l0 = self.box__FEEDBAK_MANAGER_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__FEEDBAK_MANAGER_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1206479315");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box__FEEDBAK_MANAGER_54_Disabled,
        -- DisabledFeedbackOnly,
        [1] = self.f_box__FEEDBAK_MANAGER_54_DisabledFeedbackOnly,
    });
    self.box_MultipleAND_v2_169 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_169;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_169");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1247947400");
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
        [0] = self.f_box_MultipleAND_v2_169_Out,
    });
    self.box_MetaBreakableModifier_v2_197 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_197;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_197");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1253182914");
    l0:SetConnections({
    });
    self.box_SpawnAI_Wave_v2_22 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1263151801");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_22_NextWave,
    });
    self.box_Delay_v5_66 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1292311869");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_66_TimeElapsed,
    });
    self.box_Delay_v5_153 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_153;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_153");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1295577370");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_153_TimeElapsed,
    });
    self.box_PostWWiseEventSetState_92 = cbox:CreateBox("Domino/System/PostWWiseEventSetState.lua");
    l0 = self.box_PostWWiseEventSetState_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostWWiseEventSetState_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1324380889");
    l0:SetConnections({
    });
    self.box__BRAWLER_MANAGER_105 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI07/UNI07_010_B20._BRAWLER_MANAGER.debug.lua");
    l0 = self.box__BRAWLER_MANAGER_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__BRAWLER_MANAGER_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1341555492");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_185 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_185;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_185");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1396442503");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_185_Enter,
    });
    self.box_PlayDialog_v6_116 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1396838341");
    l0:SetConnections({
    });
    self.box_MultipleOR_59 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1402620440");
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
        [0] = self.f_box_MultipleOR_59_Out,
    });
    self.box_MultipleOR_15 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1409014755");
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
        [0] = self.f_box_MultipleOR_15_Out,
    });
    self.box_Delay_v5_215 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_215;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_215");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1436731174");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_215_TimeElapsed,
    });
    self.box__BRAWLER_MANAGER_108 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI07/UNI07_010_B20._BRAWLER_MANAGER.debug.lua");
    l0 = self.box__BRAWLER_MANAGER_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__BRAWLER_MANAGER_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1462538879");
    l0:SetConnections({
    });
    self.box_MetaBreakableModifier_v2_157 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_157;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_157");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1494224192");
    l0:SetConnections({
    });
    self.box__FEEDBAK_MANAGER_52 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI07/UNI07_010_B20._FEEDBAK_MANAGER.debug.lua");
    l0 = self.box__FEEDBAK_MANAGER_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__FEEDBAK_MANAGER_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1499003044");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box__FEEDBAK_MANAGER_52_Disabled,
        -- DisabledFeedbackOnly,
        [1] = self.f_box__FEEDBAK_MANAGER_52_DisabledFeedbackOnly,
    });
    self.box_Delay_v5_216 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_216;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_216");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1505389883");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_216_TimeElapsed,
    });
    self.box_Delay_v5_82 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1531601595");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_82_TimeElapsed,
    });
    self.box_SoundMusicTriggerBox_89 = cbox:CreateBox("Domino/System/SoundMusicTrigger.lua");
    l0 = self.box_SoundMusicTriggerBox_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMusicTriggerBox_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1568758204");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundMusicTriggerBox_89_Started,
    });
    self.box_EntityStatusListener_37 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1578484778");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_37_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_37_Loaded,
    });
    self.box_MultipleOR_29 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1582758390");
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
        [0] = self.f_box_MultipleOR_29_Out,
    });
    self.box__BARKS_MANAGER_10 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI07/UNI07_010_B20._BARKS_MANAGER.debug.lua");
    l0 = self.box__BARKS_MANAGER_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__BARKS_MANAGER_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1614523418");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_117 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1633191976");
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
        [0] = self.f_box_MultipleAND_v2_117_Out,
    });
    self.box_PlayDialog_v6_110 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1654470557");
    l0:SetConnections({
    });
    self.box_MultipleOR_134 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_134;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_134");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1694889498");
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
    self.box_Gate_v3_188 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_188;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_188");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1695792730");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_188_Out,
    });
    self.box_SoundMusicTriggerBox_93 = cbox:CreateBox("Domino/System/SoundMusicTrigger.lua");
    l0 = self.box_SoundMusicTriggerBox_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMusicTriggerBox_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1719458169");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundMusicTriggerBox_93_Started,
    });
    self.box_Switch_23 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1727063385");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 4,
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
                [0] = self.f_box_Switch_23_Output_0,
                [1] = self.f_box_Switch_23_Output_1,
                [2] = self.f_box_Switch_23_Output_2,
            },
            count = 4,
        },
    });
    self.box_PlayDialog_v6_172 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_172;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_172");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1739101580");
    l0:SetConnections({
    });
    self.box_MultipleOR_192 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_192;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_192");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1741627275");
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
        [0] = self.f_box_MultipleOR_192_Out,
    });
    self.box__BRAWLER_MANAGER_111 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI07/UNI07_010_B20._BRAWLER_MANAGER.debug.lua");
    l0 = self.box__BRAWLER_MANAGER_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__BRAWLER_MANAGER_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1744710607");
    l0:SetConnections({
        -- Brawler_Dead,
        [0] = self.f_box__BRAWLER_MANAGER_111_Brawler_Dead,
    });
    self.box_GroupSizeListener_v5_214 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_214;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_214");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1757437886");
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
    self.box__BRAWLER_MANAGER_56 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI07/UNI07_010_B20._BRAWLER_MANAGER.debug.lua");
    l0 = self.box__BRAWLER_MANAGER_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__BRAWLER_MANAGER_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1811662777");
    l0:SetConnections({
        -- Brawler_Dead,
        [0] = self.f_box__BRAWLER_MANAGER_56_Brawler_Dead,
    });
    self.box_Brick_Defend_Object_CORE_v3_115 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Defend_Object.Brick_Defend_Object_CORE_v3.debug.lua");
    l0 = self.box_Brick_Defend_Object_CORE_v3_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Defend_Object_CORE_v3_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1821594425");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_Brick_Defend_Object_CORE_v3_115_Fail,
        -- Out,
        [1] = self.f_box_Brick_Defend_Object_CORE_v3_115_Out,
        -- Success,
        [2] = self.f_box_Brick_Defend_Object_CORE_v3_115_Success,
        -- Waves,
        [3] = self.f_box_Brick_Defend_Object_CORE_v3_115_Waves,
    });
    self.box_SoundModifier_v2_123 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_123;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1822873034");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_123_Started,
    });
    self.box_MultipleOR_213 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_213;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_213");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1829858023");
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
        [0] = self.f_box_MultipleOR_213_Out,
    });
    self.box__BRAWLER_MANAGER_46 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI07/UNI07_010_B20._BRAWLER_MANAGER.debug.lua");
    l0 = self.box__BRAWLER_MANAGER_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__BRAWLER_MANAGER_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1847067867");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_218 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_218;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_218");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1854433724");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_200 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_200;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_200");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1863409731");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_200_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_200_Loaded,
    });
    self.box_Gate_v3_187 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_187;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_187");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1873757049");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_187_Out,
    });
    self.box_Delay_v5_13 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1874425236");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_13_TimeElapsed,
    });
    self.box_Delay_v5_98 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1876961855");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_98_TimeElapsed,
    });
    self.box_MultipleAND_v2_48 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1884524476");
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
        [0] = self.f_box_MultipleAND_v2_48_Out,
    });
    self.box_Delay_v5_101 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1907958382");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_101_TimeElapsed,
    });
    self.box_PlayDialog_v6_112 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1949118700");
    l0:SetConnections({
    });
    self.box__FEEDBAK_MANAGER_63 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI07/UNI07_010_B20._FEEDBAK_MANAGER.debug.lua");
    l0 = self.box__FEEDBAK_MANAGER_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__FEEDBAK_MANAGER_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1968024349");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box__FEEDBAK_MANAGER_63_Disabled,
        -- DisabledFeedbackOnly,
        [1] = self.f_box__FEEDBAK_MANAGER_63_DisabledFeedbackOnly,
    });
    self.box_EntityStatusListener_202 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_202;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_202");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|2020509519");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_202_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_202_Loaded,
    });
    self.box_Delay_v5_104 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|2047981612");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_104_TimeElapsed,
    });
    self.box__BARKS_MANAGER_175 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI07/UNI07_010_B20._BARKS_MANAGER.debug.lua");
    l0 = self.box__BARKS_MANAGER_175;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__BARKS_MANAGER_175");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|2093904910");
    l0:SetConnections({
    });
    self.box_Delay_v5_25 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|2125613007");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_25_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_25_TimeElapsed,
    });
    self.box_ExitZoneWarningListener_v3_2 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|2127887055");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_2_FailingZoneEntered,
        -- WarningZoneEntered,
        [1] = self.f_box_ExitZoneWarningListener_v3_2_WarningZoneEntered,
    });
    self.box_Delay_v5_217 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_217;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_217");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|2139915169");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_217_TimeElapsed,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|2114765046", "2114765046", "UNI07_010_B20", "In", "box_ActivityAcknowledgeGate_6.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_88();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|452722305", "452722305", "UNI07_010_B20", "OnLeaveZone", "box_OutputOrder_v2_88.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_61_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_48();
    l0 = self.box_MultipleAND_v2_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1139375997", "1139375997", "UNI07_010_B20", "box_Simple_Node_61.Out", "box_MultipleAND_v2_48.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_Simple_Node_67_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_48();
    l0 = self.box_MultipleAND_v2_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|222410596", "222410596", "UNI07_010_B20", "box_Simple_Node_67.Out", "box_MultipleAND_v2_48.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 2);
end;

function export:f_box_Simple_Node_224_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_169();
    l0 = self.box_MultipleAND_v2_169;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|98188188", "98188188", "UNI07_010_B20", "box_Simple_Node_224.Out", "box_MultipleAND_v2_169.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_Simple_Node_223_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box__BARKS_MANAGER_175();
    l0 = self.box__BARKS_MANAGER_175;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|350088705", "350088705", "UNI07_010_B20", "box_Simple_Node_223.Out", "box__BARKS_MANAGER_175.InitBox", clone:GetLuaBox(), l0:GetLuaBox());
    -- InitBox
    l0:Exec(4, params);
end;

function export:f_box_Simple_Node_57_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMusicTriggerBox_93();
    l0 = self.box_SoundMusicTriggerBox_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|575985220", "575985220", "UNI07_010_B20", "box_Simple_Node_57.Out", "box_SoundMusicTriggerBox_93.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    params = self:OnEnter_box_Brick_Defend_Object_CORE_v3_115();
    l0 = self.box_Brick_Defend_Object_CORE_v3_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1823437724", "1823437724", "UNI07_010_B20", "box_Simple_Node_57.Out", "box_Brick_Defend_Object_CORE_v3_115.LastWave_Cleanup", clone:GetLuaBox(), l0:GetLuaBox());
    -- LastWave_Cleanup
    l0:Exec(1, params);
    params = self:OnEnter_box_Brick_Defend_Object_CORE_v3_19();
    l0 = self.box_Brick_Defend_Object_CORE_v3_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|911358399", "911358399", "UNI07_010_B20", "box_Simple_Node_57.Out", "box_Brick_Defend_Object_CORE_v3_19.LastWave_Cleanup", clone:GetLuaBox(), l0:GetLuaBox());
    -- LastWave_Cleanup
    l0:Exec(1, params);
    params = self:OnEnter_box_Brick_Defend_Object_CORE_v3_49();
    l0 = self.box_Brick_Defend_Object_CORE_v3_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|392573744", "392573744", "UNI07_010_B20", "box_Simple_Node_57.Out", "box_Brick_Defend_Object_CORE_v3_49.LastWave_Cleanup", clone:GetLuaBox(), l0:GetLuaBox());
    -- LastWave_Cleanup
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_33_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box__FEEDBAK_MANAGER_63();
    l0 = self.box__FEEDBAK_MANAGER_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1941444967", "1941444967", "UNI07_010_B20", "box_Simple_Node_33.Out", "box__FEEDBAK_MANAGER_63.DisalbeFeedbackOnly", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisalbeFeedbackOnly
    l0:Exec(1, params);
    params = self:OnEnter_box__FEEDBAK_MANAGER_54();
    l0 = self.box__FEEDBAK_MANAGER_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1698118201", "1698118201", "UNI07_010_B20", "box_Simple_Node_33.Out", "box__FEEDBAK_MANAGER_54.DisalbeFeedbackOnly", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisalbeFeedbackOnly
    l0:Exec(1, params);
    params = self:OnEnter_box__FEEDBAK_MANAGER_52();
    l0 = self.box__FEEDBAK_MANAGER_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|2082323912", "2082323912", "UNI07_010_B20", "box_Simple_Node_33.Out", "box__FEEDBAK_MANAGER_52.DisalbeFeedbackOnly", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisalbeFeedbackOnly
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_80_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Switch_23();
    l0 = self.box_Switch_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1571062859", "1571062859", "UNI07_010_B20", "box_Simple_Node_80.Out", "box_Switch_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_43_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_37();
    l0 = self.box_EntityStatusListener_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|723171693", "723171693", "UNI07_010_B20", "box_Simple_Node_43.Out", "box_EntityStatusListener_37.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_58_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_48();
    l0 = self.box_MultipleAND_v2_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1154715266", "1154715266", "UNI07_010_B20", "box_Simple_Node_58.Out", "box_MultipleAND_v2_48.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_Simple_Node_222_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_187();
    l0 = self.box_Gate_v3_187;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1900577577", "1900577577", "UNI07_010_B20", "box_Simple_Node_222.Out", "box_Gate_v3_187.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
    params = self:OnEnter_box_Gate_v3_189();
    l0 = self.box_Gate_v3_189;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1826157262", "1826157262", "UNI07_010_B20", "box_Simple_Node_222.Out", "box_Gate_v3_189.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
    params = self:OnEnter_box_Gate_v3_188();
    l0 = self.box_Gate_v3_188;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|41487989", "41487989", "UNI07_010_B20", "box_Simple_Node_222.Out", "box_Gate_v3_188.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_221_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_188();
    l0 = self.box_Gate_v3_188;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|512179375", "512179375", "UNI07_010_B20", "box_Simple_Node_221.Out", "box_Gate_v3_188.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_189();
    l0 = self.box_Gate_v3_189;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|381249284", "381249284", "UNI07_010_B20", "box_Simple_Node_221.Out", "box_Gate_v3_189.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_187();
    l0 = self.box_Gate_v3_187;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|230876249", "230876249", "UNI07_010_B20", "box_Simple_Node_221.Out", "box_Gate_v3_187.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_SpawnAI_Wave_v2_55_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_168();
    l0 = self.box_SpawnAI_Wave_v2_55;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|178404517", "178404517", "UNI07_010_B20", "box_SpawnAI_Wave_v2_55.NextWave", "box_OutputOrder_v2_168.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_165_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_144();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|432216862", "432216862", "UNI07_010_B20", "box_OutputOrder_v2_165.Out", "box_MissionBlockLayer_144.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_165_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_167();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1350669684", "1350669684", "UNI07_010_B20", "box_OutputOrder_v2_165.Out", "box_BroadcastMessage_167.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_156_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_27();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1628909385", "1628909385", "UNI07_010_B20", "box_OutputOrder_v2_156.Out", "box_StaticBreakableBreaker_27.SetDamageable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDamageable
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_156_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MetaBreakableModifier_v2_155();
    l0 = self.box_MetaBreakableModifier_v2_155;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|898474323", "898474323", "UNI07_010_B20", "box_OutputOrder_v2_156.Out", "box_MetaBreakableModifier_v2_155.SetDamageable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDamageable
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_166_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_62();
    l0 = self.box_Delay_v5_166;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|456698776", "456698776", "UNI07_010_B20", "box_Delay_v5_166.TimeElapsed", "box_ParticleSystem_v3_62.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_160_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_34();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|2005153411", "2005153411", "UNI07_010_B20", "box_OutputOrder_v2_160.Out", "box_StaticBreakableBreaker_34.SetDamageable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDamageable
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_160_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MetaBreakableModifier_v2_159();
    l0 = self.box_MetaBreakableModifier_v2_159;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|208904890", "208904890", "UNI07_010_B20", "box_OutputOrder_v2_160.Out", "box_MetaBreakableModifier_v2_159.SetDamageable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDamageable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_114_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_176();
    l0 = self.box_ProximityTrigger_v2_176;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|420859349", "420859349", "UNI07_010_B20", "box_Simple_Node_114.Out", "box_ProximityTrigger_v2_176.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SoundModifier_v2_124_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_104();
    l0 = self.box_SoundModifier_v2_124;
    l1 = self.box_Delay_v5_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|944228986", "944228986", "UNI07_010_B20", "box_SoundModifier_v2_124.Started", "box_Delay_v5_104.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_20_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_Wave_v2_109();
    l0 = self.box_SpawnAI_Wave_v2_109;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|797364510", "797364510", "UNI07_010_B20", "box_OutputOrder_v2_20.Out", "box_SpawnAI_Wave_v2_109.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_20_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_112();
    l0 = self.box_PlayDialog_v6_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|353611266", "353611266", "UNI07_010_B20", "box_OutputOrder_v2_20.Out", "box_PlayDialog_v6_112.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_62_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_123();
    l0 = self.box_SoundModifier_v2_123;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|673736699", "673736699", "UNI07_010_B20", "box_ParticleSystem_v3_62.Started", "box_SoundModifier_v2_123.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_39_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_16();
    l0 = self.box_MultipleAND_v2_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|261471215", "261471215", "UNI07_010_B20", "box_Simple_Node_39.Out", "box_MultipleAND_v2_16.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_Delay_v5_4_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_28();
    l0 = self.box_Delay_v5_4;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|431869587", "431869587", "UNI07_010_B20", "box_Delay_v5_4.TimeElapsed", "box_OutputOrder_v2_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box__BARKS_MANAGER_76_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_187();
    l0 = self.box__BARKS_MANAGER_76;
    l1 = self.box_Gate_v3_187;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1583414597", "1583414597", "UNI07_010_B20", "box__BARKS_MANAGER_76.Out", "box_Gate_v3_187.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_209_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v5_214();
    l0 = self.box_Delay_v5_209;
    l1 = self.box_GroupSizeListener_v5_214;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|2104122001", "2104122001", "UNI07_010_B20", "box_Delay_v5_209.TimeElapsed", "box_GroupSizeListener_v5_214.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_45_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box__BRAWLER_MANAGER_111();
    l0 = self.box_Delay_v5_45;
    l1 = self.box__BRAWLER_MANAGER_111;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|168872538", "168872538", "UNI07_010_B20", "box_Delay_v5_45.TimeElapsed", "box__BRAWLER_MANAGER_111.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Simple_Node_64_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_16();
    l0 = self.box_MultipleAND_v2_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1667196418", "1667196418", "UNI07_010_B20", "box_Simple_Node_64.Out", "box_MultipleAND_v2_16.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 2);
end;

function export:f_box_CharacterLoadedIdListener_11_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_11_LoadedIdReceived();
    params = self:OnEnter_box_OutputOrder_v2_220();
    l0 = self.box_CharacterLoadedIdListener_11;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|536735636", "536735636", "UNI07_010_B20", "box_CharacterLoadedIdListener_11.LoadedIdReceived", "box_OutputOrder_v2_220.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_Wave_v2_53_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = self.box_SpawnAI_Wave_v2_53;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|330487960", "330487960", "UNI07_010_B20", "box_SpawnAI_Wave_v2_53.NextWave", "box_OutputOrder_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_74_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box__FEEDBAK_MANAGER_63();
    l0 = self.box__FEEDBAK_MANAGER_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|346450605", "346450605", "UNI07_010_B20", "box_Simple_Node_74.Out", "box__FEEDBAK_MANAGER_63.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_173_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_174();
    l0 = self.box_PlayDialog_v6_174;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|2144915422", "2144915422", "UNI07_010_B20", "box_OutputOrder_v2_173.Out", "box_PlayDialog_v6_174.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_173_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_196();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1624184204", "1624184204", "UNI07_010_B20", "box_OutputOrder_v2_173.Out", "box_BroadcastMessage_196.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_173_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_78();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|2059925264", "2059925264", "UNI07_010_B20", "box_OutputOrder_v2_173.Out", "box_ActivityRetry_78.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetActivityState_v2_141_Active()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Defend_Object_CORE_v3_19();
    l0 = self.box_Brick_Defend_Object_CORE_v3_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1390106206", "1390106206", "UNI07_010_B20", "box_GetActivityState_v2_141.Active", "box_Brick_Defend_Object_CORE_v3_19.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_GetActivityState_v2_141_Canceled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_208;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|744758030", "744758030", "UNI07_010_B20", "box_GetActivityState_v2_141.Canceled", "box_MultipleOR_208.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_GetActivityState_v2_141_Completed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_208;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1075025235", "1075025235", "UNI07_010_B20", "box_GetActivityState_v2_141.Completed", "box_MultipleOR_208.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_GetActivityState_v2_141_Failed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_208;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|847660615", "847660615", "UNI07_010_B20", "box_GetActivityState_v2_141.Failed", "box_MultipleOR_208.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetActivityState_v2_141_Inactive()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_208;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|751680850", "751680850", "UNI07_010_B20", "box_GetActivityState_v2_141.Inactive", "box_MultipleOR_208.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_GetActivityState_v2_141_Unavailable()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_208;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1742434304", "1742434304", "UNI07_010_B20", "box_GetActivityState_v2_141.Unavailable", "box_MultipleOR_208.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MissionBlockLayer_147_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_151();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|360612180", "360612180", "UNI07_010_B20", "box_MissionBlockLayer_147.Activated", "box_MissionBlockLayer_151.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_206_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_199();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1370334683", "1370334683", "UNI07_010_B20", "box_OutputOrder_v2_206.Out", "box_StaticBreakableBreaker_199.SetUnDamageable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetUnDamageable
    l0:Exec(5, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_206_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MetaBreakableModifier_v2_193();
    l0 = self.box_MetaBreakableModifier_v2_193;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1504543273", "1504543273", "UNI07_010_B20", "box_OutputOrder_v2_206.Out", "box_MetaBreakableModifier_v2_193.SetUnDamageable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetUnDamageable
    l0:Exec(3, params);
end;

function export:f_box_ParticleSystem_v3_102_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_124();
    l0 = self.box_SoundModifier_v2_124;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|750637723", "750637723", "UNI07_010_B20", "box_ParticleSystem_v3_102.Started", "box_SoundModifier_v2_124.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_40_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_141();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|172394735", "172394735", "UNI07_010_B20", "box_OutputOrder_v2_40.Out", "box_GetActivityState_v2_141.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_40_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_140();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1483969465", "1483969465", "UNI07_010_B20", "box_OutputOrder_v2_40.Out", "box_GetActivityState_v2_140.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_40_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_139();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1469955712", "1469955712", "UNI07_010_B20", "box_OutputOrder_v2_40.Out", "box_GetActivityState_v2_139.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_40_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_154();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|2022554689", "2022554689", "UNI07_010_B20", "box_OutputOrder_v2_40.Out", "box_SetContextualStrategy_154.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_40_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__ENEMY_BARKS_MANAGER_177();
    l0 = self.box__ENEMY_BARKS_MANAGER_177;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1495280080", "1495280080", "UNI07_010_B20", "box_OutputOrder_v2_40.Out", "box__ENEMY_BARKS_MANAGER_177.Start_OutsideBarks", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start_OutsideBarks
    l0:Exec(0, params);
end;

function export:f_box_Brick_Defend_Object_CORE_v3_49_Fail()
    local params, l0, l1;
    self:OnExit_box_Brick_Defend_Object_CORE_v3_49_Fail();
    params = self:OnEnter_box_OutputOrder_v2_32();
    l0 = self.box_Brick_Defend_Object_CORE_v3_49;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1848832734", "1848832734", "UNI07_010_B20", "box_Brick_Defend_Object_CORE_v3_49.Fail", "box_OutputOrder_v2_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Defend_Object_CORE_v3_49_Out()
    self:OnExit_box_Brick_Defend_Object_CORE_v3_49_Out();
end;

function export:f_box_Brick_Defend_Object_CORE_v3_49_Success()
    local l0, l1;
    self:OnExit_box_Brick_Defend_Object_CORE_v3_49_Success();
    l0 = self.box_Brick_Defend_Object_CORE_v3_49;
    l1 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|2001914427", "2001914427", "UNI07_010_B20", "box_Brick_Defend_Object_CORE_v3_49.Success", "box_MultipleOR_29.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Defend_Object_CORE_v3_49_Waves()
    local params, l0, l1;
    self:OnExit_box_Brick_Defend_Object_CORE_v3_49_Waves();
    params = self:OnEnter_box_Simple_Node_61();
    l0 = self.box_Brick_Defend_Object_CORE_v3_49;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1502022258", "1502022258", "UNI07_010_B20", "box_Brick_Defend_Object_CORE_v3_49.Waves", "box_Simple_Node_61.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_211_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_57();
    l0 = self.box_OnceOnly_v3_211;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|2130733430", "2130733430", "UNI07_010_B20", "box_OnceOnly_v3_211.Out", "box_Simple_Node_57.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_81_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_80();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1159444028", "1159444028", "UNI07_010_B20", "box_EndActivityObjective_v2_81.Out", "box_Simple_Node_80.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Spawner_v2_100_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_166();
    l0 = self.box_Delay_v5_166;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|355744584", "355744584", "UNI07_010_B20", "box_Spawner_v2_100.Out", "box_Delay_v5_166.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SpawnAI_Wave_v2_68_LastWave_Cleanup()
    local l0, l1;
    l0 = self.box_SpawnAI_Wave_v2_68;
    l1 = self.box_MultipleOR_213;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1223430232", "1223430232", "UNI07_010_B20", "box_SpawnAI_Wave_v2_68.LastWave_Cleanup", "box_MultipleOR_213.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_31_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|7049658", "7049658", "UNI07_010_B20", "box_OutputOrder_v2_31.Out", "box_MultipleOR_21.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_31_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_87();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|263391080", "263391080", "UNI07_010_B20", "box_OutputOrder_v2_31.Out", "box_OutputOrder_v2_87.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_28_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_122();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|2141562280", "2141562280", "UNI07_010_B20", "box_OutputOrder_v2_28.Out", "box_MissionBlockLayer_122.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_28_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_33();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1218320793", "1218320793", "UNI07_010_B20", "box_OutputOrder_v2_28.Out", "box_Simple_Node_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_28_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_201();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|952772728", "952772728", "UNI07_010_B20", "box_OutputOrder_v2_28.Out", "box_Simple_Node_201.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_28_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_169();
    l0 = self.box_MultipleAND_v2_169;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1042142230", "1042142230", "UNI07_010_B20", "box_OutputOrder_v2_28.Out", "box_MultipleAND_v2_169.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_ActivityMiscInfoModifier_v2_152_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_210();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1943919939", "1943919939", "UNI07_010_B20", "box_ActivityMiscInfoModifier_v2_152.Out", "box_OutputOrder_v2_210.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetActivityState_v2_139_Active()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Defend_Object_CORE_v3_49();
    l0 = self.box_Brick_Defend_Object_CORE_v3_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|729117032", "729117032", "UNI07_010_B20", "box_GetActivityState_v2_139.Active", "box_Brick_Defend_Object_CORE_v3_49.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_GetActivityState_v2_139_Canceled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_194;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1479673979", "1479673979", "UNI07_010_B20", "box_GetActivityState_v2_139.Canceled", "box_MultipleOR_194.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_GetActivityState_v2_139_Completed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_194;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|170670519", "170670519", "UNI07_010_B20", "box_GetActivityState_v2_139.Completed", "box_MultipleOR_194.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_GetActivityState_v2_139_Failed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_194;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1547719352", "1547719352", "UNI07_010_B20", "box_GetActivityState_v2_139.Failed", "box_MultipleOR_194.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetActivityState_v2_139_Inactive()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_194;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|2128311142", "2128311142", "UNI07_010_B20", "box_GetActivityState_v2_139.Inactive", "box_MultipleOR_194.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_GetActivityState_v2_139_Unavailable()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_194;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1798043937", "1798043937", "UNI07_010_B20", "box_GetActivityState_v2_139.Unavailable", "box_MultipleOR_194.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_189_Out()
    local params, l0, l1;
    params = self:OnEnter_box__FEEDBAK_MANAGER_63();
    l0 = self.box_Gate_v3_189;
    l1 = self.box__FEEDBAK_MANAGER_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1600454384", "1600454384", "UNI07_010_B20", "box_Gate_v3_189.Out", "box__FEEDBAK_MANAGER_63.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_190_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_185();
    l0 = self.box_Delay_v5_190;
    l1 = self.box_ProximityTrigger_v2_185;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|473058119", "473058119", "UNI07_010_B20", "box_Delay_v5_190.TimeElapsed", "box_ProximityTrigger_v2_185.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_158_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_35();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|231926621", "231926621", "UNI07_010_B20", "box_OutputOrder_v2_158.Out", "box_StaticBreakableBreaker_35.SetDamageable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDamageable
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_158_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MetaBreakableModifier_v2_157();
    l0 = self.box_MetaBreakableModifier_v2_157;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1307152027", "1307152027", "UNI07_010_B20", "box_OutputOrder_v2_158.Out", "box_MetaBreakableModifier_v2_157.SetDamageable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDamageable
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_208_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_148();
    l0 = self.box_MultipleOR_208;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|379005167", "379005167", "UNI07_010_B20", "box_MultipleOR_208.Out", "box_OutputOrder_v2_148.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_168_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_Wave_v2_68();
    l0 = self.box_SpawnAI_Wave_v2_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|853537934", "853537934", "UNI07_010_B20", "box_OutputOrder_v2_168.Out", "box_SpawnAI_Wave_v2_68.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_168_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_209();
    l0 = self.box_Delay_v5_209;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1866005385", "1866005385", "UNI07_010_B20", "box_OutputOrder_v2_168.Out", "box_Delay_v5_209.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleAND_v2_16_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_4();
    l0 = self.box_MultipleAND_v2_16;
    l1 = self.box_Delay_v5_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1209320335", "1209320335", "UNI07_010_B20", "box_MultipleAND_v2_16.Out", "box_Delay_v5_4.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_30_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_16();
    l0 = self.box_MultipleOR_30;
    l1 = self.box_MultipleAND_v2_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|2123796423", "2123796423", "UNI07_010_B20", "box_MultipleOR_30.Out", "box_MultipleAND_v2_16.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_Compare_Integers_130_A_gt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_132();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|651643006", "651643006", "UNI07_010_B20", "box_Compare_Integers_130.A_gt_B", "box_Simple_Node_132.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_130_A_le_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_131;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|937348523", "937348523", "UNI07_010_B20", "box_Compare_Integers_130.A_le_B", "box_MultipleOR_131.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_26_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__BRAWLER_MANAGER_108();
    l0 = self.box__BRAWLER_MANAGER_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|240252757", "240252757", "UNI07_010_B20", "box_OutputOrder_v2_26.Out", "box__BRAWLER_MANAGER_108.StopInfiniteBrawler", clone:GetLuaBox(), l0:GetLuaBox());
    -- StopInfiniteBrawler
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_26_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__BRAWLER_MANAGER_107();
    l0 = self.box__BRAWLER_MANAGER_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1102072674", "1102072674", "UNI07_010_B20", "box_OutputOrder_v2_26.Out", "box__BRAWLER_MANAGER_107.StopInfiniteBrawler", clone:GetLuaBox(), l0:GetLuaBox());
    -- StopInfiniteBrawler
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_26_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_211;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|621353991", "621353991", "UNI07_010_B20", "box_OutputOrder_v2_26.Out", "box_OnceOnly_v3_211.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_195_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_198();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1814618039", "1814618039", "UNI07_010_B20", "box_OutputOrder_v2_195.Out", "box_StaticBreakableBreaker_198.SetUnDamageable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetUnDamageable
    l0:Exec(5, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_195_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MetaBreakableModifier_v2_197();
    l0 = self.box_MetaBreakableModifier_v2_197;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1359081290", "1359081290", "UNI07_010_B20", "box_OutputOrder_v2_195.Out", "box_MetaBreakableModifier_v2_197.SetUnDamageable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetUnDamageable
    l0:Exec(3, params);
end;

function export:f_box_ProximityTrigger_v2_176_OnEmpty()
    local params, l0, l1;
    params = self:OnEnter_box__BARKS_MANAGER_175();
    l0 = self.box_ProximityTrigger_v2_176;
    l1 = self.box__BARKS_MANAGER_175;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|250288695", "250288695", "UNI07_010_B20", "box_ProximityTrigger_v2_176.OnEmpty", "box__BARKS_MANAGER_175.GetOutOfTower_Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetOutOfTower_Stop
    l1:Exec(3, params);
end;

function export:f_box_ProximityTrigger_v2_176_OnOccupied()
    local params, l0, l1;
    params = self:OnEnter_box__BARKS_MANAGER_175();
    l0 = self.box_ProximityTrigger_v2_176;
    l1 = self.box__BARKS_MANAGER_175;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|711656565", "711656565", "UNI07_010_B20", "box_ProximityTrigger_v2_176.OnOccupied", "box__BARKS_MANAGER_175.GetOutOfTower_Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetOutOfTower_Start
    l1:Exec(2, params);
end;

function export:f_box_EntityStatusListener_42_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_160();
    l0 = self.box_EntityStatusListener_42;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1549885394", "1549885394", "UNI07_010_B20", "box_EntityStatusListener_42.Loaded", "box_OutputOrder_v2_160.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityForceAndLockTracking_184();
    l0 = self.box_ActivityInitialized_3;
    l1 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|487470346", "487470346", "UNI07_010_B20", "box_ActivityInitialized_3.Out", "box_ActivityForceAndLockTracking_184.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box__BARKS_MANAGER_77_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_189();
    l0 = self.box__BARKS_MANAGER_77;
    l1 = self.box_Gate_v3_189;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1794648958", "1794648958", "UNI07_010_B20", "box__BARKS_MANAGER_77.Out", "box_Gate_v3_189.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SoundModifier_v2_125_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_101();
    l0 = self.box_SoundModifier_v2_125;
    l1 = self.box_Delay_v5_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|585934275", "585934275", "UNI07_010_B20", "box_SoundModifier_v2_125.Started", "box_Delay_v5_101.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_225_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_128();
    l0 = self.box_Delay_v5_225;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1669666387", "1669666387", "UNI07_010_B20", "box_Delay_v5_225.TimeElapsed", "box_Compare_Integers_128.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_96_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_225();
    l0 = self.box_Delay_v5_225;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1639067611", "1639067611", "UNI07_010_B20", "box_OutputOrder_v2_96.Out", "box_Delay_v5_225.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_96_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__DAMAGE_MONITOR_50();
    l0 = self.box__DAMAGE_MONITOR_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|787195100", "787195100", "UNI07_010_B20", "box_OutputOrder_v2_96.Out", "box__DAMAGE_MONITOR_50.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_96_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMusicTriggerBox_89();
    l0 = self.box_SoundMusicTriggerBox_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1832662843", "1832662843", "UNI07_010_B20", "box_OutputOrder_v2_96.Out", "box_SoundMusicTriggerBox_89.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_96_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_138();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1006629403", "1006629403", "UNI07_010_B20", "box_OutputOrder_v2_96.Out", "box_Print_v2_138.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_96_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_43();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|815185256", "815185256", "UNI07_010_B20", "box_OutputOrder_v2_96.Out", "box_Simple_Node_43.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_96_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_215();
    l0 = self.box_Delay_v5_215;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|256541299", "256541299", "UNI07_010_B20", "box_OutputOrder_v2_96.Out", "box_Delay_v5_215.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_201_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_200();
    l0 = self.box_EntityStatusListener_200;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1232228655", "1232228655", "UNI07_010_B20", "box_Simple_Node_201.Out", "box_EntityStatusListener_200.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_186_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_221();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|99633489", "99633489", "UNI07_010_B20", "box_OutputOrder_v2_186.Out", "box_Simple_Node_221.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_186_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_190();
    l0 = self.box_Delay_v5_190;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|711865222", "711865222", "UNI07_010_B20", "box_OutputOrder_v2_186.Out", "box_Delay_v5_190.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SetInteger_v2_127_Out()
    self:OnExit_box_SetInteger_v2_127_Out();
end;

function export:f_box_OutputOrder_v2_164_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_145();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1133130789", "1133130789", "UNI07_010_B20", "box_OutputOrder_v2_164.Out", "box_MissionBlockLayer_145.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_164_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_161();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|2069478075", "2069478075", "UNI07_010_B20", "box_OutputOrder_v2_164.Out", "box_BroadcastMessage_161.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_144_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_143();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1681203499", "1681203499", "UNI07_010_B20", "box_MissionBlockLayer_144.Activated", "box_MissionBlockLayer_143.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_6_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1416753553", "1416753553", "UNI07_010_B20", "box_ActivityAcknowledgeGate_6.Acknowledged", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_6_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|260445591", "260445591", "UNI07_010_B20", "box_ActivityAcknowledgeGate_6.Reloaded", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_210_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_219();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1624066038", "1624066038", "UNI07_010_B20", "box_OutputOrder_v2_210.Out", "box_SetContextualStrategy_219.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_210_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_191();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1555383943", "1555383943", "UNI07_010_B20", "box_OutputOrder_v2_210.Out", "box_SetContextualStrategy_191.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_131_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_14();
    l0 = self.box_MultipleOR_131;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|886144840", "886144840", "UNI07_010_B20", "box_MultipleOR_131.Out", "box_OutputOrder_v2_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box__DAMAGE_MONITOR_50_CentralBroken()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_71();
    l0 = self.box__DAMAGE_MONITOR_50;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|510405796", "510405796", "UNI07_010_B20", "box__DAMAGE_MONITOR_50.CentralBroken", "box_Simple_Node_71.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box__DAMAGE_MONITOR_50_CentralDamage()
    local params, l0, l1;
    params = self:OnEnter_box__BARKS_MANAGER_75();
    l0 = self.box__DAMAGE_MONITOR_50;
    l1 = self.box__BARKS_MANAGER_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1920076797", "1920076797", "UNI07_010_B20", "box__DAMAGE_MONITOR_50.CentralDamage", "box__BARKS_MANAGER_75.Central", l0:GetLuaBox(), l1:GetLuaBox());
    -- Central
    l1:Exec(0, params);
end;

function export:f_box__DAMAGE_MONITOR_50_EastBroken()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_74();
    l0 = self.box__DAMAGE_MONITOR_50;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1157094566", "1157094566", "UNI07_010_B20", "box__DAMAGE_MONITOR_50.EastBroken", "box_Simple_Node_74.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box__DAMAGE_MONITOR_50_EastDamage()
    local params, l0, l1;
    params = self:OnEnter_box__BARKS_MANAGER_77();
    l0 = self.box__DAMAGE_MONITOR_50;
    l1 = self.box__BARKS_MANAGER_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|462480582", "462480582", "UNI07_010_B20", "box__DAMAGE_MONITOR_50.EastDamage", "box__BARKS_MANAGER_77.East", l0:GetLuaBox(), l1:GetLuaBox());
    -- East
    l1:Exec(1, params);
end;

function export:f_box__DAMAGE_MONITOR_50_Out()
    local params, l0, l1;
    params = self:OnEnter_box__SMOKE_MANAGER_12();
    l0 = self.box__DAMAGE_MONITOR_50;
    l1 = self.box__SMOKE_MANAGER_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|906353387", "906353387", "UNI07_010_B20", "box__DAMAGE_MONITOR_50.Out", "box__SMOKE_MANAGER_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box__DAMAGE_MONITOR_50_PlayerDidDamage()
    local params, l0, l1;
    params = self:OnEnter_box__BARKS_MANAGER_10();
    l0 = self.box__DAMAGE_MONITOR_50;
    l1 = self.box__BARKS_MANAGER_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1993947952", "1993947952", "UNI07_010_B20", "box__DAMAGE_MONITOR_50.PlayerDidDamage", "box__BARKS_MANAGER_10.PlayerDamage", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayerDamage
    l1:Exec(5, params);
end;

function export:f_box__DAMAGE_MONITOR_50_SouthBroken()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_70();
    l0 = self.box__DAMAGE_MONITOR_50;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1832968245", "1832968245", "UNI07_010_B20", "box__DAMAGE_MONITOR_50.SouthBroken", "box_Simple_Node_70.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box__DAMAGE_MONITOR_50_SouthDamage()
    local params, l0, l1;
    params = self:OnEnter_box__BARKS_MANAGER_76();
    l0 = self.box__DAMAGE_MONITOR_50;
    l1 = self.box__BARKS_MANAGER_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1140600104", "1140600104", "UNI07_010_B20", "box__DAMAGE_MONITOR_50.SouthDamage", "box__BARKS_MANAGER_76.South", l0:GetLuaBox(), l1:GetLuaBox());
    -- South
    l1:Exec(6, params);
end;

function export:f_box_OutputOrder_v2_47_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_Wave_v2_53();
    l0 = self.box_SpawnAI_Wave_v2_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|345661304", "345661304", "UNI07_010_B20", "box_OutputOrder_v2_47.Out", "box_SpawnAI_Wave_v2_53.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_47_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_45();
    l0 = self.box_Delay_v5_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1794881771", "1794881771", "UNI07_010_B20", "box_OutputOrder_v2_47.Out", "box_Delay_v5_45.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_47_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_113();
    l0 = self.box_PlayDialog_v6_113;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|645009442", "645009442", "UNI07_010_B20", "box_OutputOrder_v2_47.Out", "box_PlayDialog_v6_113.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_47_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_135();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1978404062", "1978404062", "UNI07_010_B20", "box_OutputOrder_v2_47.Out", "box_Print_v2_135.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_86_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_69();
    l0 = self.box_Delay_v5_86;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|2104255262", "2104255262", "UNI07_010_B20", "box_Delay_v5_86.TimeElapsed", "box_ActivityObjectiveMarkerModifier_v3_69.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_84_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_83();
    l0 = self.box_Delay_v5_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|114690347", "114690347", "UNI07_010_B20", "box_OutputOrder_v2_84.Out", "box_Delay_v5_83.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_84_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_81();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1393609542", "1393609542", "UNI07_010_B20", "box_OutputOrder_v2_84.Out", "box_EndActivityObjective_v2_81.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_84_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityFact_118();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|688005666", "688005666", "UNI07_010_B20", "box_OutputOrder_v2_84.Out", "box_SetActivityFact_118.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_24_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_216();
    l0 = self.box_Delay_v5_24;
    l1 = self.box_Delay_v5_216;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|929660376", "929660376", "UNI07_010_B20", "box_Delay_v5_24.Started", "box_Delay_v5_216.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_24_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_24;
    l1 = self.box_MultipleOR_131;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1545555328", "1545555328", "UNI07_010_B20", "box_Delay_v5_24.TimeElapsed", "box_MultipleOR_131.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetActivityState_v2_140_Active()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Defend_Object_CORE_v3_115();
    l0 = self.box_Brick_Defend_Object_CORE_v3_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|846488134", "846488134", "UNI07_010_B20", "box_GetActivityState_v2_140.Active", "box_Brick_Defend_Object_CORE_v3_115.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_GetActivityState_v2_140_Canceled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_192;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1517234351", "1517234351", "UNI07_010_B20", "box_GetActivityState_v2_140.Canceled", "box_MultipleOR_192.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_GetActivityState_v2_140_Completed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_192;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|821749615", "821749615", "UNI07_010_B20", "box_GetActivityState_v2_140.Completed", "box_MultipleOR_192.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_GetActivityState_v2_140_Failed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_192;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|13299665", "13299665", "UNI07_010_B20", "box_GetActivityState_v2_140.Failed", "box_MultipleOR_192.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetActivityState_v2_140_Inactive()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_192;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|910638447", "910638447", "UNI07_010_B20", "box_GetActivityState_v2_140.Inactive", "box_MultipleOR_192.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_GetActivityState_v2_140_Unavailable()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_192;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1074570471", "1074570471", "UNI07_010_B20", "box_GetActivityState_v2_140.Unavailable", "box_MultipleOR_192.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_13();
    l0 = self.box_MultipleOR_8;
    l1 = self.box_Delay_v5_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1641804615", "1641804615", "UNI07_010_B20", "box_MultipleOR_8.Out", "box_Delay_v5_13.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_GetPlayerGroup_v2_17_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_17_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_11();
    l0 = self.box_CharacterLoadedIdListener_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|488500935", "488500935", "UNI07_010_B20", "box_GetPlayerGroup_v2_17.Out", "box_CharacterLoadedIdListener_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_129_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_130();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|2128149849", "2128149849", "UNI07_010_B20", "box_Simple_Node_129.Out", "box_Compare_Integers_130.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_65_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_80();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|195611666", "195611666", "UNI07_010_B20", "box_EndActivityObjective_v2_65.Out", "box_Simple_Node_80.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box__BARKS_MANAGER_75_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_188();
    l0 = self.box__BARKS_MANAGER_75;
    l1 = self.box_Gate_v3_188;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1101280728", "1101280728", "UNI07_010_B20", "box__BARKS_MANAGER_75.Out", "box_Gate_v3_188.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Simple_Node_70_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box__FEEDBAK_MANAGER_52();
    l0 = self.box__FEEDBAK_MANAGER_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1744965774", "1744965774", "UNI07_010_B20", "box_Simple_Node_70.Out", "box__FEEDBAK_MANAGER_52.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_EntityStatusListener_38_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_42();
    l0 = self.box_EntityStatusListener_38;
    l1 = self.box_EntityStatusListener_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|671181580", "671181580", "UNI07_010_B20", "box_EntityStatusListener_38.Enabled", "box_EntityStatusListener_42.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_38_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_158();
    l0 = self.box_EntityStatusListener_38;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1619846951", "1619846951", "UNI07_010_B20", "box_EntityStatusListener_38.Loaded", "box_OutputOrder_v2_158.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_191_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_5();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|2080721783", "2080721783", "UNI07_010_B20", "box_SetContextualStrategy_191.Out", "box_ActivityEnd_5.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_180_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_178();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|232695196", "232695196", "UNI07_010_B20", "box_AddActivityObjective_v2_180.Out", "box_EndActivityObjective_v2_178.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityForceAndLockTracking_184_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_17();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|466365660", "466365660", "UNI07_010_B20", "box_ActivityForceAndLockTracking_184.Enabled", "box_GetPlayerGroup_v2_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_106_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_25();
    l0 = self.box_Delay_v5_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|984122699", "984122699", "UNI07_010_B20", "box_OutputOrder_v2_106.Out", "box_Delay_v5_25.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_106_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__BRAWLER_MANAGER_46();
    l0 = self.box__BRAWLER_MANAGER_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1267005840", "1267005840", "UNI07_010_B20", "box_OutputOrder_v2_106.Out", "box__BRAWLER_MANAGER_46.StopInfiniteBrawler", clone:GetLuaBox(), l0:GetLuaBox());
    -- StopInfiniteBrawler
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_106_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_127();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|2122643106", "2122643106", "UNI07_010_B20", "box_OutputOrder_v2_106.Out", "box_SetInteger_v2_127.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_106_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_218();
    l0 = self.box_PlayDialog_v6_218;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|2099511176", "2099511176", "UNI07_010_B20", "box_OutputOrder_v2_106.Out", "box_PlayDialog_v6_218.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_Brick_Defend_Object_CORE_v3_19_Fail()
    local params, l0, l1;
    self:OnExit_box_Brick_Defend_Object_CORE_v3_19_Fail();
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = self.box_Brick_Defend_Object_CORE_v3_19;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1287575390", "1287575390", "UNI07_010_B20", "box_Brick_Defend_Object_CORE_v3_19.Fail", "box_OutputOrder_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Defend_Object_CORE_v3_19_Out()
    self:OnExit_box_Brick_Defend_Object_CORE_v3_19_Out();
end;

function export:f_box_Brick_Defend_Object_CORE_v3_19_Success()
    local l0, l1;
    self:OnExit_box_Brick_Defend_Object_CORE_v3_19_Success();
    l0 = self.box_Brick_Defend_Object_CORE_v3_19;
    l1 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1474081799", "1474081799", "UNI07_010_B20", "box_Brick_Defend_Object_CORE_v3_19.Success", "box_MultipleOR_30.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Defend_Object_CORE_v3_19_Waves()
    local params, l0, l1;
    self:OnExit_box_Brick_Defend_Object_CORE_v3_19_Waves();
    params = self:OnEnter_box_Simple_Node_58();
    l0 = self.box_Brick_Defend_Object_CORE_v3_19;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|2016080419", "2016080419", "UNI07_010_B20", "box_Brick_Defend_Object_CORE_v3_19.Waves", "box_Simple_Node_58.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_Wave_v2_109_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_106();
    l0 = self.box_SpawnAI_Wave_v2_109;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|2063094075", "2063094075", "UNI07_010_B20", "box_SpawnAI_Wave_v2_109.NextWave", "box_OutputOrder_v2_106.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_148_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|74099411", "74099411", "UNI07_010_B20", "box_OutputOrder_v2_148.Out", "box_MultipleOR_30.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_148_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_58();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1249098313", "1249098313", "UNI07_010_B20", "box_OutputOrder_v2_148.Out", "box_Simple_Node_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_148_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_80();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|661444788", "661444788", "UNI07_010_B20", "box_OutputOrder_v2_148.Out", "box_Simple_Node_80.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_148_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_183();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1258576474", "1258576474", "UNI07_010_B20", "box_OutputOrder_v2_148.Out", "box_AddActivityObjective_v2_183.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_170_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_102();
    l0 = self.box_Delay_v5_170;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1688878764", "1688878764", "UNI07_010_B20", "box_Delay_v5_170.TimeElapsed", "box_ParticleSystem_v3_102.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_183_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_182();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|2075951975", "2075951975", "UNI07_010_B20", "box_AddActivityObjective_v2_183.Out", "box_EndActivityObjective_v2_182.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_181_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_179();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|766368956", "766368956", "UNI07_010_B20", "box_AddActivityObjective_v2_181.Out", "box_EndActivityObjective_v2_179.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_85_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_82();
    l0 = self.box_Delay_v5_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1829913732", "1829913732", "UNI07_010_B20", "box_OutputOrder_v2_85.Out", "box_Delay_v5_82.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_85_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_41();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|215044565", "215044565", "UNI07_010_B20", "box_OutputOrder_v2_85.Out", "box_EndActivityObjective_v2_41.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_85_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityFact_120();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1605790034", "1605790034", "UNI07_010_B20", "box_OutputOrder_v2_85.Out", "box_SetActivityFact_120.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_83_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_73();
    l0 = self.box_Delay_v5_83;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1934309946", "1934309946", "UNI07_010_B20", "box_Delay_v5_83.TimeElapsed", "box_ActivityObjectiveMarkerModifier_v3_73.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_171_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_99();
    l0 = self.box_Delay_v5_171;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|2120100161", "2120100161", "UNI07_010_B20", "box_Delay_v5_171.TimeElapsed", "box_ParticleSystem_v3_99.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_128_A_gt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_129();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|263462957", "263462957", "UNI07_010_B20", "box_Compare_Integers_128.A_gt_B", "box_Simple_Node_129.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_128_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_47();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1989803398", "1989803398", "UNI07_010_B20", "box_Compare_Integers_128.A_le_B", "box_OutputOrder_v2_47.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_126_Out()
    self:OnExit_box_SetInteger_v2_126_Out();
end;

function export:f_box_OutputOrder_v2_32_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1533121859", "1533121859", "UNI07_010_B20", "box_OutputOrder_v2_32.Out", "box_MultipleOR_29.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_32_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_85();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|893494827", "893494827", "UNI07_010_B20", "box_OutputOrder_v2_32.Out", "box_OutputOrder_v2_85.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_194_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_150();
    l0 = self.box_MultipleOR_194;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1431860819", "1431860819", "UNI07_010_B20", "box_MultipleOR_194.Out", "box_OutputOrder_v2_150.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_150_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|980986621", "980986621", "UNI07_010_B20", "box_OutputOrder_v2_150.Out", "box_MultipleOR_29.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_150_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_61();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1324475940", "1324475940", "UNI07_010_B20", "box_OutputOrder_v2_150.Out", "box_Simple_Node_61.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_150_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_80();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|488641551", "488641551", "UNI07_010_B20", "box_OutputOrder_v2_150.Out", "box_Simple_Node_80.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_150_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_180();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1989050312", "1989050312", "UNI07_010_B20", "box_OutputOrder_v2_150.Out", "box_AddActivityObjective_v2_180.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_133_A_ge_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_134;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1257403043", "1257403043", "UNI07_010_B20", "box_Compare_Integers_133.A_ge_B", "box_MultipleOR_134.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Spawner_v2_103_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_171();
    l0 = self.box_Delay_v5_171;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|480661383", "480661383", "UNI07_010_B20", "box_Spawner_v2_103.Out", "box_Delay_v5_171.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_21_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_39();
    l0 = self.box_MultipleOR_21;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1013483659", "1013483659", "UNI07_010_B20", "box_MultipleOR_21.Out", "box_Simple_Node_39.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_44_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityInitialized_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1969236097", "1969236097", "UNI07_010_B20", "box_OutputOrder_v2_44.Out", "box_ActivityInitialized_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_44_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_2();
    l0 = self.box_ExitZoneWarningListener_v3_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|2085876371", "2085876371", "UNI07_010_B20", "box_OutputOrder_v2_44.Out", "box_ExitZoneWarningListener_v3_2.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_44_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_121();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|51496278", "51496278", "UNI07_010_B20", "box_OutputOrder_v2_44.Out", "box_MissionBlockLayer_121.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_204_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_205();
    l0 = self.box_EntityStatusListener_204;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1671427249", "1671427249", "UNI07_010_B20", "box_EntityStatusListener_204.Loaded", "box_OutputOrder_v2_205.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box__FEEDBAK_MANAGER_54_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Spawner_v2_142();
    l0 = self.box__FEEDBAK_MANAGER_54;
    l1 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|674484671", "674484671", "UNI07_010_B20", "box__FEEDBAK_MANAGER_54.Disabled", "box_Spawner_v2_142.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box__FEEDBAK_MANAGER_54_DisabledFeedbackOnly()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_117();
    l0 = self.box__FEEDBAK_MANAGER_54;
    l1 = self.box_MultipleAND_v2_117;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1675687999", "1675687999", "UNI07_010_B20", "box__FEEDBAK_MANAGER_54.DisabledFeedbackOnly", "box_MultipleAND_v2_117.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_MultipleAND_v2_169_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityMiscInfoModifier_v2_152();
    l0 = self.box_MultipleAND_v2_169;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|908640869", "908640869", "UNI07_010_B20", "box_MultipleAND_v2_169.Out", "box_ActivityMiscInfoModifier_v2_152.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_Wave_v2_22_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_20();
    l0 = self.box_SpawnAI_Wave_v2_22;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|826094912", "826094912", "UNI07_010_B20", "box_SpawnAI_Wave_v2_22.NextWave", "box_OutputOrder_v2_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_132_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_133();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1232782674", "1232782674", "UNI07_010_B20", "box_Simple_Node_132.Out", "box_Compare_Integers_133.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_24();
    l0 = self.box_Delay_v5_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|991590844", "991590844", "UNI07_010_B20", "box_OutputOrder_v2_7.Out", "box_Delay_v5_24.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__BRAWLER_MANAGER_105();
    l0 = self.box__BRAWLER_MANAGER_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|840888207", "840888207", "UNI07_010_B20", "box_OutputOrder_v2_7.Out", "box__BRAWLER_MANAGER_105.StopInfiniteBrawler", clone:GetLuaBox(), l0:GetLuaBox());
    -- StopInfiniteBrawler
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_7_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_126();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|2021650138", "2021650138", "UNI07_010_B20", "box_OutputOrder_v2_7.Out", "box_SetInteger_v2_126.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_91();
    l0 = self.box_PlayDialog_v6_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1217002561", "1217002561", "UNI07_010_B20", "box_OutputOrder_v2_7.Out", "box_PlayDialog_v6_91.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_66_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_9();
    l0 = self.box_Delay_v5_66;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|813213827", "813213827", "UNI07_010_B20", "box_Delay_v5_66.TimeElapsed", "box_OutputOrder_v2_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_153_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_40();
    l0 = self.box_Delay_v5_153;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1412948472", "1412948472", "UNI07_010_B20", "box_Delay_v5_153.TimeElapsed", "box_OutputOrder_v2_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Spawner_v2_142_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_170();
    l0 = self.box_Delay_v5_170;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|939455522", "939455522", "UNI07_010_B20", "box_Spawner_v2_142.Out", "box_Delay_v5_170.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v2_185_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_222();
    l0 = self.box_ProximityTrigger_v2_185;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|554595134", "554595134", "UNI07_010_B20", "box_ProximityTrigger_v2_185.Enter", "box_Simple_Node_222.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_59_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_66();
    l0 = self.box_MultipleOR_59;
    l1 = self.box_Delay_v5_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|354192492", "354192492", "UNI07_010_B20", "box_MultipleOR_59.Out", "box_Delay_v5_66.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_15_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_44();
    l0 = self.box_MultipleOR_15;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|30667788", "30667788", "UNI07_010_B20", "box_MultipleOR_15.Out", "box_OutputOrder_v2_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_60_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_Wave_v2_55();
    l0 = self.box_SpawnAI_Wave_v2_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|125387617", "125387617", "UNI07_010_B20", "box_OutputOrder_v2_60.Out", "box_SpawnAI_Wave_v2_55.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_60_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|823181952", "823181952", "UNI07_010_B20", "box_OutputOrder_v2_60.Out", "box_MultipleOR_59.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_60_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_137();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1525207227", "1525207227", "UNI07_010_B20", "box_OutputOrder_v2_60.Out", "box_Print_v2_137.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_215_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_114();
    l0 = self.box_Delay_v5_215;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1732048053", "1732048053", "UNI07_010_B20", "box_Delay_v5_215.TimeElapsed", "box_Simple_Node_114.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_71_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box__FEEDBAK_MANAGER_54();
    l0 = self.box__FEEDBAK_MANAGER_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1166397376", "1166397376", "UNI07_010_B20", "box_Simple_Node_71.Out", "box__FEEDBAK_MANAGER_54.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box__FEEDBAK_MANAGER_52_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Spawner_v2_100();
    l0 = self.box__FEEDBAK_MANAGER_52;
    l1 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|82318508", "82318508", "UNI07_010_B20", "box__FEEDBAK_MANAGER_52.Disabled", "box_Spawner_v2_100.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box__FEEDBAK_MANAGER_52_DisabledFeedbackOnly()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_117();
    l0 = self.box__FEEDBAK_MANAGER_52;
    l1 = self.box_MultipleAND_v2_117;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|431897415", "431897415", "UNI07_010_B20", "box__FEEDBAK_MANAGER_52.DisabledFeedbackOnly", "box_MultipleAND_v2_117.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_Delay_v5_216_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_110();
    l0 = self.box_Delay_v5_216;
    l1 = self.box_PlayDialog_v6_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1222574098", "1222574098", "UNI07_010_B20", "box_Delay_v5_216.TimeElapsed", "box_PlayDialog_v6_110.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_87_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_86();
    l0 = self.box_Delay_v5_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1413122076", "1413122076", "UNI07_010_B20", "box_OutputOrder_v2_87.Out", "box_Delay_v5_86.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_87_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_65();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1529583650", "1529583650", "UNI07_010_B20", "box_OutputOrder_v2_87.Out", "box_EndActivityObjective_v2_65.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_87_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityFact_119();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|575063666", "575063666", "UNI07_010_B20", "box_OutputOrder_v2_87.Out", "box_SetActivityFact_119.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_82_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_72();
    l0 = self.box_Delay_v5_82;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|569706238", "569706238", "UNI07_010_B20", "box_Delay_v5_82.TimeElapsed", "box_ActivityObjectiveMarkerModifier_v3_72.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_220_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_153();
    l0 = self.box_Delay_v5_153;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|591012314", "591012314", "UNI07_010_B20", "box_OutputOrder_v2_220.Out", "box_Delay_v5_153.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_220_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_223();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|854315323", "854315323", "UNI07_010_B20", "box_OutputOrder_v2_220.Out", "box_Simple_Node_223.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundMusicTriggerBox_89_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PostWWiseEventSetState_90();
    l0 = self.box_SoundMusicTriggerBox_89;
    l1 = self.box_PostWWiseEventSetState_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|2064705854", "2064705854", "UNI07_010_B20", "box_SoundMusicTriggerBox_89.Started", "box_PostWWiseEventSetState_90.SetState", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetState
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_37_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_38();
    l0 = self.box_EntityStatusListener_37;
    l1 = self.box_EntityStatusListener_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1076323864", "1076323864", "UNI07_010_B20", "box_EntityStatusListener_37.Enabled", "box_EntityStatusListener_38.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_37_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_156();
    l0 = self.box_EntityStatusListener_37;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|433150286", "433150286", "UNI07_010_B20", "box_EntityStatusListener_37.Loaded", "box_OutputOrder_v2_156.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_29_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_64();
    l0 = self.box_MultipleOR_29;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|2018175782", "2018175782", "UNI07_010_B20", "box_MultipleOR_29.Out", "box_Simple_Node_64.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_9_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__BRAWLER_MANAGER_108();
    l0 = self.box__BRAWLER_MANAGER_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1250004829", "1250004829", "UNI07_010_B20", "box_OutputOrder_v2_9.Out", "box__BRAWLER_MANAGER_108.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_9_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__BRAWLER_MANAGER_107();
    l0 = self.box__BRAWLER_MANAGER_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1439727110", "1439727110", "UNI07_010_B20", "box_OutputOrder_v2_9.Out", "box__BRAWLER_MANAGER_107.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_MultipleAND_v2_117_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_224();
    l0 = self.box_MultipleAND_v2_117;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|797737823", "797737823", "UNI07_010_B20", "box_MultipleAND_v2_117.Out", "box_Simple_Node_224.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1127684335", "1127684335", "UNI07_010_B20", "box_OutputOrder_v2_18.Out", "box_MultipleOR_30.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_84();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1930689251", "1930689251", "UNI07_010_B20", "box_OutputOrder_v2_18.Out", "box_OutputOrder_v2_84.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_99_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_125();
    l0 = self.box_SoundModifier_v2_125;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1050929029", "1050929029", "UNI07_010_B20", "box_ParticleSystem_v3_99.Started", "box_SoundModifier_v2_125.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_134_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_60();
    l0 = self.box_MultipleOR_134;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1744977418", "1744977418", "UNI07_010_B20", "box_MultipleOR_134.Out", "box_OutputOrder_v2_60.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_188_Out()
    local params, l0, l1;
    params = self:OnEnter_box__FEEDBAK_MANAGER_54();
    l0 = self.box_Gate_v3_188;
    l1 = self.box__FEEDBAK_MANAGER_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|323829980", "323829980", "UNI07_010_B20", "box_Gate_v3_188.Out", "box__FEEDBAK_MANAGER_54.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_SoundMusicTriggerBox_93_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PostWWiseEventSetState_92();
    l0 = self.box_SoundMusicTriggerBox_93;
    l1 = self.box_PostWWiseEventSetState_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|2133367178", "2133367178", "UNI07_010_B20", "box_SoundMusicTriggerBox_93.Started", "box_PostWWiseEventSetState_92.SetState", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetState
    l1:Exec(0, params);
end;

function export:f_box_Switch_23_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_116();
    l0 = self.box_Switch_23;
    l1 = self.box_PlayDialog_v6_116;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1610297900", "1610297900", "UNI07_010_B20", "box_Switch_23.Output", "box_PlayDialog_v6_116.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_23_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_172();
    l0 = self.box_Switch_23;
    l1 = self.box_PlayDialog_v6_172;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1086161548", "1086161548", "UNI07_010_B20", "box_Switch_23.Output", "box_PlayDialog_v6_172.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_23_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_173();
    l0 = self.box_Switch_23;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1177621650", "1177621650", "UNI07_010_B20", "box_Switch_23.Output", "box_OutputOrder_v2_173.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_192_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_149();
    l0 = self.box_MultipleOR_192;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1585740756", "1585740756", "UNI07_010_B20", "box_MultipleOR_192.Out", "box_OutputOrder_v2_149.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box__BRAWLER_MANAGER_111_Brawler_Dead()
    local params, l0, l1;
    params = self:OnEnter_box__BRAWLER_MANAGER_105();
    l0 = self.box__BRAWLER_MANAGER_111;
    l1 = self.box__BRAWLER_MANAGER_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|2076964981", "2076964981", "UNI07_010_B20", "box__BRAWLER_MANAGER_111.Brawler_Dead", "box__BRAWLER_MANAGER_105.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GroupSizeListener_v5_214_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_212();
    l0 = self.box_GroupSizeListener_v5_214;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1472108637", "1472108637", "UNI07_010_B20", "box_GroupSizeListener_v5_214.MemberRemoved", "box_Compare_Integers_212.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_41_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_80();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|917561316", "917561316", "UNI07_010_B20", "box_EndActivityObjective_v2_41.Out", "box_Simple_Node_80.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box__BRAWLER_MANAGER_56_Brawler_Dead()
    local params, l0, l1;
    params = self:OnEnter_box__BRAWLER_MANAGER_46();
    l0 = self.box__BRAWLER_MANAGER_56;
    l1 = self.box__BRAWLER_MANAGER_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1182013794", "1182013794", "UNI07_010_B20", "box__BRAWLER_MANAGER_56.Brawler_Dead", "box__BRAWLER_MANAGER_46.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_14_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_Wave_v2_22();
    l0 = self.box_SpawnAI_Wave_v2_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|392222226", "392222226", "UNI07_010_B20", "box_OutputOrder_v2_14.Out", "box_SpawnAI_Wave_v2_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_14_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1391633383", "1391633383", "UNI07_010_B20", "box_OutputOrder_v2_14.Out", "box_MultipleOR_8.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_14_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_136();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1712024217", "1712024217", "UNI07_010_B20", "box_OutputOrder_v2_14.Out", "box_Print_v2_136.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Defend_Object_CORE_v3_115_Fail()
    local params, l0, l1;
    self:OnExit_box_Brick_Defend_Object_CORE_v3_115_Fail();
    params = self:OnEnter_box_OutputOrder_v2_31();
    l0 = self.box_Brick_Defend_Object_CORE_v3_115;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1456653698", "1456653698", "UNI07_010_B20", "box_Brick_Defend_Object_CORE_v3_115.Fail", "box_OutputOrder_v2_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Defend_Object_CORE_v3_115_Out()
    self:OnExit_box_Brick_Defend_Object_CORE_v3_115_Out();
end;

function export:f_box_Brick_Defend_Object_CORE_v3_115_Success()
    local l0, l1;
    self:OnExit_box_Brick_Defend_Object_CORE_v3_115_Success();
    l0 = self.box_Brick_Defend_Object_CORE_v3_115;
    l1 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1968319804", "1968319804", "UNI07_010_B20", "box_Brick_Defend_Object_CORE_v3_115.Success", "box_MultipleOR_21.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Defend_Object_CORE_v3_115_Waves()
    local params, l0, l1;
    self:OnExit_box_Brick_Defend_Object_CORE_v3_115_Waves();
    params = self:OnEnter_box_Simple_Node_67();
    l0 = self.box_Brick_Defend_Object_CORE_v3_115;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|62543471", "62543471", "UNI07_010_B20", "box_Brick_Defend_Object_CORE_v3_115.Waves", "box_Simple_Node_67.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_123_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_98();
    l0 = self.box_SoundModifier_v2_123;
    l1 = self.box_Delay_v5_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|958242739", "958242739", "UNI07_010_B20", "box_SoundModifier_v2_123.Started", "box_Delay_v5_98.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_213_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_26();
    l0 = self.box_MultipleOR_213;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|876121456", "876121456", "UNI07_010_B20", "box_MultipleOR_213.Out", "box_OutputOrder_v2_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_200_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_202();
    l0 = self.box_EntityStatusListener_200;
    l1 = self.box_EntityStatusListener_202;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1231274793", "1231274793", "UNI07_010_B20", "box_EntityStatusListener_200.Enabled", "box_EntityStatusListener_202.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_200_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_195();
    l0 = self.box_EntityStatusListener_200;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|712999471", "712999471", "UNI07_010_B20", "box_EntityStatusListener_200.Loaded", "box_OutputOrder_v2_195.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_187_Out()
    local params, l0, l1;
    params = self:OnEnter_box__FEEDBAK_MANAGER_52();
    l0 = self.box_Gate_v3_187;
    l1 = self.box__FEEDBAK_MANAGER_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|267320204", "267320204", "UNI07_010_B20", "box_Gate_v3_187.Out", "box__FEEDBAK_MANAGER_52.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_13_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box__BRAWLER_MANAGER_56();
    l0 = self.box_Delay_v5_13;
    l1 = self.box__BRAWLER_MANAGER_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|533089980", "533089980", "UNI07_010_B20", "box_Delay_v5_13.TimeElapsed", "box__BRAWLER_MANAGER_56.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_98_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_165();
    l0 = self.box_Delay_v5_98;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|550364101", "550364101", "UNI07_010_B20", "box_Delay_v5_98.TimeElapsed", "box_OutputOrder_v2_165.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_48_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_96();
    l0 = self.box_MultipleAND_v2_48;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1706267372", "1706267372", "UNI07_010_B20", "box_MultipleAND_v2_48.Out", "box_OutputOrder_v2_96.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_101_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_164();
    l0 = self.box_Delay_v5_101;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1431940839", "1431940839", "UNI07_010_B20", "box_Delay_v5_101.TimeElapsed", "box_OutputOrder_v2_164.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box__FEEDBAK_MANAGER_63_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Spawner_v2_103();
    l0 = self.box__FEEDBAK_MANAGER_63;
    l1 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|2018781515", "2018781515", "UNI07_010_B20", "box__FEEDBAK_MANAGER_63.Disabled", "box_Spawner_v2_103.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box__FEEDBAK_MANAGER_63_DisabledFeedbackOnly()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_117();
    l0 = self.box__FEEDBAK_MANAGER_63;
    l1 = self.box_MultipleAND_v2_117;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|474393438", "474393438", "UNI07_010_B20", "box__FEEDBAK_MANAGER_63.DisabledFeedbackOnly", "box_MultipleAND_v2_117.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 2);
end;

function export:f_box_EntityStatusListener_202_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_204();
    l0 = self.box_EntityStatusListener_202;
    l1 = self.box_EntityStatusListener_204;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1178433859", "1178433859", "UNI07_010_B20", "box_EntityStatusListener_202.Enabled", "box_EntityStatusListener_204.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_202_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_206();
    l0 = self.box_EntityStatusListener_202;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1971463819", "1971463819", "UNI07_010_B20", "box_EntityStatusListener_202.Loaded", "box_OutputOrder_v2_206.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_149_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1486628333", "1486628333", "UNI07_010_B20", "box_OutputOrder_v2_149.Out", "box_MultipleOR_21.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_149_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_67();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|849851269", "849851269", "UNI07_010_B20", "box_OutputOrder_v2_149.Out", "box_Simple_Node_67.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_149_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_80();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|963852600", "963852600", "UNI07_010_B20", "box_OutputOrder_v2_149.Out", "box_Simple_Node_80.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_149_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_181();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|357573219", "357573219", "UNI07_010_B20", "box_OutputOrder_v2_149.Out", "box_AddActivityObjective_v2_181.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_205_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_207();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|250858302", "250858302", "UNI07_010_B20", "box_OutputOrder_v2_205.Out", "box_StaticBreakableBreaker_207.SetUnDamageable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetUnDamageable
    l0:Exec(5, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_205_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MetaBreakableModifier_v2_203();
    l0 = self.box_MetaBreakableModifier_v2_203;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|841049788", "841049788", "UNI07_010_B20", "box_OutputOrder_v2_205.Out", "box_MetaBreakableModifier_v2_203.SetUnDamageable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetUnDamageable
    l0:Exec(3, params);
end;

function export:f_box_MissionBlockLayer_145_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_146();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|350150810", "350150810", "UNI07_010_B20", "box_MissionBlockLayer_145.Activated", "box_MissionBlockLayer_146.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_104_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_163();
    l0 = self.box_Delay_v5_104;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|907003415", "907003415", "UNI07_010_B20", "box_Delay_v5_104.TimeElapsed", "box_OutputOrder_v2_163.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_212_A_le_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_213;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1536216071", "1536216071", "UNI07_010_B20", "box_Compare_Integers_212.A_le_B", "box_MultipleOR_213.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_163_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_147();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|341211524", "341211524", "UNI07_010_B20", "box_OutputOrder_v2_163.Out", "box_MissionBlockLayer_147.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_163_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_162();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1432321295", "1432321295", "UNI07_010_B20", "box_OutputOrder_v2_163.Out", "box_BroadcastMessage_162.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_25_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_217();
    l0 = self.box_Delay_v5_25;
    l1 = self.box_Delay_v5_217;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|2077912950", "2077912950", "UNI07_010_B20", "box_Delay_v5_25.Started", "box_Delay_v5_217.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_25_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_25;
    l1 = self.box_MultipleOR_134;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|317933779", "317933779", "UNI07_010_B20", "box_Delay_v5_25.TimeElapsed", "box_MultipleOR_134.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ExitZoneWarningListener_v3_2_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_1();
    l0 = self.box_ExitZoneWarningListener_v3_2;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|584170515", "584170515", "UNI07_010_B20", "box_ExitZoneWarningListener_v3_2.FailingZoneEntered", "box_ActivityRetry_1.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ExitZoneWarningListener_v3_2_WarningZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_186();
    l0 = self.box_ExitZoneWarningListener_v3_2;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|2059634954", "2059634954", "UNI07_010_B20", "box_ExitZoneWarningListener_v3_2.WarningZoneEntered", "box_OutputOrder_v2_186.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_217_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_51();
    l0 = self.box_Delay_v5_217;
    l1 = self.box_PlayDialog_v6_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|2036039804", "2036039804", "UNI07_010_B20", "box_Delay_v5_217.TimeElapsed", "box_PlayDialog_v6_51.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:OnEnter_box_Simple_Node_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|@Central");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_61_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|@East");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_67_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_224()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_224");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|@FeedbackOff");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_224_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_223()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_223");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|@init");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_223_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|@LastWave CleanUp");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_57_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|@n_EndureComplete");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_33_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|@n_Failed");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_80_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|@SetDamagable");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_43_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|@South");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_58_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_222()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_222");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|@StartMessages");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_222_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_221()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_221");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|@StopMessages");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_221_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_55()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 1,
        -- AttackerSpawner_1,
        [1] = "2102988803265388553",
        -- CoreNPCGroup,
        [2] = "#D846F3A9",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2103581964847046967",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_165()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_165");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|13060825");
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
                [0] = self.f_box_OutputOrder_v2_165_Out_0,
                [1] = self.f_box_OutputOrder_v2_165_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_151()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_151");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|14834022");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "63189041656746420",
        -- missionLayerId,
        [1] = "27160246213658799",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_156()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_156");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|20069383");
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
                [0] = self.f_box_OutputOrder_v2_156_Out_0,
                [1] = self.f_box_OutputOrder_v2_156_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_166()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_160()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_160");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|44941518");
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
                [0] = self.f_box_OutputOrder_v2_160_Out_0,
                [1] = self.f_box_OutputOrder_v2_160_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_114()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|56641907");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_114_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_124()
    local params;
    params = {
        -- Pawns,
        [0] = "2103072291377137639",
        -- SoundId,
        [1] = "504422272",
        -- SoundType,
        [2] = 10,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|66389865");
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
                [0] = self.f_box_OutputOrder_v2_20_Out_0,
                [1] = self.f_box_OutputOrder_v2_20_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|67661247");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_62_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2103485056145189228",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|82088014");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_39_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_178()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_178");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|92362462");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI07_010_B20_OBJ_West",
            id = "730267",
        },
        -- Success,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_146()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_146");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|93638095");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160244637552378",
        -- missionLayerId,
        [1] = "36167445468421332",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_179()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_179");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|103314269");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI07_010_B20_OBJ_East",
            id = "730198",
        },
        -- Success,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_4()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box__BARKS_MANAGER_76()
    local params;
    params = {
        -- Delay,
        [0] = 10,
        -- Grace,
        [1] = self.e_Grace,
        -- RelevencyTime,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_209()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_45()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|127466078");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_64_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_11()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015184074452450",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_53()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 1,
        -- AttackerSpawner_1,
        [1] = "2102986436604075659",
        -- CoreNPCGroup,
        [2] = "#D846F3A9",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2102999919399824077",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|189632681");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_74_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_121()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|196272009");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160227826473774",
        -- missionLayerId,
        [1] = "27160245554912641",
    };
    return params;
end;

function export:OnEnter_box__BRAWLER_MANAGER_107()
    local params;
    params = {
        -- BrawlerGroup,
        [0] = "#0710F73C",
        -- InfiniteBrawlerRespawner,
        [2] = "2103581033363431294",
        -- InfiniteSpawnerTimer,
        [3] = 3.5,
        -- IsBrawlerInfiniteRespawner,
        [4] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_173()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_173");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|231264451");
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
                [0] = self.f_box_OutputOrder_v2_173_Out_0,
                [1] = self.f_box_OutputOrder_v2_173_Out_1,
                [2] = self.f_box_OutputOrder_v2_173_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_141()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_141");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|235372567");
    l0:SetConnections({
        -- Active,
        [0] = self.f_box_GetActivityState_v2_141_Active,
        -- Canceled,
        [1] = self.f_box_GetActivityState_v2_141_Canceled,
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_141_Completed,
        -- Failed,
        [3] = self.f_box_GetActivityState_v2_141_Failed,
        -- Inactive,
        [4] = self.f_box_GetActivityState_v2_141_Inactive,
        -- Unavailable,
        [6] = self.f_box_GetActivityState_v2_141_Unavailable,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015279108370020",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_147()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_147");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|249214916");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_147_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "63189041656746420",
        -- missionLayerId,
        [1] = "72196240911487412",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_206()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_206");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|251486436");
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
                [0] = self.f_box_OutputOrder_v2_206_Out_0,
                [1] = self.f_box_OutputOrder_v2_206_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|261801871");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_102_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2103485094449670533",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|262012371");
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
                [0] = self.f_box_OutputOrder_v2_40_Out_0,
                [1] = self.f_box_OutputOrder_v2_40_Out_1,
                [2] = self.f_box_OutputOrder_v2_40_Out_2,
                [3] = self.f_box_OutputOrder_v2_40_Out_3,
                [4] = self.f_box_OutputOrder_v2_40_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Defend_Object_CORE_v3_49()
    local params;
    params = {
        -- Attacker_Group,
        [0] = "#D846F3A9",
        -- CompletePreviousObjective,
        [1] = false,
        -- DisplayObjectHealthBar,
        [2] = true,
        -- Entities_Group,
        [3] = "#57251069",
        -- Entity_Single,
        [4] = "2102791719968852094",
        -- IsGroup,
        [5] = false,
        -- IsVehicle,
        [6] = false,
        -- Marker,
        [7] = "2102791719975143555",
        -- MinimumIntactRequired,
        [8] = 1,
        -- Objective,
        [9] = {
            section = "Objectives",
            item = "UNI07_010_B20_OBJ_West",
            id = "730267",
        },
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_174()
    local params;
    params = {
        -- Group,
        [0] = self.e_Grace,
        -- RelevancyTime,
        [1] = 3,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "2701139570",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_198()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_198");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|276077632");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2102614622405148917",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|289539580");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2102614622405148917",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|303664768");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_81_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI07_010_B20_OBJ_Wave1",
            id = "730188",
        },
        -- Success,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_Spawner_v2_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Spawner_v2_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|315696420");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_Spawner_v2_100_Out,
    });
    params = {
        -- archetype,
        [0] = "9015283639702979",
        -- pitch,
        [1] = 0,
        -- roll,
        [2] = 0,
        -- target,
        [3] = "2104146529490074393",
        -- xPos,
        [4] = 0,
        -- yaw,
        [5] = 0,
        -- yPos,
        [6] = 0,
        -- zPos,
        [7] = 0,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_68()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 1,
        -- AttackerSpawner_1,
        [1] = "2103580519481499516",
        -- CoreNPCGroup,
        [2] = "#D846F3A9",
        -- IsLastWave,
        [3] = true,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2103581942915031218",
        -- opt_AttackerSpawner_3,
        [6] = "2104629757495751562",
        -- opt_AttackerSpawner_5,
        [8] = "2104629788539893397",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|358421549");
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
                [0] = self.f_box_OutputOrder_v2_31_Out_0,
                [1] = self.f_box_OutputOrder_v2_31_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_120()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|362167563");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "UNI07_Center_Tomb_Destroyed",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|382527543");
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
                [0] = self.f_box_OutputOrder_v2_28_Out_0,
                [1] = self.f_box_OutputOrder_v2_28_Out_1,
                [2] = self.f_box_OutputOrder_v2_28_Out_2,
                [3] = self.f_box_OutputOrder_v2_28_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityMiscInfoModifier_v2_152()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityMiscInfoModifier_v2_152");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|382566600");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityMiscInfoModifier_v2_152_Out,
    });
    params = {
        -- ActivityAbortAndFastTravelEnabled,
        [0] = true,
        -- SleepingCampEnabled,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_139()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_139");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|400798220");
    l0:SetConnections({
        -- Active,
        [0] = self.f_box_GetActivityState_v2_139_Active,
        -- Canceled,
        [1] = self.f_box_GetActivityState_v2_139_Canceled,
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_139_Completed,
        -- Failed,
        [3] = self.f_box_GetActivityState_v2_139_Failed,
        -- Inactive,
        [4] = self.f_box_GetActivityState_v2_139_Inactive,
        -- Unavailable,
        [6] = self.f_box_GetActivityState_v2_139_Unavailable,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015279108670388",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_189()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_159()
    local params;
    params = {
        -- targets,
        [0] = "2102601353707667380",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_190()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_158()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_158");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|419198375");
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
                [0] = self.f_box_OutputOrder_v2_158_Out_0,
                [1] = self.f_box_OutputOrder_v2_158_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_168()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_168");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|434381897");
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
                [0] = self.f_box_OutputOrder_v2_168_Out_0,
                [1] = self.f_box_OutputOrder_v2_168_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_16()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_51()
    local params;
    params = {
        -- Group,
        [0] = self.e_Grace,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2576691150",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_130()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|502508665");
    l0:SetConnections({
        -- A_gt_B,
        [2] = self.f_box_Compare_Integers_130_A_gt_B,
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_130_A_le_B,
    });
    params = {
        -- A,
        [0] = PersistentGlobals.UNI07_010_B20.uni07_wavecounter,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|503664922");
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

function export:OnEnter_box_OutputOrder_v2_195()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_195");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|517036777");
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
                [0] = self.f_box_OutputOrder_v2_195_Out_0,
                [1] = self.f_box_OutputOrder_v2_195_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|551185757");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2102587103941509000",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI07_010_B20_OBJ_Wave1",
            id = "730188",
        },
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_176()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = self.gPlayerGroup,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104424056485865926",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_42()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2102601353707667380",
    };
    return params;
end;

function export:OnEnter_box__BARKS_MANAGER_77()
    local params;
    params = {
        -- Delay,
        [0] = 10,
        -- Grace,
        [1] = self.e_Grace,
        -- RelevencyTime,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_125()
    local params;
    params = {
        -- Pawns,
        [0] = "2103003623345633359",
        -- SoundId,
        [1] = "504422272",
        -- SoundType,
        [2] = 10,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box__SMOKE_MANAGER_12()
    local params;
    params = {
        -- Central_Smoke,
        [0] = "2102791719962560634",
        -- CentralTrigger,
        [1] = "2103223736216950747",
        -- East_Smoke,
        [2] = "2102612997659739330",
        -- EastTrigger,
        [3] = "2103223717957046766",
        -- Hostiles,
        [4] = "#72595516",
        -- RestartDelay,
        [5] = 5,
        -- South_Smoke,
        [6] = "2102600035341449755",
        -- SouthTrigger,
        [7] = "2103223730139404111",
        -- StartDelay,
        [8] = 5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_225()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_162()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_162");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|673427122");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "CenterTombDestroyed",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|675670381");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2102791719968852094",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|679611644");
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
                [0] = self.f_box_OutputOrder_v2_96_Out_0,
                [1] = self.f_box_OutputOrder_v2_96_Out_1,
                [2] = self.f_box_OutputOrder_v2_96_Out_2,
                [3] = self.f_box_OutputOrder_v2_96_Out_3,
                [4] = self.f_box_OutputOrder_v2_96_Out_4,
                [5] = self.f_box_OutputOrder_v2_96_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|679902109");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2102601353707667380",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_201()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_201");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|685158580");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_201_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_155()
    local params;
    params = {
        -- targets,
        [0] = "2102614622405148917",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_186()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_186");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|706061280");
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
                [0] = self.f_box_OutputOrder_v2_186_Out_0,
                [1] = self.f_box_OutputOrder_v2_186_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_127()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_127");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|709625650");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_127_Out,
    });
    params = {
        -- Integer,
        [1] = 2,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_164()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_164");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|713974752");
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
                [0] = self.f_box_OutputOrder_v2_164_Out_0,
                [1] = self.f_box_OutputOrder_v2_164_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_144()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_144");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|719525741");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_144_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "45174643147254784",
        -- missionLayerId,
        [1] = "54181842401995776",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_210()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_210");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|737247185");
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

function export:OnEnter_box_PostWWiseEventSetState_90()
    local params;
    DrawTextToScreen("Comment: Set MUS MIS 02", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PostWWiseEventSetState')-- Comment: Set MUS MIS 02");
    params = {
        -- SoundId,
        [0] = "2102059229",
        -- SoundType,
        [1] = 17,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|758137991");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "UNI07_010_B40_FAIL",
            id = "880100",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|761849351");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2102614688431882576",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI07_010_B20_OBJ_East",
            id = "730198",
        },
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_91()
    local params;
    params = {
        -- Group,
        [0] = self.e_Grace,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3308985615",
    };
    return params;
end;

function export:OnEnter_box__DAMAGE_MONITOR_50()
    local params;
    params = {
        -- CentralBreakable,
        [0] = "2102791719968852094",
        -- CentralSoundPoint,
        [1] = "2103072291377137639",
        -- EastBreakable,
        [2] = "2102614622405148917",
        -- EastSoundPoint,
        [3] = "2103003623345633359",
        -- RestartDelay,
        [4] = 10,
        -- SouthBreakable,
        [5] = "2102601353707667380",
        -- SouthSoundPoint,
        [6] = "2103110762573622453",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|805807347");
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
                [0] = self.f_box_OutputOrder_v2_47_Out_0,
                [1] = self.f_box_OutputOrder_v2_47_Out_1,
                [2] = self.f_box_OutputOrder_v2_47_Out_2,
                [3] = self.f_box_OutputOrder_v2_47_Out_3,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_203()
    local params;
    params = {
        -- targets,
        [0] = "2102601353707667380",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_86()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_84()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|866061982");
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
                [0] = self.f_box_OutputOrder_v2_84_Out_0,
                [1] = self.f_box_OutputOrder_v2_84_Out_1,
                [2] = self.f_box_OutputOrder_v2_84_Out_2,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_24()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = self.BetweenWave_Tmer,
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_118()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|877393926");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "UNI07_South_Tomb_Destroyed",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|885829210");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_140()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_140");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|888529393");
    l0:SetConnections({
        -- Active,
        [0] = self.f_box_GetActivityState_v2_140_Active,
        -- Canceled,
        [1] = self.f_box_GetActivityState_v2_140_Canceled,
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_140_Completed,
        -- Failed,
        [3] = self.f_box_GetActivityState_v2_140_Failed,
        -- Inactive,
        [4] = self.f_box_GetActivityState_v2_140_Inactive,
        -- Unavailable,
        [6] = self.f_box_GetActivityState_v2_140_Unavailable,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015279106740287",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_182()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_182");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|893190830");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI07_010_B20_OBJ_Wave1",
            id = "730188",
        },
        -- Success,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|897230460");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_17_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_129()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|902567254");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_129_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box__ENEMY_BARKS_MANAGER_177()
    local params;
    params = {
        -- GuardGroup,
        [0] = "#D846F3A9",
        -- MaxDelay,
        [1] = 12,
        -- MinDelay,
        [2] = 7,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|913485006");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_65_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI07_010_B20_OBJ_East",
            id = "730198",
        },
        -- Success,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box__BARKS_MANAGER_75()
    local params;
    params = {
        -- Delay,
        [0] = 10,
        -- Grace,
        [1] = self.e_Grace,
        -- RelevencyTime,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|917209822");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_70_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_38()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2102791719968852094",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_191()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_191");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|941040762");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_191_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104493830907652831",
        -- Group,
        [1] = "#72595516",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_180()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_180");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|967818034");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_180_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "UNI07_010_B20_OBJ_West",
            id = "730267",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_ActivityForceAndLockTracking_184()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityForceAndLockTracking_184");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|972175485");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityForceAndLockTracking_184_Enabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_106()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|985207356");
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
                [0] = self.f_box_OutputOrder_v2_106_Out_0,
                [1] = self.f_box_OutputOrder_v2_106_Out_1,
                [2] = self.f_box_OutputOrder_v2_106_Out_2,
                [3] = self.f_box_OutputOrder_v2_106_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Defend_Object_CORE_v3_19()
    local params;
    params = {
        -- Attacker_Group,
        [0] = "#D846F3A9",
        -- CompletePreviousObjective,
        [1] = false,
        -- DisplayObjectHealthBar,
        [2] = true,
        -- Entities_Group,
        [3] = "#57251069",
        -- Entity_Single,
        [4] = "2102601353707667380",
        -- IsGroup,
        [5] = false,
        -- IsVehicle,
        [6] = false,
        -- Marker,
        [7] = "2102587103941509000",
        -- MinimumIntactRequired,
        [8] = 1,
        -- Objective,
        [9] = {
            section = "Objectives",
            item = "UNI07_010_B20_OBJ_Wave1",
            id = "730188",
        },
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_154()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_154");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|996347984");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2101357354860714926",
        -- Group,
        [1] = self.e_Grace,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_109()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 1,
        -- AttackerSpawner_1,
        [1] = "2103913190998948653",
        -- CoreNPCGroup,
        [2] = "#D846F3A9",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2103913169683495353",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_148()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_148");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1038990026");
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
                [0] = self.f_box_OutputOrder_v2_148_Out_0,
                [1] = self.f_box_OutputOrder_v2_148_Out_1,
                [2] = self.f_box_OutputOrder_v2_148_Out_2,
                [3] = self.f_box_OutputOrder_v2_148_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_113()
    local params;
    params = {
        -- Group,
        [0] = self.e_Grace,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1178601565",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_170()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_183()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_183");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1040705944");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_183_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "UNI07_010_B20_OBJ_Wave1",
            id = "730188",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_181()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_181");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1044652755");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_181_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "UNI07_010_B20_OBJ_East",
            id = "730198",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_196()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_196");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1050135469");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "UNI007_Failed",
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_193()
    local params;
    params = {
        -- targets,
        [0] = "2102791719968852094",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1059385804");
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
                [0] = self.f_box_OutputOrder_v2_85_Out_0,
                [1] = self.f_box_OutputOrder_v2_85_Out_1,
                [2] = self.f_box_OutputOrder_v2_85_Out_2,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_136()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_136");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1060714254");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "red",
        -- duration,
        [3] = 5,
        -- int,
        [6] = PersistentGlobals.UNI07_010_B20.uni07_wavecounter,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "wave two",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_83()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_171()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_128()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_128");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1079435390");
    l0:SetConnections({
        -- A_gt_B,
        [2] = self.f_box_Compare_Integers_128_A_gt_B,
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_128_A_le_B,
    });
    params = {
        -- A,
        [0] = PersistentGlobals.UNI07_010_B20.uni07_wavecounter,
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_126()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1096397625");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_126_Out,
    });
    params = {
        -- Integer,
        [1] = 1,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1099417592");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "UNI07_010_B20_FAIL_Destroyed",
            id = "887382",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1113965822");
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
                [0] = self.f_box_OutputOrder_v2_32_Out_0,
                [1] = self.f_box_OutputOrder_v2_32_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_137()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_137");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1143123742");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "red",
        -- duration,
        [3] = 5,
        -- int,
        [6] = PersistentGlobals.UNI07_010_B20.uni07_wavecounter,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "wave three",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_150()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_150");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1168258375");
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
                [0] = self.f_box_OutputOrder_v2_150_Out_0,
                [1] = self.f_box_OutputOrder_v2_150_Out_1,
                [2] = self.f_box_OutputOrder_v2_150_Out_2,
                [3] = self.f_box_OutputOrder_v2_150_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_133()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_133");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1181140963");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_133_A_ge_B,
    });
    params = {
        -- A,
        [0] = PersistentGlobals.UNI07_010_B20.uni07_wavecounter,
        -- B,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_Spawner_v2_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Spawner_v2_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1197333507");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_Spawner_v2_103_Out,
    });
    params = {
        -- archetype,
        [0] = "9015283639702979",
        -- pitch,
        [1] = 0,
        -- roll,
        [2] = 0,
        -- target,
        [3] = "2104146524364634901",
        -- xPos,
        [4] = 0,
        -- yaw,
        [5] = 0,
        -- yPos,
        [6] = 0,
        -- zPos,
        [7] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1198708169");
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
                [0] = self.f_box_OutputOrder_v2_44_Out_0,
                [2] = self.f_box_OutputOrder_v2_44_Out_2,
                [3] = self.f_box_OutputOrder_v2_44_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_204()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2102601353707667380",
    };
    return params;
end;

function export:OnEnter_box__FEEDBAK_MANAGER_54()
    local params;
    params = {
        -- ObjectiveMarker,
        [0] = "2102791719975143555",
        -- ObjevtiveID,
        [1] = {
            section = "Objectives",
            item = "UNI07_010_B20_OBJ_West",
            id = "730267",
        },
        -- WarningMessage,
        [2] = {
            section = "CustomMessage",
            item = "UNI07_010_B20_CMESS_Close",
            id = "785899",
        },
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_169()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_197()
    local params;
    params = {
        -- targets,
        [0] = "2102614622405148917",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_22()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 1,
        -- AttackerSpawner_1,
        [1] = "2103003027576200818",
        -- CoreNPCGroup,
        [2] = "#D846F3A9",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2103913158459537228",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_132()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_132");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1267075952");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_132_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1285447128");
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
                [0] = self.f_box_OutputOrder_v2_7_Out_0,
                [1] = self.f_box_OutputOrder_v2_7_Out_1,
                [2] = self.f_box_OutputOrder_v2_7_Out_2,
                [3] = self.f_box_OutputOrder_v2_7_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_66()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
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

function export:OnEnter_box_MissionBlockLayer_143()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_143");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1296416671");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "45174643147254784",
        -- missionLayerId,
        [1] = "45174644723267118",
    };
    return params;
end;

function export:OnEnter_box_PostWWiseEventSetState_92()
    local params;
    DrawTextToScreen("Comment: Set MUS MIS None", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PostWWiseEventSetState')-- Comment: Set MUS MIS None");
    params = {
        -- SoundId,
        [0] = "2367254800",
        -- SoundType,
        [1] = 17,
    };
    return params;
end;

function export:OnEnter_box__BRAWLER_MANAGER_105()
    local params;
    params = {
        -- BrawlerGroup,
        [0] = "#72595516",
        -- InfiniteBrawlerRespawner,
        [2] = "2103567708843940617",
        -- InfiniteSpawnerTimer,
        [3] = 2,
        -- IsBrawlerInfiniteRespawner,
        [4] = true,
    };
    return params;
end;

function export:OnEnter_box_Spawner_v2_142()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Spawner_v2_142");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1346461564");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_Spawner_v2_142_Out,
    });
    params = {
        -- archetype,
        [0] = "9015283639702979",
        -- pitch,
        [1] = 0,
        -- roll,
        [2] = 0,
        -- target,
        [3] = "2104146521025968913",
        -- xPos,
        [4] = 0,
        -- yaw,
        [5] = 0,
        -- yPos,
        [6] = 0,
        -- zPos,
        [7] = 0,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_185()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2101477683727737474",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_116()
    local params;
    params = {
        -- Group,
        [0] = self.e_Grace,
        -- RelevancyTime,
        [1] = 3,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "3465726992",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_219()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_219");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1410260407");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104493830907652831",
        -- Group,
        [1] = "#D846F3A9",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1426232013");
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
                [3] = self.f_box_OutputOrder_v2_60_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_215()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box__BRAWLER_MANAGER_108()
    local params;
    params = {
        -- BrawlerGroup,
        [0] = "#9974629F",
        -- InfiniteBrawlerRespawner,
        [2] = "2103581016217115845",
        -- InfiniteSpawnerTimer,
        [3] = 3.5,
        -- IsBrawlerInfiniteRespawner,
        [4] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_135()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_135");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1465216653");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "red",
        -- duration,
        [3] = 5,
        -- int,
        [6] = PersistentGlobals.UNI07_010_B20.uni07_wavecounter,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "wave one",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1472893254");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_71_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_157()
    local params;
    params = {
        -- targets,
        [0] = "2102791719968852094",
    };
    return params;
end;

function export:OnEnter_box__FEEDBAK_MANAGER_52()
    local params;
    params = {
        -- ObjectiveMarker,
        [0] = "2102587103941509000",
        -- ObjevtiveID,
        [1] = {
            section = "Objectives",
            item = "UNI07_010_B20_OBJ_Wave1",
            id = "730188",
        },
        -- WarningMessage,
        [2] = {
            section = "CustomMessage",
            item = "UNI07_010_B20_CMESS_Mid",
            id = "785900",
        },
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_216()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 7,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1527012380");
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
                [0] = self.f_box_OutputOrder_v2_87_Out_0,
                [1] = self.f_box_OutputOrder_v2_87_Out_1,
                [2] = self.f_box_OutputOrder_v2_87_Out_2,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_82()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_220()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_220");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1548811996");
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
                [0] = self.f_box_OutputOrder_v2_220_Out_0,
                [1] = self.f_box_OutputOrder_v2_220_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundMusicTriggerBox_89()
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
        [5] = "2145560885",
        -- StopEvent,
        [6] = "1199723764",
        -- StopFadeOut,
        [7] = 0.5,
        -- WaitUntilMusicEndMarker,
        [8] = false,
        -- WaitUntilNotInVehicle,
        [9] = true,
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
        [2] = "2102614622405148917",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1601376720");
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
                [0] = self.f_box_OutputOrder_v2_9_Out_0,
                [1] = self.f_box_OutputOrder_v2_9_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box__BARKS_MANAGER_10()
    local params;
    params = {
        -- Delay,
        [0] = 1.5,
        -- Grace,
        [1] = self.e_Grace,
        -- RelevencyTime,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_117()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_110()
    local params;
    params = {
        -- Group,
        [0] = self.e_Grace,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1061805380",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1661353553");
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
                [0] = self.f_box_OutputOrder_v2_18_Out_0,
                [1] = self.f_box_OutputOrder_v2_18_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_119()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1663793439");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "UNI07_East_Tomb_Destroyed",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1666076041");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_99_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2103485079467616635",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_122()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1685167195");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160227826473774",
        -- missionLayerId,
        [1] = "27160245554912641",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_188()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundMusicTriggerBox_93()
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
        [5] = "2145560885",
        -- StopEvent,
        [6] = "1199723764",
        -- StopFadeOut,
        [7] = 0.5,
        -- WaitUntilMusicEndMarker,
        [8] = false,
        -- WaitUntilNotInVehicle,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_199()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_199");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1723326496");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2102791719968852094",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Switch_23()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_172()
    local params;
    params = {
        -- Group,
        [0] = self.e_Grace,
        -- RelevancyTime,
        [1] = 3,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "1787269119",
    };
    return params;
end;

function export:OnEnter_box__BRAWLER_MANAGER_111()
    local params;
    params = {
        -- BrawlerGroup,
        [0] = "#72595516",
        -- BrawlerSpawner,
        [1] = "2102986490960160133",
        -- IsBrawlerInfiniteRespawner,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_214()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#D846F3A9",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1783047207");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_41_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI07_010_B20_OBJ_West",
            id = "730267",
        },
        -- Success,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box__BRAWLER_MANAGER_56()
    local params;
    params = {
        -- BrawlerGroup,
        [0] = "#777A03B3",
        -- BrawlerSpawner,
        [1] = "2102988803305234466",
        -- IsBrawlerInfiniteRespawner,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1817282788");
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
                [0] = self.f_box_OutputOrder_v2_14_Out_0,
                [1] = self.f_box_OutputOrder_v2_14_Out_1,
                [3] = self.f_box_OutputOrder_v2_14_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1818031955");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2102791719975143555",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI07_010_B20_OBJ_West",
            id = "730267",
        },
    };
    return params;
end;

function export:OnEnter_box_Brick_Defend_Object_CORE_v3_115()
    local params;
    params = {
        -- Attacker_Group,
        [0] = "#D846F3A9",
        -- CompletePreviousObjective,
        [1] = false,
        -- DisplayObjectHealthBar,
        [2] = true,
        -- Entities_Group,
        [3] = "#57251069",
        -- Entity_Single,
        [4] = "2102614622405148917",
        -- IsGroup,
        [5] = false,
        -- IsVehicle,
        [6] = false,
        -- Marker,
        [7] = "2102614688431882576",
        -- MinimumIntactRequired,
        [8] = 1,
        -- Objective,
        [9] = {
            section = "Objectives",
            item = "UNI07_010_B20_OBJ_East",
            id = "730198",
        },
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_123()
    local params;
    params = {
        -- Pawns,
        [0] = "2103110762573622453",
        -- SoundId,
        [1] = "504422272",
        -- SoundType,
        [2] = 10,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_207()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_207");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|1828444229");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2102601353707667380",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box__BRAWLER_MANAGER_46()
    local params;
    params = {
        -- BrawlerGroup,
        [0] = "#777A03B3",
        -- InfiniteBrawlerRespawner,
        [2] = "2103567871612302238",
        -- InfiniteSpawnerTimer,
        [3] = 2,
        -- IsBrawlerInfiniteRespawner,
        [4] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_218()
    local params;
    params = {
        -- Group,
        [0] = self.e_Grace,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1397967538",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_200()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2102614622405148917",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_187()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_13()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_98()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.3,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_48()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_101()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.3,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_112()
    local params;
    params = {
        -- Group,
        [0] = self.e_Grace,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "898699445",
    };
    return params;
end;

function export:OnEnter_box__FEEDBAK_MANAGER_63()
    local params;
    params = {
        -- ObjectiveMarker,
        [0] = "2102612997659739330",
        -- ObjevtiveID,
        [1] = {
            section = "Objectives",
            item = "UNI07_010_B20_OBJ_East",
            id = "730198",
        },
        -- WarningMessage,
        [2] = {
            section = "CustomMessage",
            item = "UNI07_010_B20_CMESS_Far",
            id = "785901",
        },
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_202()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2102791719968852094",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_149()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_149");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|2025271978");
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
                [0] = self.f_box_OutputOrder_v2_149_Out_0,
                [1] = self.f_box_OutputOrder_v2_149_Out_1,
                [2] = self.f_box_OutputOrder_v2_149_Out_2,
                [3] = self.f_box_OutputOrder_v2_149_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_205()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_205");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|2031328982");
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
                [0] = self.f_box_OutputOrder_v2_205_Out_0,
                [1] = self.f_box_OutputOrder_v2_205_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_167()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_167");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|2039524459");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "SouthTombDestroyed",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_145()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_145");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|2041044461");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_145_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160244637552378",
        -- missionLayerId,
        [1] = "36167443892293371",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|2044468296");
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
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_104()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.3,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_212()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_212");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|2052793541");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_212_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v5_214;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_138()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_138");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|2057964965");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "red",
        -- duration,
        [3] = 5,
        -- int,
        [6] = PersistentGlobals.UNI07_010_B20.uni07_wavecounter,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "before the wave",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_163()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_163");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|2069539134");
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
                [0] = self.f_box_OutputOrder_v2_163_Out_0,
                [1] = self.f_box_OutputOrder_v2_163_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_161()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_161");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI07\\UNI07_010_B20.domino|@UNI07_010_B20|2093046977");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "EastTombDestroyed",
    };
    return params;
end;

function export:OnEnter_box__BARKS_MANAGER_175()
    local params;
    params = {
        -- Delay,
        [0] = 10,
        -- Grace,
        [1] = self.e_Grace,
        -- RelevencyTime,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_25()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = self.BetweenWave_Tmer,
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_2()
    local params;
    params = {
        -- bShowUI,
        [0] = true,
        -- CoopFailRequiresAllPlayer,
        [1] = false,
        -- FailingZoneTrigger,
        [2] = "2101477699542360707",
        -- WarningZoneTrigger,
        [3] = "2101477683727737474",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_217()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 7,
    };
    return params;
end;

function export:OnExit_box_CharacterLoadedIdListener_11_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_11;
    self.e_Grace = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_Defend_Object_CORE_v3_49_Fail()
    local l0;
    l0 = self.box_Brick_Defend_Object_CORE_v3_49;
    self.var_FailureReason = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_Defend_Object_CORE_v3_49_Out()
    local l0;
    l0 = self.box_Brick_Defend_Object_CORE_v3_49;
    self.var_FailureReason = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_Defend_Object_CORE_v3_49_Success()
    local l0;
    l0 = self.box_Brick_Defend_Object_CORE_v3_49;
    self.var_FailureReason = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_Defend_Object_CORE_v3_49_Waves()
    local l0;
    l0 = self.box_Brick_Defend_Object_CORE_v3_49;
    self.var_FailureReason = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_127_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    PersistentGlobals.UNI07_010_B20.uni07_wavecounter = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_17_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayerGroup = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_Defend_Object_CORE_v3_19_Fail()
    local l0;
    l0 = self.box_Brick_Defend_Object_CORE_v3_19;
    self.var_FailureReason = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_Defend_Object_CORE_v3_19_Out()
    local l0;
    l0 = self.box_Brick_Defend_Object_CORE_v3_19;
    self.var_FailureReason = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_Defend_Object_CORE_v3_19_Success()
    local l0;
    l0 = self.box_Brick_Defend_Object_CORE_v3_19;
    self.var_FailureReason = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_Defend_Object_CORE_v3_19_Waves()
    local l0;
    l0 = self.box_Brick_Defend_Object_CORE_v3_19;
    self.var_FailureReason = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_126_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    PersistentGlobals.UNI07_010_B20.uni07_wavecounter = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_Defend_Object_CORE_v3_115_Fail()
    local l0;
    l0 = self.box_Brick_Defend_Object_CORE_v3_115;
    self.var_FailureReason = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_Defend_Object_CORE_v3_115_Out()
    local l0;
    l0 = self.box_Brick_Defend_Object_CORE_v3_115;
    self.var_FailureReason = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_Defend_Object_CORE_v3_115_Success()
    local l0;
    l0 = self.box_Brick_Defend_Object_CORE_v3_115;
    self.var_FailureReason = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_Defend_Object_CORE_v3_115_Waves()
    local l0;
    l0 = self.box_Brick_Defend_Object_CORE_v3_115;
    self.var_FailureReason = l0:GetDataOutValue(0);
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
