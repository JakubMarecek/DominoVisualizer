LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/gfh/mis_570/mis_570_b30.domino
-- User graph: MIS_570_B30_Main
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/TeleportPawns.lua");
        
        -- Load resources
        cboxRes:LoadResource([[4262303719.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1602071186.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1765613925.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2724926626.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2054835820.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B30.MIS_570_B30_Main.debug.lua")] = {
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
                name = "Started",
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
                name = "bRequiresObjective",
                type = "bool",
            },
            [1] = {
                name = "CompletePreviousObjective",
                type = "bool",
            },
            [2] = {
                name = "FailArea",
                type = "entity",
            },
            [3] = {
                name = "Objective",
                type = "oasis",
            },
            [4] = {
                name = "ObjectiveMarker",
                type = "entity",
            },
            [5] = {
                name = "opt_ObjectiveFail",
                type = "oasis",
            },
            [6] = {
                name = "WarningArea",
                type = "entity",
            },
        },
        dataInCount = 7,
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
    metadataTable[GetPathID("Domino/System/AI/ContextualAction/ContextualActionListener.lua")] = {
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
                name = "Available",
                delayed = true,
            },
            [1] = {
                name = "Disabled",
                delayed = false,
            },
            [2] = {
                name = "Enabled",
                delayed = false,
            },
            [3] = {
                name = "End",
                delayed = true,
            },
            [4] = {
                name = "Interrupt",
                delayed = true,
            },
            [5] = {
                name = "Markup1",
                delayed = true,
            },
            [6] = {
                name = "Markup2",
                delayed = true,
            },
            [7] = {
                name = "Select",
                delayed = true,
            },
            [8] = {
                name = "Start",
                delayed = true,
            },
        },
        controlOutCount = 9,
        dataIn = {
            [0] = {
                name = "ContextualAction",
                type = "entity",
            },
            [1] = {
                name = "InCAIndex",
                type = "int",
            },
            [2] = {
                name = "UserFilter",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "OutCAIndex",
                type = "int",
            },
            [1] = {
                name = "User",
                type = "entity",
            },
        },
        dataOutCount = 2,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_570_B30_Main";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main";
    self.LocalPlayer = nil;
    self.PlayerGroup = nil;
    self.eNana = nil;
    self.box_RemoveEntity_v2_49 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|32652589");
    l0:SetConnections({
    });
    self.box_Delay_v5_48 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|201413158");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_48_TimeElapsed,
    });
    self.box_OnceOnly_v3_41 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|333929925");
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
                [0] = self.f_box_OnceOnly_v3_41_Out_0,
            },
            count = 1,
        },
    });
    self.box_ContextualActionListener_10 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|480714626");
    l0:SetConnections({
        -- Disabled,
        [1] = self.f_box_ContextualActionListener_10_Disabled,
        -- End,
        [3] = self.f_box_ContextualActionListener_10_End,
    });
    self.box_EntityStatusListener_18 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|507624190");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_18_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_18_Unloaded,
    });
    self.box_OnceOnly_v3_20 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|508247067");
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
                [0] = self.f_box_OnceOnly_v3_20_Out_0,
            },
            count = 1,
        },
    });
    self.box_MultipleOR_17 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|549717008");
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
        [0] = self.f_box_MultipleOR_17_Out,
    });
    self.box_MultipleOR_21 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|623046899");
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
    self.box_SoundModifier_v2_53 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|696113348");
    l0:SetConnections({
    });
    self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|764493957");
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
        [0] = self.f_box_MultipleOR_6_Out,
    });
    self.box_OnceOnly_v3_13 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|840359120");
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
                [0] = self.f_box_OnceOnly_v3_13_Out_0,
            },
            count = 2,
        },
    });
    self.box_CharacterLoadedIdListener_v2_9 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1036856838");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_9_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_9_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_9_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_9_LoadedIdReceived,
    });
    self.box_SoundModifier_v2_52 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1098852475");
    l0:SetConnections({
    });
    self.box_ActivityAcknowledgeGate_3 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1193198229");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_3_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_3_Reloaded,
    });
    self.box_Music_Quest_v2_51 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1198634369");
    l0:SetConnections({
    });
    self.box_Delay_v5_8 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1366636348");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_8_TimeElapsed,
    });
    self.box_SpawnAI_Wave_v2_29 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1529895418");
    l0:SetConnections({
        -- LastWave_Cleanup,
        [1] = self.f_box_SpawnAI_Wave_v2_29_LastWave_Cleanup,
    });
    self.box_Brick_Endure_CORE_v3_11 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Endure_Waves.Brick_Endure_CORE_v3.debug.lua");
    l0 = self.box_Brick_Endure_CORE_v3_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Endure_CORE_v3_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1539420731");
    l0:SetConnections({
        -- Success,
        [2] = self.f_box_Brick_Endure_CORE_v3_11_Success,
        -- Waves,
        [3] = self.f_box_Brick_Endure_CORE_v3_11_Waves,
    });
    self.box_TeleportPawns_24 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1562397470");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_24_Out,
    });
    self.box_Delay_v5_30 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1648978499");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_30_TimeElapsed,
    });
    self.box_ActivityInitialized_2 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1671244152");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_2_Out,
    });
    self.box_SpawnAI_Wave_v2_12 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1757746025");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_12_NextWave,
    });
    self.box_SpawnAI_Wave_v2_28 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1881641441");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_28_NextWave,
    });
    self.box_RemoveEntity_v2_45 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1910255345");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_27 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1924978244");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_26 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|2042042665");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_56 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|2121547117");
    l0:SetConnections({
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|681268066", "681268066", "MIS_570_B30_Main", "In", "box_ActivityAcknowledgeGate_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_55();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1448092495", "1448092495", "MIS_570_B30_Main", "OnLeaveZone", "box_OutputOrder_v2_55.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_25_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Endure_CORE_v3_11();
    l0 = self.box_Brick_Endure_CORE_v3_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1123880993", "1123880993", "MIS_570_B30_Main", "box_Simple_Node_25.Out", "box_Brick_Endure_CORE_v3_11.LastWave_Cleanup", clone:GetLuaBox(), l0:GetLuaBox());
    -- LastWave_Cleanup
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_54_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_52();
    l0 = self.box_SoundModifier_v2_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|677618708", "677618708", "MIS_570_B30_Main", "box_Simple_Node_54.Out", "box_SoundModifier_v2_52.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_42_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_33();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1313398431", "1313398431", "MIS_570_B30_Main", "box_Simple_Node_42.Out", "box_ParticleSystem_v3_33.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_SoundModifier_v2_53();
    l0 = self.box_SoundModifier_v2_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|10161478", "10161478", "MIS_570_B30_Main", "box_Simple_Node_42.Out", "box_SoundModifier_v2_53.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_34_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_37();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1175467968", "1175467968", "MIS_570_B30_Main", "box_ParticleSystem_v3_34.Started", "box_ParticleSystem_v3_37.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_34_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_37();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1067955159", "1067955159", "MIS_570_B30_Main", "box_ParticleSystem_v3_34.Stopped", "box_ParticleSystem_v3_37.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_19_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1242779019", "1242779019", "MIS_570_B30_Main", "box_UseContextualActionModifier_v3_19.Disabled", "box_MultipleOR_21.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_43_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_25();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|948674440", "948674440", "MIS_570_B30_Main", "box_OutputOrder_v2_43.Out", "box_Simple_Node_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_43_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_42();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1470645175", "1470645175", "MIS_570_B30_Main", "box_OutputOrder_v2_43.Out", "box_Simple_Node_42.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_48_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_5();
    l0 = self.box_Delay_v5_48;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1398474707", "1398474707", "MIS_570_B30_Main", "box_Delay_v5_48.TimeElapsed", "box_ActivityEnd_5.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetLocalPlayer_v2_1_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_1_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_4();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1586264331", "1586264331", "MIS_570_B30_Main", "box_GetLocalPlayer_v2_1.Out", "box_GetPlayerGroup_v2_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_41_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_39();
    l0 = self.box_OnceOnly_v3_41;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1795422926", "1795422926", "MIS_570_B30_Main", "box_OnceOnly_v3_41.Out", "box_SetContextualStrategy_39.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_36_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_38();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1859342108", "1859342108", "MIS_570_B30_Main", "box_ParticleSystem_v3_36.Started", "box_ParticleSystem_v3_38.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_36_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_38();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1527204062", "1527204062", "MIS_570_B30_Main", "box_ParticleSystem_v3_36.Stopped", "box_ParticleSystem_v3_38.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_10_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_22();
    l0 = self.box_ContextualActionListener_10;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1225626977", "1225626977", "MIS_570_B30_Main", "box_ContextualActionListener_10.Disabled", "box_UseContextualActionModifier_v3_22.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_10_End()
    local params, l0;
    params = self:OnEnter_box_ContextualActionListener_10();
    l0 = self.box_ContextualActionListener_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|265256025", "265256025", "MIS_570_B30_Main", "box_ContextualActionListener_10.End", "box_ContextualActionListener_10.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_EntityStatusListener_18_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_19();
    l0 = self.box_EntityStatusListener_18;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1266709635", "1266709635", "MIS_570_B30_Main", "box_EntityStatusListener_18.Loaded", "box_UseContextualActionModifier_v3_19.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_18_Unloaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_18;
    l1 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|549781385", "549781385", "MIS_570_B30_Main", "box_EntityStatusListener_18.Unloaded", "box_MultipleOR_21.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_20_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_7();
    l0 = self.box_OnceOnly_v3_20;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|415786876", "415786876", "MIS_570_B30_Main", "box_OnceOnly_v3_20.Out", "box_UseContextualActionModifier_v3_7.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_17_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_40();
    l0 = self.box_MultipleOR_17;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1676355488", "1676355488", "MIS_570_B30_Main", "box_MultipleOR_17.Out", "box_OutputOrder_v2_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_30();
    l0 = self.box_Delay_v5_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1761543287", "1761543287", "MIS_570_B30_Main", "box_OutputOrder_v2_31.Out", "box_Delay_v5_30.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_31_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_33();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1136868731", "1136868731", "MIS_570_B30_Main", "box_OutputOrder_v2_31.Out", "box_ParticleSystem_v3_33.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_54();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|581382969", "581382969", "MIS_570_B30_Main", "box_OutputOrder_v2_31.Out", "box_Simple_Node_54.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_37_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_36();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|929569932", "929569932", "MIS_570_B30_Main", "box_ParticleSystem_v3_37.Started", "box_ParticleSystem_v3_36.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_37_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_36();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|2049262684", "2049262684", "MIS_570_B30_Main", "box_ParticleSystem_v3_37.Stopped", "box_ParticleSystem_v3_36.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_8();
    l0 = self.box_Delay_v5_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|532686306", "532686306", "MIS_570_B30_Main", "box_OutputOrder_v2_16.Out", "box_Delay_v5_8.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_16_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_18();
    l0 = self.box_EntityStatusListener_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|561562696", "561562696", "MIS_570_B30_Main", "box_OutputOrder_v2_16.Out", "box_EntityStatusListener_18.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_21_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_21;
    l1 = self.box_OnceOnly_v3_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|368421861", "368421861", "MIS_570_B30_Main", "box_MultipleOR_21.Out", "box_OnceOnly_v3_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_40_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|282827430", "282827430", "MIS_570_B30_Main", "box_OutputOrder_v2_40.Out", "box_OnceOnly_v3_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_40_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1191868886", "1191868886", "MIS_570_B30_Main", "box_OutputOrder_v2_40.Out", "box_OnceOnly_v3_41.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_46_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_45();
    l0 = self.box_RemoveEntity_v2_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1643875500", "1643875500", "MIS_570_B30_Main", "box_OutputOrder_v2_46.Out", "box_RemoveEntity_v2_45.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_46_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_49();
    l0 = self.box_RemoveEntity_v2_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1531499073", "1531499073", "MIS_570_B30_Main", "box_OutputOrder_v2_46.Out", "box_RemoveEntity_v2_49.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_46_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_47();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|575815897", "575815897", "MIS_570_B30_Main", "box_OutputOrder_v2_46.Out", "box_SetContextualStrategy_47.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_46_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_48();
    l0 = self.box_Delay_v5_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1660026007", "1660026007", "MIS_570_B30_Main", "box_OutputOrder_v2_46.Out", "box_Delay_v5_48.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_46_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_51();
    l0 = self.box_Music_Quest_v2_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1569916456", "1569916456", "MIS_570_B30_Main", "box_OutputOrder_v2_46.Out", "box_Music_Quest_v2_51.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_UseContextualActionModifier_v3_7_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_7();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|703170415", "703170415", "MIS_570_B30_Main", "box_UseContextualActionModifier_v3_7.Enabled", "box_UseContextualActionModifier_v3_7.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_7_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_10();
    l0 = self.box_ContextualActionListener_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|513782155", "513782155", "MIS_570_B30_Main", "box_UseContextualActionModifier_v3_7.UseCalled", "box_ContextualActionListener_10.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_6_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_6;
    l1 = self.box_ActivityInitialized_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|957767256", "957767256", "MIS_570_B30_Main", "box_MultipleOR_6.Out", "box_ActivityInitialized_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_44_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_Wave_v2_29();
    l0 = self.box_SpawnAI_Wave_v2_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1626535288", "1626535288", "MIS_570_B30_Main", "box_OutputOrder_v2_44.Out", "box_SpawnAI_Wave_v2_29.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_44_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_26();
    l0 = self.box_PlayDialog_v6_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|647799033", "647799033", "MIS_570_B30_Main", "box_OutputOrder_v2_44.Out", "box_PlayDialog_v6_26.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_13_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_50();
    l0 = self.box_OnceOnly_v3_13;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1384572049", "1384572049", "MIS_570_B30_Main", "box_OnceOnly_v3_13.Out", "box_OutputOrder_v2_50.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_22_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1778025726", "1778025726", "MIS_570_B30_Main", "box_UseContextualActionModifier_v3_22.Disabled", "box_MultipleOR_17.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_CharacterLoadedIdListener_v2_9_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_v2_9_LoadedIdReceived();
    params = self:OnEnter_box_OutputOrder_v2_16();
    l0 = self.box_CharacterLoadedIdListener_v2_9;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|310454870", "310454870", "MIS_570_B30_Main", "box_CharacterLoadedIdListener_v2_9.LoadedIdReceived", "box_OutputOrder_v2_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_35_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_34();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1769998512", "1769998512", "MIS_570_B30_Main", "box_ParticleSystem_v3_35.Started", "box_ParticleSystem_v3_34.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_35_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_34();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1665056973", "1665056973", "MIS_570_B30_Main", "box_ParticleSystem_v3_35.Stopped", "box_ParticleSystem_v3_34.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_3_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1948637926", "1948637926", "MIS_570_B30_Main", "box_ActivityAcknowledgeGate_3.Acknowledged", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_3_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_TeleportPawns_24();
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_TeleportPawns_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1714718898", "1714718898", "MIS_570_B30_Main", "box_ActivityAcknowledgeGate_3.Reloaded", "box_TeleportPawns_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_8_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_8;
    l1 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1286397767", "1286397767", "MIS_570_B30_Main", "box_Delay_v5_8.TimeElapsed", "box_MultipleOR_17.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ParticleSystem_v3_33_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_32();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1315269272", "1315269272", "MIS_570_B30_Main", "box_ParticleSystem_v3_33.Started", "box_ParticleSystem_v3_32.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_33_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_32();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1561699624", "1561699624", "MIS_570_B30_Main", "box_ParticleSystem_v3_33.Stopped", "box_ParticleSystem_v3_32.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_Wave_v2_29_LastWave_Cleanup()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_43();
    l0 = self.box_SpawnAI_Wave_v2_29;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1139930935", "1139930935", "MIS_570_B30_Main", "box_SpawnAI_Wave_v2_29.LastWave_Cleanup", "box_OutputOrder_v2_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Endure_CORE_v3_11_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_46();
    l0 = self.box_Brick_Endure_CORE_v3_11;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1143896473", "1143896473", "MIS_570_B30_Main", "box_Brick_Endure_CORE_v3_11.Success", "box_OutputOrder_v2_46.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Endure_CORE_v3_11_Waves()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_Wave_v2_12();
    l0 = self.box_Brick_Endure_CORE_v3_11;
    l1 = self.box_SpawnAI_Wave_v2_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|829051490", "829051490", "MIS_570_B30_Main", "box_Brick_Endure_CORE_v3_11.Waves", "box_SpawnAI_Wave_v2_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_GetPlayerGroup_v2_4_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_4_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_9();
    l0 = self.box_CharacterLoadedIdListener_v2_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|333448942", "333448942", "MIS_570_B30_Main", "box_GetPlayerGroup_v2_4.Out", "box_CharacterLoadedIdListener_v2_9.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_TeleportPawns_24_Out()
    local l0, l1;
    l0 = self.box_TeleportPawns_24;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|2007632620", "2007632620", "MIS_570_B30_Main", "box_TeleportPawns_24.Out", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_55_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_56();
    l0 = self.box_Music_Quest_v2_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1268859125", "1268859125", "MIS_570_B30_Main", "box_OutputOrder_v2_55.Out", "box_Music_Quest_v2_56.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_55_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_v2_23();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1875455029", "1875455029", "MIS_570_B30_Main", "box_OutputOrder_v2_55.Out", "box_ActivityRetry_v2_23.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_30_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_44();
    l0 = self.box_Delay_v5_30;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1753166007", "1753166007", "MIS_570_B30_Main", "box_Delay_v5_30.TimeElapsed", "box_OutputOrder_v2_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetLocalPlayer_v2_1();
    l0 = self.box_ActivityInitialized_2;
    l1 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1494123904", "1494123904", "MIS_570_B30_Main", "box_ActivityInitialized_2.Out", "box_GetLocalPlayer_v2_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_Wave_v2_12_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_Wave_v2_28();
    l0 = self.box_SpawnAI_Wave_v2_12;
    l1 = self.box_SpawnAI_Wave_v2_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|989586002", "989586002", "MIS_570_B30_Main", "box_SpawnAI_Wave_v2_12.NextWave", "box_SpawnAI_Wave_v2_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_Wave_v2_28_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_31();
    l0 = self.box_SpawnAI_Wave_v2_28;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|271568016", "271568016", "MIS_570_B30_Main", "box_SpawnAI_Wave_v2_28.NextWave", "box_OutputOrder_v2_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_50_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Endure_CORE_v3_11();
    l0 = self.box_Brick_Endure_CORE_v3_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1650181950", "1650181950", "MIS_570_B30_Main", "box_OutputOrder_v2_50.Out", "box_Brick_Endure_CORE_v3_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_50_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_27();
    l0 = self.box_Music_Quest_v2_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1092190313", "1092190313", "MIS_570_B30_Main", "box_OutputOrder_v2_50.Out", "box_Music_Quest_v2_27.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_32_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_35();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|362444017", "362444017", "MIS_570_B30_Main", "box_ParticleSystem_v3_32.Started", "box_ParticleSystem_v3_35.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_32_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_35();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1198885250", "1198885250", "MIS_570_B30_Main", "box_ParticleSystem_v3_32.Stopped", "box_ParticleSystem_v3_35.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|@LastWave_CleanUp");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_25_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|@Start_Sandstorm_Sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_54_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|@Stop_SandStorm");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_42_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_49()
    local params;
    params = {
        -- Group,
        [0] = "2108057898436275226",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|55145191");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|60204318");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_34_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_34_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2109466779616029855",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|95248878");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_19_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108018978017249299",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|178146512");
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

