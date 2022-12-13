LUACf -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni55/uni55_010/uni55_010_b40.domino
-- User graph: UNI55_010_B40
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Endure_Waves.Brick_Endure_CORE_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/CompareEntity.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/GroupAddToGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/IsEntityInGroup.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetHealthState.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SoundMusicTrigger.lua");
        cboxRes:RegisterBox("Domino/System/UI/ActivityForceAndLockTracking.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI55/UNI55_010/UNI55_010_B40.Firecrackers.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI55/UNI55_010/UNI55_010_B40.MusicStartPedalSTP.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI55/UNI55_010/UNI55_INTRO.DisableMusicSwitches.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1821819760.bnk]], "CSoundResource");
        cboxRes:LoadResource([[525636272.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3547171754.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1994537422.bnk]], "CSoundResource");
        cboxRes:LoadResource([[159871221.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3958019656.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4041105811.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3016011382.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2367592577.bnk]], "CSoundResource");
        cboxRes:LoadResource([[763903013.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2769548366.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4148494270.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2617156071.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1997590707.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1127458137.bnk]], "CSoundResource");
        cboxRes:LoadResource([[614526270.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI55/UNI55_010/UNI55_010_B40.UNI55_010_B40.debug.lua")] = {
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
        },
        controlOutCount = 4,
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI55/UNI55_010/UNI55_010_B40.Firecrackers.debug.lua")] = {
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
            [0] = {
                name = "Cracker1",
                type = "entity",
            },
            [1] = {
                name = "Cracker2",
                type = "entity",
            },
            [2] = {
                name = "Cracker3",
                type = "entity",
            },
            [3] = {
                name = "Cracker4",
                type = "entity",
            },
            [4] = {
                name = "Cracker5",
                type = "entity",
            },
            [5] = {
                name = "GroundCrackersBlue",
                type = "entity",
            },
            [6] = {
                name = "GroundCrackersRed",
                type = "entity",
            },
            [7] = {
                name = "ProximityTrigger",
                type = "entity",
            },
        },
        dataInCount = 8,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI55/UNI55_010/UNI55_010_B40.MusicStartPedalSTP.debug.lua")] = {
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
                name = "eIsUNI024",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI55/UNI55_010/UNI55_INTRO.DisableMusicSwitches.debug.lua")] = {
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
    self._name = "UNI55_010_B40";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40";
    self.gFriendlyPlayers = nil;
    self.eUNI024 = nil;
    self.box_ActivityInitialized_3 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|281344");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_3_Out,
    });
    self.box_Delay_v5_88 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|19236925");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_88_TimeElapsed,
    });
    self.box_SpawnAI_Wave_v2_12 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|24294986");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_12_NextWave,
    });
    self.box_RemoveEntity_v2_43 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|25098559");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_43_Out,
    });
    self.box_RemoveEntity_v2_44 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|125915822");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_44_Out,
    });
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|132183962");
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
    self.box_SpawnAI_Wave_v2_13 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|152250828");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_13_NextWave,
    });
    self.box_MusicStartPedalSTP_39 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI55/UNI55_010/UNI55_010_B40.MusicStartPedalSTP.debug.lua");
    l0 = self.box_MusicStartPedalSTP_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MusicStartPedalSTP_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|152716850");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MusicStartPedalSTP_39_Out,
    });
    self.box_Gate_v3_111 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|187219271");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_111_Out,
    });
    self.box_PlayDialog_v6_121 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_121;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|269105019");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_121_Finished,
    });
    self.box_SoundModifier_v2_38 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|366010980");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_38_Started,
    });
    self.box_Delay_v5_69 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|426598611");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_69_TimeElapsed,
    });
    self.box_ProximityTrigger_v2_58 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|466697024");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_58_Enter,
    });
    self.box_SpawnAI_Wave_v2_18 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|521065485");
    l0:SetConnections({
        -- LastWave_Cleanup,
        [1] = self.f_box_SpawnAI_Wave_v2_18_LastWave_Cleanup,
    });
    self.box_SpawnAI_Wave_v2_8 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|565925889");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_8_NextWave,
    });
    self.box_PlayDialog_v6_122 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_122;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|644726168");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_34 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|771291633");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_34_Started,
    });
    self.box_SoundMusicTriggerBox_42 = cbox:CreateBox("Domino/System/SoundMusicTrigger.lua");
    l0 = self.box_SoundMusicTriggerBox_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMusicTriggerBox_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|783934051");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_116 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|784124493");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_116_Finished,
        -- Started,
        [4] = self.f_box_PlayDialog_v6_116_Started,
    });
    self.box_PlayDialog_v6_114 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|792540942");
    l0:SetConnections({
    });
    self.box_SpawnAI_Wave_v2_16 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|811239824");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_16_NextWave,
    });
    self.box_SpawnAI_Wave_v2_15 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|815149619");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_15_NextWave,
    });
    self.box_OnceOnly_v3_9 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|867108222");
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
                [0] = self.f_box_OnceOnly_v3_9_Out_0,
            },
            count = 2,
        },
    });
    self.box_Firecrackers_98 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI55/UNI55_010/UNI55_010_B40.Firecrackers.debug.lua");
    l0 = self.box_Firecrackers_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Firecrackers_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|871885886");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_23 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|894676027");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_23_Started,
    });
    self.box_PlayDialog_v6_120 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|909573608");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_120_Finished,
    });
    self.box_HealthListener_v6_100 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|977854212");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_100_Downed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_100_Revived,
    });
    self.box_Gate_v3_106 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|983723686");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_106_Closed,
        -- Opened,
        [1] = self.f_box_Gate_v3_106_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_106_Out,
    });
    self.box_Delay_v5_40 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1004588263");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_40_TimeElapsed,
    });
    self.box_SoundModifier_v2_64 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1014458894");
    l0:SetConnections({
    });
    self.box_Delay_v5_59 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1050611046");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_59_TimeElapsed,
    });
    self.box_DisableMusicSwitches_99 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI55/UNI55_010/UNI55_INTRO.DisableMusicSwitches.debug.lua");
    l0 = self.box_DisableMusicSwitches_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisableMusicSwitches_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1120593352");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_47 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1127085714");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_47_Started,
    });
    self.box_Gate_v3_82 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1143590811");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_82_Out,
    });
    self.box_CharacterLoadedIdListener_5 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1257136954");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_5_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_5_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_5_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_5_LoadedIdReceived,
    });
    self.box_MultipleOR_26 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1294678153");
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
        [0] = self.f_box_MultipleOR_26_Out,
    });
    self.box_Gate_v3_101 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1323291101");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_101_Closed,
        -- Opened,
        [1] = self.f_box_Gate_v3_101_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_101_Out,
    });
    self.box_MultipleOR_83 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1355234447");
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
        [0] = self.f_box_MultipleOR_83_Out,
    });
    self.box_SoundModifier_v2_41 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1359379888");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_41_Started,
    });
    self.box_SoundModifier_v2_45 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1409588378");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_45_Started,
    });
    self.box_PlayDialog_v6_119 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1474712354");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_119_Finished,
        -- Started,
        [4] = self.f_box_PlayDialog_v6_119_Started,
    });
    self.box_Gate_v3_105 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1482403802");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_105_Closed,
        -- Opened,
        [1] = self.f_box_Gate_v3_105_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_105_Out,
    });
    self.box_Firecrackers_97 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI55/UNI55_010/UNI55_010_B40.Firecrackers.debug.lua");
    l0 = self.box_Firecrackers_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Firecrackers_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1486331316");
    l0:SetConnections({
    });
    self.box_Gate_v3_85 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1604646012");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_85_Out,
    });
    self.box_Gate_v3_102 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1614088317");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_102_Out,
    });
    self.box_HealthListener_v6_89 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1630599690");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_HealthListener_v6_89_Critical,
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_89_Damaged,
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_89_Disabled,
        -- Downed,
        [3] = self.f_box_HealthListener_v6_89_Downed,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_89_Enabled,
        -- Healed,
        [5] = self.f_box_HealthListener_v6_89_Healed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_89_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_89_Revived,
    });
    self.box_RemoveEntity_v2_54 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1645875113");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_56 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1654879997");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_56_Enter,
    });
    self.box_Brick_Endure_CORE_v3_25 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Endure_Waves.Brick_Endure_CORE_v3.debug.lua");
    l0 = self.box_Brick_Endure_CORE_v3_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Endure_CORE_v3_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1692452019");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_Brick_Endure_CORE_v3_25_Fail,
        -- Success,
        [2] = self.f_box_Brick_Endure_CORE_v3_25_Success,
        -- Waves,
        [3] = self.f_box_Brick_Endure_CORE_v3_25_Waves,
    });
    self.box_PlayDialog_v6_118 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1697973299");
    l0:SetConnections({
    });
    self.box_HealthListener_v6_91 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1698263088");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_HealthListener_v6_91_Critical,
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_91_Damaged,
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_91_Disabled,
        -- Downed,
        [3] = self.f_box_HealthListener_v6_91_Downed,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_91_Enabled,
        -- Healed,
        [5] = self.f_box_HealthListener_v6_91_Healed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_91_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_91_Revived,
    });
    self.box_SoundModifier_v2_46 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1720009720");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_46_Started,
    });
    self.box_SoundModifier_v2_55 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1720420635");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_55_Started,
    });
    self.box_PlayDialog_v6_115 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1744417893");
    l0:SetConnections({
    });
    self.box_Delay_v5_87 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1758912863");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_87_TimeElapsed,
    });
    self.box_Gate_v3_104 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1760187354");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_104_Out,
    });
    self.box_SoundModifier_v2_37 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1787965472");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_37_Started,
    });
    self.box_ActivityAcknowledgeGate_6 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1814914324");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_6_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_6_Reloaded,
    });
    self.box_Delay_v5_71 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1840075837");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_71_TimeElapsed,
    });
    self.box_SoundModifier_v2_36 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1855912002");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_36_Started,
    });
    self.box_Random_67 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1857415284");
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
                [0] = self.f_box_Random_67_Output_0,
                [1] = self.f_box_Random_67_Output_1,
            },
            count = 2,
        },
    });
    self.box_PlayDialog_v6_117 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1933299604");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_117_Finished,
    });
    self.box_SoundModifier_v2_33 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1984483441");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_33_Started,
    });
    self.box_RemoveEntity_v2_51 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1993035788");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_51_Out,
    });
    self.box_SoundModifier_v2_57 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|2011345956");
    l0:SetConnections({
    });
    self.box_Gate_v3_35 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|2110515312");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_35_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_2();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|842464574", "842464574", "UNI55_010_B40", "In", "box_OutputOrder_v2_2.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_113_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_111();
    l0 = self.box_Gate_v3_111;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|515538083", "515538083", "UNI55_010_B40", "box_Simple_Node_113.Out", "box_Gate_v3_111.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_28_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|699755548", "699755548", "UNI55_010_B40", "box_Simple_Node_28.Out", "box_OnceOnly_v3_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_108_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_101();
    l0 = self.box_Gate_v3_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1396840664", "1396840664", "UNI55_010_B40", "box_Simple_Node_108.Out", "box_Gate_v3_101.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
    params = self:OnEnter_box_Gate_v3_105();
    l0 = self.box_Gate_v3_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|2058855694", "2058855694", "UNI55_010_B40", "box_Simple_Node_108.Out", "box_Gate_v3_105.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
    params = self:OnEnter_box_Gate_v3_104();
    l0 = self.box_Gate_v3_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1273533822", "1273533822", "UNI55_010_B40", "box_Simple_Node_108.Out", "box_Gate_v3_104.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
    params = self:OnEnter_box_Gate_v3_85();
    l0 = self.box_Gate_v3_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|898173557", "898173557", "UNI55_010_B40", "box_Simple_Node_108.Out", "box_Gate_v3_85.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
    params = self:OnEnter_box_Gate_v3_35();
    l0 = self.box_Gate_v3_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1760106574", "1760106574", "UNI55_010_B40", "box_Simple_Node_108.Out", "box_Gate_v3_35.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_30_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_20();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1942584819", "1942584819", "UNI55_010_B40", "box_Simple_Node_30.Out", "box_ActivityRetry_20.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_27_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Endure_CORE_v3_25();
    l0 = self.box_Brick_Endure_CORE_v3_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|255611048", "255611048", "UNI55_010_B40", "box_Simple_Node_27.Out", "box_Brick_Endure_CORE_v3_25.LastWave_Cleanup", clone:GetLuaBox(), l0:GetLuaBox());
    -- LastWave_Cleanup
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_107_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_105();
    l0 = self.box_Gate_v3_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1885597693", "1885597693", "UNI55_010_B40", "box_Simple_Node_107.Out", "box_Gate_v3_105.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_104();
    l0 = self.box_Gate_v3_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1055663292", "1055663292", "UNI55_010_B40", "box_Simple_Node_107.Out", "box_Gate_v3_104.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_85();
    l0 = self.box_Gate_v3_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1762109980", "1762109980", "UNI55_010_B40", "box_Simple_Node_107.Out", "box_Gate_v3_85.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_35();
    l0 = self.box_Gate_v3_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|996730260", "996730260", "UNI55_010_B40", "box_Simple_Node_107.Out", "box_Gate_v3_35.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_101();
    l0 = self.box_Gate_v3_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|654340242", "654340242", "UNI55_010_B40", "box_Simple_Node_107.Out", "box_Gate_v3_101.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_65_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_58();
    l0 = self.box_ProximityTrigger_v2_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1375710810", "1375710810", "UNI55_010_B40", "box_Simple_Node_65.Out", "box_ProximityTrigger_v2_58.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_66_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_56();
    l0 = self.box_ProximityTrigger_v2_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1063443921", "1063443921", "UNI55_010_B40", "box_Simple_Node_66.Out", "box_ProximityTrigger_v2_56.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_112_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_111();
    l0 = self.box_Gate_v3_111;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|229715294", "229715294", "UNI55_010_B40", "box_Simple_Node_112.Out", "box_Gate_v3_111.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_ActivityInitialized_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityForceAndLockTracking_24();
    l0 = self.box_ActivityInitialized_3;
    l1 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|486647425", "486647425", "UNI55_010_B40", "box_ActivityInitialized_3.Out", "box_ActivityForceAndLockTracking_24.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_88_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_89();
    l0 = self.box_Delay_v5_88;
    l1 = self.box_HealthListener_v6_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1854334787", "1854334787", "UNI55_010_B40", "box_Delay_v5_88.TimeElapsed", "box_HealthListener_v6_89.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_Wave_v2_12_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_32();
    l0 = self.box_SpawnAI_Wave_v2_12;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|2096510035", "2096510035", "UNI55_010_B40", "box_SpawnAI_Wave_v2_12.NextWave", "box_OutputOrder_v2_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_43_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_54();
    l0 = self.box_RemoveEntity_v2_43;
    l1 = self.box_RemoveEntity_v2_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|52349650", "52349650", "UNI55_010_B40", "box_RemoveEntity_v2_43.Out", "box_RemoveEntity_v2_54.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_RemoveEntity_v2_44_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_43();
    l0 = self.box_RemoveEntity_v2_44;
    l1 = self.box_RemoveEntity_v2_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1187883314", "1187883314", "UNI55_010_B40", "box_RemoveEntity_v2_44.Out", "box_RemoveEntity_v2_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_4_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_4;
    l1 = self.box_ActivityInitialized_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|117853435", "117853435", "UNI55_010_B40", "box_MultipleOR_4.Out", "box_ActivityInitialized_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_SpawnAI_Wave_v2_13_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_22();
    l0 = self.box_SpawnAI_Wave_v2_13;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1847074023", "1847074023", "UNI55_010_B40", "box_SpawnAI_Wave_v2_13.NextWave", "box_OutputOrder_v2_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MusicStartPedalSTP_39_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_92();
    l0 = self.box_MusicStartPedalSTP_39;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1354869154", "1354869154", "UNI55_010_B40", "box_MusicStartPedalSTP_39.Out", "box_OutputOrder_v2_92.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_111_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_67();
    l0 = self.box_Gate_v3_111;
    l1 = self.box_Random_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1679142935", "1679142935", "UNI55_010_B40", "box_Gate_v3_111.Out", "box_Random_67.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_52_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|2003625064", "2003625064", "UNI55_010_B40", "box_UseContextualActionModifier_v3_52.Disabled", "box_OutputOrder_v2_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_121_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_113();
    l0 = self.box_PlayDialog_v6_121;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1351198623", "1351198623", "UNI55_010_B40", "box_PlayDialog_v6_121.Finished", "box_Simple_Node_113.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_32_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_105();
    l0 = self.box_Gate_v3_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|459055018", "459055018", "UNI55_010_B40", "box_OutputOrder_v2_32.Out", "box_Gate_v3_105.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_32_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_Wave_v2_16();
    l0 = self.box_SpawnAI_Wave_v2_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|2058015016", "2058015016", "UNI55_010_B40", "box_OutputOrder_v2_32.Out", "box_SpawnAI_Wave_v2_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_SoundModifier_v2_38_Started()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_74();
    l0 = self.box_SoundModifier_v2_38;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1197893774", "1197893774", "UNI55_010_B40", "box_SoundModifier_v2_38.Started", "box_ParticleSystem_v3_74.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_69_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_35();
    l0 = self.box_Delay_v5_69;
    l1 = self.box_Gate_v3_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|2008245982", "2008245982", "UNI55_010_B40", "box_Delay_v5_69.TimeElapsed", "box_Gate_v3_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_92_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_41();
    l0 = self.box_SoundModifier_v2_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|400264826", "400264826", "UNI55_010_B40", "box_OutputOrder_v2_92.Out", "box_SoundModifier_v2_41.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_92_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_91();
    l0 = self.box_HealthListener_v6_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1136815041", "1136815041", "UNI55_010_B40", "box_OutputOrder_v2_92.Out", "box_HealthListener_v6_91.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_92_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Endure_CORE_v3_25();
    l0 = self.box_Brick_Endure_CORE_v3_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1142264575", "1142264575", "UNI55_010_B40", "box_OutputOrder_v2_92.Out", "box_Brick_Endure_CORE_v3_25.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_92_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMusicTriggerBox_42();
    l0 = self.box_SoundMusicTriggerBox_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|725475882", "725475882", "UNI55_010_B40", "box_OutputOrder_v2_92.Out", "box_SoundMusicTriggerBox_42.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_58_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_55();
    l0 = self.box_ProximityTrigger_v2_58;
    l1 = self.box_SoundModifier_v2_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1637133012", "1637133012", "UNI55_010_B40", "box_ProximityTrigger_v2_58.Enter", "box_SoundModifier_v2_55.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_Wave_v2_18_LastWave_Cleanup()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_27();
    l0 = self.box_SpawnAI_Wave_v2_18;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|2128110436", "2128110436", "UNI55_010_B40", "box_SpawnAI_Wave_v2_18.LastWave_Cleanup", "box_Simple_Node_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_90_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_96();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1328427768", "1328427768", "UNI55_010_B40", "box_Compare_Entity_90.Equal", "box_OutputOrder_v2_96.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_Wave_v2_8_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_17();
    l0 = self.box_SpawnAI_Wave_v2_8;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|2306108", "2306108", "UNI55_010_B40", "box_SpawnAI_Wave_v2_8.NextWave", "box_OutputOrder_v2_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityForceAndLockTracking_24_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_1();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1178935170", "1178935170", "UNI55_010_B40", "box_ActivityForceAndLockTracking_24.Enabled", "box_GetPlayerGroup_v2_1.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_96_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_89();
    l0 = self.box_HealthListener_v6_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1440984651", "1440984651", "UNI55_010_B40", "box_OutputOrder_v2_96.Out", "box_HealthListener_v6_89.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_96_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_104();
    l0 = self.box_Gate_v3_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1336343541", "1336343541", "UNI55_010_B40", "box_OutputOrder_v2_96.Out", "box_Gate_v3_104.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_SoundModifier_v2_34_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_45();
    l0 = self.box_SoundModifier_v2_34;
    l1 = self.box_SoundModifier_v2_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1176373100", "1176373100", "UNI55_010_B40", "box_SoundModifier_v2_34.Started", "box_SoundModifier_v2_45.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_74_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_75();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1746922403", "1746922403", "UNI55_010_B40", "box_ParticleSystem_v3_74.Started", "box_ParticleSystem_v3_75.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_14();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1584591657", "1584591657", "UNI55_010_B40", "box_OutputOrder_v2_19.Out", "box_UseContextualActionModifier_v3_14.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_11();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|775698345", "775698345", "UNI55_010_B40", "box_OutputOrder_v2_19.Out", "box_ActivityEnd_11.EndSoftSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndSoftSave
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_116_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_71();
    l0 = self.box_PlayDialog_v6_116;
    l1 = self.box_Delay_v5_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|880559022", "880559022", "UNI55_010_B40", "box_PlayDialog_v6_116.Finished", "box_Delay_v5_71.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_116_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_112();
    l0 = self.box_PlayDialog_v6_116;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1440139240", "1440139240", "UNI55_010_B40", "box_PlayDialog_v6_116.Started", "box_Simple_Node_112.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_Wave_v2_16_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_86();
    l0 = self.box_SpawnAI_Wave_v2_16;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|881236062", "881236062", "UNI55_010_B40", "box_SpawnAI_Wave_v2_16.NextWave", "box_OutputOrder_v2_86.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_Wave_v2_15_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_Wave_v2_13();
    l0 = self.box_SpawnAI_Wave_v2_15;
    l1 = self.box_SpawnAI_Wave_v2_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1395077449", "1395077449", "UNI55_010_B40", "box_SpawnAI_Wave_v2_15.NextWave", "box_SpawnAI_Wave_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_53_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_37();
    l0 = self.box_SoundModifier_v2_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1467603262", "1467603262", "UNI55_010_B40", "box_OutputOrder_v2_53.Out", "box_SoundModifier_v2_37.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_53_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_23();
    l0 = self.box_SoundModifier_v2_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1425562003", "1425562003", "UNI55_010_B40", "box_OutputOrder_v2_53.Out", "box_SoundModifier_v2_23.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_53_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_34();
    l0 = self.box_SoundModifier_v2_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1854212130", "1854212130", "UNI55_010_B40", "box_OutputOrder_v2_53.Out", "box_SoundModifier_v2_34.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_53_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_33();
    l0 = self.box_SoundModifier_v2_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|493673321", "493673321", "UNI55_010_B40", "box_OutputOrder_v2_53.Out", "box_SoundModifier_v2_33.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_9_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_29();
    l0 = self.box_OnceOnly_v3_9;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|708365103", "708365103", "UNI55_010_B40", "box_OnceOnly_v3_9.Out", "box_HealthModifier_v2_29.Heal", l0:GetLuaBox(), l1:GetLuaBox());
    -- Heal
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_23_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_36();
    l0 = self.box_SoundModifier_v2_23;
    l1 = self.box_SoundModifier_v2_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1368332630", "1368332630", "UNI55_010_B40", "box_SoundModifier_v2_23.Started", "box_SoundModifier_v2_36.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_PlayDialog_v6_120_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_82();
    l0 = self.box_PlayDialog_v6_120;
    l1 = self.box_Gate_v3_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1855930807", "1855930807", "UNI55_010_B40", "box_PlayDialog_v6_120.Finished", "box_Gate_v3_82.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_HealthListener_v6_100_Downed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_100;
    l1 = self.box_MultipleOR_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1564643707", "1564643707", "UNI55_010_B40", "box_HealthListener_v6_100.Downed", "box_MultipleOR_83.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_HealthListener_v6_100_Revived()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_87();
    l0 = self.box_HealthListener_v6_100;
    l1 = self.box_Delay_v5_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|853305826", "853305826", "UNI55_010_B40", "box_HealthListener_v6_100.Revived", "box_Delay_v5_87.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Gate_v3_106_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_82();
    l0 = self.box_Gate_v3_106;
    l1 = self.box_Gate_v3_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1408477027", "1408477027", "UNI55_010_B40", "box_Gate_v3_106.Closed", "box_Gate_v3_82.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_106_Opened()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_82();
    l0 = self.box_Gate_v3_106;
    l1 = self.box_Gate_v3_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1162578991", "1162578991", "UNI55_010_B40", "box_Gate_v3_106.Opened", "box_Gate_v3_82.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_Gate_v3_106_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_120();
    l0 = self.box_Gate_v3_106;
    l1 = self.box_PlayDialog_v6_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1038555306", "1038555306", "UNI55_010_B40", "box_Gate_v3_106.Out", "box_PlayDialog_v6_120.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_40_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_103();
    l0 = self.box_Delay_v5_40;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1415725534", "1415725534", "UNI55_010_B40", "box_Delay_v5_40.TimeElapsed", "box_OutputOrder_v2_103.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityInGroup_93_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_95();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|2140035057", "2140035057", "UNI55_010_B40", "box_IsEntityInGroup_93.True", "box_OutputOrder_v2_95.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_95_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_91();
    l0 = self.box_HealthListener_v6_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1815830280", "1815830280", "UNI55_010_B40", "box_OutputOrder_v2_95.Out", "box_HealthListener_v6_91.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_95_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_85();
    l0 = self.box_Gate_v3_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|543943745", "543943745", "UNI55_010_B40", "box_OutputOrder_v2_95.Out", "box_Gate_v3_85.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_59_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_106();
    l0 = self.box_Delay_v5_59;
    l1 = self.box_Gate_v3_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1117511698", "1117511698", "UNI55_010_B40", "box_Delay_v5_59.TimeElapsed", "box_Gate_v3_106.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_84_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetHealthState_94();
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1193586429", "1193586429", "UNI55_010_B40", "box_OutputOrder_v2_84.Out", "box_GetHealthState_94.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_84_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_100();
    l0 = self.box_HealthListener_v6_100;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|58779965", "58779965", "UNI55_010_B40", "box_OutputOrder_v2_84.Out", "box_HealthListener_v6_100.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SoundModifier_v2_47_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_64();
    l0 = self.box_SoundModifier_v2_47;
    l1 = self.box_SoundModifier_v2_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|23889331", "23889331", "UNI55_010_B40", "box_SoundModifier_v2_47.Started", "box_SoundModifier_v2_64.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_82_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_121();
    l0 = self.box_Gate_v3_82;
    l1 = self.box_PlayDialog_v6_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1400330815", "1400330815", "UNI55_010_B40", "box_Gate_v3_82.Out", "box_PlayDialog_v6_121.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_CharacterLoadedIdListener_5_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_5_LoadedIdReceived();
    params = self:OnEnter_box_GroupAddToGroup_v2_110();
    l0 = self.box_CharacterLoadedIdListener_5;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1844835147", "1844835147", "UNI55_010_B40", "box_CharacterLoadedIdListener_5.LoadedIdReceived", "box_GroupAddToGroup_v2_110.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_26_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_108();
    l0 = self.box_MultipleOR_26;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|77003583", "77003583", "UNI55_010_B40", "box_MultipleOR_26.Out", "box_Simple_Node_108.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetHealthState_94_Down()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|770607936", "770607936", "UNI55_010_B40", "box_GetHealthState_94.Down", "box_MultipleOR_83.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetHealthState_94_Healthy()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|517682169", "517682169", "UNI55_010_B40", "box_GetHealthState_94.Healthy", "box_MultipleOR_26.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Gate_v3_101_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_102();
    l0 = self.box_Gate_v3_101;
    l1 = self.box_Gate_v3_102;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1016115751", "1016115751", "UNI55_010_B40", "box_Gate_v3_101.Closed", "box_Gate_v3_102.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_101_Opened()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_102();
    l0 = self.box_Gate_v3_101;
    l1 = self.box_Gate_v3_102;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|449444600", "449444600", "UNI55_010_B40", "box_Gate_v3_101.Opened", "box_Gate_v3_102.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_Gate_v3_101_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_116();
    l0 = self.box_Gate_v3_101;
    l1 = self.box_PlayDialog_v6_116;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|554811480", "554811480", "UNI55_010_B40", "box_Gate_v3_101.Out", "box_PlayDialog_v6_116.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_83_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_107();
    l0 = self.box_MultipleOR_83;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|793661015", "793661015", "UNI55_010_B40", "box_MultipleOR_83.Out", "box_Simple_Node_107.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_41_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_53();
    l0 = self.box_SoundModifier_v2_41;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1350925017", "1350925017", "UNI55_010_B40", "box_SoundModifier_v2_41.Started", "box_OutputOrder_v2_53.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_45_Started()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_78();
    l0 = self.box_SoundModifier_v2_45;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|930475064", "930475064", "UNI55_010_B40", "box_SoundModifier_v2_45.Started", "box_ParticleSystem_v3_78.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_22_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_31();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|189489083", "189489083", "UNI55_010_B40", "box_OutputOrder_v2_22.Out", "box_UseContextualActionModifier_v3_31.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_22_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_Wave_v2_8();
    l0 = self.box_SpawnAI_Wave_v2_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|2025013083", "2025013083", "UNI55_010_B40", "box_OutputOrder_v2_22.Out", "box_SpawnAI_Wave_v2_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_22_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_69();
    l0 = self.box_Delay_v5_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1539290991", "1539290991", "UNI55_010_B40", "box_OutputOrder_v2_22.Out", "box_Delay_v5_69.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_119_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_59();
    l0 = self.box_PlayDialog_v6_119;
    l1 = self.box_Delay_v5_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1719571525", "1719571525", "UNI55_010_B40", "box_PlayDialog_v6_119.Finished", "box_Delay_v5_59.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_119_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_112();
    l0 = self.box_PlayDialog_v6_119;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1508623815", "1508623815", "UNI55_010_B40", "box_PlayDialog_v6_119.Started", "box_Simple_Node_112.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_105_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_106();
    l0 = self.box_Gate_v3_105;
    l1 = self.box_Gate_v3_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|754410673", "754410673", "UNI55_010_B40", "box_Gate_v3_105.Closed", "box_Gate_v3_106.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_105_Opened()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_106();
    l0 = self.box_Gate_v3_105;
    l1 = self.box_Gate_v3_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1189983620", "1189983620", "UNI55_010_B40", "box_Gate_v3_105.Opened", "box_Gate_v3_106.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_Gate_v3_105_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_119();
    l0 = self.box_Gate_v3_105;
    l1 = self.box_PlayDialog_v6_119;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|2083711415", "2083711415", "UNI55_010_B40", "box_Gate_v3_105.Out", "box_PlayDialog_v6_119.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_103_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Firecrackers_97();
    l0 = self.box_Firecrackers_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1456909331", "1456909331", "UNI55_010_B40", "box_OutputOrder_v2_103.Out", "box_Firecrackers_97.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_103_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_Wave_v2_12();
    l0 = self.box_SpawnAI_Wave_v2_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1615351136", "1615351136", "UNI55_010_B40", "box_OutputOrder_v2_103.Out", "box_SpawnAI_Wave_v2_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_103_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_65();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1149665306", "1149665306", "UNI55_010_B40", "box_OutputOrder_v2_103.Out", "box_Simple_Node_65.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_85_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_111();
    l0 = self.box_Gate_v3_85;
    l1 = self.box_Gate_v3_111;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|278679373", "278679373", "UNI55_010_B40", "box_Gate_v3_85.Out", "box_Gate_v3_111.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_102_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_117();
    l0 = self.box_Gate_v3_102;
    l1 = self.box_PlayDialog_v6_117;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|231051107", "231051107", "UNI55_010_B40", "box_Gate_v3_102.Out", "box_PlayDialog_v6_117.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_HealthListener_v6_89_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Entity_90();
    l0 = self.box_HealthListener_v6_89;
    l1 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|993413599", "993413599", "UNI55_010_B40", "box_HealthListener_v6_89.Killed", "box_Compare_Entity_90.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_78_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_79();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|473401585", "473401585", "UNI55_010_B40", "box_ParticleSystem_v3_78.Started", "box_ParticleSystem_v3_79.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_56_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_47();
    l0 = self.box_ProximityTrigger_v2_56;
    l1 = self.box_SoundModifier_v2_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1472080656", "1472080656", "UNI55_010_B40", "box_ProximityTrigger_v2_56.Enter", "box_SoundModifier_v2_47.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Brick_Endure_CORE_v3_25_Fail()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_30();
    l0 = self.box_Brick_Endure_CORE_v3_25;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1251542194", "1251542194", "UNI55_010_B40", "box_Brick_Endure_CORE_v3_25.Fail", "box_Simple_Node_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Endure_CORE_v3_25_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_28();
    l0 = self.box_Brick_Endure_CORE_v3_25;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|778695526", "778695526", "UNI55_010_B40", "box_Brick_Endure_CORE_v3_25.Success", "box_Simple_Node_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Endure_CORE_v3_25_Waves()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_Wave_v2_15();
    l0 = self.box_Brick_Endure_CORE_v3_25;
    l1 = self.box_SpawnAI_Wave_v2_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|107010562", "107010562", "UNI55_010_B40", "box_Brick_Endure_CORE_v3_25.Waves", "box_SpawnAI_Wave_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_HealthListener_v6_91_Damaged()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityInGroup_93();
    l0 = self.box_HealthListener_v6_91;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|777439677", "777439677", "UNI55_010_B40", "box_HealthListener_v6_91.Damaged", "box_IsEntityInGroup_93.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_80_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_81();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|19620649", "19620649", "UNI55_010_B40", "box_ParticleSystem_v3_80.Started", "box_ParticleSystem_v3_81.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_46_Started()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_80();
    l0 = self.box_SoundModifier_v2_46;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|633209792", "633209792", "UNI55_010_B40", "box_SoundModifier_v2_46.Started", "box_ParticleSystem_v3_80.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_55_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_57();
    l0 = self.box_SoundModifier_v2_55;
    l1 = self.box_SoundModifier_v2_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1735211848", "1735211848", "UNI55_010_B40", "box_SoundModifier_v2_55.Started", "box_SoundModifier_v2_57.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_86_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_Wave_v2_18();
    l0 = self.box_SpawnAI_Wave_v2_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|847394478", "847394478", "UNI55_010_B40", "box_OutputOrder_v2_86.Out", "box_SpawnAI_Wave_v2_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_86_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_88();
    l0 = self.box_Delay_v5_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|805738866", "805738866", "UNI55_010_B40", "box_OutputOrder_v2_86.Out", "box_Delay_v5_88.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_87_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_87;
    l1 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1854713135", "1854713135", "UNI55_010_B40", "box_Delay_v5_87.TimeElapsed", "box_MultipleOR_26.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_104_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_122();
    l0 = self.box_Gate_v3_104;
    l1 = self.box_PlayDialog_v6_122;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|811229462", "811229462", "UNI55_010_B40", "box_Gate_v3_104.Out", "box_PlayDialog_v6_122.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_SoundModifier_v2_37_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_38();
    l0 = self.box_SoundModifier_v2_37;
    l1 = self.box_SoundModifier_v2_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|673263882", "673263882", "UNI55_010_B40", "box_SoundModifier_v2_37.Started", "box_SoundModifier_v2_38.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_ActivityAcknowledgeGate_6_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1467237367", "1467237367", "UNI55_010_B40", "box_ActivityAcknowledgeGate_6.Acknowledged", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_6_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|660436217", "660436217", "UNI55_010_B40", "box_ActivityAcknowledgeGate_6.Reloaded", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPlayerGroup_v2_1_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_1_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_5();
    l0 = self.box_CharacterLoadedIdListener_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|826896742", "826896742", "UNI55_010_B40", "box_GetPlayerGroup_v2_1.Out", "box_CharacterLoadedIdListener_5.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_71_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_102();
    l0 = self.box_Delay_v5_71;
    l1 = self.box_Gate_v3_102;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1944355522", "1944355522", "UNI55_010_B40", "box_Delay_v5_71.TimeElapsed", "box_Gate_v3_102.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_17_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_101();
    l0 = self.box_Gate_v3_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|592856039", "592856039", "UNI55_010_B40", "box_OutputOrder_v2_17.Out", "box_Gate_v3_101.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_17_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_40();
    l0 = self.box_Delay_v5_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1612024732", "1612024732", "UNI55_010_B40", "box_OutputOrder_v2_17.Out", "box_Delay_v5_40.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_2_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1170927765", "1170927765", "UNI55_010_B40", "box_OutputOrder_v2_2.Out", "box_ActivityAcknowledgeGate_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_2_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_DisableMusicSwitches_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1248188530", "1248188530", "UNI55_010_B40", "box_OutputOrder_v2_2.Out", "box_DisableMusicSwitches_99.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_2_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_51();
    l0 = self.box_RemoveEntity_v2_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1926229288", "1926229288", "UNI55_010_B40", "box_OutputOrder_v2_2.Out", "box_RemoveEntity_v2_51.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_2_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_7();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1216730799", "1216730799", "UNI55_010_B40", "box_OutputOrder_v2_2.Out", "box_Print_v2_7.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_36_Started()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_76();
    l0 = self.box_SoundModifier_v2_36;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|621312545", "621312545", "UNI55_010_B40", "box_SoundModifier_v2_36.Started", "box_ParticleSystem_v3_76.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_67_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_115();
    l0 = self.box_Random_67;
    l1 = self.box_PlayDialog_v6_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1415098992", "1415098992", "UNI55_010_B40", "box_Random_67.Output", "box_PlayDialog_v6_115.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_67_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_114();
    l0 = self.box_Random_67;
    l1 = self.box_PlayDialog_v6_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1818460996", "1818460996", "UNI55_010_B40", "box_Random_67.Output", "box_PlayDialog_v6_114.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_HealthModifier_v2_29_Healed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_19();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|91384725", "91384725", "UNI55_010_B40", "box_HealthModifier_v2_29.Healed", "box_OutputOrder_v2_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupAddToGroup_v2_110_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_60();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|2100227273", "2100227273", "UNI55_010_B40", "box_GroupAddToGroup_v2_110.Out", "box_UseContextualActionModifier_v3_60.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_117_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_113();
    l0 = self.box_PlayDialog_v6_117;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1823474199", "1823474199", "UNI55_010_B40", "box_PlayDialog_v6_117.Finished", "box_Simple_Node_113.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_76_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_77();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1483152604", "1483152604", "UNI55_010_B40", "box_ParticleSystem_v3_76.Started", "box_ParticleSystem_v3_77.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_60_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_52();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1520562536", "1520562536", "UNI55_010_B40", "box_UseContextualActionModifier_v3_60.Disabled", "box_UseContextualActionModifier_v3_52.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MusicStartPedalSTP_39();
    l0 = self.box_MusicStartPedalSTP_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|291595617", "291595617", "UNI55_010_B40", "box_OutputOrder_v2_10.Out", "box_MusicStartPedalSTP_39.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Firecrackers_98();
    l0 = self.box_Firecrackers_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|807881990", "807881990", "UNI55_010_B40", "box_OutputOrder_v2_10.Out", "box_Firecrackers_98.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_10_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_66();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|343732288", "343732288", "UNI55_010_B40", "box_OutputOrder_v2_10.Out", "box_Simple_Node_66.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_10_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_84();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|31262885", "31262885", "UNI55_010_B40", "box_OutputOrder_v2_10.Out", "box_OutputOrder_v2_84.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_33_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_46();
    l0 = self.box_SoundModifier_v2_33;
    l1 = self.box_SoundModifier_v2_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1799385914", "1799385914", "UNI55_010_B40", "box_SoundModifier_v2_33.Started", "box_SoundModifier_v2_46.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_RemoveEntity_v2_51_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_44();
    l0 = self.box_RemoveEntity_v2_51;
    l1 = self.box_RemoveEntity_v2_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|947800909", "947800909", "UNI55_010_B40", "box_RemoveEntity_v2_51.Out", "box_RemoveEntity_v2_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_35_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_118();
    l0 = self.box_Gate_v3_35;
    l1 = self.box_PlayDialog_v6_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1448665764", "1448665764", "UNI55_010_B40", "box_Gate_v3_35.Out", "box_PlayDialog_v6_118.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:OnEnter_box_Simple_Node_113()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|@AllowHurtLines");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_113_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|@B40Completed");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_28_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|@Dialogs");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_108_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|@ExitQuestFail");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_30_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|@LastWave");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_27_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|@NoDialog");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_107_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|@Play_Fireworks_02");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_65_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|@Play_Fireworks_1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_66_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_112()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|@StopHurtLines");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_112_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_88()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_12()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 0,
        -- AttackerSpawner_1,
        [1] = "2099697352297176723",
        -- CoreNPCGroup,
        [2] = "#D9C10F4A",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = true,
        -- Timer,
        [14] = 3,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_43()
    local params;
    params = {
        -- Group,
        [0] = "2099821188061600608",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_44()
    local params;
    params = {
        -- Group,
        [0] = "2101174451080009511",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_13()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 0,
        -- AttackerSpawner_1,
        [1] = "2100277899920691970",
        -- CoreNPCGroup,
        [2] = "#D9C10F4A",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = true,
        -- Timer,
        [14] = 5,
    };
    return params;
end;

function export:OnEnter_box_MusicStartPedalSTP_39()
    local params;
    params = {
        -- eIsUNI024,
        [0] = self.eUNI024,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_111()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|210319534");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_52_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101162186953999825",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|247556818");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_121()
    local params;
    params = {
        -- Group,
        [0] = self.eUNI024,
        -- RelevancyTime,
        [1] = 5,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "614526270",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|276496094");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2101038395682730066",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|303356966");
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

function export:OnEnter_box_ParticleSystem_v3_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|310885638");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104173219704497983",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_38()
    local params;
    params = {
        -- Pawns,
        [0] = "2100195227347199812",
        -- SoundId,
        [1] = "3547171754",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|385112053");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objective",
            item = "UNI55_010_FAILED_LeftZip",
            id = "551466",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_69()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|444760726");
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
                [0] = self.f_box_OutputOrder_v2_92_Out_0,
                [1] = self.f_box_OutputOrder_v2_92_Out_1,
                [2] = self.f_box_OutputOrder_v2_92_Out_2,
                [3] = self.f_box_OutputOrder_v2_92_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_58()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2101758017044225200",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|503304454");
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
        [8] = "UNI055_010_B40 script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_18()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 0,
        -- AttackerSpawner_1,
        [1] = "2099531626250766032",
        -- CoreNPCGroup,
        [2] = "#D9C10F4A",
        -- IsLastWave,
        [3] = true,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|527004800");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_90_Equal,
    });
    l0 = self.box_HealthListener_v6_89;
    params = {
        -- Entity1,
        [0] = l0:GetDataOutValue(4),
        -- Entity2,
        [1] = self.eUNI024,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|553212315");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104173170614363961",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_8()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 2,
        -- AttackerSpawner_1,
        [1] = "2099999971458687403",
        -- CoreNPCGroup,
        [2] = "#D9C10F4A",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_ActivityForceAndLockTracking_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityForceAndLockTracking_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|603731876");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityForceAndLockTracking_24_Enabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_122()
    local params;
    DrawTextToScreen("Comment: Why shoot n' bury", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Why shoot n' bury");
    params = {
        -- Group,
        [0] = self.eUNI024,
        -- RelevancyTime,
        [1] = 5,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2617156071",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|670456723");
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

function export:OnEnter_box_SoundModifier_v2_34()
    local params;
    params = {
        -- Pawns,
        [0] = "2100001112175155110",
        -- SoundId,
        [1] = "2367592577",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|781577024");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_74_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2104173219704497981",
    };
    return params;
end;

function export:OnEnter_box_SoundMusicTriggerBox_42()
    local params;
    DrawTextToScreen("Comment: Kill OW music", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SoundMusicTriggerBox')-- Comment: Kill OW music");
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
        [5] = "1127458137",
        -- StopEvent,
        [6] = "3016011382",
        -- StopFadeOut,
        [7] = 0.5,
        -- WaitUntilMusicEndMarker,
        [8] = false,
        -- WaitUntilNotInVehicle,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|784019627");
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

function export:OnEnter_box_PlayDialog_v6_116()
    local params;
    DrawTextToScreen("Comment: Hey You're doin alright", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Hey You're doin alright");
    params = {
        -- Group,
        [0] = self.eUNI024,
        -- RelevancyTime,
        [1] = 5,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1821819760",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_114()
    local params;
    params = {
        -- Group,
        [0] = self.eUNI024,
        -- RelevancyTime,
        [1] = 5,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4041105811",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_16()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 0,
        -- AttackerSpawner_1,
        [1] = "2100278013896710093",
        -- CoreNPCGroup,
        [2] = "#D9C10F4A",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = true,
        -- Timer,
        [14] = 3,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_15()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 0,
        -- AttackerSpawner_1,
        [1] = "2100264934311988984",
        -- CoreNPCGroup,
        [2] = "#D9C10F4A",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = true,
        -- Timer,
        [14] = 3,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|816838554");
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
                [0] = self.f_box_OutputOrder_v2_53_Out_0,
                [1] = self.f_box_OutputOrder_v2_53_Out_1,
                [2] = self.f_box_OutputOrder_v2_53_Out_2,
                [3] = self.f_box_OutputOrder_v2_53_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Firecrackers_98()
    local params;
    params = {
        -- Cracker1,
        [0] = "2101757255731916074",
        -- Cracker2,
        [1] = "2101757297299565868",
        -- Cracker3,
        [2] = "2101757307479141678",
        -- Cracker4,
        [3] = "2101757338124823856",
        -- Cracker5,
        [4] = "2101758487330557521",
        -- GroundCrackersBlue,
        [5] = "2102030139645772051",
        -- GroundCrackersRed,
        [6] = "2102030114733703441",
        -- ProximityTrigger,
        [7] = "2101757362514701622",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_23()
    local params;
    params = {
        -- Pawns,
        [0] = "2100001107630626724",
        -- SoundId,
        [1] = "2367592577",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|901226727");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2101038395682730066",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_120()
    local params;
    DrawTextToScreen("Comment: It's a fine day to toast", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: It's a fine day to toast");
    params = {
        -- Group,
        [0] = self.eUNI024,
        -- RelevancyTime,
        [1] = 5,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2769548366",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_100()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.eUNI024,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_106()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_40()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_IsEntityInGroup_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityInGroup_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1010649476");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityInGroup_93_True,
    });
    l0 = self.box_HealthListener_v6_91;
    params = {
        -- Entity,
        [0] = l0:GetDataOutValue(4),
        -- Group,
        [1] = "#653DE52B",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_64()
    local params;
    params = {
        -- Pawns,
        [0] = "2103084219409385926",
        -- SoundId,
        [1] = "159871221",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1045302352");
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

function export:OnEnter_box_Delay_v5_59()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_84()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1083623293");
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

function export:OnEnter_box_SoundModifier_v2_47()
    local params;
    params = {
        -- Pawns,
        [0] = "2103084322205492243",
        -- SoundId,
        [1] = "525636272",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_82()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_5()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015196386540318",
    };
    return params;
end;

function export:OnEnter_box_GetHealthState_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetHealthState_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1304355308");
    l0:SetConnections({
        -- Down,
        [2] = self.f_box_GetHealthState_94_Down,
        -- Healthy,
        [3] = self.f_box_GetHealthState_94_Healthy,
    });
    params = {
        -- Pawn,
        [0] = self.eUNI024,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1316233322");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104173360922519361",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_101()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_41()
    local params;
    params = {
        -- Pawns,
        [0] = "2101257574532794264",
        -- SoundId,
        [1] = "4148494270",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_45()
    local params;
    params = {
        -- Pawns,
        [0] = "2100195232447473480",
        -- SoundId,
        [1] = "3547171754",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1416032097");
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

function export:OnEnter_box_PlayDialog_v6_119()
    local params;
    DrawTextToScreen("Comment: More comin'!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: More comin'!");
    params = {
        -- Group,
        [0] = self.eUNI024,
        -- RelevancyTime,
        [1] = 5,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3958019656",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_105()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Firecrackers_97()
    local params;
    params = {
        -- Cracker1,
        [0] = "2101757343587904818",
        -- Cracker2,
        [1] = "2101757347650088244",
        -- Cracker3,
        [2] = "2101757611408887413",
        -- Cracker4,
        [3] = "2101757617641623159",
        -- Cracker5,
        [4] = "2101757622576221817",
        -- GroundCrackersBlue,
        [5] = "2102030214927237399",
        -- GroundCrackersRed,
        [6] = "2102030208373637397",
        -- ProximityTrigger,
        [7] = "2101758017044225200",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1604067374");
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
                [0] = self.f_box_OutputOrder_v2_103_Out_0,
                [1] = self.f_box_OutputOrder_v2_103_Out_1,
                [2] = self.f_box_OutputOrder_v2_103_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_85()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_102()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_89()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "#653DE52B",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1637006437");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_78_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2104173360922519363",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_54()
    local params;
    params = {
        -- Group,
        [0] = "2099821872332938092",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_56()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2101757362514701622",
    };
    return params;
end;

function export:OnEnter_box_Brick_Endure_CORE_v3_25()
    local params;
    params = {
        -- Attacker_Group,
        [0] = "#D9C10F4A",
        -- bRequiresObjective,
        [1] = true,
        -- CompletePreviousObjective,
        [2] = true,
        -- FailArea,
        [3] = "2101744266358299713",
        -- Objective,
        [5] = {
            section = "Objective",
            item = "UNI55_010_B40_OBJ_Kill",
            id = "552045",
        },
        -- opt_ObjectiveFail,
        [6] = {
            section = "Objective",
            item = "UNI55_010_FAILED_LeftZip",
            id = "551466",
        },
        -- WarningArea,
        [7] = "2101744244292066368",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_118()
    local params;
    DrawTextToScreen("Comment: Oh they are angry today!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Oh they are angry today!");
    params = {
        -- Group,
        [0] = self.eUNI024,
        -- RelevancyTime,
        [1] = 5,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1997590707",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_91()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1714946326");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_80_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2104172598777636661",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_46()
    local params;
    params = {
        -- Pawns,
        [0] = "2100195238894118732",
        -- SoundId,
        [1] = "3547171754",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_55()
    local params;
    params = {
        -- Pawns,
        [0] = "2103084325743387669",
        -- SoundId,
        [1] = "525636272",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_115()
    local params;
    DrawTextToScreen("Comment: Don't let them", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Don't let them");
    params = {
        -- Group,
        [0] = self.eUNI024,
        -- RelevancyTime,
        [1] = 5,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "763903013",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1755984262");
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
                [0] = self.f_box_OutputOrder_v2_86_Out_0,
                [1] = self.f_box_OutputOrder_v2_86_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_87()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_104()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_37()
    local params;
    params = {
        -- Pawns,
        [0] = "2100001103935444898",
        -- SoundId,
        [1] = "2367592577",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1833650886");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_1_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_71()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1841429902");
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

function export:OnEnter_box_OutputOrder_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1855362480");
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
                [0] = self.f_box_OutputOrder_v2_2_Out_0,
                [1] = self.f_box_OutputOrder_v2_2_Out_1,
                [2] = self.f_box_OutputOrder_v2_2_Out_2,
                [3] = self.f_box_OutputOrder_v2_2_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_36()
    local params;
    params = {
        -- Pawns,
        [0] = "2100195223029163840",
        -- SoundId,
        [1] = "3547171754",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Random_67()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 2,
        },
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1869211184");
    l0:SetConnections({
        -- Healed,
        [1] = self.f_box_HealthModifier_v2_29_Healed,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = "#74AA588E",
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_110()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1874811046");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GroupAddToGroup_v2_110_Out,
    });
    params = {
        -- FromGroup,
        [0] = "#74AA588E",
        -- ToGroup,
        [1] = "#EE09B5EC",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_117()
    local params;
    DrawTextToScreen("Comment: They may look dumb", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: They may look dumb");
    params = {
        -- Group,
        [0] = self.eUNI024,
        -- RelevancyTime,
        [1] = 5,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1994537422",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1944181787");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_76_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2104173170616461115",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1957329285");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_60_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2100085884765348607",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|1976005438");
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
                [0] = self.f_box_OutputOrder_v2_10_Out_0,
                [1] = self.f_box_OutputOrder_v2_10_Out_1,
                [2] = self.f_box_OutputOrder_v2_10_Out_2,
                [3] = self.f_box_OutputOrder_v2_10_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_33()
    local params;
    params = {
        -- Pawns,
        [0] = "2100164493989389916",
        -- SoundId,
        [1] = "2367592577",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_51()
    local params;
    params = {
        -- Group,
        [0] = "2101174435168917283",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_57()
    local params;
    params = {
        -- Pawns,
        [0] = "2103084230343936456",
        -- SoundId,
        [1] = "159871221",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI55\\UNI55_010\\UNI55_010_B40.domino|@UNI55_010_B40|2052304464");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104172960007874359",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_35()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnExit_box_CharacterLoadedIdListener_5_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_5;
    self.eUNI024 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_1_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gFriendlyPlayers = l0:GetDataOutValue(0);
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