function export:OnEnter_box_Delay_v5_48()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|280667288");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_1_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|434117642");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_36_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_36_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2109466790395391139",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_10()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2108639022342491273",
        -- UserFilter,
        [2] = self.eNana,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_18()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108018978017249299",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|569107181");
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
                [0] = self.f_box_OutputOrder_v2_31_Out_0,
                [1] = self.f_box_OutputOrder_v2_31_Out_1,
                [2] = self.f_box_OutputOrder_v2_31_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|584676893");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_37_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_37_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2109466784577891489",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|611710313");
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

function export:OnEnter_box_OutputOrder_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|634199321");
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
                [0] = self.f_box_OutputOrder_v2_40_Out_0,
                [1] = self.f_box_OutputOrder_v2_40_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_53()
    local params;
    params = {
        -- Pawns,
        [0] = "2109885818590993410",
        -- SoundId,
        [1] = "1602071186",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|716051717");
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
                [0] = self.f_box_OutputOrder_v2_46_Out_0,
                [1] = self.f_box_OutputOrder_v2_46_Out_1,
                [2] = self.f_box_OutputOrder_v2_46_Out_2,
                [3] = self.f_box_OutputOrder_v2_46_Out_3,
                [4] = self.f_box_OutputOrder_v2_46_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|753482201");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_7_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_7_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108639022342491273",
        -- Entity,
        [2] = self.eNana,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|839590450");
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
                [0] = self.f_box_OutputOrder_v2_44_Out_0,
                [1] = self.f_box_OutputOrder_v2_44_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|859545379");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_22_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108639022342491273",
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_9()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015328870702481",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_52()
    local params;
    params = {
        -- Pawns,
        [0] = "2109885818590993410",
        -- SoundId,
        [1] = "2724926626",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1114011065");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_35_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_35_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2109466793052482725",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1183462133");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109466906038643882",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_51()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 2,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "4262303719",
        -- StopEvent,
        [7] = "1765613925",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1231061885");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109554520567588825",
        -- Group,
        [1] = self.eNana,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_8()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1443678815");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1471655599");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_33_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_33_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2109466994483932334",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_29()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 0,
        -- AttackerSpawner_1,
        [1] = "2108653717424181650",
        -- CoreNPCGroup,
        [2] = "#CDED14D9",
        -- IsLastWave,
        [3] = true,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2108653811378688982",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_Brick_Endure_CORE_v3_11()
    local params;
    params = {
        -- bRequiresObjective,
        [0] = true,
        -- CompletePreviousObjective,
        [1] = true,
        -- FailArea,
        [2] = "2108654314732927247",
        -- Objective,
        [3] = {
            section = "Objectives",
            item = "MIS_570_B30_010",
            id = "1007945",
        },
        -- opt_ObjectiveFail,
        [5] = {
            section = "BRICK_Endure_Waves",
            item = "BRICK_Endure_ExitWarning",
            id = "426332",
        },
        -- WarningArea,
        [6] = "2108654314732927247",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1542028492");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_4_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_24()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "2109389437562564122",
        -- Destination,
        [1] = "2109389437562564122",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "#5B9E5CA4",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1648090409");
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
                [0] = self.f_box_OutputOrder_v2_55_Out_0,
                [1] = self.f_box_OutputOrder_v2_55_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_30()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_12()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 2,
        -- AttackerSpawner_1,
        [1] = "2109209095920691434",
        -- CoreNPCGroup,
        [2] = "#CDED14D9",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2109221979524452300",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|1816337589");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108653623897493900",
        -- Group,
        [1] = self.eNana,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_28()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 0,
        -- AttackerSpawner_1,
        [1] = "2109498048687143566",
        -- CoreNPCGroup,
        [2] = "#CDED14D9",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2109209093494286479",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_45()
    local params;
    params = {
        -- Group,
        [0] = "2108724547602626249",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_27()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 2,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "4262303719",
        -- StopEvent,
        [7] = "1765613925",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|2001553841");
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

function export:OnEnter_box_PlayDialog_v6_26()
    local params;
    params = {
        -- Group,
        [0] = self.eNana,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2054835820",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B30.domino|@MIS_570_B30_Main|2076303110");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_32_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_32_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2109466982913944748",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_56()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 2,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "4262303719",
        -- StopEvent,
        [7] = "1765613925",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnExit_box_GetLocalPlayer_v2_1_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.LocalPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_v2_9_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_v2_9;
    self.eNana = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_4_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.PlayerGroup = l0:GetDataOutValue(0);
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
